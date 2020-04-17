package com.microsoft.azure.storage;

import java.net.URI;

public final class StorageCredentialsAnonymous extends StorageCredentials {
    public static final StorageCredentials ANONYMOUS = new StorageCredentialsAnonymous();

    public static StorageCredentials getInstance() {
        return ANONYMOUS;
    }

    public String toString(boolean z) {
        return "";
    }

    public StorageUri transformUri(StorageUri storageUri, OperationContext operationContext) {
        return storageUri;
    }

    public URI transformUri(URI uri, OperationContext operationContext) {
        return uri;
    }
}
