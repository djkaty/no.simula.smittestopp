package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultContinuationType;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsSharedAccessSignature;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.BaseResponse;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.LazySegmentedIterable;
import com.microsoft.azure.storage.core.ListResponse;
import com.microsoft.azure.storage.core.ListingContext;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SegmentedStorageRequest;
import com.microsoft.azure.storage.core.SharedAccessSignatureHelper;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.Utility;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

public final class CloudFileDirectory implements ListFileItem {
    public CloudFileClient fileServiceClient;
    public HashMap<String, String> metadata;
    public String name;
    public CloudFileDirectory parent;
    public FileDirectoryProperties properties;
    public CloudFileShare share;
    public StorageUri storageUri;

    public CloudFileDirectory(URI uri) {
        this(new StorageUri(uri));
    }

    private StorageRequest<CloudFileClient, CloudFileDirectory, Void> createDirectoryImpl(final FileRequestOptions fileRequestOptions) {
        return new StorageRequest<CloudFileClient, CloudFileDirectory, Void>(getStorageUri(), fileRequestOptions) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileDirectory cloudFileDirectory, OperationContext operationContext) {
                return FileRequest.createDirectory(cloudFileDirectory.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions, operationContext);
            }

            public Void preProcessResponse(CloudFileDirectory cloudFileDirectory, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudFileDirectory.setProperties(FileResponse.getFileDirectoryAttributes(getConnection(), cloudFileClient.isUsePathStyleUris()).getProperties());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudFileDirectory cloudFileDirectory, OperationContext operationContext) {
                FileRequest.addMetadata(httpURLConnection, cloudFileDirectory.getMetadata(), operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFileDirectory, Void> deleteDirectoryImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFileDirectory, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileDirectory cloudFileDirectory, OperationContext operationContext) {
                return FileRequest.deleteDirectory(cloudFileDirectory.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2);
            }

            public Void preProcessResponse(CloudFileDirectory cloudFileDirectory, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 202) {
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

    private StorageRequest<CloudFileClient, CloudFileDirectory, Void> downloadAttributesImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFileDirectory, Void>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileDirectory cloudFileDirectory, OperationContext operationContext) {
                return FileRequest.getDirectoryProperties(cloudFileDirectory.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFileDirectory.getShare().snapshotID);
            }

            public Void preProcessResponse(CloudFileDirectory cloudFileDirectory, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                FileDirectoryAttributes fileDirectoryAttributes = FileResponse.getFileDirectoryAttributes(getConnection(), cloudFileClient.isUsePathStyleUris());
                cloudFileDirectory.setMetadata(fileDirectoryAttributes.getMetadata());
                cloudFileDirectory.setProperties(fileDirectoryAttributes.getProperties());
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFileDirectory, Boolean> existsImpl(boolean z, AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final boolean z2 = z;
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFileDirectory, Boolean>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(z2 ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileDirectory cloudFileDirectory, OperationContext operationContext) {
                return FileRequest.getDirectoryProperties(cloudFileDirectory.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFileDirectory.getShare().snapshotID);
            }

            public Boolean preProcessResponse(CloudFileDirectory cloudFileDirectory, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    cloudFileDirectory.updatePropertiesFromResponse(getConnection());
                    FileDirectoryAttributes fileDirectoryAttributes = FileResponse.getFileDirectoryAttributes(getConnection(), cloudFileClient.isUsePathStyleUris());
                    cloudFileDirectory.setMetadata(fileDirectoryAttributes.getMetadata());
                    cloudFileDirectory.setProperties(fileDirectoryAttributes.getProperties());
                    return true;
                } else if (getResult().getStatusCode() == 404) {
                    return false;
                } else {
                    setNonExceptionedRetryableFailure(true);
                    return false;
                }
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    /* access modifiers changed from: private */
    public StorageUri getTransformedAddress() {
        return this.fileServiceClient.getCredentials().transformUri(this.storageUri);
    }

    private StorageRequest<CloudFileClient, CloudFileDirectory, ResultSegment<ListFileItem>> listFilesAndDirectoriesSegmentedImpl(String str, Integer num, FileRequestOptions fileRequestOptions, SegmentedStorageRequest segmentedStorageRequest) {
        Utility.assertContinuationType(segmentedStorageRequest.getToken(), ResultContinuationType.FILE);
        final ListingContext listingContext = new ListingContext(str, num);
        final SegmentedStorageRequest segmentedStorageRequest2 = segmentedStorageRequest;
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        return new StorageRequest<CloudFileClient, CloudFileDirectory, ResultSegment<ListFileItem>>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(Utility.getListingLocationMode(segmentedStorageRequest2.getToken()));
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileDirectory cloudFileDirectory, OperationContext operationContext) {
                listingContext.setMarker(segmentedStorageRequest2.getToken() != null ? segmentedStorageRequest2.getToken().getNextMarker() : null);
                return FileRequest.listFilesAndDirectories(cloudFileDirectory.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, listingContext, cloudFileDirectory.getShare().snapshotID);
            }

            public ResultSegment<ListFileItem> postProcessResponse(HttpURLConnection httpURLConnection, CloudFileDirectory cloudFileDirectory, CloudFileClient cloudFileClient, OperationContext operationContext, ResultSegment<ListFileItem> resultSegment) {
                ResultContinuation resultContinuation;
                ListResponse<ListFileItem> fileAndDirectoryList = FileListHandler.getFileAndDirectoryList(getConnection().getInputStream(), cloudFileDirectory);
                if (fileAndDirectoryList.getNextMarker() != null) {
                    resultContinuation = new ResultContinuation();
                    resultContinuation.setNextMarker(fileAndDirectoryList.getNextMarker());
                    resultContinuation.setContinuationType(ResultContinuationType.FILE);
                    resultContinuation.setTargetLocation(getResult().getTargetLocation());
                } else {
                    resultContinuation = null;
                }
                ResultSegment<ListFileItem> resultSegment2 = new ResultSegment<>(fileAndDirectoryList.getResults(), fileAndDirectoryList.getMaxResults(), resultContinuation);
                segmentedStorageRequest2.setToken(resultSegment2.getContinuationToken());
                return resultSegment2;
            }

            public ResultSegment<ListFileItem> preProcessResponse(CloudFileDirectory cloudFileDirectory, CloudFileClient cloudFileClient, OperationContext operationContext) {
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
                    this.fileServiceClient = new CloudFileClient(serviceClientBaseAddress, storageCredentials);
                    this.name = PathUtility.getDirectoryNameFromURI(this.storageUri.getPrimaryUri(), determinePathStyleFromUri);
                    String[] strArr = PathUtility.parseQueryString(storageUri2.getQuery()).get(Constants.QueryConstants.SHARE_SNAPSHOT);
                    if (strArr != null && strArr.length > 0) {
                        getShare().snapshotID = strArr[0];
                    }
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

    /* access modifiers changed from: private */
    public void updatePropertiesFromResponse(HttpURLConnection httpURLConnection) {
        getProperties().setEtag(httpURLConnection.getHeaderField("ETag"));
        if (0 != httpURLConnection.getLastModified()) {
            Calendar instance = Calendar.getInstance(Utility.LOCALE_US);
            instance.setTimeZone(Utility.UTC_ZONE);
            instance.setTime(new Date(httpURLConnection.getLastModified()));
            getProperties().setLastModified(instance.getTime());
        }
    }

    private StorageRequest<CloudFileClient, CloudFileDirectory, Void> uploadMetadataImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFileDirectory, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileDirectory cloudFileDirectory, OperationContext operationContext) {
                return FileRequest.setDirectoryMetadata(cloudFileDirectory.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2);
            }

            public Void preProcessResponse(CloudFileDirectory cloudFileDirectory, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                }
                cloudFileDirectory.updatePropertiesFromResponse(getConnection());
                getResult().setRequestServiceEncrypted(BaseResponse.isServerRequestEncrypted(getConnection()));
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudFileDirectory cloudFileDirectory, OperationContext operationContext) {
                FileRequest.addMetadata(httpURLConnection, cloudFileDirectory.getMetadata(), operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    @DoesServiceRequest
    public void create() {
        create((FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean createIfNotExists() {
        return createIfNotExists((FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void delete() {
        delete((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean deleteIfExists() {
        return deleteIfExists((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void downloadAttributes() {
        downloadAttributes((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean exists() {
        return exists((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public CloudFileDirectory getDirectoryReference(String str) {
        Utility.assertNotNullOrEmpty("itemName", str);
        return new CloudFileDirectory(PathUtility.appendPathToUri(this.storageUri, str), str, getShare());
    }

    public CloudFile getFileReference(String str) {
        Utility.assertNotNullOrEmpty("fileName", str);
        return new CloudFile(PathUtility.appendPathToUri(this.storageUri, str), str, getShare());
    }

    public HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public String getName() {
        return this.name;
    }

    public CloudFileDirectory getParent() {
        String parentNameFromURI;
        if (this.parent == null && (parentNameFromURI = CloudFile.getParentNameFromURI(getStorageUri(), getShare())) != null) {
            this.parent = new CloudFileDirectory(PathUtility.appendPathToUri(getShare().getStorageUri(), parentNameFromURI), getServiceClient().getCredentials());
        }
        return this.parent;
    }

    public FileDirectoryProperties getProperties() {
        return this.properties;
    }

    public CloudFileClient getServiceClient() {
        return this.fileServiceClient;
    }

    public CloudFileShare getShare() {
        if (this.share == null) {
            this.share = this.fileServiceClient.getShareReference(PathUtility.getShareNameFromUri(getUri(), this.fileServiceClient.isUsePathStyleUris()));
        }
        return this.share;
    }

    public final StorageUri getStorageUri() {
        return this.storageUri;
    }

    public URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    @DoesServiceRequest
    public Iterable<ListFileItem> listFilesAndDirectories() {
        return listFilesAndDirectories((String) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public ResultSegment<ListFileItem> listFilesAndDirectoriesSegmented() {
        return listFilesAndDirectoriesSegmented((String) null, (Integer) null, (ResultContinuation) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public void setMetadata(HashMap<String, String> hashMap) {
        this.metadata = hashMap;
    }

    public final void setProperties(FileDirectoryProperties fileDirectoryProperties) {
        this.properties = fileDirectoryProperties;
    }

    public final void setShare(CloudFileShare cloudFileShare) {
        this.share = cloudFileShare;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }

    @DoesServiceRequest
    public void uploadMetadata() {
        uploadMetadata((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public CloudFileDirectory(StorageUri storageUri2) {
        this(storageUri2, (StorageCredentials) null);
    }

    @DoesServiceRequest
    public void create(FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, createDirectoryImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean createIfNotExists(FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        getShare().assertNoSnapshot();
        if (exists(true, (AccessCondition) null, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            create(populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 409 && StorageErrorCodeStrings.RESOURCE_ALREADY_EXISTS.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    @DoesServiceRequest
    public void delete(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, deleteDirectoryImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean deleteIfExists(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        if (!exists(true, accessCondition, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            delete(accessCondition, populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 404 && StorageErrorCodeStrings.RESOURCE_NOT_FOUND.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    @DoesServiceRequest
    public void downloadAttributes(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, downloadAttributesImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean exists(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return exists(false, accessCondition, fileRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public Iterable<ListFileItem> listFilesAndDirectories(FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return listFilesAndDirectories((String) null, fileRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public ResultSegment<ListFileItem> listFilesAndDirectoriesSegmented(Integer num, ResultContinuation resultContinuation, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return listFilesAndDirectoriesSegmented((String) null, num, resultContinuation, fileRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public void uploadMetadata(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        getShare().assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, uploadMetadataImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public CloudFileDirectory(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    @DoesServiceRequest
    private boolean exists(boolean z, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        return ((Boolean) ExecutionEngine.executeWithRetry(this.fileServiceClient, this, existsImpl(z, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext)).booleanValue();
    }

    @DoesServiceRequest
    public Iterable<ListFileItem> listFilesAndDirectories(String str, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        OperationContext operationContext2 = operationContext;
        operationContext2.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        return new LazySegmentedIterable(listFilesAndDirectoriesSegmentedImpl(str, (Integer) null, populateAndApplyDefaults, new SegmentedStorageRequest()), this.fileServiceClient, this, populateAndApplyDefaults.getRetryPolicyFactory(), operationContext2);
    }

    @DoesServiceRequest
    public ResultSegment<ListFileItem> listFilesAndDirectoriesSegmented(String str, Integer num, ResultContinuation resultContinuation, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        Utility.assertContinuationType(resultContinuation, ResultContinuationType.FILE);
        SegmentedStorageRequest segmentedStorageRequest = new SegmentedStorageRequest();
        segmentedStorageRequest.setToken(resultContinuation);
        return (ResultSegment) ExecutionEngine.executeWithRetry(this.fileServiceClient, this, listFilesAndDirectoriesSegmentedImpl(str, num, populateAndApplyDefaults, segmentedStorageRequest), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    public CloudFileDirectory(StorageUri storageUri2, StorageCredentials storageCredentials) {
        this.metadata = new HashMap<>();
        this.properties = new FileDirectoryProperties();
        parseQueryAndVerify(storageUri2, storageCredentials);
    }

    public CloudFileDirectory(StorageUri storageUri2, String str, CloudFileShare cloudFileShare) {
        this.metadata = new HashMap<>();
        this.properties = new FileDirectoryProperties();
        Utility.assertNotNull("uri", storageUri2);
        Utility.assertNotNull("directoryName", str);
        Utility.assertNotNull(SR.SHARE, cloudFileShare);
        this.name = str;
        this.fileServiceClient = cloudFileShare.getServiceClient();
        this.share = cloudFileShare;
        this.storageUri = storageUri2;
    }
}
