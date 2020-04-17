package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultContinuationType;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.ServiceClient;
import com.microsoft.azure.storage.ServiceProperties;
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
import java.util.EnumSet;

public final class CloudFileClient extends ServiceClient {
    public FileRequestOptions defaultRequestOptions;

    public CloudFileClient(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    private Iterable<CloudFileShare> listSharesWithPrefix(String str, EnumSet<ShareListingDetails> enumSet, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        OperationContext operationContext2 = operationContext == null ? new OperationContext() : operationContext;
        operationContext2.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this);
        return new LazySegmentedIterable(listSharesWithPrefixSegmentedImpl(str, enumSet, (Integer) null, populateAndApplyDefaults, new SegmentedStorageRequest()), this, null, populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
    }

    private ResultSegment<CloudFileShare> listSharesWithPrefixSegmented(String str, EnumSet<ShareListingDetails> enumSet, Integer num, ResultContinuation resultContinuation, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this);
        Utility.assertContinuationType(resultContinuation, ResultContinuationType.SHARE);
        SegmentedStorageRequest segmentedStorageRequest = new SegmentedStorageRequest();
        segmentedStorageRequest.setToken(resultContinuation);
        return (ResultSegment) ExecutionEngine.executeWithRetry(this, null, listSharesWithPrefixSegmentedImpl(str, enumSet, num, populateAndApplyDefaults, segmentedStorageRequest), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    private StorageRequest<CloudFileClient, Void, ResultSegment<CloudFileShare>> listSharesWithPrefixSegmentedImpl(String str, EnumSet<ShareListingDetails> enumSet, Integer num, FileRequestOptions fileRequestOptions, SegmentedStorageRequest segmentedStorageRequest) {
        Utility.assertContinuationType(segmentedStorageRequest.getToken(), ResultContinuationType.SHARE);
        final ListingContext listingContext = new ListingContext(str, num);
        final SegmentedStorageRequest segmentedStorageRequest2 = segmentedStorageRequest;
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final EnumSet<ShareListingDetails> enumSet2 = enumSet;
        return new StorageRequest<CloudFileClient, Void, ResultSegment<CloudFileShare>>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(Utility.getListingLocationMode(segmentedStorageRequest2.getToken()));
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, Void voidR, OperationContext operationContext) {
                listingContext.setMarker(segmentedStorageRequest2.getToken() != null ? segmentedStorageRequest2.getToken().getNextMarker() : null);
                return FileRequest.listShares(cloudFileClient.getCredentials().transformUri(cloudFileClient.getStorageUri()).getUri(getCurrentLocation()), fileRequestOptions2, operationContext, listingContext, enumSet2);
            }

            public ResultSegment<CloudFileShare> postProcessResponse(HttpURLConnection httpURLConnection, Void voidR, CloudFileClient cloudFileClient, OperationContext operationContext, ResultSegment<CloudFileShare> resultSegment) {
                ResultContinuation resultContinuation;
                ListResponse<CloudFileShare> shareList = ShareListHandler.getShareList(getConnection().getInputStream(), cloudFileClient);
                if (shareList.getNextMarker() != null) {
                    resultContinuation = new ResultContinuation();
                    resultContinuation.setNextMarker(shareList.getNextMarker());
                    resultContinuation.setContinuationType(ResultContinuationType.SHARE);
                    resultContinuation.setTargetLocation(getResult().getTargetLocation());
                } else {
                    resultContinuation = null;
                }
                ResultSegment<CloudFileShare> resultSegment2 = new ResultSegment<>(shareList.getResults(), shareList.getMaxResults(), resultContinuation);
                segmentedStorageRequest2.setToken(resultSegment2.getContinuationToken());
                return resultSegment2;
            }

            public ResultSegment<CloudFileShare> preProcessResponse(Void voidR, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    return null;
                }
                setNonExceptionedRetryableFailure(true);
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    @DoesServiceRequest
    public final FileServiceProperties downloadServiceProperties() {
        return downloadServiceProperties((FileRequestOptions) null, (OperationContext) null);
    }

    public CloudFileShare getShareReference(String str) {
        Utility.assertNotNullOrEmpty("shareName", str);
        return getShareReference(str, (String) null);
    }

    public boolean isUsePathStyleUris() {
        return super.isUsePathStyleUris();
    }

    @DoesServiceRequest
    public Iterable<CloudFileShare> listShares() {
        return listSharesWithPrefix((String) null, EnumSet.noneOf(ShareListingDetails.class), (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<CloudFileShare> listSharesSegmented() {
        return listSharesSegmented((String) null, EnumSet.noneOf(ShareListingDetails.class), (Integer) null, (ResultContinuation) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public void setDefaultRequestOptions(FileRequestOptions fileRequestOptions) {
        Utility.assertNotNull("defaultRequestOptions", fileRequestOptions);
        this.defaultRequestOptions = fileRequestOptions;
    }

    @DoesServiceRequest
    public void uploadServiceProperties(FileServiceProperties fileServiceProperties) {
        uploadServiceProperties(fileServiceProperties, (FileRequestOptions) null, (OperationContext) null);
    }

    public CloudFileClient(StorageUri storageUri, StorageCredentials storageCredentials) {
        super(storageUri, storageCredentials);
        this.defaultRequestOptions = new FileRequestOptions();
        if (storageCredentials == null || storageCredentials.getClass().equals(StorageCredentialsAnonymous.class)) {
            throw new IllegalArgumentException(SR.STORAGE_CREDENTIALS_NULL_OR_ANONYMOUS);
        }
        FileRequestOptions.applyDefaults(this.defaultRequestOptions);
    }

    @DoesServiceRequest
    public final FileServiceProperties downloadServiceProperties(FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this);
        return new FileServiceProperties((ServiceProperties) ExecutionEngine.executeWithRetry(this, null, downloadServicePropertiesImpl(populateAndApplyDefaults, false), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext));
    }

    public FileRequestOptions getDefaultRequestOptions() {
        return this.defaultRequestOptions;
    }

    @DoesServiceRequest
    public Iterable<CloudFileShare> listShares(String str) {
        return listSharesWithPrefix(str, EnumSet.noneOf(ShareListingDetails.class), (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<CloudFileShare> listSharesSegmented(String str) {
        return listSharesWithPrefixSegmented(str, EnumSet.noneOf(ShareListingDetails.class), (Integer) null, (ResultContinuation) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadServiceProperties(FileServiceProperties fileServiceProperties, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this);
        Utility.assertNotNull("properties", fileServiceProperties);
        ExecutionEngine.executeWithRetry(this, null, uploadServicePropertiesImpl(fileServiceProperties.getServiceProperties(), populateAndApplyDefaults, operationContext, false), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public CloudFileShare getShareReference(String str, String str2) {
        Utility.assertNotNullOrEmpty("shareName", str);
        return new CloudFileShare(str, str2, this);
    }

    @DoesServiceRequest
    public Iterable<CloudFileShare> listShares(String str, EnumSet<ShareListingDetails> enumSet, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return listSharesWithPrefix(str, enumSet, fileRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public ResultSegment<CloudFileShare> listSharesSegmented(String str, EnumSet<ShareListingDetails> enumSet, Integer num, ResultContinuation resultContinuation, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return listSharesWithPrefixSegmented(str, enumSet, num, resultContinuation, fileRequestOptions, operationContext);
    }
}
