package com.microsoft.azure.storage.queue;

import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultContinuationType;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.ServiceClient;
import com.microsoft.azure.storage.ServiceProperties;
import com.microsoft.azure.storage.ServiceStats;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsAnonymous;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.LazySegmentedIterable;
import com.microsoft.azure.storage.core.ListResponse;
import com.microsoft.azure.storage.core.ListingContext;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SegmentedStorageRequest;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.Utility;
import java.net.HttpURLConnection;
import java.net.URI;

public final class CloudQueueClient extends ServiceClient {
    public QueueRequestOptions defaultRequestOptions;

    public CloudQueueClient(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri, (URI) null), storageCredentials);
    }

    private StorageRequest<CloudQueueClient, Void, ResultSegment<CloudQueue>> listQueuesSegmentedImpl(String str, QueueListingDetails queueListingDetails, Integer num, QueueRequestOptions queueRequestOptions, SegmentedStorageRequest segmentedStorageRequest) {
        Utility.assertContinuationType(segmentedStorageRequest.getToken(), ResultContinuationType.QUEUE);
        final ListingContext listingContext = new ListingContext(str, num);
        final SegmentedStorageRequest segmentedStorageRequest2 = segmentedStorageRequest;
        final QueueRequestOptions queueRequestOptions2 = queueRequestOptions;
        final QueueListingDetails queueListingDetails2 = queueListingDetails;
        return new StorageRequest<CloudQueueClient, Void, ResultSegment<CloudQueue>>(queueRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(Utility.getListingLocationMode(segmentedStorageRequest2.getToken()));
            }

            public HttpURLConnection buildRequest(CloudQueueClient cloudQueueClient, Void voidR, OperationContext operationContext) {
                listingContext.setMarker(segmentedStorageRequest2.getToken() != null ? segmentedStorageRequest2.getToken().getNextMarker() : null);
                return QueueRequest.list(CloudQueueClient.this.credentials.transformUri(cloudQueueClient.getStorageUri().getUri(getCurrentLocation())), queueRequestOptions2, operationContext, listingContext, queueListingDetails2);
            }

            public ResultSegment<CloudQueue> postProcessResponse(HttpURLConnection httpURLConnection, Void voidR, CloudQueueClient cloudQueueClient, OperationContext operationContext, ResultSegment<CloudQueue> resultSegment) {
                ResultContinuation resultContinuation;
                ListResponse<CloudQueue> queues = QueueListHandler.getQueues(httpURLConnection.getInputStream(), cloudQueueClient);
                if (queues.getNextMarker() != null) {
                    resultContinuation = new ResultContinuation();
                    resultContinuation.setNextMarker(queues.getNextMarker());
                    resultContinuation.setContinuationType(ResultContinuationType.QUEUE);
                    resultContinuation.setTargetLocation(getResult().getTargetLocation());
                } else {
                    resultContinuation = null;
                }
                ResultSegment<CloudQueue> resultSegment2 = new ResultSegment<>(queues.getResults(), queues.getMaxResults(), resultContinuation);
                segmentedStorageRequest2.setToken(resultSegment2.getContinuationToken());
                return resultSegment2;
            }

            public ResultSegment<CloudQueue> preProcessResponse(Void voidR, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudQueueClient cloudQueueClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudQueueClient, -1, operationContext);
            }
        };
    }

    @DoesServiceRequest
    public final ServiceProperties downloadServiceProperties() {
        return downloadServiceProperties((QueueRequestOptions) null, (OperationContext) null);
    }

    public CloudQueue getQueueReference(String str) {
        return new CloudQueue(str, this);
    }

    @DoesServiceRequest
    public ServiceStats getServiceStats() {
        return getServiceStats((QueueRequestOptions) null, (OperationContext) null);
    }

    public boolean isUsePathStyleUris() {
        return super.isUsePathStyleUris();
    }

    @DoesServiceRequest
    public Iterable<CloudQueue> listQueues() {
        return listQueues((String) null, QueueListingDetails.NONE, (QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<CloudQueue> listQueuesSegmented() {
        return listQueuesSegmented((String) null, QueueListingDetails.NONE, (Integer) null, (ResultContinuation) null, (QueueRequestOptions) null, (OperationContext) null);
    }

    public void setDefaultRequestOptions(QueueRequestOptions queueRequestOptions) {
        Utility.assertNotNull("defaultRequestOptions", queueRequestOptions);
        this.defaultRequestOptions = queueRequestOptions;
    }

    @DoesServiceRequest
    public void uploadServiceProperties(ServiceProperties serviceProperties) {
        uploadServiceProperties(serviceProperties, (QueueRequestOptions) null, (OperationContext) null);
    }

    public CloudQueueClient(StorageUri storageUri, StorageCredentials storageCredentials) {
        super(storageUri, storageCredentials);
        this.defaultRequestOptions = new QueueRequestOptions();
        if (storageCredentials == null || storageCredentials.getClass().equals(StorageCredentialsAnonymous.class)) {
            throw new IllegalArgumentException(SR.STORAGE_CREDENTIALS_NULL_OR_ANONYMOUS);
        }
        QueueRequestOptions.applyDefaults(this.defaultRequestOptions);
    }

    @DoesServiceRequest
    public final ServiceProperties downloadServiceProperties(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this);
        return (ServiceProperties) ExecutionEngine.executeWithRetry(this, null, downloadServicePropertiesImpl(populateAndApplyDefaults, false), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public QueueRequestOptions getDefaultRequestOptions() {
        return this.defaultRequestOptions;
    }

    @DoesServiceRequest
    public ServiceStats getServiceStats(QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this);
        return (ServiceStats) ExecutionEngine.executeWithRetry(this, null, getServiceStatsImpl(populateAndApplyDefaults, false), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public Iterable<CloudQueue> listQueues(String str) {
        return listQueues(str, QueueListingDetails.NONE, (QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<CloudQueue> listQueuesSegmented(String str) {
        return listQueuesSegmented(str, QueueListingDetails.NONE, (Integer) null, (ResultContinuation) null, (QueueRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadServiceProperties(ServiceProperties serviceProperties, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (Utility.isNullOrEmpty(serviceProperties.getDefaultServiceVersion())) {
            if (operationContext == null) {
                operationContext = new OperationContext();
            }
            operationContext.initialize();
            QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this);
            Utility.assertNotNull("properties", serviceProperties);
            ExecutionEngine.executeWithRetry(this, null, uploadServicePropertiesImpl(serviceProperties, populateAndApplyDefaults, operationContext, false), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
            return;
        }
        throw new IllegalArgumentException(SR.DEFAULT_SERVICE_VERSION_ONLY_SET_FOR_BLOB_SERVICE);
    }

    @DoesServiceRequest
    public Iterable<CloudQueue> listQueues(String str, QueueListingDetails queueListingDetails, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        operationContext2.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this);
        return new LazySegmentedIterable(listQueuesSegmentedImpl(str, queueListingDetails, (Integer) null, populateAndApplyDefaults, new SegmentedStorageRequest()), this, null, populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
    }

    @DoesServiceRequest
    public ResultSegment<CloudQueue> listQueuesSegmented(String str, QueueListingDetails queueListingDetails, Integer num, ResultContinuation resultContinuation, QueueRequestOptions queueRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        QueueRequestOptions populateAndApplyDefaults = QueueRequestOptions.populateAndApplyDefaults(queueRequestOptions, this);
        SegmentedStorageRequest segmentedStorageRequest = new SegmentedStorageRequest();
        segmentedStorageRequest.setToken(resultContinuation);
        return (ResultSegment) ExecutionEngine.executeWithRetry(this, null, listQueuesSegmentedImpl(str, queueListingDetails, num, populateAndApplyDefaults, segmentedStorageRequest), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }
}
