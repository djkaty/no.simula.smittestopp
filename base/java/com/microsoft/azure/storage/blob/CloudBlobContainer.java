package com.microsoft.azure.storage.blob;

import com.microsoft.appcenter.utils.context.UserIdContext;
import com.microsoft.azure.sdk.iot.deps.serializer.FileUploadResponseParser;
import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.AccountInformation;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.IPRange;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultContinuationType;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.ServiceClient;
import com.microsoft.azure.storage.SharedAccessHeaders;
import com.microsoft.azure.storage.SharedAccessPolicyHandler;
import com.microsoft.azure.storage.SharedAccessPolicySerializer;
import com.microsoft.azure.storage.SharedAccessProtocols;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsSharedAccessSignature;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageExtendedErrorInformation;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.BaseRequest;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.LazySegmentedIterable;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SegmentedStorageRequest;
import com.microsoft.azure.storage.core.SharedAccessSignatureHelper;
import com.microsoft.azure.storage.core.StorageCredentialsHelper;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import java.io.ByteArrayInputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Calendar;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import javax.xml.stream.XMLStreamException;

public final class CloudBlobContainer {
    public CloudBlobClient blobServiceClient;
    public HashMap<String, String> metadata;
    public String name;
    public BlobContainerProperties properties;
    public StorageUri storageUri;

    /* renamed from: com.microsoft.azure.storage.blob.CloudBlobContainer$16  reason: invalid class name */
    public static /* synthetic */ class AnonymousClass16 {
        public static final /* synthetic */ int[] $SwitchMap$com$microsoft$azure$storage$blob$BlobType;

        /* JADX WARNING: Can't wrap try/catch for region: R(9:0|1|2|3|5|6|7|8|10) */
        /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0016 */
        static {
            /*
                com.microsoft.azure.storage.blob.BlobType[] r0 = com.microsoft.azure.storage.blob.BlobType.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$com$microsoft$azure$storage$blob$BlobType = r0
                r1 = 1
                r2 = 3
                com.microsoft.azure.storage.blob.BlobType r3 = com.microsoft.azure.storage.blob.BlobType.APPEND_BLOB     // Catch:{ NoSuchFieldError -> 0x000f }
                r0[r2] = r1     // Catch:{ NoSuchFieldError -> 0x000f }
            L_0x000f:
                r0 = 2
                int[] r3 = $SwitchMap$com$microsoft$azure$storage$blob$BlobType     // Catch:{ NoSuchFieldError -> 0x0016 }
                com.microsoft.azure.storage.blob.BlobType r4 = com.microsoft.azure.storage.blob.BlobType.BLOCK_BLOB     // Catch:{ NoSuchFieldError -> 0x0016 }
                r3[r1] = r0     // Catch:{ NoSuchFieldError -> 0x0016 }
            L_0x0016:
                int[] r1 = $SwitchMap$com$microsoft$azure$storage$blob$BlobType     // Catch:{ NoSuchFieldError -> 0x001c }
                com.microsoft.azure.storage.blob.BlobType r3 = com.microsoft.azure.storage.blob.BlobType.PAGE_BLOB     // Catch:{ NoSuchFieldError -> 0x001c }
                r1[r0] = r2     // Catch:{ NoSuchFieldError -> 0x001c }
            L_0x001c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.storage.blob.CloudBlobContainer.AnonymousClass16.<clinit>():void");
        }
    }

    public CloudBlobContainer(URI uri) {
        this(new StorageUri(uri));
    }

    private StorageRequest<CloudBlobClient, CloudBlobContainer, String> acquireLeaseImpl(Integer num, String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final Integer num2 = num;
        final String str2 = str;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, String>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.leaseContainer(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.ACQUIRE, num2, str2, (Integer) null);
            }

            public String preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlobContainer.updatePropertiesFromResponse(getConnection());
                return BlobResponse.getLeaseID(getConnection());
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private final StorageRequest<CloudBlobClient, CloudBlobContainer, Long> breakLeaseImpl(Integer num, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final Integer num2 = num;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, Long>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.leaseContainer(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.BREAK, (Integer) null, (String) null, num2);
            }

            public Long preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                long j2 = -1;
                if (getResult().getStatusCode() != 202) {
                    setNonExceptionedRetryableFailure(true);
                    return -1L;
                }
                cloudBlobContainer.updatePropertiesFromResponse(getConnection());
                String leaseTime = BlobResponse.getLeaseTime(getConnection());
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

    private final StorageRequest<CloudBlobClient, CloudBlobContainer, String> changeLeaseImpl(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final String str2 = str;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, String>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.leaseContainer(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.CHANGE, (Integer) null, str2, (Integer) null);
            }

            public String preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlobContainer.updatePropertiesFromResponse(getConnection());
                return BlobResponse.getLeaseID(getConnection());
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlobContainer, Void> createImpl(BlobRequestOptions blobRequestOptions, BlobContainerPublicAccessType blobContainerPublicAccessType) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final BlobContainerPublicAccessType blobContainerPublicAccessType2 = blobContainerPublicAccessType;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.createContainer(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, blobContainerPublicAccessType2);
            }

            public Void preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                BlobContainerAttributes blobContainerAttributes = BlobResponse.getBlobContainerAttributes(getConnection(), cloudBlobClient.isUsePathStyleUris());
                cloudBlobContainer.properties = blobContainerAttributes.getProperties();
                cloudBlobContainer.name = blobContainerAttributes.getName();
                BlobContainerPublicAccessType blobContainerPublicAccessType = blobContainerPublicAccessType2;
                if (blobContainerPublicAccessType != null) {
                    cloudBlobContainer.properties.setPublicAccess(blobContainerPublicAccessType);
                } else {
                    cloudBlobContainer.properties.setPublicAccess(BlobContainerPublicAccessType.OFF);
                }
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                BlobRequest.addMetadata(httpURLConnection, cloudBlobContainer.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlobContainer, Void> deleteImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.deleteContainer(cloudBlobContainer.getTransformedAddress().getPrimaryUri(), blobRequestOptions2, operationContext, accessCondition2);
            }

            public Void preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 202) {
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

    private StorageRequest<CloudBlobClient, CloudBlobContainer, Void> downloadAttributesImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, Void>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.getContainerProperties(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2);
            }

            public Void preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                BlobContainerAttributes blobContainerAttributes = BlobResponse.getBlobContainerAttributes(getConnection(), cloudBlobClient.isUsePathStyleUris());
                cloudBlobContainer.metadata = blobContainerAttributes.getMetadata();
                cloudBlobContainer.properties = blobContainerAttributes.getProperties();
                cloudBlobContainer.name = blobContainerAttributes.getName();
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlobContainer, BlobContainerPermissions> downloadPermissionsImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, BlobContainerPermissions>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.getAcl(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, accessCondition2, operationContext);
            }

            public BlobContainerPermissions postProcessResponse(HttpURLConnection httpURLConnection, CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext, BlobContainerPermissions blobContainerPermissions) {
                HashMap<String, SharedAccessBlobPolicy> accessIdentifiers = SharedAccessPolicyHandler.getAccessIdentifiers(getConnection().getInputStream(), SharedAccessBlobPolicy.class);
                for (String next : accessIdentifiers.keySet()) {
                    blobContainerPermissions.getSharedAccessPolicies().put(next, accessIdentifiers.get(next));
                }
                return blobContainerPermissions;
            }

            public BlobContainerPermissions preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                }
                cloudBlobContainer.updatePropertiesFromResponse(getConnection());
                BlobContainerPermissions containerAcl = CloudBlobContainer.getContainerAcl(BlobResponse.getAcl(getConnection()));
                cloudBlobContainer.properties.setPublicAccess(containerAcl.getPublicAccess());
                return containerAcl;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlobContainer, Boolean> existsImpl(boolean z, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final boolean z2 = z;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, Boolean>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(z2 ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.getContainerProperties(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2);
            }

            public Boolean preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    BlobContainerAttributes blobContainerAttributes = BlobResponse.getBlobContainerAttributes(getConnection(), cloudBlobClient.isUsePathStyleUris());
                    cloudBlobContainer.metadata = blobContainerAttributes.getMetadata();
                    cloudBlobContainer.properties = blobContainerAttributes.getProperties();
                    cloudBlobContainer.name = blobContainerAttributes.getName();
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

    private StorageRequest<CloudBlobClient, CloudBlobContainer, CloudBlob> getBlobReferenceFromServerImpl(String str, StorageUri storageUri2, String str2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final StorageUri storageUri3 = storageUri2;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final String str3 = str2;
        final String str4 = str;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, CloudBlob>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.getBlobProperties(CloudBlobContainer.this.getServiceClient().getCredentials().transformUri(storageUri3, operationContext).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, str3);
            }

            public CloudBlob preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                CloudBlob cloudBlob;
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                BlobAttributes blobAttributes = BlobResponse.getBlobAttributes(getConnection(), storageUri3, str3);
                int ordinal = blobAttributes.getProperties().getBlobType().ordinal();
                if (ordinal == 1) {
                    cloudBlob = cloudBlobContainer.getBlockBlobReference(str4, str3);
                } else if (ordinal == 2) {
                    cloudBlob = cloudBlobContainer.getPageBlobReference(str4, str3);
                } else if (ordinal == 3) {
                    cloudBlob = cloudBlobContainer.getAppendBlobReference(str4, str3);
                } else {
                    throw new StorageException(StorageErrorCodeStrings.INCORRECT_BLOB_TYPE, "The response received is invalid or improperly formatted.", Constants.HeaderConstants.HTTP_UNUSED_306, (StorageExtendedErrorInformation) null, (Exception) null);
                }
                cloudBlob.properties = blobAttributes.getProperties();
                cloudBlob.metadata = blobAttributes.getMetadata();
                return cloudBlob;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, -1, operationContext);
            }
        };
    }

    public static BlobContainerPermissions getContainerAcl(String str) {
        BlobContainerPublicAccessType parse = BlobContainerPublicAccessType.parse(str);
        BlobContainerPermissions blobContainerPermissions = new BlobContainerPermissions();
        blobContainerPermissions.setPublicAccess(parse);
        return blobContainerPermissions;
    }

    private String getSharedAccessCanonicalName() {
        return String.format("/%s/%s/%s", new Object[]{SR.BLOB, getServiceClient().getCredentials().getAccountName(), getName()});
    }

    /* access modifiers changed from: private */
    public StorageUri getTransformedAddress() {
        return this.blobServiceClient.getCredentials().transformUri(this.storageUri);
    }

    private StorageRequest<CloudBlobClient, CloudBlobContainer, ResultSegment<ListBlobItem>> listBlobsSegmentedImpl(String str, boolean z, EnumSet<BlobListingDetails> enumSet, Integer num, BlobRequestOptions blobRequestOptions, SegmentedStorageRequest segmentedStorageRequest) {
        String str2;
        Utility.assertContinuationType(segmentedStorageRequest.getToken(), ResultContinuationType.BLOB);
        Utility.assertNotNull("options", blobRequestOptions);
        if (z) {
            str2 = null;
        } else {
            str2 = this.blobServiceClient.getDirectoryDelimiter();
        }
        final BlobListingContext blobListingContext = new BlobListingContext(str, num, str2, enumSet);
        final SegmentedStorageRequest segmentedStorageRequest2 = segmentedStorageRequest;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, ResultSegment<ListBlobItem>>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(Utility.getListingLocationMode(segmentedStorageRequest2.getToken()));
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                blobListingContext.setMarker(segmentedStorageRequest2.getToken() != null ? segmentedStorageRequest2.getToken().getNextMarker() : null);
                return BlobRequest.listBlobs(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, blobListingContext);
            }

            public ResultSegment<ListBlobItem> postProcessResponse(HttpURLConnection httpURLConnection, CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext, ResultSegment<ListBlobItem> resultSegment) {
                ResultContinuation resultContinuation;
                ListBlobsResponse blobList = BlobListHandler.getBlobList(httpURLConnection.getInputStream(), cloudBlobContainer);
                if (blobList.getNextMarker() != null) {
                    resultContinuation = new ResultContinuation();
                    resultContinuation.setNextMarker(blobList.getNextMarker());
                    resultContinuation.setContinuationType(ResultContinuationType.BLOB);
                    resultContinuation.setTargetLocation(getResult().getTargetLocation());
                } else {
                    resultContinuation = null;
                }
                ResultSegment<ListBlobItem> resultSegment2 = new ResultSegment<>(blobList.getResults(), blobList.getMaxResults(), resultContinuation);
                segmentedStorageRequest2.setToken(resultSegment2.getContinuationToken());
                return resultSegment2;
            }

            public ResultSegment<ListBlobItem> preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
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

    private void parseQueryAndVerify(StorageUri storageUri2, StorageCredentials storageCredentials) {
        Utility.assertNotNull("completeUri", storageUri2);
        if (storageUri2.isAbsolute()) {
            this.storageUri = PathUtility.stripURIQueryAndFragment(storageUri2);
            StorageCredentialsSharedAccessSignature parseQuery = SharedAccessSignatureHelper.parseQuery(storageUri2);
            if (storageCredentials == null || parseQuery == null) {
                try {
                    boolean determinePathStyleFromUri = Utility.determinePathStyleFromUri(this.storageUri.getPrimaryUri());
                    StorageUri serviceClientBaseAddress = PathUtility.getServiceClientBaseAddress(getStorageUri(), determinePathStyleFromUri);
                    if (storageCredentials == null) {
                        storageCredentials = parseQuery;
                    }
                    this.blobServiceClient = new CloudBlobClient(serviceClientBaseAddress, storageCredentials);
                    this.name = PathUtility.getContainerNameFromUri(this.storageUri.getPrimaryUri(), determinePathStyleFromUri);
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

    private StorageRequest<CloudBlobClient, CloudBlobContainer, Void> releaseLeaseImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.leaseContainer(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.RELEASE, (Integer) null, (String) null, (Integer) null);
            }

            public Void preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlobContainer.updatePropertiesFromResponse(getConnection());
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlobContainer, Void> renewLeaseImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.leaseContainer(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, LeaseAction.RENEW, (Integer) null, (String) null, (Integer) null);
            }

            public Void preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudBlobContainer.updatePropertiesFromResponse(getConnection());
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    @DoesServiceRequest
    private StorageRequest<CloudBlobClient, CloudBlobContainer, Void> uploadMetadataImpl(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudBlobClient, CloudBlobContainer, Void>(blobRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BlobRequest.setContainerMetadata(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2);
            }

            public Void preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                }
                cloudBlobContainer.updatePropertiesFromResponse(getConnection());
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                BlobRequest.addMetadata(httpURLConnection, cloudBlobContainer.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudBlobClient, CloudBlobContainer, Void> uploadPermissionsImpl(BlobContainerPermissions blobContainerPermissions, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions) {
        try {
            StringWriter stringWriter = new StringWriter();
            SharedAccessPolicySerializer.writeSharedAccessIdentifiersToStream(blobContainerPermissions.getSharedAccessPolicies(), stringWriter);
            final byte[] bytes = stringWriter.toString().getBytes("UTF-8");
            final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
            final AccessCondition accessCondition2 = accessCondition;
            final BlobContainerPermissions blobContainerPermissions2 = blobContainerPermissions;
            return new StorageRequest<CloudBlobClient, CloudBlobContainer, Void>(blobRequestOptions, getStorageUri()) {
                public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                    setSendStream(new ByteArrayInputStream(bytes));
                    setLength(Long.valueOf((long) bytes.length));
                    return BlobRequest.setAcl(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), blobRequestOptions2, operationContext, accessCondition2, blobContainerPermissions2.getPublicAccess());
                }

                public Void preProcessResponse(CloudBlobContainer cloudBlobContainer, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() != 200) {
                        setNonExceptionedRetryableFailure(true);
                        return null;
                    }
                    cloudBlobContainer.updatePropertiesFromResponse(getConnection());
                    cloudBlobContainer.getProperties().setPublicAccess(blobContainerPermissions2.getPublicAccess());
                    return null;
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudBlobClient, (long) bytes.length, operationContext);
                }
            };
        } catch (IllegalArgumentException e2) {
            throw StorageException.translateClientException(e2);
        } catch (XMLStreamException e3) {
            throw StorageException.translateClientException(e3);
        } catch (UnsupportedEncodingException e4) {
            throw StorageException.translateClientException(e4);
        }
    }

    @DoesServiceRequest
    public final String acquireLease() {
        return acquireLease((Integer) null, (String) null);
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
    public void create() {
        create(BlobContainerPublicAccessType.OFF, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean createIfNotExists() {
        return createIfNotExists(BlobContainerPublicAccessType.OFF, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void delete() {
        delete((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean deleteIfExists() {
        return deleteIfExists((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public AccountInformation downloadAccountInfo() {
        return downloadAccountInfo((BlobRequestOptions) null, (OperationContext) null);
    }

    public StorageRequest<ServiceClient, CloudBlobContainer, AccountInformation> downloadAccountInformationImpl(final RequestOptions requestOptions) {
        return new StorageRequest<ServiceClient, CloudBlobContainer, AccountInformation>(getStorageUri(), requestOptions) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(ServiceClient serviceClient, CloudBlobContainer cloudBlobContainer, OperationContext operationContext) {
                return BaseRequest.getAccountInfo(cloudBlobContainer.getTransformedAddress().getUri(getCurrentLocation()), requestOptions, (UriQueryBuilder) null, operationContext);
            }

            public AccountInformation preProcessResponse(CloudBlobContainer cloudBlobContainer, ServiceClient serviceClient, OperationContext operationContext) {
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
    public void downloadAttributes() {
        downloadAttributes((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public BlobContainerPermissions downloadPermissions() {
        return downloadPermissions((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean exists() {
        return exists((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public String generateSharedAccessSignature(SharedAccessBlobPolicy sharedAccessBlobPolicy, String str) {
        return generateSharedAccessSignature(sharedAccessBlobPolicy, str, (IPRange) null, (SharedAccessProtocols) null);
    }

    public CloudAppendBlob getAppendBlobReference(String str) {
        return getAppendBlobReference(str, (String) null);
    }

    @DoesServiceRequest
    public final CloudBlob getBlobReferenceFromServer(String str) {
        return getBlobReferenceFromServer(str, (String) null, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public CloudBlockBlob getBlockBlobReference(String str) {
        return getBlockBlobReference(str, (String) null);
    }

    public CloudBlobDirectory getDirectoryReference(String str) {
        Utility.assertNotNull("directoryName", str);
        if (!str.isEmpty() && !str.endsWith(this.blobServiceClient.getDirectoryDelimiter())) {
            str = str.concat(this.blobServiceClient.getDirectoryDelimiter());
        }
        return new CloudBlobDirectory(PathUtility.appendPathToUri(this.storageUri, str), str, this.blobServiceClient, this);
    }

    public HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public String getName() {
        return this.name;
    }

    public CloudPageBlob getPageBlobReference(String str) {
        return getPageBlobReference(str, (String) null);
    }

    public BlobContainerProperties getProperties() {
        return this.properties;
    }

    public CloudBlobClient getServiceClient() {
        return this.blobServiceClient;
    }

    public StorageUri getStorageUri() {
        return this.storageUri;
    }

    public URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    @DoesServiceRequest
    public Iterable<ListBlobItem> listBlobs() {
        return listBlobs((String) null, false, EnumSet.noneOf(BlobListingDetails.class), (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<ListBlobItem> listBlobsSegmented() {
        return listBlobsSegmented((String) null, false, EnumSet.noneOf(BlobListingDetails.class), (Integer) null, (ResultContinuation) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public Iterable<CloudBlobContainer> listContainers() {
        return this.blobServiceClient.listContainers();
    }

    @DoesServiceRequest
    public ResultSegment<CloudBlobContainer> listContainersSegmented() {
        return this.blobServiceClient.listContainersSegmented();
    }

    @DoesServiceRequest
    public final void releaseLease(AccessCondition accessCondition) {
        releaseLease(accessCondition, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void renewLease(AccessCondition accessCondition) {
        renewLease(accessCondition, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void setMetadata(HashMap<String, String> hashMap) {
        this.metadata = hashMap;
    }

    public void setProperties(BlobContainerProperties blobContainerProperties) {
        this.properties = blobContainerProperties;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }

    public void updatePropertiesFromResponse(HttpURLConnection httpURLConnection) {
        getProperties().setEtag(httpURLConnection.getHeaderField("ETag"));
        if (0 != httpURLConnection.getLastModified()) {
            Calendar instance = Calendar.getInstance(Utility.LOCALE_US);
            instance.setTimeZone(Utility.UTC_ZONE);
            instance.setTime(new Date(httpURLConnection.getLastModified()));
            getProperties().setLastModified(instance.getTime());
        }
    }

    @DoesServiceRequest
    public void uploadMetadata() {
        uploadMetadata((AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadPermissions(BlobContainerPermissions blobContainerPermissions) {
        uploadPermissions(blobContainerPermissions, (AccessCondition) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public CloudBlobContainer(StorageUri storageUri2) {
        this(storageUri2, (StorageCredentials) null);
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
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        return ((Long) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, breakLeaseImpl(num, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext)).longValue();
    }

    @DoesServiceRequest
    public final String changeLease(String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("proposedLeaseId", str);
        Utility.assertNotNull("accessCondition", accessCondition);
        Utility.assertNotNullOrEmpty("leaseID", accessCondition.getLeaseID());
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        return (String) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, changeLeaseImpl(str, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void create(BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        create(BlobContainerPublicAccessType.OFF, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public boolean createIfNotExists(BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return createIfNotExists(BlobContainerPublicAccessType.OFF, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public void delete(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, deleteImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean deleteIfExists(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        if (!exists(true, accessCondition, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            delete(accessCondition, populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 404 && StorageErrorCodeStrings.CONTAINER_NOT_FOUND.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
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
    public void downloadAttributes(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadAttributesImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public BlobContainerPermissions downloadPermissions(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        return (BlobContainerPermissions) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, downloadPermissionsImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean exists(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return exists(false, accessCondition, blobRequestOptions, operationContext);
    }

    public String generateSharedAccessSignature(SharedAccessBlobPolicy sharedAccessBlobPolicy, String str, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols) {
        if (StorageCredentialsHelper.canCredentialsSignRequest(this.blobServiceClient.getCredentials())) {
            return SharedAccessSignatureHelper.generateSharedAccessSignatureForBlobAndFile(sharedAccessBlobPolicy, (SharedAccessHeaders) null, str, UserIdContext.CUSTOM_PREFIX, iPRange, sharedAccessProtocols, SharedAccessSignatureHelper.generateSharedAccessSignatureHashForBlobAndFile(sharedAccessBlobPolicy, (SharedAccessHeaders) null, str, getSharedAccessCanonicalName(), iPRange, sharedAccessProtocols, this.blobServiceClient)).toString();
        }
        throw new IllegalArgumentException(SR.CANNOT_CREATE_SAS_WITHOUT_ACCOUNT_KEY);
    }

    public CloudAppendBlob getAppendBlobReference(String str, String str2) {
        return new CloudAppendBlob(str, str2, this);
    }

    @DoesServiceRequest
    public final CloudBlob getBlobReferenceFromServer(String str, String str2, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        return (CloudBlob) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, getBlobReferenceFromServerImpl(str, PathUtility.appendPathToUri(getStorageUri(), str), str2, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public CloudBlockBlob getBlockBlobReference(String str, String str2) {
        return new CloudBlockBlob(str, str2, this);
    }

    public CloudPageBlob getPageBlobReference(String str, String str2) {
        return new CloudPageBlob(str, str2, this);
    }

    @DoesServiceRequest
    public Iterable<ListBlobItem> listBlobs(String str) {
        return listBlobs(str, false);
    }

    @DoesServiceRequest
    public ResultSegment<ListBlobItem> listBlobsSegmented(String str) {
        return listBlobsSegmented(str, false, EnumSet.noneOf(BlobListingDetails.class), (Integer) null, (ResultContinuation) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public Iterable<CloudBlobContainer> listContainers(String str) {
        return this.blobServiceClient.listContainers(str);
    }

    @DoesServiceRequest
    public ResultSegment<CloudBlobContainer> listContainersSegmented(String str) {
        return this.blobServiceClient.listContainersSegmented(str);
    }

    @DoesServiceRequest
    public final void releaseLease(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        Utility.assertNotNull("accessCondition", accessCondition);
        Utility.assertNotNullOrEmpty("leaseID", accessCondition.getLeaseID());
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
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
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, renewLeaseImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void uploadMetadata(AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        ExecutionEngine.executeWithRetry(this.blobServiceClient, this, uploadMetadataImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void uploadPermissions(BlobContainerPermissions blobContainerPermissions, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (blobContainerPermissions.getPublicAccess() != BlobContainerPublicAccessType.UNKNOWN) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            operationContext.initialize();
            BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
            ExecutionEngine.executeWithRetry(this.blobServiceClient, this, uploadPermissionsImpl(blobContainerPermissions, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return;
        }
        throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{"accessType", blobContainerPermissions.getPublicAccess()}));
    }

    public CloudBlobContainer(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    @DoesServiceRequest
    private boolean exists(boolean z, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        return ((Boolean) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, existsImpl(z, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext)).booleanValue();
    }

    @DoesServiceRequest
    public final String acquireLease(Integer num, String str, AccessCondition accessCondition, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        return (String) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, acquireLeaseImpl(num, str, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void create(BlobContainerPublicAccessType blobContainerPublicAccessType, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (blobContainerPublicAccessType != BlobContainerPublicAccessType.UNKNOWN) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            operationContext.initialize();
            BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
            ExecutionEngine.executeWithRetry(this.blobServiceClient, this, createImpl(populateAndApplyDefaults, blobContainerPublicAccessType), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return;
        }
        throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{"accessType", blobContainerPublicAccessType}));
    }

    @DoesServiceRequest
    public boolean createIfNotExists(BlobContainerPublicAccessType blobContainerPublicAccessType, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (blobContainerPublicAccessType != BlobContainerPublicAccessType.UNKNOWN) {
            BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
            if (exists(true, (AccessCondition) null, populateAndApplyDefaults, operationContext)) {
                return false;
            }
            try {
                create(blobContainerPublicAccessType, populateAndApplyDefaults, operationContext);
                return true;
            } catch (StorageException e2) {
                if (e2.getHttpStatusCode() == 409 && StorageErrorCodeStrings.CONTAINER_ALREADY_EXISTS.equals(e2.getErrorCode())) {
                    return false;
                }
                throw e2;
            }
        } else {
            throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.ARGUMENT_OUT_OF_RANGE_ERROR, new Object[]{"accessType", blobContainerPublicAccessType}));
        }
    }

    @DoesServiceRequest
    public Iterable<ListBlobItem> listBlobs(String str, boolean z) {
        return listBlobs(str, z, EnumSet.noneOf(BlobListingDetails.class), (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<ListBlobItem> listBlobsSegmented(String str, boolean z, EnumSet<BlobListingDetails> enumSet, Integer num, ResultContinuation resultContinuation, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        EnumSet<BlobListingDetails> enumSet2 = enumSet;
        ResultContinuation resultContinuation2 = resultContinuation;
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        operationContext2.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        Utility.assertContinuationType(resultContinuation2, ResultContinuationType.BLOB);
        if (z || enumSet2 == null || !enumSet.contains(BlobListingDetails.SNAPSHOTS)) {
            SegmentedStorageRequest segmentedStorageRequest = new SegmentedStorageRequest();
            segmentedStorageRequest.setToken(resultContinuation2);
            return (ResultSegment) ExecutionEngine.executeWithRetry(this.blobServiceClient, this, listBlobsSegmentedImpl(str, z, enumSet, num, populateAndApplyDefaults, segmentedStorageRequest), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
        }
        throw new IllegalArgumentException(SR.SNAPSHOT_LISTING_ERROR);
    }

    @DoesServiceRequest
    public Iterable<CloudBlobContainer> listContainers(String str, ContainerListingDetails containerListingDetails, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return this.blobServiceClient.listContainers(str, containerListingDetails, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public ResultSegment<CloudBlobContainer> listContainersSegmented(String str, ContainerListingDetails containerListingDetails, Integer num, ResultContinuation resultContinuation, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return this.blobServiceClient.listContainersSegmented(str, containerListingDetails, num, resultContinuation, blobRequestOptions, operationContext);
    }

    public CloudBlobContainer(StorageUri storageUri2, StorageCredentials storageCredentials) {
        this.metadata = new HashMap<>();
        this.properties = new BlobContainerProperties();
        parseQueryAndVerify(storageUri2, storageCredentials);
    }

    @DoesServiceRequest
    public Iterable<ListBlobItem> listBlobs(String str, boolean z, EnumSet<BlobListingDetails> enumSet, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        EnumSet<BlobListingDetails> enumSet2 = enumSet;
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        operationContext2.initialize();
        BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this.blobServiceClient);
        if (z || enumSet2 == null || !enumSet.contains(BlobListingDetails.SNAPSHOTS)) {
            return new LazySegmentedIterable(listBlobsSegmentedImpl(str, z, enumSet, (Integer) null, populateAndApplyDefaults, new SegmentedStorageRequest()), this.blobServiceClient, this, populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
        }
        throw new IllegalArgumentException(SR.SNAPSHOT_LISTING_ERROR);
    }

    public CloudBlobContainer(String str, CloudBlobClient cloudBlobClient) {
        this.metadata = new HashMap<>();
        this.properties = new BlobContainerProperties();
        Utility.assertNotNull("client", cloudBlobClient);
        Utility.assertNotNull(FileUploadResponseParser.CONTAINER_NAME_TAG, str);
        this.storageUri = PathUtility.appendPathToUri(cloudBlobClient.getStorageUri(), str);
        this.name = str;
        this.blobServiceClient = cloudBlobClient;
    }
}
