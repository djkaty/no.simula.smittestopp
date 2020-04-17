package com.microsoft.azure.storage.file;

import com.microsoft.azure.storage.StorageUri;
import java.net.URI;
import java.util.HashMap;

public final class FileDirectoryAttributes {
    public HashMap<String, String> metadata;
    public String name;
    public FileDirectoryProperties properties;
    public StorageUri storageUri;

    public FileDirectoryAttributes() {
        setMetadata(new HashMap());
        setProperties(new FileDirectoryProperties());
    }

    public HashMap<String, String> getMetadata() {
        return this.metadata;
    }

    public String getName() {
        return this.name;
    }

    public FileDirectoryProperties getProperties() {
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

    public void setProperties(FileDirectoryProperties fileDirectoryProperties) {
        this.properties = fileDirectoryProperties;
    }

    public void setStorageUri(StorageUri storageUri2) {
        this.storageUri = storageUri2;
    }
}
