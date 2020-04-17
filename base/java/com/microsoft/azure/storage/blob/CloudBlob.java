package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.AccountInformation;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.IPRange;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.ServiceClient;
import com.microsoft.azure.storage.SharedAccessProtocols;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsSharedAccessSignature;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.StorageLocation;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.BaseRequest;
import com.microsoft.azure.storage.core.BaseResponse;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SharedAccessSignatureHelper;
import com.microsoft.azure.storage.core.StorageCredentialsHelper;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.azure.storage.core.WrappedByteArrayOutputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

public abstract class CloudBlob implements ListBlobItem {
    public CloudBlobClient blobServiceClient;
    public CloudBlobContainer container;
    public boolean deleted;
    public HashMap<String, String> metadata = new HashMap<>();
    public String name;
    public CloudBlobDirectory parent;
    public BlobProperties properties;
    public String snapshotID;
    public StorageUri storageUri;
    public int streamMinimumReadSizeInBytes = 4194304;
    public int streamWriteSizeInBytes = 4194304;

    public CloudBlob(BlobType blobType, String str, String str2, CloudBlobContainer cloudBlobContainer) {
        Utility.assertNotNullOrEmpty("blobName", str);
        Utility.assertNotNull(SR.CONTAINER, cloudBlobContainer);
        this.storageUri = PathUtility.appendPathToUri(cloudBlobContainer.getStorageUri(), str);
        this.name = str;
        this.blobServiceClient = cloudBlobContainer.getServiceClient();
        this.container = cloudBlobContainer;
        this.snapshotID = str2;
        this.properties = new BlobProperties(blobType);
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> abortCopyImpl(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        Utility.assertNotNull("copyId", str);
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final String str2 = str;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.abortCopy(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, str2);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 202) {
                    setNonExceptionedRetryableFailure(true);
                }
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, String> acquireLeaseImpl(Integer num, String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final Integer num2 = num;
        final String str2 = str;
        return new StorageRequest<CloudBlobClient, CloudBlob, String>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.leaseBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.ACQUIRE, num2, str2, (Integer) null);
            }

            public String preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                CloudBlob.this.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudBlob.properties.setLeaseStatus(LeaseStatus.LOCKED);
                return BlobResponse.getLeaseID(getConnection());
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Long> breakLeaseImpl(Integer num, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final Integer num2 = num;
        return new StorageRequest<CloudBlobClient, CloudBlob, Long>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.leaseBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.BREAK, (Integer) null, (String) null, num2);
            }

            public Long preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                long j2 = -1;
                if (getResult().getStatusCode() != 202) {
                    setNonExceptionedRetryableFailure(true);
                    return -1L;
                }
                CloudBlob.this.updateEtagAndLastModifiedFromResponse(getConnection());
                String leaseTime = BlobResponse.getLeaseTime(getConnection());
                cloudBlob.properties.setLeaseStatus(LeaseStatus.UNLOCKED);
                if (!Utility.isNullOrEmpty(leaseTime)) {
                    j2 = Long.parseLong(leaseTime);
                }
                return Long.valueOf(j2);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, String> changeLeaseImpl(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final String str2 = str;
        return new StorageRequest<CloudBlobClient, CloudBlob, String>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.leaseBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.CHANGE, (Integer) null, str2, (Integer) null);
            }

            public String preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                CloudBlob.this.updateEtagAndLastModifiedFromResponse(getConnection());
                return BlobResponse.getLeaseID(getConnection());
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, CloudBlob> createSnapshotImpl(HashMap<String, String> hashMap, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final HashMap<String, String> hashMap2 = hashMap;
        return new StorageRequest<CloudBlobClient, CloudBlob, CloudBlob>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.snapshot(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2);
            }

            public CloudBlob preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                CloudBlob cloudBlob2 = null;
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                String snapshotTime = BlobResponse.getSnapshotTime(getConnection());
                if (cloudBlob instanceof CloudBlockBlob) {
                    cloudBlob2 = new CloudBlockBlob(cloudBlob.getName(), snapshotTime, CloudBlob.this.getContainer());
                } else if (cloudBlob instanceof CloudPageBlob) {
                    cloudBlob2 = new CloudPageBlob(cloudBlob.getName(), snapshotTime, CloudBlob.this.getContainer());
                } else if (cloudBlob instanceof CloudAppendBlob) {
                    cloudBlob2 = new CloudAppendBlob(cloudBlob.getName(), snapshotTime, CloudBlob.this.getContainer());
                }
                cloudBlob2.setProperties(cloudBlob.properties);
                HashMap<String, String> hashMap = hashMap2;
                if (hashMap == null) {
                    hashMap = cloudBlob.metadata;
                }
                cloudBlob2.setMetadata(hashMap);
                cloudBlob2.updateEtagAndLastModifiedFromResponse(getConnection());
                return cloudBlob2;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, OperationContext operationContext) {
                HashMap hashMap = hashMap2;
                if (hashMap != null) {
                    BlobRequest.addMetadata(httpURLConnection, hashMap, operationContext);
                }
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private void deleteEmptyFileOnException(OutputStream outputStream, String str) {
        try {
            outputStream.close();
            new File(str).delete();
        } catch (Exception unused) {
        }
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> deleteImpl(DeleteSnapshotsOption deleteSnapshotsOption, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final DeleteSnapshotsOption deleteSnapshotsOption2 = deleteSnapshotsOption;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.deleteBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.snapshotID, deleteSnapshotsOption2);
            }

            public Void postProcessResponse(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext, Void voidR) {
                if (getResult().getStatusCode() != 202) {
                    return null;
                }
                cloudBlob.deleted = true;
                return null;
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 202) {
                    setNonExceptionedRetryableFailure(true);
                }
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> downloadAttributesImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.getBlobProperties(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.snapshotID);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                BlobAttributes blobAttributes = BlobResponse.getBlobAttributes(getConnection(), cloudBlob.getStorageUri(), cloudBlob.snapshotID);
                if (blobAttributes.getProperties().getBlobType() == cloudBlob.properties.getBlobType()) {
                    cloudBlob.properties = blobAttributes.getProperties();
                    cloudBlob.metadata = blobAttributes.getMetadata();
                    return null;
                }
                throw new StorageException(StorageErrorCodeStrings.INCORRECT_BLOB_TYPE, String.format(SR.INVALID_BLOB_TYPE, new Object[]{cloudBlob.properties.getBlobType(), blobAttributes.getProperties().getBlobType()}), Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, -1, operationContext);
            }
        };
    }

    @DoesServiceRequest
    private final StorageRequest<CloudBlobClient, CloudBlob, Integer> downloadToStreamImpl(Long l2, Long l3, OutputStream outputStream, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        long j2;
        final boolean z;
        final int i2;
        final Long l4;
        final Long l5;
        final Long l6;
        Long l7;
        blobRequestOptions.assertPolicyIfRequired();
        if (l2 == null) {
            j2 = 0;
        } else {
            j2 = l2.longValue();
        }
        final long j3 = j2;
        boolean z2 = true;
        final boolean z3 = l2 != null;
        Long l8 = null;
        if (!z3 || blobRequestOptions.getEncryptionPolicy() == null) {
            l6 = l2;
            l5 = l3;
            l4 = null;
            i2 = 0;
            z = false;
        } else {
            if (l3 != null) {
                Long valueOf = Long.valueOf((l3.longValue() + l2.longValue()) - 1);
                l8 = Long.valueOf((15 - (valueOf.longValue() % 16)) + valueOf.longValue());
            }
            int longValue = (int) (l2.longValue() % 16);
            Long valueOf2 = Long.valueOf(l2.longValue() - ((long) longValue));
            if (valueOf2.longValue() > 15) {
                l7 = Long.valueOf(valueOf2.longValue() - 16);
            } else {
                l7 = valueOf2;
                z2 = false;
            }
            if (l8 != null) {
                z = z2;
                l6 = l7;
                l4 = l8;
                l5 = Long.valueOf((l8.longValue() - l7.longValue()) + 1);
            } else {
                l5 = l3;
                z = z2;
                l6 = l7;
                l4 = l8;
            }
            i2 = longValue;
        }
        final AccessCondition accessCondition2 = accessCondition;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final OutputStream outputStream2 = outputStream;
        final Long l9 = l3;
        return new StorageRequest<CloudBlobClient, CloudBlob, Integer>(blobRequestOptions, getStorageUri()) {
            public void recoveryAction(OperationContext operationContext) {
                if (!blobRequestOptions2.getSkipEtagLocking() && getETagLockCondition() == null && !Utility.isNullOrEmpty(getLockedETag())) {
                    AccessCondition accessCondition = new AccessCondition();
                    accessCondition.setIfMatch(getLockedETag());
                    AccessCondition accessCondition2 = accessCondition2;
                    if (accessCondition2 != null) {
                        accessCondition.setLeaseID(accessCondition2.getLeaseID());
                    }
                    setETagLockCondition(accessCondition);
                }
                if (getCurrentRequestByteCount() > 0) {
                    setOffset(Long.valueOf(getCurrentRequestByteCount() + j3));
                    Long l2 = l5;
                    if (l2 != null) {
                        setLength(Long.valueOf(l2.longValue() - getCurrentRequestByteCount()));
                    }
                }
            }

            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                if (getOffset() == null) {
                    setOffset(l6);
                }
                if (getLength() == null) {
                    setLength(l5);
                }
                return BlobRequest.getBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, getETagLockCondition() != null ? getETagLockCondition() : accessCondition2, cloudBlob.snapshotID, getOffset(), getLength(), blobRequestOptions2.getUseTransactionalContentMD5().booleanValue() && !getArePropertiesPopulated());
            }

            /* JADX WARNING: Removed duplicated region for block: B:31:0x00fd  */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public java.lang.Integer postProcessResponse(java.net.HttpURLConnection r19, com.microsoft.azure.storage.blob.CloudBlob r20, com.microsoft.azure.storage.blob.CloudBlobClient r21, com.microsoft.azure.storage.OperationContext r22, java.lang.Integer r23) {
                /*
                    r18 = this;
                    r12 = r18
                    r0 = r20
                    com.microsoft.azure.storage.blob.BlobRequestOptions r1 = r9
                    java.lang.Boolean r1 = r1.getDisableContentMD5Validation()
                    boolean r1 = r1.booleanValue()
                    r13 = 0
                    r14 = 1
                    if (r1 != 0) goto L_0x001e
                    java.lang.String r1 = r18.getContentMD5()
                    boolean r1 = com.microsoft.azure.storage.core.Utility.isNullOrEmpty(r1)
                    if (r1 != 0) goto L_0x001e
                    r1 = 1
                    goto L_0x001f
                L_0x001e:
                    r1 = 0
                L_0x001f:
                    java.lang.Boolean r15 = java.lang.Boolean.valueOf(r1)
                    java.lang.String r1 = "Content-Length"
                    r2 = r19
                    java.lang.String r1 = r2.getHeaderField(r1)
                    long r3 = java.lang.Long.parseLong(r1)
                    java.lang.Object[] r1 = new java.lang.Object[r14]
                    java.lang.Long r5 = java.lang.Long.valueOf(r3)
                    r1[r13] = r5
                    java.lang.String r5 = "Creating a NetworkInputStream and expecting to read %s bytes."
                    java.lang.String r1 = java.lang.String.format(r5, r1)
                    r11 = r22
                    com.microsoft.azure.storage.core.Logger.info(r11, r1)
                    com.microsoft.azure.storage.core.NetworkInputStream r10 = new com.microsoft.azure.storage.core.NetworkInputStream
                    java.io.InputStream r1 = r19.getInputStream()
                    r10.<init>(r1, r3)
                    java.io.OutputStream r9 = r10
                    com.microsoft.azure.storage.blob.BlobRequestOptions r1 = r9     // Catch:{ all -> 0x00ed }
                    com.microsoft.azure.storage.blob.BlobEncryptionPolicy r1 = r1.getEncryptionPolicy()     // Catch:{ all -> 0x00ed }
                    if (r1 == 0) goto L_0x007e
                    java.io.OutputStream r2 = r10     // Catch:{ all -> 0x00ed }
                    com.microsoft.azure.storage.blob.BlobRequestOptions r3 = r9     // Catch:{ all -> 0x00ed }
                    java.util.HashMap<java.lang.String, java.lang.String> r4 = r0.metadata     // Catch:{ all -> 0x00ed }
                    com.microsoft.azure.storage.blob.BlobProperties r1 = r0.properties     // Catch:{ all -> 0x00ed }
                    long r5 = r1.getLength()     // Catch:{ all -> 0x00ed }
                    boolean r7 = r11     // Catch:{ all -> 0x00ed }
                    java.lang.Long r8 = r12     // Catch:{ all -> 0x00ed }
                    java.lang.Long r1 = r13     // Catch:{ all -> 0x00ed }
                    int r13 = r14     // Catch:{ all -> 0x00ed }
                    boolean r14 = r15     // Catch:{ all -> 0x00ed }
                    r16 = r1
                    r1 = r20
                    r17 = r9
                    r9 = r16
                    r16 = r10
                    r10 = r13
                    r11 = r14
                    java.io.OutputStream r9 = com.microsoft.azure.storage.blob.BlobEncryptionPolicy.wrapUserStreamWithDecryptStream(r1, r2, r3, r4, r5, r7, r8, r9, r10, r11)     // Catch:{ all -> 0x00e9 }
                    r17 = r9
                    goto L_0x0082
                L_0x007e:
                    r17 = r9
                    r16 = r10
                L_0x0082:
                    r3 = -1
                    r5 = 0
                    boolean r6 = r15.booleanValue()     // Catch:{ all -> 0x00e9 }
                    com.microsoft.azure.storage.blob.BlobRequestOptions r8 = r9     // Catch:{ all -> 0x00e9 }
                    r0 = 1
                    java.lang.Boolean r9 = java.lang.Boolean.valueOf(r0)     // Catch:{ all -> 0x00e9 }
                    com.microsoft.azure.storage.core.StreamMd5AndLength r11 = r18.getCurrentDescriptor()     // Catch:{ all -> 0x00e9 }
                    r1 = r16
                    r2 = r17
                    r7 = r22
                    r10 = r18
                    com.microsoft.azure.storage.core.StreamMd5AndLength r0 = com.microsoft.azure.storage.core.Utility.writeToOutputStream(r1, r2, r3, r5, r6, r7, r8, r9, r10, r11)     // Catch:{ all -> 0x00e9 }
                    boolean r1 = r15.booleanValue()     // Catch:{ all -> 0x00e9 }
                    if (r1 == 0) goto L_0x00d9
                    java.lang.String r1 = r18.getContentMD5()     // Catch:{ all -> 0x00e9 }
                    java.lang.String r2 = r0.getMd5()     // Catch:{ all -> 0x00e9 }
                    boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x00e9 }
                    if (r1 == 0) goto L_0x00b5
                    goto L_0x00d9
                L_0x00b5:
                    com.microsoft.azure.storage.StorageException r1 = new com.microsoft.azure.storage.StorageException     // Catch:{ all -> 0x00e9 }
                    java.lang.String r3 = "InvalidMd5"
                    java.lang.String r2 = "Blob hash mismatch (integrity check failed), Expected value is %s, retrieved %s."
                    r4 = 2
                    java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ all -> 0x00e9 }
                    java.lang.String r5 = r18.getContentMD5()     // Catch:{ all -> 0x00e9 }
                    r6 = 0
                    r4[r6] = r5     // Catch:{ all -> 0x00e9 }
                    java.lang.String r0 = r0.getMd5()     // Catch:{ all -> 0x00e9 }
                    r5 = 1
                    r4[r5] = r0     // Catch:{ all -> 0x00e9 }
                    java.lang.String r4 = java.lang.String.format(r2, r4)     // Catch:{ all -> 0x00e9 }
                    r5 = 306(0x132, float:4.29E-43)
                    r6 = 0
                    r7 = 0
                    r2 = r1
                    r2.<init>(r3, r4, r5, r6, r7)     // Catch:{ all -> 0x00e9 }
                    throw r1     // Catch:{ all -> 0x00e9 }
                L_0x00d9:
                    r16.close()
                    com.microsoft.azure.storage.blob.BlobRequestOptions r0 = r9
                    com.microsoft.azure.storage.blob.BlobEncryptionPolicy r0 = r0.getEncryptionPolicy()
                    if (r0 == 0) goto L_0x00e7
                    r17.close()
                L_0x00e7:
                    r0 = 0
                    return r0
                L_0x00e9:
                    r0 = move-exception
                    r9 = r17
                    goto L_0x00f2
                L_0x00ed:
                    r0 = move-exception
                    r17 = r9
                    r16 = r10
                L_0x00f2:
                    r16.close()
                    com.microsoft.azure.storage.blob.BlobRequestOptions r1 = r9
                    com.microsoft.azure.storage.blob.BlobEncryptionPolicy r1 = r1.getEncryptionPolicy()
                    if (r1 == 0) goto L_0x0100
                    r9.close()
                L_0x0100:
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.blob.CloudBlob.AnonymousClass10.postProcessResponse(java.net.HttpURLConnection, com.microsoft.azure.storage.blob.CloudBlob, com.microsoft.azure.storage.blob.CloudBlobClient, com.microsoft.azure.storage.OperationContext, java.lang.Integer):java.lang.Integer");
            }

            public Integer preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 206 || getResult().getStatusCode() == 200) {
                    if (!getArePropertiesPopulated()) {
                        BlobAttributes blobAttributes = BlobResponse.getBlobAttributes(getConnection(), cloudBlob.getStorageUri(), cloudBlob.snapshotID);
                        cloudBlob.properties = blobAttributes.getProperties();
                        cloudBlob.metadata = blobAttributes.getMetadata();
                        String headerField = getConnection().getHeaderField(Constants.HeaderConstants.CONTENT_MD5);
                        if (blobRequestOptions2.getDisableContentMD5Validation().booleanValue() || !blobRequestOptions2.getUseTransactionalContentMD5().booleanValue() || !Utility.isNullOrEmpty(headerField)) {
                            setContentMD5(headerField);
                            setLockedETag(cloudBlob.properties.getEtag());
                            setArePropertiesPopulated(true);
                        } else {
                            throw new StorageException(StorageErrorCodeStrings.MISSING_MD5_HEADER, SR.MISSING_MD5, Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
                        }
                    }
                    setRequestLocationMode(getResult().getTargetLocation() == StorageLocation.PRIMARY ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.SECONDARY_ONLY);
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

    private StorageRequest<CloudBlobClient, CloudBlob, Boolean> existsImpl(boolean z, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final boolean z2 = z;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlob, Boolean>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(z2 ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.getBlobProperties(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.snapshotID);
            }

            public Boolean preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    BlobAttributes blobAttributes = BlobResponse.getBlobAttributes(getConnection(), cloudBlob.getStorageUri(), cloudBlob.snapshotID);
                    cloudBlob.properties = blobAttributes.getProperties();
                    cloudBlob.metadata = blobAttributes.getMetadata();
                    return true;
                } else if (getResult().getStatusCode() == 404) {
                    return false;
                } else {
                    setNonExceptionedRetryableFailure(true);
                    return false;
                }
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, -1, operationContext);
            }
        };
    }

    public static String getParentNameFromURI(StorageUri storageUri2, String str, CloudBlobContainer cloudBlobContainer) {
        Utility.assertNotNull("resourceAddress", storageUri2);
        Utility.assertNotNull(SR.CONTAINER, cloudBlobContainer);
        Utility.assertNotNullOrEmpty(Constants.QueryConstants.DELIMITER, str);
        String str2 = cloudBlobContainer.getName() + "/";
        String safeRelativize = Utility.safeRelativize(cloudBlobContainer.getStorageUri().getPrimaryUri(), storageUri2.getPrimaryUri());
        if (safeRelativize.endsWith(str)) {
            safeRelativize = safeRelativize.substring(0, safeRelativize.length() - str.length());
        }
        if (Utility.isNullOrEmpty(safeRelativize)) {
            return null;
        }
        int lastIndexOf = safeRelativize.lastIndexOf(str);
        if (lastIndexOf < 0) {
            return "";
        }
        String substring = safeRelativize.substring(0, str.length() + lastIndexOf);
        if (substring == null || !substring.equals(str2)) {
            return substring;
        }
        return "";
    }

    private void parseQueryAndVerify(StorageUri storageUri2, StorageCredentials storageCredentials) {
        Utility.assertNotNull("completeUri", storageUri2);
        if (storageUri2.isAbsolute()) {
            this.storageUri = PathUtility.stripURIQueryAndFragment(storageUri2);
            HashMap<String, String[]> parseQueryString = PathUtility.parseQueryString(storageUri2.getQuery());
            String[] strArr = parseQueryString.get("snapshot");
            if (strArr != null && strArr.length > 0) {
                this.snapshotID = strArr[0];
            }
            StorageCredentialsSharedAccessSignature parseQuery = SharedAccessSignatureHelper.parseQuery(parseQueryString);
            if (storageCredentials == null || parseQuery == null) {
                try {
                    boolean determinePathStyleFromUri = Utility.determinePathStyleFromUri(this.storageUri.getPrimaryUri());
                    StorageUri serviceClientBaseAddress = PathUtility.getServiceClientBaseAddress(getStorageUri(), determinePathStyleFromUri);
                    if (storageCredentials == null) {
                        storageCredentials = parseQuery;
                    }
                    this.blobServiceClient = new CloudBlobClient(serviceClientBaseAddress, storageCredentials);
                    this.name = PathUtility.getBlobNameFromURI(this.storageUri.getPrimaryUri(), determinePathStyleFromUri);
                } catch (URISyntaxException e2) {
                    throw Utility.generateNewUnexpectedStorageException(e2);
                }
            } else {
                throw new IllegalArgumentException(SR.MULTIPLE_CREDENTIALS_PROVIDED);
            }
        } else {
            throw new IllegalArgumentException(String.format(SR.RELATIVE_ADDRESS_NOT_PERMITTED, new Object[]{storageUri2.toString()}));
        }
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> releaseLeaseImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.leaseBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.RELEASE, (Integer) null, (String) null, (Integer) null);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                CloudBlob.this.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudBlob.properties.setLeaseStatus(LeaseStatus.UNLOCKED);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> renewLeaseImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.leaseBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.RENEW, (Integer) null, (String) null, (Integer) null);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                CloudBlob.this.updateEtagAndLastModifiedFromResponse(getConnection());
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> undeleteImpl(final BlobRequestOptions blobRequestOptions) {
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(getStorageUri(), blobRequestOptions) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.undeleteBlob(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions, operationContext);
            }

            public Void postProcessResponse(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext, Void voidR) {
                if (getResult().getStatusCode() != 200) {
                    return null;
                }
                cloudBlob.deleted = false;
                return null;
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                }
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlob, Void> uploadMetadataImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.setBlobMetadata(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
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

    private StorageRequest<CloudBlobClient, CloudBlob, Void> uploadPropertiesImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.setBlobProperties(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, cloudBlob.properties);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    @DoesServiceRequest
    public final void abortCopy(String str) {
        abortCopy(str, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final String acquireLease() {
        return acquireLease((Integer) null, (String) null);
    }

    public final void assertCorrectBlobType() {
        if ((this instanceof CloudBlockBlob) && this.properties.getBlobType() != BlobType.BLOCK_BLOB) {
            throw new StorageException(StorageErrorCodeStrings.INCORRECT_BLOB_TYPE, String.format(SR.INVALID_BLOB_TYPE, new Object[]{BlobType.BLOCK_BLOB, this.properties.getBlobType()}), Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
        } else if ((this instanceof CloudPageBlob) && this.properties.getBlobType() != BlobType.PAGE_BLOB) {
            throw new StorageException(StorageErrorCodeStrings.INCORRECT_BLOB_TYPE, String.format(SR.INVALID_BLOB_TYPE, new Object[]{BlobType.PAGE_BLOB, this.properties.getBlobType()}), Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
        } else if ((this instanceof CloudAppendBlob) && this.properties.getBlobType() != BlobType.APPEND_BLOB) {
            throw new StorageException(StorageErrorCodeStrings.INCORRECT_BLOB_TYPE, String.format(SR.INVALID_BLOB_TYPE, new Object[]{BlobType.APPEND_BLOB, this.properties.getBlobType()}), Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
        }
    }

    public void assertNoWriteOperationForSnapshot() {
        if (isSnapshot()) {
            throw new IllegalArgumentException(SR.INVALID_OPERATION_FOR_A_SNAPSHOT);
        }
    }

    @DoesServiceRequest
    public final long breakLease(Integer num) {
        return breakLease(num, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final String changeLease(String str, AccessCondition accessCondition) {
        return changeLease(str, accessCondition, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final CloudBlob createSnapshot() {
        return createSnapshot((HashMap<String, String>) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void delete() {
        delete(DeleteSnapshotsOption.NONE, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final boolean deleteIfExists() {
        return deleteIfExists(DeleteSnapshotsOption.NONE, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void download(OutputStream outputStream) {
        download(outputStream, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public AccountInformation downloadAccountInfo() {
        return downloadAccountInfo((BlobRequestOptions) null, (OperationContext) null);
    }

    public StorageRequest<ServiceClient, CloudBlob, AccountInformation> downloadAccountInformationImpl(final RequestOptions requestOptions) {
        return new StorageRequest<ServiceClient, CloudBlob, AccountInformation>(getStorageUri(), requestOptions) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(ServiceClient serviceClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BaseRequest.getAccountInfo(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), requestOptions, (UriQueryBuilder) null, operationContext);
            }

            public AccountInformation preProcessResponse(CloudBlob cloudBlob, ServiceClient serviceClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                }
                return BlobResponse.getAccountInformation(getConnection());
            }

            public void signRequest(HttpURLConnection httpURLConnection, ServiceClient serviceClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, serviceClient, -1, operationContext);
            }
        };
    }

    @DoesServiceRequest
    public final void downloadAttributes() {
        downloadAttributes((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void downloadRange(long j2, Long l2, OutputStream outputStream) {
        downloadRange(j2, l2, outputStream, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final int downloadRangeInternal(long j2, Long l2, byte[] bArr, int i2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        int i3 = i2;
        if (i3 < 0 || j2 < 0 || (l2 != null && l2.longValue() <= 0)) {
            throw new IndexOutOfBoundsException();
        }
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        if (!populateAndApplyDefaults.getUseTransactionalContentMD5().booleanValue() || l2 == null || l2.longValue() <= 4194304) {
            byte[] bArr2 = bArr;
            WrappedByteArrayOutputStream wrappedByteArrayOutputStream = new WrappedByteArrayOutputStream(bArr, i3);
            ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadToStreamImpl(Long.valueOf(j2), l2, wrappedByteArrayOutputStream, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
            return wrappedByteArrayOutputStream.getPosition();
        }
        throw new IllegalArgumentException(SR.INVALID_RANGE_CONTENT_MD5_HEADER);
    }

    @DoesServiceRequest
    public final int downloadRangeToByteArray(long j2, Long l2, byte[] bArr, int i2) {
        return downloadRangeToByteArray(j2, l2, bArr, i2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final int downloadToByteArray(byte[] bArr, int i2) {
        return downloadToByteArray(bArr, i2, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void downloadToFile(String str) {
        downloadToFile(str, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final boolean exists() {
        return exists((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public String generateSharedAccessSignature(SharedAccessBlobPolicy sharedAccessBlobPolicy, String str) {
        return generateSharedAccessSignature(sharedAccessBlobPolicy, (SharedAccessBlobHeaders) null, str);
    }

    public String getCanonicalName(boolean z) {
        StringBuilder sb = new StringBuilder("/");
        sb.append(SR.BLOB);
        if (this.blobServiceClient.isUsePathStyleUris()) {
            sb.append(getUri().getRawPath());
        } else {
            sb.append(PathUtility.getCanonicalPathFromCredentials(this.blobServiceClient.getCredentials(), getUri().getRawPath()));
        }
        if (!z && this.snapshotID != null) {
            sb.append("?snapshot=");
            sb.append(this.snapshotID);
        }
        return sb.toString();
    }

    public final CloudBlobContainer getContainer() {
        if (this.container == null) {
            this.container = new CloudBlobContainer(PathUtility.getContainerURI(getStorageUri(), this.blobServiceClient.isUsePathStyleUris()), this.blobServiceClient.getCredentials());
        }
        return this.container;
    }

    public CopyState getCopyState() {
        return this.properties.getCopyState();
    }

    public final HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public final String getName() {
        return this.name;
    }

    public final CloudBlobDirectory getParent() {
        String parentNameFromURI;
        if (this.parent == null && (parentNameFromURI = getParentNameFromURI(getStorageUri(), this.blobServiceClient.getDirectoryDelimiter(), getContainer())) != null) {
            this.parent = new CloudBlobDirectory(PathUtility.appendPathToUri(this.container.getStorageUri(), parentNameFromURI), parentNameFromURI, this.blobServiceClient, getContainer());
        }
        return this.parent;
    }

    public final BlobProperties getProperties() {
        return this.properties;
    }

    @Deprecated
    public final StorageUri getQualifiedStorageUri() {
        if (!isSnapshot()) {
            return this.blobServiceClient.getCredentials().transformUri(getStorageUri());
        }
        return this.blobServiceClient.getCredentials().transformUri(PathUtility.addToQuery(getStorageUri(), String.format("snapshot=%s", new Object[]{this.snapshotID})));
    }

    @Deprecated
    public final URI getQualifiedUri() {
        if (!isSnapshot()) {
            return this.blobServiceClient.getCredentials().transformUri(getUri());
        }
        return PathUtility.addToQuery(getUri(), String.format("snapshot=%s", new Object[]{this.snapshotID}));
    }

    public final CloudBlobClient getServiceClient() {
        return this.blobServiceClient;
    }

    public final String getSnapshotID() {
        return this.snapshotID;
    }

    public final StorageUri getSnapshotQualifiedStorageUri() {
        if (!isSnapshot()) {
            return getStorageUri();
        }
        return PathUtility.addToQuery(getStorageUri(), String.format("snapshot=%s", new Object[]{this.snapshotID}));
    }

    public final URI getSnapshotQualifiedUri() {
        if (!isSnapshot()) {
            return getUri();
        }
        return PathUtility.addToQuery(getUri(), String.format("snapshot=%s", new Object[]{this.snapshotID}));
    }

    public final StorageUri getStorageUri() {
        return this.storageUri;
    }

    public final int getStreamMinimumReadSizeInBytes() {
        return this.streamMinimumReadSizeInBytes;
    }

    public final int getStreamWriteSizeInBytes() {
        return this.streamWriteSizeInBytes;
    }

    public final StorageUri getTransformedAddress(OperationContext operationContext) {
        return this.blobServiceClient.getCredentials().transformUri(getStorageUri(), operationContext);
    }

    public final URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    public final boolean isSnapshot() {
        return this.snapshotID != null;
    }

    @DoesServiceRequest
    public final BlobInputStream openInputStream() {
        return openInputStream(0, (Long) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void releaseLease(AccessCondition accessCondition) {
        releaseLease(accessCondition, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void renewLease(AccessCondition accessCondition) {
        renewLease(accessCondition, (BlobRequestOptions) null, (OperationContext) null);
    }

    public final void setContainer(CloudBlobContainer cloudBlobContainer) {
        this.container = cloudBlobContainer;
    }

    public final void setMetadata(HashMap<String, String> hashMap) {
        this.metadata = hashMap;
    }

    public final void setProperties(BlobProperties blobProperties) {
        this.properties = blobProperties;
    }

    public final void setSnapshotID(String str) {
        this.snapshotID = str;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }

    public void setStreamMinimumReadSizeInBytes(int i2) {
        if (i2 >= 16384) {
            this.streamMinimumReadSizeInBytes = i2;
            return;
        }
        throw new IllegalArgumentException("MinimumReadSize");
    }

    public abstract void setStreamWriteSizeInBytes(int i2);

    @DoesServiceRequest
    public final String startCopy(URI uri) {
        return startCopy(uri, (AccessCondition) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public StorageRequest<CloudBlobClient, CloudBlob, String> startCopyImpl(URI uri, String str, boolean z, boolean z2, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition3 = accessCondition;
        final AccessCondition accessCondition4 = accessCondition2;
        final URI uri2 = uri;
        final boolean z3 = z2;
        final boolean z4 = z;
        final String str2 = str;
        final PremiumPageBlobTier premiumPageBlobTier2 = premiumPageBlobTier;
        return new StorageRequest<CloudBlobClient, CloudBlob, String>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.copyFrom(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition3, accessCondition4, uri2.toASCIIString(), cloudBlob.snapshotID, z3, z4, str2, premiumPageBlobTier2);
            }

            public String preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 202) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                cloudBlob.properties.setCopyState(BlobResponse.getCopyState(getConnection()));
                cloudBlob.properties.setPremiumPageBlobTier(premiumPageBlobTier2);
                if (premiumPageBlobTier2 != null) {
                    cloudBlob.properties.setBlobTierInferred(false);
                }
                return cloudBlob.properties.getCopyState().getCopyId();
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudBlob cloudBlob, OperationContext operationContext) {
                BlobRequest.addMetadata(httpURLConnection, cloudBlob.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    @DoesServiceRequest
    public final void undelete() {
        undelete((BlobRequestOptions) null, (OperationContext) null);
    }

    public void updateEtagAndLastModifiedFromResponse(HttpURLConnection httpURLConnection) {
        getProperties().setEtag(httpURLConnection.getHeaderField("ETag"));
        if (0 != httpURLConnection.getLastModified()) {
            Calendar instance = Calendar.getInstance(Utility.LOCALE_US);
            instance.setTimeZone(Utility.UTC_ZONE);
            instance.setTime(new Date(httpURLConnection.getLastModified()));
            getProperties().setLastModified(instance.getTime());
        }
    }

    public void updateLengthFromResponse(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("x-ms-blob-content-length");
        if (!Utility.isNullOrEmpty(headerField)) {
            getProperties().setLength(Long.parseLong(headerField));
        }
    }

    @DoesServiceRequest
    public abstract void upload(InputStream inputStream, long j2);

    @DoesServiceRequest
    public abstract void upload(InputStream inputStream, long j2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext);

    public StorageRequest<CloudBlobClient, CloudBlob, Void> uploadBlobTierImpl(String str, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final String str2 = str;
        return new StorageRequest<CloudBlobClient, CloudBlob, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlob cloudBlob, OperationContext operationContext) {
                return BlobRequest.setBlobTier(cloudBlob.getTransformedAddress(operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, str2);
            }

            public Void preProcessResponse(CloudBlob cloudBlob, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200 || getResult().getStatusCode() == 202) {
                    cloudBlob.updateEtagAndLastModifiedFromResponse(getConnection());
                    getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                    cloudBlob.getProperties().setBlobTierInferred(false);
                    if (cloudBlob.getProperties().getBlobType() == BlobType.BLOCK_BLOB) {
                        StandardBlobTier parse = StandardBlobTier.parse(str2);
                        cloudBlob.getProperties().setRehydrationStatus((RehydrationStatus) null);
                        if (getResult().getStatusCode() == 200) {
                            cloudBlob.getProperties().setStandardBlobTier(parse);
                        } else if (parse.equals(StandardBlobTier.COOL)) {
                            cloudBlob.getProperties().setStandardBlobTier(StandardBlobTier.ARCHIVE);
                        } else if (parse.equals(StandardBlobTier.HOT)) {
                            cloudBlob.getProperties().setStandardBlobTier(StandardBlobTier.ARCHIVE);
                        }
                    }
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    public void uploadFromByteArray(byte[] bArr, int i2, int i3) {
        uploadFromByteArray(bArr, i2, i3, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void uploadFromFile(String str) {
        uploadFromFile(str, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void uploadMetadata() {
        uploadMetadata((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void uploadProperties() {
        uploadProperties((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void abortCopy(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, abortCopyImpl(str, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final String acquireLease(Integer num, String str) {
        return acquireLease(num, str, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final long breakLease(Integer num, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        if (num != null) {
            Utility.assertGreaterThanOrEqual("breakPeriodInSeconds", (long) num.intValue(), 0);
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        return ((Long) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, breakLeaseImpl(num, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext)).longValue();
    }

    @DoesServiceRequest
    public final String changeLease(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("accessCondition", accessCondition);
        Utility.assertNotNullOrEmpty("leaseID", accessCondition.getLeaseID());
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        return (String) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, changeLeaseImpl(str, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final CloudBlob createSnapshot(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return createSnapshot((HashMap<String, String>) null, accessCondition, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public final void delete(DeleteSnapshotsOption deleteSnapshotsOption, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("deleteSnapshotsOption", deleteSnapshotsOption);
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, deleteImpl(deleteSnapshotsOption, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void download(OutputStream outputStream, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadToStreamImpl((Long) null, (Long) null, outputStream, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public AccountInformation downloadAccountInfo(BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        return (AccountInformation) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadAccountInformationImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void downloadAttributes(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadAttributesImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void downloadRange(long j2, Long l2, OutputStream outputStream, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (j2 < 0 || (l2 != null && l2.longValue() <= 0)) {
            throw new IndexOutOfBoundsException();
        }
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        if (!populateAndApplyDefaults.getUseTransactionalContentMD5().booleanValue() || l2 == null || l2.longValue() <= 4194304) {
            ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadToStreamImpl(Long.valueOf(j2), l2, outputStream, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return;
        }
        throw new IllegalArgumentException(SR.INVALID_RANGE_CONTENT_MD5_HEADER);
    }

    @DoesServiceRequest
    public final int downloadRangeToByteArray(long j2, Long l2, byte[] bArr, int i2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        byte[] bArr2 = bArr;
        Utility.assertNotNull("buffer", bArr);
        if (l2 == null) {
            int i3 = i2;
        } else if (l2.longValue() + ((long) i2) > ((long) bArr2.length)) {
            throw new IndexOutOfBoundsException();
        }
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        operationContext2.initialize();
        return downloadRangeInternal(j2, l2, bArr, i2, accessCondition, blobRequestOptions, operationContext2);
    }

    @DoesServiceRequest
    public final int downloadToByteArray(byte[] bArr, int i2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("buffer", bArr);
        if (i2 < 0) {
            throw new IndexOutOfBoundsException();
        } else if (i2 < bArr.length) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            operationContext.initialize();
            BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
            WrappedByteArrayOutputStream wrappedByteArrayOutputStream = new WrappedByteArrayOutputStream(bArr, i2);
            ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadToStreamImpl((Long) null, (Long) null, wrappedByteArrayOutputStream, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return wrappedByteArrayOutputStream.getPosition();
        } else {
            throw new IndexOutOfBoundsException();
        }
    }

    public void downloadToFile(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str));
        try {
            download(bufferedOutputStream, accessCondition, blobRequestOptions, operationContext);
            bufferedOutputStream.close();
        } catch (StorageException e2) {
            deleteEmptyFileOnException(bufferedOutputStream, str);
            throw e2;
        } catch (IOException e3) {
            deleteEmptyFileOnException(bufferedOutputStream, str);
            throw e3;
        }
    }

    @DoesServiceRequest
    public final boolean exists(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return exists(false, accessCondition, blobRequestOptions, operationContext);
    }

    public String generateSharedAccessSignature(SharedAccessBlobPolicy sharedAccessBlobPolicy, SharedAccessBlobHeaders sharedAccessBlobHeaders, String str) {
        return generateSharedAccessSignature(sharedAccessBlobPolicy, sharedAccessBlobHeaders, str, (IPRange) null, (SharedAccessProtocols) null);
    }

    @DoesServiceRequest
    public final BlobInputStream openInputStream(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return openInputStream(0, (Long) null, accessCondition, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public final void releaseLease(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("accessCondition", accessCondition);
        Utility.assertNotNullOrEmpty("leaseID", accessCondition.getLeaseID());
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, releaseLeaseImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void renewLease(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("accessCondition", accessCondition);
        Utility.assertNotNullOrEmpty("leaseID", accessCondition.getLeaseID());
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, renewLeaseImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final String startCopy(URI uri, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return startCopy(uri, (PremiumPageBlobTier) null, accessCondition, accessCondition2, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public final void undelete(BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, undeleteImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public void uploadFromByteArray(byte[] bArr, int i2, int i3, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i2, i3);
        upload(byteArrayInputStream, (long) i3, accessCondition, blobRequestOptions, operationContext);
        byteArrayInputStream.close();
    }

    public void uploadFromFile(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        File file = new File(str);
        long length = file.length();
        FileInputStream fileInputStream = new FileInputStream(file);
        upload(fileInputStream, length, accessCondition, blobRequestOptions, operationContext);
        fileInputStream.close();
    }

    @DoesServiceRequest
    public final void uploadMetadata(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, uploadMetadataImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void uploadProperties(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, uploadPropertiesImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    private final boolean exists(boolean z, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        return ((Boolean) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, existsImpl(z, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext)).booleanValue();
    }

    @DoesServiceRequest
    public final String acquireLease(Integer num, String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        return (String) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, acquireLeaseImpl(num, str, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final CloudBlob createSnapshot(HashMap<String, String> hashMap, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        assertNoWriteOperationForSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        return (CloudBlob) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, createSnapshotImpl(hashMap, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final boolean deleteIfExists(DeleteSnapshotsOption deleteSnapshotsOption, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        if (!exists(true, accessCondition, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            delete(deleteSnapshotsOption, accessCondition, populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 404 && StorageErrorCodeStrings.BLOB_NOT_FOUND.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    public String generateSharedAccessSignature(SharedAccessBlobPolicy sharedAccessBlobPolicy, SharedAccessBlobHeaders sharedAccessBlobHeaders, String str, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols) {
        if (!StorageCredentialsHelper.canCredentialsSignRequest(this.blobServiceClient.getCredentials())) {
            throw new IllegalArgumentException(SR.CANNOT_CREATE_SAS_WITHOUT_ACCOUNT_KEY);
        } else if (!isSnapshot()) {
            return SharedAccessSignatureHelper.generateSharedAccessSignatureForBlobAndFile(sharedAccessBlobPolicy, sharedAccessBlobHeaders, str, "b", iPRange, sharedAccessProtocols, SharedAccessSignatureHelper.generateSharedAccessSignatureHashForBlobAndFile(sharedAccessBlobPolicy, sharedAccessBlobHeaders, str, getCanonicalName(true), iPRange, sharedAccessProtocols, this.blobServiceClient)).toString();
        } else {
            throw new IllegalArgumentException(SR.CANNOT_CREATE_SAS_FOR_SNAPSHOTS);
        }
    }

    @DoesServiceRequest
    public final BlobInputStream openInputStream(long j2, Long l2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (j2 < 0 || (l2 != null && l2.longValue() <= 0)) {
            throw new IndexOutOfBoundsException();
        }
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        return new BlobInputStream(j2, l2, this, accessCondition, BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient, false), operationContext);
    }

    @DoesServiceRequest
    public final String startCopy(URI uri, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return startCopy(uri, (String) null, false, premiumPageBlobTier, accessCondition, accessCondition2, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public final String startCopy(URI uri, String str, boolean z, PremiumPageBlobTier premiumPageBlobTier, AccessCondition accessCondition, AccessCondition accessCondition2, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        operationContext2.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, this.properties.getBlobType(), this.blobServiceClient);
        return (String) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, startCopyImpl(uri, str, z, false, premiumPageBlobTier, accessCondition, accessCondition2, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
    }

    public CloudBlob(BlobType blobType, StorageUri storageUri2, String str, StorageCredentials storageCredentials) {
        this.properties = new BlobProperties(blobType);
        parseQueryAndVerify(storageUri2, storageCredentials);
        if (str == null) {
            return;
        }
        if (this.snapshotID == null) {
            this.snapshotID = str;
            return;
        }
        throw new IllegalArgumentException(SR.SNAPSHOT_QUERY_OPTION_ALREADY_DEFINED);
    }

    public CloudBlob(CloudBlob cloudBlob) {
        this.properties = new BlobProperties(cloudBlob.properties);
        if (cloudBlob.metadata != null) {
            this.metadata = new HashMap<>();
            for (String next : cloudBlob.metadata.keySet()) {
                this.metadata.put(next, cloudBlob.metadata.get(next));
            }
        }
        this.snapshotID = cloudBlob.snapshotID;
        this.storageUri = cloudBlob.storageUri;
        this.container = cloudBlob.container;
        this.parent = cloudBlob.parent;
        this.blobServiceClient = cloudBlob.blobServiceClient;
        this.name = cloudBlob.name;
        setStreamMinimumReadSizeInBytes(cloudBlob.getStreamMinimumReadSizeInBytes());
        setStreamWriteSizeInBytes(cloudBlob.getStreamWriteSizeInBytes());
    }
}
