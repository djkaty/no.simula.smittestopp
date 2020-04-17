package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.StorageUri;
import java.net.URI;
import java.util.HashMap;

public final class FileShareAttributes {
    public HashMap<String, String> metadata;
    public String name;
    public FileShareProperties properties;
    public StorageUri storageUri;

    public FileShareAttributes() {
        setMetadata(new HashMap());
        setProperties(new FileShareProperties());
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

    public void setProperties(FileShareProperties fileShareProperties) {
        this.properties = fileShareProperties;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }
}
