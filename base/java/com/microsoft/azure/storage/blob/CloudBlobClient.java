package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.AccountInformation;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.RequestOptions;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultContinuationType;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.ServiceClient;
import com.microsoft.azure.storage.ServiceProperties;
import com.microsoft.azure.storage.ServiceStats;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.BaseRequest;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.LazySegmentedIterable;
import com.microsoft.azure.storage.core.ListResponse;
import com.microsoft.azure.storage.core.ListingContext;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SegmentedStorageRequest;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.UriQueryBuilder;
import com.microsoft.azure.storage.core.Utility;
import java.net.HttpURLConnection;
import java.net.URI;

public final class CloudBlobClient extends ServiceClient {
    public BlobRequestOptions defaultRequestOptions;
    public String directoryDelimiter;

    public CloudBlobClient(URI uri) {
        this(new StorageUri(uri), (StorageCredentials) null);
    }

    private Iterable<CloudBlobContainer> listContainersWithPrefix(String str, ContainerListingDetails containerListingDetails, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        operationContext2.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this);
        return new LazySegmentedIterable(listContainersWithPrefixSegmentedImpl(str, containerListingDetails, (Integer) null, populateAndApplyDefaults, new SegmentedStorageRequest()), this, null, populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
    }

    private ResultSegment<CloudBlobContainer> listContainersWithPrefixSegmented(String str, ContainerListingDetails containerListingDetails, Integer num, ResultContinuation resultContinuation, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this);
        Utility.assertContinuationType(resultContinuation, ResultContinuationType.CONTAINER);
        SegmentedStorageRequest segmentedStorageRequest = new SegmentedStorageRequest();
        segmentedStorageRequest.setToken(resultContinuation);
        return (ResultSegment) ExecutionEngine.executeWithRetry(this, null, listContainersWithPrefixSegmentedImpl(str, containerListingDetails, num, populateAndApplyDefaults, segmentedStorageRequest), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    private StorageRequest<CloudBlobClient, Void, ResultSegment<CloudBlobContainer>> listContainersWithPrefixSegmentedImpl(String str, ContainerListingDetails containerListingDetails, Integer num, BlobRequestOptions blobRequestOptions, SegmentedStorageRequest segmentedStorageRequest) {
        Utility.assertContinuationType(segmentedStorageRequest.getToken(), ResultContinuationType.CONTAINER);
        final ListingContext listingContext = new ListingContext(str, num);
        final SegmentedStorageRequest segmentedStorageRequest2 = segmentedStorageRequest;
        final BlobRequestOptions blobRequestOptions2 = blobRequestOptions;
        final ContainerListingDetails containerListingDetails2 = containerListingDetails;
        return new StorageRequest<CloudBlobClient, Void, ResultSegment<CloudBlobContainer>>(blobRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(Utility.getListingLocationMode(segmentedStorageRequest2.getToken()));
            }

            public HttpURLConnection buildRequest(CloudBlobClient cloudBlobClient, Void voidR, OperationContext operationContext) {
                listingContext.setMarker(segmentedStorageRequest2.getToken() != null ? segmentedStorageRequest2.getToken().getNextMarker() : null);
                return BlobRequest.listContainers(cloudBlobClient.getCredentials().transformUri(cloudBlobClient.getStorageUri()).getUri(getCurrentLocation()), blobRequestOptions2, operationContext, listingContext, containerListingDetails2);
            }

            public ResultSegment<CloudBlobContainer> postProcessResponse(HttpURLConnection httpURLConnection, Void voidR, CloudBlobClient cloudBlobClient, OperationContext operationContext, ResultSegment<CloudBlobContainer> resultSegment) {
                ResultContinuation resultContinuation;
                ListResponse<CloudBlobContainer> containerList = ContainerListHandler.getContainerList(getConnection().getInputStream(), cloudBlobClient);
                if (containerList.getNextMarker() != null) {
                    resultContinuation = new ResultContinuation();
                    resultContinuation.setNextMarker(containerList.getNextMarker());
                    resultContinuation.setContinuationType(ResultContinuationType.CONTAINER);
                    resultContinuation.setTargetLocation(getResult().getTargetLocation());
                } else {
                    resultContinuation = null;
                }
                ResultSegment<CloudBlobContainer> resultSegment2 = new ResultSegment<>(containerList.getResults(), containerList.getMaxResults(), resultContinuation);
                segmentedStorageRequest2.setToken(resultSegment2.getContinuationToken());
                return resultSegment2;
            }

            public ResultSegment<CloudBlobContainer> preProcessResponse(Void voidR, CloudBlobClient cloudBlobClient, OperationContext operationContext) {
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

    @DoesServiceRequest
    public AccountInformation downloadAccountInfo() {
        return downloadAccountInfo((BlobRequestOptions) null, (OperationContext) null);
    }

    public StorageRequest<ServiceClient, Void, AccountInformation> downloadAccountInformationImpl(final RequestOptions requestOptions) {
        return new StorageRequest<ServiceClient, Void, AccountInformation>(getStorageUri(), requestOptions) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(ServiceClient serviceClient, Void voidR, OperationContext operationContext) {
                return BaseRequest.getAccountInfo(CloudBlobClient.this.credentials.transformUri(serviceClient.getStorageUri().getUri(getCurrentLocation())), requestOptions, (UriQueryBuilder) null, operationContext);
            }

            public AccountInformation preProcessResponse(Void voidR, ServiceClient serviceClient, OperationContext operationContext) {
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
    public final ServiceProperties downloadServiceProperties() {
        return downloadServiceProperties((BlobRequestOptions) null, (OperationContext) null);
    }

    public CloudBlobContainer getContainerReference(String str) {
        return new CloudBlobContainer(str, this);
    }

    public String getDirectoryDelimiter() {
        return this.directoryDelimiter;
    }

    @DoesServiceRequest
    public ServiceStats getServiceStats() {
        return getServiceStats((BlobRequestOptions) null, (OperationContext) null);
    }

    public boolean isUsePathStyleUris() {
        return super.isUsePathStyleUris();
    }

    @DoesServiceRequest
    public Iterable<CloudBlobContainer> listContainers() {
        return listContainersWithPrefix((String) null, ContainerListingDetails.NONE, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<CloudBlobContainer> listContainersSegmented() {
        return listContainersSegmented((String) null, ContainerListingDetails.NONE, (Integer) null, (ResultContinuation) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    public void setDefaultRequestOptions(BlobRequestOptions blobRequestOptions) {
        Utility.assertNotNull("defaultRequestOptions", blobRequestOptions);
        this.defaultRequestOptions = blobRequestOptions;
    }

    public void setDirectoryDelimiter(String str) {
        Utility.assertNotNullOrEmpty("directoryDelimiter", str);
        this.directoryDelimiter = str;
    }

    @DoesServiceRequest
    public void uploadServiceProperties(ServiceProperties serviceProperties) {
        uploadServiceProperties(serviceProperties, (BlobRequestOptions) null, (OperationContext) null);
    }

    public CloudBlobClient(StorageUri storageUri) {
        this(storageUri, (StorageCredentials) null);
    }

    @DoesServiceRequest
    public AccountInformation downloadAccountInfo(BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this);
        return (AccountInformation) ExecutionEngine.executeWithRetry(this, null, downloadAccountInformationImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final ServiceProperties downloadServiceProperties(BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this);
        return (ServiceProperties) ExecutionEngine.executeWithRetry(this, null, downloadServicePropertiesImpl(populateAndApplyDefaults, false), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public BlobRequestOptions getDefaultRequestOptions() {
        return this.defaultRequestOptions;
    }

    @DoesServiceRequest
    public ServiceStats getServiceStats(BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this);
        return (ServiceStats) ExecutionEngine.executeWithRetry(this, null, getServiceStatsImpl(populateAndApplyDefaults, false), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public ResultSegment<CloudBlobContainer> listContainersSegmented(String str) {
        return listContainersWithPrefixSegmented(str, ContainerListingDetails.NONE, (Integer) null, (ResultContinuation) null, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadServiceProperties(ServiceProperties serviceProperties, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        BlobRequestOptions populateAndApplyDefaults = BlobRequestOptions.populateAndApplyDefaults(blobRequestOptions, BlobType.UNSPECIFIED, this);
        Utility.assertNotNull("properties", serviceProperties);
        if (serviceProperties.getDeleteRetentionPolicy() != null && serviceProperties.getDeleteRetentionPolicy().getEnabled()) {
            Utility.assertNotNull("RetentionIntervalInDays", serviceProperties.getDeleteRetentionPolicy().getRetentionIntervalInDays());
        }
        ExecutionEngine.executeWithRetry(this, null, uploadServicePropertiesImpl(serviceProperties, populateAndApplyDefaults, operationContext, false), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public CloudBlobClient(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    @DoesServiceRequest
    public Iterable<CloudBlobContainer> listContainers(String str) {
        return listContainersWithPrefix(str, ContainerListingDetails.NONE, (BlobRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<CloudBlobContainer> listContainersSegmented(String str, ContainerListingDetails containerListingDetails, Integer num, ResultContinuation resultContinuation, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return listContainersWithPrefixSegmented(str, containerListingDetails, num, resultContinuation, blobRequestOptions, operationContext);
    }

    public CloudBlobClient(StorageUri storageUri, StorageCredentials storageCredentials) {
        super(storageUri, storageCredentials);
        this.directoryDelimiter = "/";
        BlobRequestOptions blobRequestOptions = new BlobRequestOptions();
        this.defaultRequestOptions = blobRequestOptions;
        BlobRequestOptions.applyDefaults(blobRequestOptions, BlobType.UNSPECIFIED);
    }

    @DoesServiceRequest
    public Iterable<CloudBlobContainer> listContainers(String str, ContainerListingDetails containerListingDetails, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        return listContainersWithPrefix(str, containerListingDetails, blobRequestOptions, operationContext);
    }
}
