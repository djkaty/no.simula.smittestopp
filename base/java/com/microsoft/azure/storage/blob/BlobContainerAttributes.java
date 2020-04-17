package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.StorageUri;
import java.net.URI;
import java.util.HashMap;

public final class BlobContainerAttributes {
    public HashMap<String, String> metadata;
    public String name;
    public BlobContainerProperties properties;
    public StorageUri storageUri;

    public BlobContainerAttributes() {
        setMetadata(new HashMap());
        setProperties(new BlobContainerProperties());
    }

    public HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public String getName() {
        return this.name;
    }

    public BlobContainerProperties getProperties() {
        return this.properties;
    }

    public final StorageUri getStorageUri() {
        return this.storageUri;
    }

    public URI getUri() {
        return this.storageUri.getPrimaryUri();
    }

    public void setMetadata(HashMap<String, String> hashMap) {
        this.metadata = hashMap;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setProperties(BlobContainerProperties blobContainerProperties) {
        this.properties = blobContainerProperties;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }
}
