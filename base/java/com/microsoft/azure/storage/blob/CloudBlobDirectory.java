package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.DoesServiceRequest;
import com.microsoft.azure.storage.OperationContext;
import com.microsoft.azure.storage.ResultContinuation;
import com.microsoft.azure.storage.ResultSegment;
import com.microsoft.azure.storage.StorageUri;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.net.URI;
import java.util.EnumSet;

public final class CloudBlobDirectory implements ListBlobItem {
    public final CloudBlobClient blobServiceClient;
    public final CloudBlobContainer container;
    public CloudBlobDirectory parent;
    public final String prefix;
    public final StorageUri storageUri;

    public CloudBlobDirectory(StorageUri storageUri2, String str, CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer) {
        this(storageUri2, str, cloudBlobClient, cloudBlobContainer, (CloudBlobDirectory) null);
    }

    public CloudAppendBlob getAppendBlobReference(String str) {
        return getAppendBlobReference(str, (String) null);
    }

    public CloudBlockBlob getBlockBlobReference(String str) {
        return getBlockBlobReference(str, (String) null);
    }

    public CloudBlobContainer getContainer() {
        return this.container;
    }

    public CloudBlobDirectory getDirectoryReference(String str) {
        Utility.assertNotNullOrEmpty("directoryName", str);
        if (!str.endsWith(this.blobServiceClient.getDirectoryDelimiter())) {
            str = str.concat(this.blobServiceClient.getDirectoryDelimiter());
        }
        return new CloudBlobDirectory(PathUtility.appendPathToUri(this.storageUri, str, this.blobServiceClient.getDirectoryDelimiter()), getPrefix().concat(str), this.blobServiceClient, this.container, this);
    }

    public CloudPageBlob getPageBlobReference(String str) {
        return getPageBlobReference(str, (String) null);
    }

    public CloudBlobDirectory getParent() {
        String parentNameFromURI;
        if (this.parent == null && (parentNameFromURI = CloudBlob.getParentNameFromURI(getStorageUri(), this.blobServiceClient.getDirectoryDelimiter(), getContainer())) != null) {
            this.parent = new CloudBlobDirectory(PathUtility.appendPathToUri(this.container.getStorageUri(), parentNameFromURI), parentNameFromURI, this.blobServiceClient, getContainer());
        }
        return this.parent;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public CloudBlobClient getServiceClient() {
        return this.blobServiceClient;
    }

    public final StorageUri getStorageUri() {
        return this.storageUri;
    }

    public URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    @DoesServiceRequest
    public Iterable<ListBlobItem> listBlobs() {
        return getContainer().listBlobs(getPrefix());
    }

    @DoesServiceRequest
    public ResultSegment<ListBlobItem> listBlobsSegmented() {
        return getContainer().listBlobsSegmented(getPrefix());
    }

    public CloudBlobDirectory(StorageUri storageUri2, String str, CloudBlobClient cloudBlobClient, CloudBlobContainer cloudBlobContainer, CloudBlobDirectory cloudBlobDirectory) {
        Utility.assertNotNull("uri", storageUri2);
        Utility.assertNotNull("client", cloudBlobClient);
        Utility.assertNotNull(SR.CONTAINER, cloudBlobContainer);
        this.blobServiceClient = cloudBlobClient;
        this.parent = cloudBlobDirectory;
        this.container = cloudBlobContainer;
        this.prefix = str;
        this.storageUri = storageUri2;
    }

    public CloudAppendBlob getAppendBlobReference(String str, String str2) {
        Utility.assertNotNullOrEmpty("blobName", str);
        return new CloudAppendBlob(getPrefix().concat(str), str2, getContainer());
    }

    public CloudBlockBlob getBlockBlobReference(String str, String str2) {
        Utility.assertNotNullOrEmpty("blobName", str);
        return new CloudBlockBlob(getPrefix().concat(str), str2, getContainer());
    }

    public CloudPageBlob getPageBlobReference(String str, String str2) {
        Utility.assertNotNullOrEmpty("blobName", str);
        return new CloudPageBlob(getPrefix().concat(str), str2, getContainer());
    }

    @DoesServiceRequest
    public Iterable<ListBlobItem> listBlobs(String str) {
        if (str == null) {
            str = "";
        }
        return getContainer().listBlobs(getPrefix().concat(str));
    }

    @DoesServiceRequest
    public ResultSegment<ListBlobItem> listBlobsSegmented(String str) {
        if (str == null) {
            str = "";
        }
        return getContainer().listBlobsSegmented(getPrefix().concat(str));
    }

    @DoesServiceRequest
    public Iterable<ListBlobItem> listBlobs(String str, boolean z, EnumSet<BlobListingDetails> enumSet, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (str == null) {
            str = "";
        }
        return getContainer().listBlobs(getPrefix().concat(str), z, enumSet, blobRequestOptions, operationContext);
    }

    @DoesServiceRequest
    public ResultSegment<ListBlobItem> listBlobsSegmented(String str, boolean z, EnumSet<BlobListingDetails> enumSet, Integer num, ResultContinuation resultContinuation, BlobRequestOptions blobRequestOptions, OperationContext operationContext) {
        if (str == null) {
            str = "";
        }
        return getContainer().listBlobsSegmented(getPrefix().concat(str), z, enumSet, num, resultContinuation, blobRequestOptions, operationContext);
    }
}
