package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.StorageUri;
import java.net.URI;
import java.util.HashMap;

public final class BlobAttributes {
    public HashMap<String, String> metadata;
    public BlobProperties properties;
    public String snapshotID;
    public StorageUri storageUri;

    public BlobAttributes(BlobType blobType) {
        setMetadata(new HashMap());
        setProperties(new BlobProperties(blobType));
    }

    public HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public BlobProperties getProperties() {
        return this.properties;
    }

    public final String getSnapshotID() {
        return this.snapshotID;
    }

    public final StorageUri getStorageUri() {
        return this.storageUri;
    }

    public final URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    public void setMetadata(HashMap<String, String> hashMap) {
        this.metadata = hashMap;
    }

    public void setProperties(BlobProperties blobProperties) {
        this.properties = blobProperties;
    }

    public final void setSnapshotID(String str) {
        this.snapshotID = str;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }
}
