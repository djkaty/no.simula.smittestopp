package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.BaseResponse;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.MarkableFileStream;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.StreamMd5AndLength;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.file.CloudFile;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.xml.stream.XMLStreamException;

public final class CloudBlockBlob extends CloudBlob {
    public boolean isStreamWriteSizeModified;

    public CloudBlockBlob(URI uri) {
        this(new StorageUri(uri));
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> commitBlockListImpl(Iterable<BlockEntry> iterable, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(BlockEntryListSerializer.writeBlockListToStream(iterable, operationContext));
            final StreamMd5AndLength analyzeStream = Utility.analyzeStream(byteArrayInputStream, -1, -1, true, blobRequestOptions.getUseTransactionalContentMD5().booleanValue());
            final ByteArrayInputStream byteArrayInputStream2 = byteArrayInputStream;
            final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
            final AccessCondition accessCondition2 = accessCondition;
            return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
                public void recoveryAction(OperationContext operationContext) {
                    byteArrayInputStream2.reset();
                    byteArrayInputStream2.mark(268435456);
                }

                public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                    setSendStream(byteArrayInputStream2);
                    setLength(Long.valueOf(analyzeStream.getLength()));
                    return BlobRequest.putBlockList(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.properties);
                }

                public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() != 201) {
                        setNonExceptionedRetryableFailure(true);
                        return null;
                    }
                    cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                    getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                    return null;
                }

                public void setHeaders(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, OperationContext operationContext) {
                    BlobRequest.addMetadata(httpURLConnection, cloudBlob.metadata, operationContext);
                    if (blobRequestOptions2.getUseTransactionalContentMD5().booleanValue()) {
                        httpURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_MD5, analyzeStream.getMd5());
                    }
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, getLength().longValue(), operationContext);
                }
            };
        } catch (XMLStreamException e2) {
            throw StorageException.translateClientException(e2);
        } catch (IOException e3) {
            throw StorageException.translateClientException(e3);
        }
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> createBlockFromURIImpl(String str, URI uri, Long l2, Long l3, String str2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        final OperationContext operationContext2 = operationContext;
        final URI uri2 = uri;
        final Long l4 = l2;
        final Long l5 = l3;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final String str3 = str2;
        final AccessCondition accessCondition2 = accessCondition;
        final String str4 = str;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.putBlock(cloudBlob.getTransformedAddress(operationContext2).getUri(getCurrentLocation()), uri2.toASCIIString(), l4.longValue(), l5, blobRequestOptions2, str3, operationContext2, accessCondition2, str4);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    @DoesServiceRequest
    private void createBlockFromURIInternal(String str, URI uri, Long l2, Long l3, String str2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, createBlockFromURIImpl(str, uri, l2, l3, str2, accessCondition, blobRequestOptions, operationContext), blobRequestOptions.getRetryPolicyFactory(), operationContext);
    }

    private StorageRequest<CloudBlobClient, CloudBlob, ArrayList<BlockEntry>> downloadBlockListImpl(BlockListingFilter blockListingFilter, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final BlockListingFilter blockListingFilter2 = blockListingFilter;
        return new StorageRequest<CloudBlobClient, CloudBlob, ArrayList<BlockEntry>>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.getBlockList(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.snapshotID, blockListingFilter2);
            }

            public ArrayList<BlockEntry> postProcessResponse(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext, ArrayList<BlockEntry> arrayList) {
                cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudBlob.updateLengthFromResponse(getConnection());
                return BlockListHandler.getBlockList(getConnection().getInputStream());
            }

            public ArrayList<BlockEntry> preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> uploadBlockImpl(String str, String str2, InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        final InputStream inputStream2 = inputStream;
        final long j3 = j2;
        final OperationContext operationContext2 = operationContext;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final String str3 = str;
        final String str4 = str2;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public void recoveryAction(OperationContext operationContext) {
                inputStream2.reset();
                inputStream2.mark(268435456);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                setSendStream(inputStream2);
                setLength(Long.valueOf(j3));
                return BlobRequest.putBlock(cloudBlob.getTransformedAddress(operationContext2).getUri(getCurrentLocation()), blobRequestOptions2, operationContext2, accessCondition2, str3);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, OperationContext operationContext) {
                if (blobRequestOptions2.getUseTransactionalContentMD5().booleanValue()) {
                    httpURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_MD5, str4);
                }
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, j3, operationContext);
            }
        };
    }

    @DoesServiceRequest
    private void uploadBlockInternal(String str, String str2, InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, uploadBlockImpl(str, str2, inputStream, j2, accessCondition, blobRequestOptions, operationContext), blobRequestOptions.getRetryPolicyFactory(), operationContext);
    }

    private void uploadFromMultiStream(Iterable<InputStream> iterable, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext, List<BlockEntry> list) {
        int intValue = blobRequestOptions.getConcurrentRequestCount().intValue();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(intValue, intValue, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());
        ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(threadPoolExecutor);
        char c2 = 0;
        int i2 = 0;
        for (final InputStream next : iterable) {
            Object[] objArr = new Object[1];
            int i3 = i2 + 1;
            objArr[c2] = Integer.valueOf(i3);
            final String encode = Base64.encode(String.format("Block_%05d", objArr).getBytes());
            list.add(new BlockEntry(encode));
            final long length = next instanceof SubStream ? ((SubStream) next).getLength() : (long) this.streamWriteSizeInBytes;
            final AccessCondition accessCondition2 = accessCondition;
            final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
            AnonymousClass3 r13 = r1;
            final OperationContext operationContext2 = operationContext;
            AnonymousClass3 r1 = new Callable<Void>() {
                public Void call() {
                    CloudBlockBlob.this.uploadBlock(encode, next, length, accessCondition2, blobRequestOptions2, operationContext2);
                    next.close();
                    return null;
                }
            };
            executorCompletionService.submit(r13);
            i2 = i3;
            c2 = 0;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            waitAny(executorCompletionService);
        }
        try {
            threadPoolExecutor.shutdown();
            if (!threadPoolExecutor.isShutdown()) {
                threadPoolExecutor.shutdownNow();
            }
        } catch (Throwable th) {
            Throwable th2 = th;
            if (!threadPoolExecutor.isShutdown()) {
                threadPoolExecutor.shutdownNow();
            }
            throw th2;
        }
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> uploadFullBlobImpl(InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        final InputStream inputStream2 = inputStream;
        final long j3 = j2;
        final OperationContext operationContext2 = operationContext;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public void recoveryAction(OperationContext operationContext) {
                inputStream2.reset();
                inputStream2.mark(268435456);
            }

            public void validateStreamWrite(StreamMd5AndLength streamMd5AndLength) {
                if (getLength() != null && getLength().longValue() != -1 && j3 != streamMd5AndLength.getLength()) {
                    throw new StorageException(StorageErrorCodeStrings.INVALID_INPUT, SR.INCORRECT_STREAM_LENGTH, 403, (StorageExtendedErrorInformation) null, (Exception) null);
                }
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                setSendStream(inputStream2);
                setLength(Long.valueOf(j3));
                URI uri = cloudBlob.getTransformedAddress(operationContext2).getUri(getCurrentLocation());
                BlobRequestOptions blobRequestOptions = blobRequestOptions2;
                OperationContext operationContext2 = operationContext2;
                AccessCondition accessCondition = accessCondition2;
                BlobProperties blobProperties = cloudBlob.properties;
                return BlobRequest.putBlob(uri, blobRequestOptions, operationContext2, accessCondition, blobProperties, blobProperties.getBlobType(), getLength().longValue());
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, OperationContext operationContext) {
                BlobRequest.addMetadata(httpURLConnection, cloudBlob.metadata, operationContext2);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, j3, operationContext);
            }
        };
    }

    private void waitAny(ExecutorCompletionService<Void> executorCompletionService) {
        try {
            executorCompletionService.take().get();
        } catch (Exception e2) {
            Throwable cause = e2.getCause();
            while (cause != null) {
                if (!(cause instanceof StorageException)) {
                    cause = cause.getCause();
                } else {
                    throw ((StorageException) cause);
                }
            }
            throw Utility.initIOException(e2);
        }
    }

    @DoesServiceRequest
    public void commitBlockList(Iterable<BlockEntry> iterable) {
        commitBlockList(iterable, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void createBlockFromURI(String str, URI uri, Long l2, Long l3) {
        createBlockFromURI(str, uri, l2, l3, (String) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ArrayList<BlockEntry> downloadBlockList() {
        return downloadBlockList(BlockListingFilter.COMMITTED, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public String downloadText() {
        return downloadText((String) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public boolean isStreamWriteSizeModified() {
        return this.isStreamWriteSizeModified;
    }

    public BlobOutputStream openOutputStream() {
        return openOutputStream((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void setStreamWriteSizeInBytes(int i2) {
        if (i2 > Constants.MAX_BLOCK_SIZE || i2 < 16384) {
            throw new IllegalArgumentException("StreamWriteSizeInBytes");
        }
        this.streamWriteSizeInBytes = i2;
        this.isStreamWriteSizeModified = true;
    }

    @DoesServiceRequest
    public final String startCopy(CloudBlockBlob cloudBlockBlob) {
        return startCopy(cloudBlockBlob, (String) null, false, (AccessCondition) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void upload(InputStream inputStream, long j2) {
        upload(inputStream, j2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadBlock(String str, InputStream inputStream, long j2) {
        uploadBlock(str, inputStream, j2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void uploadFullBlob(InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        inputStream.mark(268435456);
        if (j2 < 0 || j2 > 268435456) {
            throw new IllegalArgumentException(String.format(SR.INVALID_STREAM_LENGTH, new Object[]{256}));
        } else {
            ExecutionEngine.executeWithRetry(this.blobServiceClient, this, uploadFullBlobImpl(inputStream, j2, accessCondition, blobRequestOptions, operationContext), blobRequestOptions.getRetryPolicyFactory(), operationContext);
        }
    }

    @DoesServiceRequest
    public void uploadStandardBlobTier(StandardBlobTier standardBlobTier) {
        uploadStandardBlobTier(standardBlobTier, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void uploadText(String str) {
        uploadText(str, (String) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public CloudBlockBlob(StorageUri storageUri) {
        this(storageUri, (StorageCredentials) null);
    }

    @DoesServiceRequest
    public void commitBlockList(Iterable<BlockEntry> iterable, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.BLOCK_BLOB, this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, commitBlockListImpl(iterable, accessCondition, populateAndApplyDefaults, operationContext), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void createBlockFromURI(String str, URI uri, Long l2, Long l3, String str2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        URI uri2 = uri;
        Utility.assertNotNull("copySource", uri);
        assertNoWriteOperationForSnapshot();
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.BLOCK_BLOB, this.blobServiceClient);
        populateAndApplyDefaults.assertNoEncryptionPolicyOrStrictMode();
        if (Utility.isNullOrEmpty(str) || !Base64.validateIsBase64String(str)) {
            throw new IllegalArgumentException(SR.INVALID_BLOCK_ID);
        } else if (l3 == null || l3.longValue() <= ((long) Constants.MAX_BLOCK_SIZE)) {
            createBlockFromURIInternal(str, uri, l2, l3, str2, accessCondition, populateAndApplyDefaults, operationContext2);
        } else {
            throw new IllegalArgumentException(SR.COPY_SIZE_GREATER_THAN_100MB);
        }
    }

    @DoesServiceRequest
    public ArrayList<BlockEntry> downloadBlockList(BlockListingFilter blockListingFilter, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("blockListingFilter", blockListingFilter);
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.BLOCK_BLOB, this.blobServiceClient);
        return (ArrayList) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadBlockListImpl(blockListingFilter, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public String downloadText(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        download(byteArrayOutputStream, accessCondition, blobRequestOptions, operationContext);
        return str == null ? byteArrayOutputStream.toString() : byteArrayOutputStream.toString(str);
    }

    public BlobOutputStream openOutputStream(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        OperationContext operationContext2 = operationContext;
        assertNoWriteOperationForSnapshot();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.BLOCK_BLOB, this.blobServiceClient, false);
        populateAndApplyDefaults.assertPolicyIfRequired();
        if (populateAndApplyDefaults.getEncryptionPolicy() == null) {
            return new BlobOutputStreamInternal(this, accessCondition, populateAndApplyDefaults, operationContext2);
        }
        return new BlobEncryptStream(this, accessCondition, populateAndApplyDefaults, operationContext2, populateAndApplyDefaults.getEncryptionPolicy().createAndSetEncryptionContext(getMetadata(), false));
    }

    @DoesServiceRequest
    public final String startCopy(CloudBlockBlob cloudBlockBlob, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("sourceBlob", cloudBlockBlob);
        cloudBlockBlob.getSnapshotQualifiedUri();
        if (!(cloudBlockBlob.getServiceClient() == null || cloudBlockBlob.getServiceClient().getCredentials() == null)) {
            cloudBlockBlob.getServiceClient().getCredentials().transformUri(cloudBlockBlob.getSnapshotQualifiedUri());
        }
        return startCopy(cloudBlockBlob, (String) null, false, accessCondition, accessCondition2, blobRequestOptions, operationContext);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:43:0x011e, code lost:
        if (r9.getLength() <= ((long) r6.getSingleBlobPutThresholdInBytes().intValue())) goto L_0x0123;
     */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00ce  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0127  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0135  */
    @com.microsoft.azure.storage.DoesServiceRequest
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void upload(java.io.InputStream r25, long r26, com.microsoft.azure.storage.AccessCondition r28, com.microsoft.azure.storage.blob.BlobRequestOptions r29, com.microsoft.azure.storage.OperationContext r30) {
        /*
            r24 = this;
            r8 = r24
            r0 = r25
            r1 = r26
            r3 = -1
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 < 0) goto L_0x01a3
            r24.assertNoWriteOperationForSnapshot()
            if (r30 != 0) goto L_0x0018
            com.microsoft.azure.storage.OperationContext r6 = new com.microsoft.azure.storage.OperationContext
            r6.<init>()
            r7 = r6
            goto L_0x001a
        L_0x0018:
            r7 = r30
        L_0x001a:
            r7.initialize()
            com.microsoft.azure.storage.blob.BlobType r6 = com.microsoft.azure.storage.blob.BlobType.BLOCK_BLOB
            com.microsoft.azure.storage.blob.CloudBlobClient r9 = r8.blobServiceClient
            r10 = r29
            com.microsoft.azure.storage.blob.BlobRequestOptions r6 = com.microsoft.azure.storage.blob.BlobRequestOptions.populateAndApplyDefaults(r10, r6, r9)
            r6.assertPolicyIfRequired()
            com.microsoft.azure.storage.core.StreamMd5AndLength r9 = new com.microsoft.azure.storage.core.StreamMd5AndLength
            r9.<init>()
            r9.setLength(r1)
            boolean r10 = r25.markSupported()
            if (r10 != 0) goto L_0x0044
            boolean r10 = r0 instanceof java.io.FileInputStream
            if (r10 == 0) goto L_0x0044
            com.microsoft.azure.storage.core.MarkableFileStream r10 = new com.microsoft.azure.storage.core.MarkableFileStream
            java.io.FileInputStream r0 = (java.io.FileInputStream) r0
            r10.<init>(r0)
            goto L_0x0045
        L_0x0044:
            r10 = r0
        L_0x0045:
            boolean r0 = r10.markSupported()
            r11 = 0
            r18 = 1
            if (r0 == 0) goto L_0x0062
            long r12 = r9.getLength()
            java.lang.Integer r0 = r6.getSingleBlobPutThresholdInBytes()
            int r0 = r0.intValue()
            long r14 = (long) r0
            int r0 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r0 <= 0) goto L_0x0060
            goto L_0x0062
        L_0x0060:
            r0 = 0
            goto L_0x0063
        L_0x0062:
            r0 = 1
        L_0x0063:
            boolean r12 = r10.markSupported()
            if (r12 == 0) goto L_0x006e
            r12 = 268435456(0x10000000, float:2.5243549E-29)
            r10.mark(r12)
        L_0x006e:
            r19 = 0
            if (r0 != 0) goto L_0x00b9
            com.microsoft.azure.storage.blob.BlobEncryptionPolicy r12 = r6.getEncryptionPolicy()
            if (r12 == 0) goto L_0x00b9
            com.microsoft.azure.storage.blob.BlobEncryptionPolicy r12 = r6.getEncryptionPolicy()
            java.util.HashMap r13 = r24.getMetadata()
            javax.crypto.Cipher r13 = r12.createAndSetEncryptionContext(r13, r11)
            com.microsoft.azure.storage.blob.CloudBlockBlob$1GettableByteArrayOutputStream r14 = new com.microsoft.azure.storage.blob.CloudBlockBlob$1GettableByteArrayOutputStream
            r14.<init>()
            long r15 = r9.getLength()
            java.lang.Integer r11 = r6.getSingleBlobPutThresholdInBytes()
            int r11 = r11.intValue()
            int r11 = r11 + 1
            long r11 = (long) r11
            r21 = r11
            r11 = r10
            r12 = r14
            r23 = r14
            r14 = r15
            r16 = r21
            long r11 = com.microsoft.azure.storage.core.Utility.encryptStreamIfUnderThreshold(r11, r12, r13, r14, r16)
            int r13 = (r11 > r19 ? 1 : (r11 == r19 ? 0 : -1))
            if (r13 < 0) goto L_0x00b6
            java.io.ByteArrayInputStream r10 = new java.io.ByteArrayInputStream
            byte[] r13 = r23.getByteArray()
            r10.<init>(r13)
            r9.setLength(r11)
            goto L_0x00b9
        L_0x00b6:
            r15 = r10
            r0 = 1
            goto L_0x00ba
        L_0x00b9:
            r15 = r10
        L_0x00ba:
            if (r0 != 0) goto L_0x0121
            long r10 = r9.getLength()
            int r12 = (r10 > r19 ? 1 : (r10 == r19 ? 0 : -1))
            if (r12 < 0) goto L_0x00ce
            java.lang.Boolean r10 = r6.getStoreBlobContentMD5()
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L_0x0121
        L_0x00ce:
            long r11 = r9.getLength()
            java.lang.Integer r9 = r6.getSingleBlobPutThresholdInBytes()
            int r9 = r9.intValue()
            int r9 = r9 + 1
            long r13 = (long) r9
            r9 = 1
            java.lang.Boolean r10 = r6.getStoreBlobContentMD5()
            boolean r16 = r10.booleanValue()
            r10 = r15
            r25 = r15
            r15 = r9
            com.microsoft.azure.storage.core.StreamMd5AndLength r9 = com.microsoft.azure.storage.core.Utility.analyzeStream(r10, r11, r13, r15, r16)
            java.lang.String r10 = r9.getMd5()
            if (r10 == 0) goto L_0x0107
            java.lang.Boolean r10 = r6.getStoreBlobContentMD5()
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L_0x0107
            com.microsoft.azure.storage.blob.BlobProperties r10 = r8.properties
            java.lang.String r11 = r9.getMd5()
            r10.setContentMD5(r11)
        L_0x0107:
            long r10 = r9.getLength()
            int r12 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r12 == 0) goto L_0x0125
            long r10 = r9.getLength()
            java.lang.Integer r12 = r6.getSingleBlobPutThresholdInBytes()
            int r12 = r12.intValue()
            long r12 = (long) r12
            int r14 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r14 <= 0) goto L_0x0123
            goto L_0x0125
        L_0x0121:
            r25 = r15
        L_0x0123:
            r18 = r0
        L_0x0125:
            if (r18 != 0) goto L_0x0135
            long r3 = r9.getLength()
            r1 = r24
            r2 = r25
            r5 = r28
            r1.uploadFullBlob(r2, r3, r5, r6, r7)
            goto L_0x019c
        L_0x0135:
            double r10 = (double) r1
            int r0 = r8.streamWriteSizeInBytes
            double r12 = (double) r0
            double r12 = r10 / r12
            double r12 = java.lang.Math.ceil(r12)
            int r0 = (int) r12
            if (r5 == 0) goto L_0x016c
            long r12 = (long) r0
            r14 = 50000(0xc350, double:2.47033E-319)
            int r0 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r0 <= 0) goto L_0x016c
            boolean r0 = r24.isStreamWriteSizeModified()
            if (r0 != 0) goto L_0x0164
            r12 = 4677104761256804352(0x40e86a0000000000, double:50000.0)
            double r12 = r10 / r12
            double r12 = java.lang.Math.ceil(r12)
            int r0 = (int) r12
            r8.streamWriteSizeInBytes = r0
            double r12 = (double) r0
            double r10 = r10 / r12
            java.lang.Math.ceil(r10)
            goto L_0x016c
        L_0x0164:
            java.io.IOException r0 = new java.io.IOException
            java.lang.String r1 = "The total blocks for this upload exceeds the maximum allowable limit. Please increase the block size."
            r0.<init>(r1)
            throw r0
        L_0x016c:
            com.microsoft.azure.storage.blob.BlobEncryptionPolicy r0 = r6.getEncryptionPolicy()
            if (r0 != 0) goto L_0x018e
            boolean r0 = r25.markSupported()
            if (r0 == 0) goto L_0x018e
            int r0 = r8.streamWriteSizeInBytes
            int r5 = com.microsoft.azure.storage.Constants.MIN_LARGE_BLOCK_SIZE
            if (r0 < r5) goto L_0x018e
            java.lang.Boolean r0 = r6.getStoreBlobContentMD5()
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x018e
            long r9 = r9.getLength()
            int r0 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
        L_0x018e:
            r0 = r28
            com.microsoft.azure.storage.blob.BlobOutputStream r3 = r8.openOutputStream(r0, r6, r7)
            r10 = r25
            r3.write(r10, r1)     // Catch:{ all -> 0x019d }
            r3.close()
        L_0x019c:
            return
        L_0x019d:
            r0 = move-exception
            r1 = r0
            r3.close()
            throw r1
        L_0x01a3:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Invalid stream length, specify -1 for unknown length stream, or a positive number of bytes."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.blob.CloudBlockBlob.upload(java.io.InputStream, long, com.microsoft.azure.storage.AccessCondition, com.microsoft.azure.storage.blob.BlobRequestOptions, com.microsoft.azure.storage.OperationContext):void");
    }

    @DoesServiceRequest
    public void uploadBlock(String str, InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        ByteArrayInputStream byteArrayInputStream;
        InputStream inputStream2 = inputStream;
        long j3 = j2;
        if (j3 >= -1) {
            assertNoWriteOperationForSnapshot();
            OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
            BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.BLOCK_BLOB, this.blobServiceClient);
            populateAndApplyDefaults.assertNoEncryptionPolicyOrStrictMode();
            if (Utility.isNullOrEmpty(str) || !Base64.validateIsBase64String(str)) {
                throw new IllegalArgumentException(SR.INVALID_BLOCK_ID);
            }
            MarkableFileStream markableFileStream = (inputStream.markSupported() || !(inputStream2 instanceof FileInputStream)) ? inputStream2 : new MarkableFileStream((FileInputStream) inputStream2);
            if (markableFileStream.markSupported()) {
                markableFileStream.mark(268435456);
            }
            StreamMd5AndLength streamMd5AndLength = new StreamMd5AndLength();
            streamMd5AndLength.setLength(j3);
            if (!markableFileStream.markSupported()) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                streamMd5AndLength = Utility.writeToOutputStream(markableFileStream, byteArrayOutputStream, j2, false, populateAndApplyDefaults.getUseTransactionalContentMD5().booleanValue(), operationContext2, populateAndApplyDefaults);
                byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
            } else {
                if (j3 < 0 || populateAndApplyDefaults.getUseTransactionalContentMD5().booleanValue()) {
                    streamMd5AndLength = Utility.analyzeStream(markableFileStream, j2, -1, true, populateAndApplyDefaults.getUseTransactionalContentMD5().booleanValue());
                }
                byteArrayInputStream = markableFileStream;
            }
            if (streamMd5AndLength.getLength() <= ((long) Constants.MAX_BLOCK_SIZE)) {
                uploadBlockInternal(str, streamMd5AndLength.getMd5(), byteArrayInputStream, streamMd5AndLength.getLength(), accessCondition, populateAndApplyDefaults, operationContext2);
                return;
            }
            throw new IllegalArgumentException(SR.STREAM_LENGTH_GREATER_THAN_100MB);
        }
        throw new IllegalArgumentException(SR.STREAM_LENGTH_NEGATIVE);
    }

    @DoesServiceRequest
    public void uploadStandardBlobTier(StandardBlobTier standardBlobTier, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        Utility.assertNotNull("standardBlobTier", standardBlobTier);
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.BLOCK_BLOB, this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, uploadBlobTierImpl(standardBlobTier.toString(), populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public void uploadText(String str, String str2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        byte[] bytes = str2 == null ? str.getBytes() : str.getBytes(str2);
        uploadFromByteArray(bytes, 0, bytes.length, accessCondition, blobRequestOptions, operationContext);
    }

    public CloudBlockBlob(CloudBlockBlob cloudBlockBlob) {
        super(cloudBlockBlob);
        this.isStreamWriteSizeModified = false;
    }

    public CloudBlockBlob(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    public CloudBlockBlob(StorageUri storageUri, StorageCredentials storageCredentials) {
        this(storageUri, (String) null, storageCredentials);
    }

    public CloudBlockBlob(URI uri, String str, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), str, storageCredentials);
    }

    @DoesServiceRequest
    public final String startCopy(CloudBlockBlob cloudBlockBlob, String str, boolean z, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        CloudBlockBlob cloudBlockBlob2 = cloudBlockBlob;
        Utility.assertNotNull("sourceBlob", cloudBlockBlob);
        URI snapshotQualifiedUri = cloudBlockBlob.getSnapshotQualifiedUri();
        if (!(cloudBlockBlob.getServiceClient() == null || cloudBlockBlob.getServiceClient().getCredentials() == null)) {
            snapshotQualifiedUri = cloudBlockBlob.getServiceClient().getCredentials().transformUri(cloudBlockBlob.getSnapshotQualifiedUri());
        }
        return startCopy(snapshotQualifiedUri, str, z, (PremiumPageBlobTier) null, accessCondition, accessCondition2, blobRequestOptions, operationContext);
    }

    public CloudBlockBlob(StorageUri storageUri, String str, StorageCredentials storageCredentials) {
        super(BlobType.BLOCK_BLOB, storageUri, str, storageCredentials);
        this.isStreamWriteSizeModified = false;
    }

    public CloudBlockBlob(String str, String str2, CloudBlobContainer cloudBlobContainer) {
        super(BlobType.BLOCK_BLOB, str, str2, cloudBlobContainer);
        this.isStreamWriteSizeModified = false;
    }

    @DoesServiceRequest
    public final String startCopy(CloudFile cloudFile) {
        return startCopy(cloudFile, (AccessCondition) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final String startCopy(CloudFile cloudFile, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("sourceFile", cloudFile);
        return startCopy(cloudFile.getServiceClient().getCredentials().transformUri(cloudFile.getUri()), (PremiumPageBlobTier) null, accessCondition, accessCondition2, blobRequestOptions, operationContext);
    }
}
