package com.microsoft.azure.storage.blob;

import com.microsoft.azure.proton.transport.proxy.impl.DigestProxyChallengeProcessorImpl;
import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.BaseResponse;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import javax.crypto.Cipher;

public final class CloudPageBlob extends CloudBlob {
    public CloudPageBlob(URI uri) {
        this(new StorageUri(uri));
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> createImpl(long j2, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final long j3 = j2;
        final PremiumPageBlobTier premiumPageBlobTier2 = premiumPageBlobTier;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.putBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.properties, BlobType.PAGE_BLOB, j3, premiumPageBlobTier2);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                cloudBlob.getProperties().setLength(j3);
                cloudBlob.getProperties().setPremiumPageBlobTier(premiumPageBlobTier2);
                if (premiumPageBlobTier2 != null) {
                    cloudBlob.getProperties().setBlobTierInferred(false);
                }
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, OperationContext operationContext) {
                BlobRequest.addMetadata(httpURLConnection, cloudBlob.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, List<PageRangeDiff>> downloadPageRangesDiffImpl(String str, Long l2, Long l3, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final String str2 = str;
        final Long l4 = l2;
        final Long l5 = l3;
        return new StorageRequest<CloudBlobClient, CloudBlob, List<PageRangeDiff>>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.getPageRangesDiff(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.snapshotID, str2, l4, l5);
            }

            public List<PageRangeDiff> postProcessResponse(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext, List<PageRangeDiff> list) {
                cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudBlob.updateLengthFromResponse(getConnection());
                return PageRangeDiffHandler.getPageRangesDiff(getConnection().getInputStream());
            }

            public List<PageRangeDiff> preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
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

    private StorageRequest<CloudBlobClient, CloudBlob, ArrayList<PageRange>> downloadPageRangesImpl(Long l2, Long l3, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final Long l4 = l2;
        final Long l5 = l3;
        return new StorageRequest<CloudBlobClient, CloudBlob, ArrayList<PageRange>>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.getPageRanges(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.snapshotID, l4, l5);
            }

            public ArrayList<PageRange> postProcessResponse(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext, ArrayList<PageRange> arrayList) {
                cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudBlob.updateLengthFromResponse(getConnection());
                return PageRangeHandler.getPageRanges(getConnection().getInputStream());
            }

            public ArrayList<PageRange> preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
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

    private BlobOutputStream openOutputStreamInternal(Long l2, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        assertNoWriteOperationForSnapshot();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.PAGE_BLOB, this.blobServiceClient, false);
        populateAndApplyDefaults.assertPolicyIfRequired();
        if (!populateAndApplyDefaults.getStoreBlobContentMD5().booleanValue()) {
            Cipher cipher = null;
            if (populateAndApplyDefaults.getEncryptionPolicy() != null) {
                cipher = populateAndApplyDefaults.getEncryptionPolicy().createAndSetEncryptionContext(getMetadata(), true);
            }
            Cipher cipher2 = cipher;
            if (l2 != null) {
                if (l2.longValue() % 512 == 0) {
                    create(l2.longValue(), premiumPageBlobTier, accessCondition, populateAndApplyDefaults, operationContext);
                } else {
                    throw new IllegalArgumentException(SR.INVALID_PAGE_BLOB_LENGTH);
                }
            } else if (populateAndApplyDefaults.getEncryptionPolicy() == null) {
                downloadAttributes(accessCondition, populateAndApplyDefaults, operationContext);
                l2 = Long.valueOf(getProperties().getLength());
            } else {
                throw new IllegalArgumentException(SR.ENCRYPTION_NOT_SUPPORTED_FOR_EXISTING_BLOBS);
            }
            if (accessCondition != null) {
                accessCondition = AccessCondition.generateLeaseCondition(accessCondition.getLeaseID());
            }
            AccessCondition accessCondition2 = accessCondition;
            if (populateAndApplyDefaults.getEncryptionPolicy() != null) {
                return new BlobEncryptStream(this, l2.longValue(), accessCondition2, populateAndApplyDefaults, operationContext, cipher2);
            }
            return new BlobOutputStreamInternal(this, l2.longValue(), accessCondition2, populateAndApplyDefaults, operationContext);
        }
        throw new IllegalArgumentException(SR.BLOB_MD5_NOT_SUPPORTED_FOR_PAGE_BLOBS);
    }

    private StorageRequest<CloudBlobClient, CloudPageBlob, Void> putPagesImpl(PageRange pageRange, PageOperationType pageOperationType, byte[] bArr, long j2, String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        final PageOperationType pageOperationType2 = pageOperationType;
        final byte[] bArr2 = bArr;
        final long j3 = j2;
        final OperationContext operationContext2 = operationContext;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final PageRange pageRange2 = pageRange;
        final String str2 = str;
        return new StorageRequest<CloudBlobClient, CloudPageBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudPageBlob cloudPageBlob, OperationContext operationContext) {
                if (pageOperationType2 == PageOperationType.UPDATE) {
                    setSendStream(new ByteArrayInputStream(bArr2));
                    setLength(Long.valueOf(j3));
                }
                return BlobRequest.putPage(cloudPageBlob.getTransformedAddress(operationContext2).getUri(getCurrentLocation()), blobRequestOptions2, operationContext2, accessCondition2, pageRange2, pageOperationType2);
            }

            public Void preProcessResponse(CloudPageBlob cloudPageBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudPageBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudPageBlob.updateSequenceNumberFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudPageBlob cloudPageBlob, OperationContext operationContext) {
                if (pageOperationType2 == PageOperationType.UPDATE && blobRequestOptions2.getUseTransactionalContentMD5().booleanValue()) {
                    httpURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_MD5, str2);
                }
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (pageOperationType2 == PageOperationType.UPDATE) {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, j3, operationContext);
                } else {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
                }
            }
        };
    }

    @DoesServiceRequest
    private void putPagesInternal(PageRange pageRange, PageOperationType pageOperationType, byte[] bArr, long j2, String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, putPagesImpl(pageRange, pageOperationType, bArr, j2, str, accessCondition, blobRequestOptions, operationContext), blobRequestOptions.getRetryPolicyFactory(), operationContext);
    }

    private StorageRequest<CloudBlobClient, CloudPageBlob, Void> resizeImpl(long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final long j3 = j2;
        return new StorageRequest<CloudBlobClient, CloudPageBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudPageBlob cloudPageBlob, OperationContext operationContext) {
                return BlobRequest.resize(cloudPageBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, Long.valueOf(j3));
            }

            public Void preProcessResponse(CloudPageBlob cloudPageBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudPageBlob.getProperties().setLength(j3);
                cloudPageBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudPageBlob.updateSequenceNumberFromResponse(getConnection());
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    @DoesServiceRequest
    public void clearPages(long j2, long j3) {
        clearPages(j2, j3, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void create(long j2) {
        create(j2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ArrayList<PageRange> downloadPageRanges() {
        return downloadPageRanges((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public List<PageRangeDiff> downloadPageRangesDiff(String str) {
        return downloadPageRangesDiff(str, (Long) null, (Long) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public BlobOutputStream openWriteExisting() {
        return openOutputStreamInternal((Long) null, (PremiumPageBlobTier) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public BlobOutputStream openWriteNew(long j2) {
        return openOutputStreamInternal(Long.valueOf(j2), (PremiumPageBlobTier) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void resize(long j2) {
        resize(j2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void setStreamWriteSizeInBytes(int i2) {
        if (i2 > Constants.MAX_PAGE_WRITE_SIZE || i2 < 512 || i2 % Constants.PAGE_SIZE != 0) {
            throw new IllegalArgumentException("StreamWriteSizeInBytes");
        }
        this.streamWriteSizeInBytes = i2;
    }

    @DoesServiceRequest
    public final String startCopy(CloudPageBlob cloudPageBlob) {
        return startCopy(cloudPageBlob, (AccessCondition) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final String startIncrementalCopy(CloudPageBlob cloudPageBlob) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add("snapshot", cloudPageBlob.snapshotID);
        return startIncrementalCopy(uriQueryBuilder.addToURI(cloudPageBlob.getTransformedAddress((OperationContext) null).getPrimaryUri()), (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void updateSequenceNumberFromResponse(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("x-ms-blob-sequence-number");
        if (!Utility.isNullOrEmpty(headerField)) {
            getProperties().setPageBlobSequenceNumber(Long.valueOf(Long.parseLong(headerField)));
        }
    }

    @DoesServiceRequest
    public void upload(InputStream inputStream, long j2) {
        upload(inputStream, j2, (PremiumPageBlobTier) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void uploadFromByteArray(byte[] bArr, int i2, int i3, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        byte[] bArr2 = bArr;
        int i4 = i2;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i2, i3);
        upload(byteArrayInputStream, (long) i3, premiumPageBlobTier, accessCondition, blobRequestOptions, operationContext);
        byteArrayInputStream.close();
    }

    public void uploadFromFile(String str, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        File file = new File(str);
        long length = file.length();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        upload(bufferedInputStream, length, premiumPageBlobTier, accessCondition, blobRequestOptions, operationContext);
        bufferedInputStream.close();
    }

    @DoesServiceRequest
    public void uploadPages(InputStream inputStream, long j2, long j3) {
        uploadPages(inputStream, j2, j3, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadPremiumPageBlobTier(PremiumPageBlobTier premiumPageBlobTier) {
        uploadPremiumPageBlobTier(premiumPageBlobTier, (BlobRequestOptions) null, (OperationContext) null);
    }

    public CloudPageBlob(StorageUri storageUri) {
        this(storageUri, (StorageCredentials) null);
    }

    @DoesServiceRequest
    public void clearPages(long j2, long j3, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        long j4 = j2;
        if (j4 % 512 != 0) {
            throw new IllegalArgumentException(SR.INVALID_PAGE_START_OFFSET);
        } else if (j3 % 512 == 0) {
            OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
            BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.PAGE_BLOB, this.blobServiceClient);
            populateAndApplyDefaults.assertNoEncryptionPolicyOrStrictMode();
            putPagesInternal(new PageRange(j2, (j4 + j3) - 1), PageOperationType.CLEAR, (byte[]) null, j3, (String) null, accessCondition, populateAndApplyDefaults, operationContext2);
        } else {
            throw new IllegalArgumentException(SR.INVALID_PAGE_BLOB_LENGTH);
        }
    }

    @DoesServiceRequest
    public void create(long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        create(j2, (PremiumPageBlobTier) null, accessCondition, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public ArrayList<PageRange> downloadPageRanges(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.PAGE_BLOB, this.blobServiceClient);
        return (ArrayList) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadPageRangesImpl((Long) null, (Long) null, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public List<PageRangeDiff> downloadPageRangesDiff(String str, Long l2, Long l3, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.PAGE_BLOB, this.blobServiceClient);
        return (List) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadPageRangesDiffImpl(str, l2, l3, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public BlobOutputStream openWriteExisting(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return openOutputStreamInternal((Long) null, (PremiumPageBlobTier) null, accessCondition, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public BlobOutputStream openWriteNew(long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return openOutputStreamInternal(Long.valueOf(j2), (PremiumPageBlobTier) null, accessCondition, blobRequestOptions, operationContext);
    }

    public void resize(long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (j2 % 512 == 0) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            operationContext.initialize();
            BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
            ExecutionEngine.executeWithRetry(this.blobServiceClient, this, resizeImpl(j2, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return;
        }
        throw new IllegalArgumentException(SR.INVALID_PAGE_BLOB_LENGTH);
    }

    @DoesServiceRequest
    public final String startCopy(CloudPageBlob cloudPageBlob, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return startCopy(cloudPageBlob, (PremiumPageBlobTier) null, accessCondition, accessCondition2, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public void upload(InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        upload(inputStream, j2, (PremiumPageBlobTier) null, accessCondition, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public void uploadPages(InputStream inputStream, long j2, long j3, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        String str;
        long j4 = j2;
        long j5 = j3;
        if (j4 % 512 != 0) {
            throw new IllegalArgumentException(SR.INVALID_PAGE_START_OFFSET);
        } else if (j5 == 0 || j5 % 512 != 0) {
            throw new IllegalArgumentException(SR.INVALID_PAGE_BLOB_LENGTH);
        } else if (j5 <= 4194304) {
            assertNoWriteOperationForSnapshot();
            OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
            BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.PAGE_BLOB, this.blobServiceClient);
            populateAndApplyDefaults.assertNoEncryptionPolicyOrStrictMode();
            PageRange pageRange = new PageRange(j4, (j4 + j5) - 1);
            int i2 = (int) j5;
            byte[] bArr = new byte[i2];
            int i3 = 0;
            while (true) {
                long j6 = (long) i3;
                if (j6 >= j5) {
                    break;
                }
                i3 += inputStream.read(bArr, i3, (int) Math.min(j5 - j6, 2147483647L));
            }
            if (populateAndApplyDefaults.getUseTransactionalContentMD5().booleanValue()) {
                try {
                    MessageDigest instance = MessageDigest.getInstance(DigestProxyChallengeProcessorImpl.DEFAULT_ALGORITHM);
                    instance.update(bArr, 0, i2);
                    str = Base64.encode(instance.digest());
                } catch (NoSuchAlgorithmException e2) {
                    throw Utility.generateNewUnexpectedStorageException(e2);
                }
            } else {
                str = null;
            }
            putPagesInternal(pageRange, PageOperationType.UPDATE, bArr, j3, str, accessCondition, populateAndApplyDefaults, operationContext2);
        } else {
            throw new IllegalArgumentException(SR.INVALID_MAX_WRITE_SIZE);
        }
    }

    @DoesServiceRequest
    public void uploadPremiumPageBlobTier(PremiumPageBlobTier premiumPageBlobTier, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        Utility.assertNotNull("premiumBlobTier", premiumPageBlobTier);
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.PAGE_BLOB, this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, uploadBlobTierImpl(premiumPageBlobTier.toString(), populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
        this.properties.setPremiumPageBlobTier(premiumPageBlobTier);
        this.properties.setBlobTierInferred(false);
    }

    public CloudPageBlob(CloudPageBlob cloudPageBlob) {
        super(cloudPageBlob);
    }

    @DoesServiceRequest
    public void create(long j2, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (j2 % 512 == 0) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.PAGE_BLOB, this.blobServiceClient);
            ExecutionEngine.executeWithRetry(this.blobServiceClient, this, createImpl(j2, premiumPageBlobTier, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return;
        }
        throw new IllegalArgumentException(SR.INVALID_PAGE_BLOB_LENGTH);
    }

    @DoesServiceRequest
    public BlobOutputStream openWriteNew(long j2, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return openOutputStreamInternal(Long.valueOf(j2), premiumPageBlobTier, accessCondition, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public final String startCopy(CloudPageBlob cloudPageBlob, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("sourceBlob", cloudPageBlob);
        URI snapshotQualifiedUri = cloudPageBlob.getSnapshotQualifiedUri();
        if (!(cloudPageBlob.getServiceClient() == null || cloudPageBlob.getServiceClient().getCredentials() == null)) {
            snapshotQualifiedUri = cloudPageBlob.getServiceClient().getCredentials().transformUri(cloudPageBlob.getSnapshotQualifiedUri());
        }
        return startCopy(snapshotQualifiedUri, premiumPageBlobTier, accessCondition, accessCondition2, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public void upload(InputStream inputStream, long j2, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        OperationContext operationContext2 = operationContext;
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.PAGE_BLOB, this.blobServiceClient);
        populateAndApplyDefaults.assertPolicyIfRequired();
        if (j2 <= 0 || j2 % 512 != 0) {
            throw new IllegalArgumentException(SR.INVALID_PAGE_BLOB_LENGTH);
        } else if (!populateAndApplyDefaults.getStoreBlobContentMD5().booleanValue()) {
            if (inputStream.markSupported()) {
                inputStream.mark(268435456);
            }
            BlobOutputStream openWriteNew = openWriteNew(j2, premiumPageBlobTier, accessCondition, populateAndApplyDefaults, operationContext2);
            try {
                openWriteNew.write(inputStream, j2);
            } finally {
                openWriteNew.close();
            }
        } else {
            throw new IllegalArgumentException(SR.BLOB_MD5_NOT_SUPPORTED_FOR_PAGE_BLOBS);
        }
    }

    public CloudPageBlob(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    public CloudPageBlob(URI uri, String str, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), str, storageCredentials);
    }

    @DoesServiceRequest
    public final String startIncrementalCopy(URI uri) {
        return startIncrementalCopy(uri, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public CloudPageBlob(StorageUri storageUri, StorageCredentials storageCredentials) {
        this(storageUri, (String) null, storageCredentials);
    }

    @DoesServiceRequest
    public final String startIncrementalCopy(CloudPageBlob cloudPageBlob, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        UriQueryBuilder uriQueryBuilder = new UriQueryBuilder();
        uriQueryBuilder.add("snapshot", cloudPageBlob.snapshotID);
        return startIncrementalCopy(uriQueryBuilder.addToURI(cloudPageBlob.getTransformedAddress((OperationContext) null).getPrimaryUri()), accessCondition, blobRequestOptions, operationContext);
    }

    public CloudPageBlob(StorageUri storageUri, String str, StorageCredentials storageCredentials) {
        super(BlobType.PAGE_BLOB, storageUri, str, storageCredentials);
    }

    public CloudPageBlob(String str, String str2, CloudBlobContainer cloudBlobContainer) {
        super(BlobType.PAGE_BLOB, str, str2, cloudBlobContainer);
    }

    @DoesServiceRequest
    public List<PageRange> downloadPageRanges(long j2, Long l2) {
        return downloadPageRanges(j2, l2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public List<PageRange> downloadPageRanges(long j2, Long l2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (j2 < 0 || (l2 != null && l2.longValue() <= 0)) {
            throw new IndexOutOfBoundsException();
        }
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.PAGE_BLOB, this.blobServiceClient);
        return (List) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadPageRangesImpl(Long.valueOf(j2), l2, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final String startIncrementalCopy(URI uri, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("sourceSnapshot", uri);
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        return (String) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, startCopyImpl(uri, "", false, true, (PremiumPageBlobTier) null, (AccessCondition) null, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }
}
