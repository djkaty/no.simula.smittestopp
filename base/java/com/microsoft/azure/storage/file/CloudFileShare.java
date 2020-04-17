package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.AccessCondition;
import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.IPRange;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.SharedAccessHeaders;
import com.microsoft.azure.storage.SharedAccessPolicyHandler;
import com.microsoft.azure.storage.SharedAccessPolicySerializer;
import com.microsoft.azure.storage.SharedAccessProtocols;
import com.microsoft.azure.storage.StorageCredentials;
import com.microsoft.azure.storage.StorageCredentialsSharedAccessSignature;
import com.microsoft.azure.storage.StorageErrorCodeStrings;
import com.microsoft.azure.storage.StorageException;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.ExecutionEngine;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.RequestLocationMode;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.SharedAccessSignatureHelper;
import com.microsoft.azure.storage.core.StorageCredentialsHelper;
import com.microsoft.azure.storage.core.StorageRequest;
import com.microsoft.azure.storage.core.Utility;
import java.io.ByteArrayInputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import javax.xml.stream.XMLStreamException;

public final class CloudFileShare {
    public CloudFileClient fileServiceClient;
    public HashMap<String, String> metadata;
    public String name;
    public FileShareProperties properties;
    public String snapshotID;
    public StorageUri storageUri;

    public CloudFileShare(String str, String str2, CloudFileClient cloudFileClient) {
        this.metadata = new HashMap<>();
        this.properties = new FileShareProperties();
        this.name = null;
        Utility.assertNotNull("client", cloudFileClient);
        Utility.assertNotNull("shareName", str);
        this.storageUri = PathUtility.appendPathToUri(cloudFileClient.getStorageUri(), str);
        this.name = str;
        this.snapshotID = str2;
        this.fileServiceClient = cloudFileClient;
    }

    private StorageRequest<CloudFileClient, CloudFileShare, Void> createImpl(final FileRequestOptions fileRequestOptions) {
        return new StorageRequest<CloudFileClient, CloudFileShare, Void>(getStorageUri(), fileRequestOptions) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                return FileRequest.createShare(cloudFileShare.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions, operationContext, cloudFileShare.getProperties());
            }

            public Void preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                FileShareAttributes fileShareAttributes = FileResponse.getFileShareAttributes(getConnection(), cloudFileClient.isUsePathStyleUris());
                Integer shareQuota = cloudFileShare.properties.getShareQuota();
                FileShareProperties properties = fileShareAttributes.getProperties();
                cloudFileShare.properties = properties;
                properties.setShareQuota(shareQuota);
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudFileShare cloudFileShare, OperationContext operationContext) {
                FileRequest.addMetadata(httpURLConnection, cloudFileShare.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFileShare, CloudFileShare> createSnapshotImpl(HashMap<String, String> hashMap, AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final HashMap<String, String> hashMap2 = hashMap;
        return new StorageRequest<CloudFileClient, CloudFileShare, CloudFileShare>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                return FileRequest.snapshotShare(cloudFileShare.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2);
            }

            public CloudFileShare preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 201) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                CloudFileShare cloudFileShare2 = new CloudFileShare(cloudFileShare.getName(), FileResponse.getSnapshotTime(getConnection()), cloudFileClient);
                cloudFileShare2.setProperties(new FileShareProperties(cloudFileShare.properties));
                HashMap hashMap = hashMap2;
                if (hashMap == null) {
                    hashMap = cloudFileShare.metadata;
                }
                cloudFileShare2.setMetadata(hashMap);
                cloudFileShare2.updatePropertiesFromResponse(getConnection());
                return cloudFileShare2;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudFileShare cloudFileShare, OperationContext operationContext) {
                HashMap hashMap = hashMap2;
                if (hashMap != null) {
                    FileRequest.addMetadata(httpURLConnection, hashMap, operationContext);
                }
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFileShare, Void> deleteImpl(DeleteShareSnapshotsOption deleteShareSnapshotsOption, AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        final DeleteShareSnapshotsOption deleteShareSnapshotsOption2 = deleteShareSnapshotsOption;
        return new StorageRequest<CloudFileClient, CloudFileShare, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                return FileRequest.deleteShare(cloudFileShare.getTransformedAddress().getPrimaryUri(), fileRequestOptions2, operationContext, accessCondition2, cloudFileShare.snapshotID, deleteShareSnapshotsOption2);
            }

            public Void preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
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

    private StorageRequest<CloudFileClient, CloudFileShare, Void> downloadAttributesImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFileShare, Void>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                return FileRequest.getShareProperties(cloudFileShare.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFileShare.snapshotID);
            }

            public Void preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                FileShareAttributes fileShareAttributes = FileResponse.getFileShareAttributes(getConnection(), cloudFileClient.isUsePathStyleUris());
                HashMap unused = cloudFileShare.metadata = fileShareAttributes.getMetadata();
                cloudFileShare.properties = fileShareAttributes.getProperties();
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFileShare, FileSharePermissions> downloadPermissionsImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFileShare, FileSharePermissions>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                return FileRequest.getAcl(cloudFileShare.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, accessCondition2, operationContext);
            }

            public FileSharePermissions postProcessResponse(HttpURLConnection httpURLConnection, CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext, FileSharePermissions fileSharePermissions) {
                HashMap<String, SharedAccessFilePolicy> accessIdentifiers = SharedAccessPolicyHandler.getAccessIdentifiers(getConnection().getInputStream(), SharedAccessFilePolicy.class);
                for (String next : accessIdentifiers.keySet()) {
                    fileSharePermissions.getSharedAccessPolicies().put(next, accessIdentifiers.get(next));
                }
                return fileSharePermissions;
            }

            public FileSharePermissions preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                }
                cloudFileShare.updatePropertiesFromResponse(getConnection());
                return new FileSharePermissions();
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, -1, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFileShare, Boolean> existsImpl(boolean z, AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final boolean z2 = z;
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFileShare, Boolean>(fileRequestOptions, getStorageUri()) {
            public void setRequestLocationMode() {
                setRequestLocationMode(z2 ? RequestLocationMode.PRIMARY_ONLY : RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                return FileRequest.getShareProperties(cloudFileShare.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFileShare.snapshotID);
            }

            public Boolean preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() == 200) {
                    cloudFileShare.updatePropertiesFromResponse(getConnection());
                    FileShareAttributes fileShareAttributes = FileResponse.getFileShareAttributes(getConnection(), cloudFileClient.isUsePathStyleUris());
                    HashMap unused = cloudFileShare.metadata = fileShareAttributes.getMetadata();
                    cloudFileShare.properties = fileShareAttributes.getProperties();
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

    private String getSharedAccessCanonicalName() {
        return String.format("/%s/%s/%s", new Object[]{SR.FILE, getServiceClient().getCredentials().getAccountName(), getName()});
    }

    private StorageRequest<CloudFileClient, CloudFileShare, ShareStats> getStatsImpl(final FileRequestOptions fileRequestOptions) {
        return new StorageRequest<CloudFileClient, CloudFileShare, ShareStats>(getStorageUri(), fileRequestOptions) {
            public void setRequestLocationMode() {
                setRequestLocationMode(RequestLocationMode.PRIMARY_OR_SECONDARY);
            }

            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                return FileRequest.getShareStats(cloudFileShare.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions, operationContext);
            }

            public ShareStats postProcessResponse(HttpURLConnection httpURLConnection, CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext, ShareStats shareStats) {
                return ShareStatsHandler.readShareStatsFromStream(httpURLConnection.getInputStream());
            }

            public ShareStats preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudFileShare.updatePropertiesFromResponse(getConnection());
                return null;
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

    private void parseQueryAndVerify(StorageUri storageUri2, StorageCredentials storageCredentials) {
        Utility.assertNotNull("completeUri", storageUri2);
        if (storageUri2.isAbsolute()) {
            this.storageUri = PathUtility.stripURIQueryAndFragment(storageUri2);
            String[] strArr = PathUtility.parseQueryString(storageUri2.getQuery()).get(Constants.QueryConstants.SHARE_SNAPSHOT);
            if (strArr != null && strArr.length > 0) {
                this.snapshotID = strArr[0];
            }
            StorageCredentialsSharedAccessSignature parseQuery = SharedAccessSignatureHelper.parseQuery(storageUri2);
            if (storageCredentials == null || parseQuery == null) {
                try {
                    boolean determinePathStyleFromUri = Utility.determinePathStyleFromUri(this.storageUri.getPrimaryUri());
                    StorageUri serviceClientBaseAddress = PathUtility.getServiceClientBaseAddress(getStorageUri(), determinePathStyleFromUri);
                    if (storageCredentials == null) {
                        storageCredentials = parseQuery;
                    }
                    this.fileServiceClient = new CloudFileClient(serviceClientBaseAddress, storageCredentials);
                    this.name = PathUtility.getShareNameFromUri(this.storageUri.getPrimaryUri(), determinePathStyleFromUri);
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
        if (getProperties() == null) {
            this.properties = new FileShareProperties();
        }
        getProperties().setEtag(httpURLConnection.getHeaderField("ETag"));
        if (0 != httpURLConnection.getLastModified()) {
            Calendar instance = Calendar.getInstance(Utility.LOCALE_US);
            instance.setTimeZone(Utility.UTC_ZONE);
            instance.setTime(new Date(httpURLConnection.getLastModified()));
            getProperties().setLastModified(instance.getTime());
        }
    }

    private StorageRequest<CloudFileClient, CloudFileShare, Void> uploadMetadataImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFileShare, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                return FileRequest.setShareMetadata(cloudFileShare.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2);
            }

            public Void preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudFileShare.updatePropertiesFromResponse(getConnection());
                return null;
            }

            public void setHeaders(HttpURLConnection httpURLConnection, CloudFileShare cloudFileShare, OperationContext operationContext) {
                FileRequest.addMetadata(httpURLConnection, cloudFileShare.metadata, operationContext);
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    private StorageRequest<CloudFileClient, CloudFileShare, Void> uploadPermissionsImpl(FileSharePermissions fileSharePermissions, AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        try {
            StringWriter stringWriter = new StringWriter();
            SharedAccessPolicySerializer.writeSharedAccessIdentifiersToStream(fileSharePermissions.getSharedAccessPolicies(), stringWriter);
            final byte[] bytes = stringWriter.toString().getBytes("UTF-8");
            final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
            final AccessCondition accessCondition2 = accessCondition;
            return new StorageRequest<CloudFileClient, CloudFileShare, Void>(fileRequestOptions, getStorageUri()) {
                public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                    setSendStream(new ByteArrayInputStream(bytes));
                    setLength(Long.valueOf((long) bytes.length));
                    return FileRequest.setAcl(cloudFileShare.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2);
                }

                public Void preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
                    if (getResult().getStatusCode() != 200) {
                        setNonExceptionedRetryableFailure(true);
                        return null;
                    }
                    cloudFileShare.updatePropertiesFromResponse(getConnection());
                    return null;
                }

                public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                    StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, (long) bytes.length, operationContext);
                }
            };
        } catch (IllegalArgumentException e2) {
            throw StorageException.translateException((StorageRequest<?, ?, ?>) null, e2, (OperationContext) null);
        } catch (XMLStreamException e3) {
            throw StorageException.translateException((StorageRequest<?, ?, ?>) null, e3, (OperationContext) null);
        } catch (UnsupportedEncodingException e4) {
            throw StorageException.translateException((StorageRequest<?, ?, ?>) null, e4, (OperationContext) null);
        }
    }

    private StorageRequest<CloudFileClient, CloudFileShare, Void> uploadPropertiesImpl(AccessCondition accessCondition, FileRequestOptions fileRequestOptions) {
        final FileRequestOptions fileRequestOptions2 = fileRequestOptions;
        final AccessCondition accessCondition2 = accessCondition;
        return new StorageRequest<CloudFileClient, CloudFileShare, Void>(fileRequestOptions, getStorageUri()) {
            public HttpURLConnection buildRequest(CloudFileClient cloudFileClient, CloudFileShare cloudFileShare, OperationContext operationContext) {
                return FileRequest.setShareProperties(cloudFileShare.getTransformedAddress().getUri(getCurrentLocation()), fileRequestOptions2, operationContext, accessCondition2, cloudFileShare.properties);
            }

            public Void preProcessResponse(CloudFileShare cloudFileShare, CloudFileClient cloudFileClient, OperationContext operationContext) {
                if (getResult().getStatusCode() != 200) {
                    setNonExceptionedRetryableFailure(true);
                    return null;
                }
                cloudFileShare.updatePropertiesFromResponse(getConnection());
                return null;
            }

            public void signRequest(HttpURLConnection httpURLConnection, CloudFileClient cloudFileClient, OperationContext operationContext) {
                StorageRequest.signBlobQueueAndFileRequest(httpURLConnection, cloudFileClient, 0, operationContext);
            }
        };
    }

    public void assertNoSnapshot() {
        if (isSnapshot()) {
            throw new IllegalArgumentException(SR.INVALID_OPERATION_FOR_A_SHARE_SNAPSHOT);
        }
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
    public final CloudFileShare createSnapshot() {
        return createSnapshot((HashMap<String, String>) null, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void delete() {
        delete(DeleteShareSnapshotsOption.NONE, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean deleteIfExists() {
        return deleteIfExists(DeleteShareSnapshotsOption.NONE, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void downloadAttributes() {
        downloadAttributes((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public FileSharePermissions downloadPermissions() {
        return downloadPermissions((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public boolean exists() {
        return exists((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    public String generateSharedAccessSignature(SharedAccessFilePolicy sharedAccessFilePolicy, String str) {
        return generateSharedAccessSignature(sharedAccessFilePolicy, str, (IPRange) null, (SharedAccessProtocols) null);
    }

    public HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public String getName() {
        return this.name;
    }

    public FileShareProperties getProperties() {
        return this.properties;
    }

    public final URI getQualifiedUri() {
        if (!isSnapshot()) {
            return this.fileServiceClient.getCredentials().transformUri(getUri());
        }
        return PathUtility.addToQuery(getUri(), String.format("sharesnapshot=%s", new Object[]{this.snapshotID}));
    }

    public CloudFileDirectory getRootDirectoryReference() {
        return new CloudFileDirectory(this.storageUri, "", this);
    }

    public CloudFileClient getServiceClient() {
        return this.fileServiceClient;
    }

    public final String getSnapshot() {
        return this.snapshotID;
    }

    @DoesServiceRequest
    public ShareStats getStats() {
        return getStats((FileRequestOptions) null, (OperationContext) null);
    }

    public StorageUri getStorageUri() {
        return this.storageUri;
    }

    public URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    public final boolean isSnapshot() {
        return this.snapshotID != null;
    }

    public void setMetadata(HashMap<String, String> hashMap) {
        this.metadata = hashMap;
    }

    public void setProperties(FileShareProperties fileShareProperties) {
        this.properties = fileShareProperties;
    }

    @DoesServiceRequest
    public void uploadMetadata() {
        uploadMetadata((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void uploadPermissions(FileSharePermissions fileSharePermissions) {
        uploadPermissions(fileSharePermissions, (AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public final void uploadProperties() {
        uploadProperties((AccessCondition) null, (FileRequestOptions) null, (OperationContext) null);
    }

    @DoesServiceRequest
    public void create(FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        assertNoSnapshot();
        FileShareProperties fileShareProperties = this.properties;
        if (!(fileShareProperties == null || fileShareProperties.getShareQuota() == null)) {
            Utility.assertInBounds("Share Quota", (long) this.properties.getShareQuota().intValue(), 1, 5120);
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, createImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean createIfNotExists(FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        if (exists(true, (AccessCondition) null, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            create(populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 409 && StorageErrorCodeStrings.SHARE_ALREADY_EXISTS.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    @DoesServiceRequest
    public final CloudFileShare createSnapshot(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return createSnapshot((HashMap<String, String>) null, accessCondition, fileRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public void delete(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        delete(DeleteShareSnapshotsOption.NONE, accessCondition, fileRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public boolean deleteIfExists(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return deleteIfExists(DeleteShareSnapshotsOption.NONE, accessCondition, fileRequestOptions, operationContext);
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
    public FileSharePermissions downloadPermissions(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        return (FileSharePermissions) ExecutionEngine.executeWithRetry(this.fileServiceClient, this, downloadPermissionsImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean exists(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        return exists(false, accessCondition, fileRequestOptions, operationContext);
    }

    public String generateSharedAccessSignature(SharedAccessFilePolicy sharedAccessFilePolicy, String str, IPRange iPRange, SharedAccessProtocols sharedAccessProtocols) {
        if (StorageCredentialsHelper.canCredentialsSignRequest(this.fileServiceClient.getCredentials())) {
            return SharedAccessSignatureHelper.generateSharedAccessSignatureForBlobAndFile(sharedAccessFilePolicy, (SharedAccessHeaders) null, str, "s", iPRange, sharedAccessProtocols, SharedAccessSignatureHelper.generateSharedAccessSignatureHashForBlobAndFile(sharedAccessFilePolicy, (SharedAccessHeaders) null, str, getSharedAccessCanonicalName(), iPRange, sharedAccessProtocols, this.fileServiceClient)).toString();
        }
        throw new IllegalArgumentException(SR.CANNOT_CREATE_SAS_WITHOUT_ACCOUNT_KEY);
    }

    @DoesServiceRequest
    public ShareStats getStats(FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        assertNoSnapshot();
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        return (ShareStats) ExecutionEngine.executeWithRetry(this.fileServiceClient, this, getStatsImpl(populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void uploadMetadata(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        assertNoSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, uploadMetadataImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void uploadPermissions(FileSharePermissions fileSharePermissions, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        assertNoSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, uploadPermissionsImpl(fileSharePermissions, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public final void uploadProperties(AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        assertNoSnapshot();
        FileShareProperties fileShareProperties = this.properties;
        if (!(fileShareProperties == null || fileShareProperties.getShareQuota() == null)) {
            Utility.assertInBounds("Share Quota", (long) this.properties.getShareQuota().intValue(), 1, 5120);
        }
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, uploadPropertiesImpl(accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
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
    public final CloudFileShare createSnapshot(HashMap<String, String> hashMap, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        assertNoSnapshot();
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        return (CloudFileShare) ExecutionEngine.executeWithRetry(this.fileServiceClient, this, createSnapshotImpl(hashMap, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public void delete(DeleteShareSnapshotsOption deleteShareSnapshotsOption, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        if (operationContext == null) {
            operationContext = new OperationContext();
        }
        operationContext.initialize();
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        ExecutionEngine.executeWithRetry(this.fileServiceClient, this, deleteImpl(deleteShareSnapshotsOption, accessCondition, populateAndApplyDefaults), populateAndApplyDefaults.getRetryPolicyFactory(), operationContext);
    }

    @DoesServiceRequest
    public boolean deleteIfExists(DeleteShareSnapshotsOption deleteShareSnapshotsOption, AccessCondition accessCondition, FileRequestOptions fileRequestOptions, OperationContext operationContext) {
        FileRequestOptions populateAndApplyDefaults = FileRequestOptions.populateAndApplyDefaults(fileRequestOptions, this.fileServiceClient);
        if (!exists(true, accessCondition, populateAndApplyDefaults, operationContext)) {
            return false;
        }
        try {
            delete(deleteShareSnapshotsOption, accessCondition, populateAndApplyDefaults, operationContext);
            return true;
        } catch (StorageException e2) {
            if (e2.getHttpStatusCode() == 404 && StorageErrorCodeStrings.SHARE_NOT_FOUND.equals(e2.getErrorCode())) {
                return false;
            }
            throw e2;
        }
    }

    public CloudFileShare(URI uri) {
        this(new StorageUri(uri));
    }

    public CloudFileShare(StorageUri storageUri2) {
        this(storageUri2, (StorageCredentials) null);
    }

    public CloudFileShare(URI uri, StorageCredentials storageCredentials) {
        this(new StorageUri(uri), storageCredentials);
    }

    public CloudFileShare(StorageUri storageUri2, StorageCredentials storageCredentials) {
        this.metadata = new HashMap<>();
        this.properties = new FileShareProperties();
        this.name = null;
        parseQueryAndVerify(storageUri2, storageCredentials);
    }
}
