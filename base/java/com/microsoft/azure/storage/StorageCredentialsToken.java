package com.microsoft.azure.storage;

import java.net.URI;

public final class StorageCredentialsToken extends StorageCredentials {
    public volatile String accountName;
    public volatile String token;

    public StorageCredentialsToken(String str, String str2) {
        this.accountName = str;
        this.token = str2;
    }

    public String getAccountName() {
        return this.accountName;
    }

    public String getToken() {
        return this.token;
    }

    public boolean isHttpsOnly() {
        return true;
    }

    public String toString(boolean z) {
        Object[] objArr = new Object[2];
        objArr[0] = CloudStorageAccount.ACCOUNT_TOKEN_NAME;
        objArr[1] = z ? this.token : "[token hidden]";
        return String.format("%s=%s", objArr);
    }

    public StorageUri transformUri(StorageUri storageUri, OperationContext operationContext) {
        return storageUri;
    }

    public URI transformUri(URI uri, OperationContext operationContext) {
        return uri;
    }

    public synchronized void updateToken(String str) {
        this.token = str;
    }
}
