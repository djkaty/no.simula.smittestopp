package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.StorageUri;
import java.net.URI;
import java.util.HashMap;

public final class FileAttributes {
    public HashMap<String, String> metadata;
    public FileProperties properties;
    public StorageUri storageUri;

    public FileAttributes() {
        setMetadata(new HashMap());
        setProperties(new FileProperties());
    }

    public HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public FileProperties getProperties() {
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

    public void setProperties(FileProperties fileProperties) {
        this.properties = fileProperties;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }
}
