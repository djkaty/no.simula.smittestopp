package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.BaseResponse;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.Utility;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import javax.crypto.Cipher;

public final class CloudAppendBlob extends CloudBlob {
    public CloudAppendBlob(URI uri) {
        this(new StorageUri(uri));
    }

    private StorageRequest<CloudBlobClient, CloudAppendBlob, Long> appendBlockImpl(String str, InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        final InputStream inputStream2 = inputStream;
        final long j3 = j2;
        final OperationContext operationContext2 = operationContext;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final String str2 = str;
        return new StorageRequest<CloudBlobClient, CloudAppendBlob, Long>(blobRequestOptions, getStorageUri()) {
            public void recoveryAction(OperationContext operationContext) {
                inputStream2.reset();
                inputStream2.mark(268435456);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudAppendBlob cloudAppendBlob, OperationContext operationContext) {
                setSendStream(inputStream2);
                setLength(Long.valueOf(j3));
                return BlobRequest.appendBlock(cloudAppendBlob.getTransformedAddress(operationContext2).getUri(getCurrentLocation()), blobRequestOptions2, operationContext2, accessCondition2);
            }

            public Long preProcessResponse(CloudAppendBlob cloudAppendBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                Long l2 = null;
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                if (getConnection().getHeaderField(Constants.HeaderConstants.BLOB_APPEND_OFFSET) != null) {
                    l2 = Long.valueOf(Long.parseLong(getConnection().getHeaderField(Constants.HeaderConstants.BLOB_APPEND_OFFSET)));
                }
                cloudAppendBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudAppendBlob.updateCommittedBlockCountFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return l2;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudAppendBlob cloudAppendBlob, OperationContext operationContext) {
                if (blobRequestOptions2.getUseTransactionalContentMD5().booleanValue()) {
                    httpURLConnection.setRequestProperty(Constants.HeaderConstants.CONTENT_MD5, str2);
                }
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, j3, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> createImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.putBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.properties, BlobType.APPEND_BLOB, 0);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                cloudBlob.getProperties().setLength(0);
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

    private BlobOutputStream openOutputStreamInternal(boolean z, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        OperationContext operationContext2 = operationContext;
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.APPEND_BLOB, this.blobServiceClient, false);
        populateAndApplyDefaults.assertPolicyIfRequired();
        Cipher cipher = null;
        if (populateAndApplyDefaults.getEncryptionPolicy() != null) {
            cipher = populateAndApplyDefaults.getEncryptionPolicy().createAndSetEncryptionContext(getMetadata(), false);
        }
        Cipher cipher2 = cipher;
        if (z) {
            createOrReplace(accessCondition, populateAndApplyDefaults, operationContext2);
        } else if (populateAndApplyDefaults.getStoreBlobContentMD5().booleanValue()) {
            throw new IllegalArgumentException(SR.APPEND_BLOB_MD5_NOT_POSSIBLE);
        } else if (populateAndApplyDefaults.getEncryptionPolicy() == null) {
            downloadAttributes(accessCondition, populateAndApplyDefaults, operationContext2);
        } else {
            throw new IllegalArgumentException(SR.ENCRYPTION_NOT_SUPPORTED_FOR_EXISTING_BLOBS);
        }
        AccessCondition accessCondition2 = new AccessCondition();
        if (accessCondition != null) {
            accessCondition2.setLeaseID(accessCondition.getLeaseID());
            accessCondition2.setIfAppendPositionEqual(accessCondition.getIfAppendPositionEqual());
            accessCondition2.setIfMaxSizeLessThanOrEqual(accessCondition.getIfMaxSizeLessThanOrEqual());
        }
        if (populateAndApplyDefaults.getEncryptionPolicy() != null) {
            return new BlobEncryptStream(this, accessCondition2, populateAndApplyDefaults, operationContext2, cipher2);
        }
        return new BlobOutputStreamInternal(this, accessCondition2, populateAndApplyDefaults, operationContext2);
    }

    /* access modifiers changed from: private */
    public void updateCommittedBlockCountFromResponse(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField(Constants.HeaderConstants.BLOB_COMMITTED_BLOCK_COUNT);
        if (!Utility.isNullOrEmpty(headerField)) {
            getProperties().setAppendBlobCommittedBlockCount(Integer.valueOf(Integer.parseInt(headerField)));
        }
    }

    @DoesServiceRequest
    public void append(InputStream inputStream, long j2) {
        append(inputStream, j2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public Long appendBlock(InputStream inputStream, long j2) {
        return appendBlock(inputStream, j2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void appendFromByteArray(byte[] bArr, int i2, int i3) {
        appendFromByteArray(bArr, i2, i3, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void appendFromFile(String str) {
        appendFromFile(str, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void appendText(String str) {
        appendText(str, (String) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void createOrReplace() {
        createOrReplace((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public BlobOutputStream openWriteExisting() {
        return openWriteExisting((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public BlobOutputStream openWriteNew() {
        return openWriteNew((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void setStreamWriteSizeInBytes(int i2) {
        if (i2 > Constants.MAX_APPEND_BLOCK_SIZE || i2 < 16384) {
            throw new IllegalArgumentException("StreamWriteSizeInBytes");
        }
        this.streamWriteSizeInBytes = i2;
    }

    @DoesServiceRequest
    public final String startCopy(CloudAppendBlob cloudAppendBlob) {
        return startCopy(cloudAppendBlob, (AccessCondition) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void upload(InputStream inputStream, long j2) {
        upload(inputStream, j2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public CloudAppendBlob(StorageUri storageUri) {
        this(storageUri, (StorageCredentials) null);
    }

    @DoesServiceRequest
    public void append(InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.APPEND_BLOB, this.blobServiceClient);
        if (inputStream.markSupported()) {
            inputStream.mark(268435456);
        }
        BlobOutputStream openWriteExisting = openWriteExisting(accessCondition, populateAndApplyDefaults, operationContext);
        try {
            openWriteExisting.write(inputStream, j2);
        } finally {
            openWriteExisting.close();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x009f  */
    @com.microsoft.azure.storage.DoesServiceRequest
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Long appendBlock(java.io.InputStream r10, long r11, com.microsoft.azure.storage.AccessCondition r13, com.microsoft.azure.storage.blob.BlobRequestOptions r14, com.microsoft.azure.storage.OperationContext r15) {
        /*
            r9 = this;
            r0 = -1
            int r2 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r2 < 0) goto L_0x00a7
            r9.assertNoWriteOperationForSnapshot()
            if (r15 != 0) goto L_0x0010
            com.microsoft.azure.storage.OperationContext r15 = new com.microsoft.azure.storage.OperationContext
            r15.<init>()
        L_0x0010:
            com.microsoft.azure.storage.blob.BlobType r0 = com.microsoft.azure.storage.blob.BlobType.APPEND_BLOB
            com.microsoft.azure.storage.blob.CloudBlobClient r1 = r9.blobServiceClient
            com.microsoft.azure.storage.blob.BlobRequestOptions r14 = com.microsoft.azure.storage.blob.BlobRequestOptions.populateAndApplyDefaults(r14, r0, r1)
            r14.assertNoEncryptionPolicyOrStrictMode()
            boolean r0 = r10.markSupported()
            if (r0 == 0) goto L_0x0026
            r0 = 268435456(0x10000000, float:2.5243549E-29)
            r10.mark(r0)
        L_0x0026:
            com.microsoft.azure.storage.core.StreamMd5AndLength r0 = new com.microsoft.azure.storage.core.StreamMd5AndLength
            r0.<init>()
            r0.setLength(r11)
            boolean r1 = r10.markSupported()
            if (r1 != 0) goto L_0x0056
            java.io.ByteArrayOutputStream r8 = new java.io.ByteArrayOutputStream
            r8.<init>()
            r4 = 0
            java.lang.Boolean r0 = r14.getUseTransactionalContentMD5()
            boolean r5 = r0.booleanValue()
            r0 = r10
            r1 = r8
            r2 = r11
            r6 = r15
            r7 = r14
            com.microsoft.azure.storage.core.StreamMd5AndLength r0 = com.microsoft.azure.storage.core.Utility.writeToOutputStream(r0, r1, r2, r4, r5, r6, r7)
            java.io.ByteArrayInputStream r10 = new java.io.ByteArrayInputStream
            byte[] r11 = r8.toByteArray()
            r10.<init>(r11)
        L_0x0054:
            r2 = r10
            goto L_0x0077
        L_0x0056:
            r1 = 0
            int r3 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r3 < 0) goto L_0x0066
            java.lang.Boolean r1 = r14.getUseTransactionalContentMD5()
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x0054
        L_0x0066:
            r5 = -1
            r7 = 1
            java.lang.Boolean r0 = r14.getUseTransactionalContentMD5()
            boolean r8 = r0.booleanValue()
            r2 = r10
            r3 = r11
            com.microsoft.azure.storage.core.StreamMd5AndLength r0 = com.microsoft.azure.storage.core.Utility.analyzeStream(r2, r3, r5, r7, r8)
        L_0x0077:
            long r10 = r0.getLength()
            r3 = 4194304(0x400000, double:2.0722615E-317)
            int r12 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r12 > 0) goto L_0x009f
            java.lang.String r1 = r0.getMd5()
            long r3 = r0.getLength()
            r0 = r9
            r5 = r13
            r6 = r14
            r7 = r15
            com.microsoft.azure.storage.core.StorageRequest r10 = r0.appendBlockImpl(r1, r2, r3, r5, r6, r7)
            com.microsoft.azure.storage.blob.CloudBlobClient r11 = r9.blobServiceClient
            com.microsoft.azure.storage.RetryPolicyFactory r12 = r14.getRetryPolicyFactory()
            java.lang.Object r10 = com.microsoft.azure.storage.core.ExecutionEngine.executeWithRetry(r11, r9, r10, r12, r15)
            java.lang.Long r10 = (java.lang.Long) r10
            return r10
        L_0x009f:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "Invalid stream length, length must be less than or equal to 4 MB in size."
            r10.<init>(r11)
            throw r10
        L_0x00a7:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "Invalid stream length, specify -1 for unknown length stream, or a positive number of bytes."
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.blob.CloudAppendBlob.appendBlock(java.io.InputStream, long, com.microsoft.azure.storage.AccessCondition, com.microsoft.azure.storage.blob.BlobRequestOptions, com.microsoft.azure.storage.OperationContext):java.lang.Long");
    }

    public void appendFromByteArray(byte[] bArr, int i2, int i3, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i2, i3);
        append(byteArrayInputStream, (long) i3, accessCondition, blobRequestOptions, operationContext);
        byteArrayInputStream.close();
    }

    public void appendFromFile(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        File file = new File(str);
        long length = file.length();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        append(bufferedInputStream, length, accessCondition, blobRequestOptions, operationContext);
        bufferedInputStream.close();
    }

    public void appendText(String str, String str2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        byte[] bytes = str2 == null ? str.getBytes() : str.getBytes(str2);
        appendFromByteArray(bytes, 0, bytes.length, accessCondition, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public void createOrReplace(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.APPEND_BLOB, this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, createImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public BlobOutputStream openWriteExisting(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return openOutputStreamInternal(false, accessCondition, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public BlobOutputStream openWriteNew(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return openOutputStreamInternal(true, accessCondition, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public final String startCopy(CloudAppendBlob cloudAppendBlob, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("sourceBlob", cloudAppendBlob);
        URI snapshotQualifiedUri = cloudAppendBlob.getSnapshotQualifiedUri();
        if (!(cloudAppendBlob.getServiceClient() == null || cloudAppendBlob.getServiceClient().getCredentials() == null)) {
            snapshotQualifiedUri = cloudAppendBlob.getServiceClient().getCredentials().transformUri(cloudAppendBlob.getSnapshotQualifiedUri());
        }
        return startCopy(snapshotQualifiedUri, (PremiumPageBlobTier) null, accessCondition, accessCondition2, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public void upload(InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.APPEND_BLOB, this.blobServiceClient);
        if (inputStream.markSupported()) {
            inputStream.mark(268435456);
        }
        BlobOutputStream openWriteNew = openWriteNew(accessCondition, populateAndApplyDefaults, operationContext);
        try {
            openWriteNew.write(inputStream, j2);
        } finally {
            openWriteNew.close();
        }
    }

    public CloudAppendBlob(CloudAppendBlob cloudAppendBlob) {
        super(cloudAppendBlob);
    }

    public CloudAppendBlob(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    public CloudAppendBlob(URI uri, String str, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), str, storageCredentials);
    }

    public CloudAppendBlob(StorageUri storageUri, StorageCredentials storageCredentials) {
        this(storageUri, (String) null, storageCredentials);
    }

    public CloudAppendBlob(StorageUri storageUri, String str, StorageCredentials storageCredentials) {
        super(BlobType.APPEND_BLOB, storageUri, str, storageCredentials);
    }

    public CloudAppendBlob(String str, String str2, CloudBlobContainer cloudBlobContainer) {
        super(BlobType.APPEND_BLOB, str, str2, cloudBlobContainer);
    }
}
