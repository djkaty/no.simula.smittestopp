package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.Base64;
import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.net.URI;
import java.security.InvalidKeyException;
import java.util.Map;

public abstract class StorageCredentials {
    public boolean httpsOnly = false;

    public static StorageCredentials tryParseCredentials(Map<String, String> map) {
        String str = map.get(CloudStorageAccount.ACCOUNT_NAME_NAME) != null ? map.get(CloudStorageAccount.ACCOUNT_NAME_NAME) : null;
        String str2 = map.get(CloudStorageAccount.ACCOUNT_KEY_NAME) != null ? map.get(CloudStorageAccount.ACCOUNT_KEY_NAME) : null;
        String str3 = map.get("SharedAccessSignature") != null ? map.get("SharedAccessSignature") : null;
        if (str == null || str2 == null || str3 != null) {
            if (str2 != null || str3 == null) {
                return null;
            }
            return new StorageCredentialsSharedAccessSignature(str3);
        } else if (Base64.validateIsBase64String(str2)) {
            return new StorageCredentialsAccountAndKey(str, str2);
        } else {
            throw new InvalidKeyException(SR.INVALID_KEY);
        }
    }

    public String getAccountName() {
        return null;
    }

    public boolean isHttpsOnly() {
        return this.httpsOnly;
    }

    public void setHttpsOnly(boolean z) {
        this.httpsOnly = z;
    }

    public abstract String toString(boolean z);

    public abstract StorageUri transformUri(StorageUri storageUri, OperationContext operationContext);

    public URI transformUri(URI uri) {
        return transformUri(uri, (OperationContext) null);
    }

    public abstract URI transformUri(URI uri, OperationContext operationContext);

    public StorageUri transformUri(StorageUri storageUri) {
        return transformUri(storageUri, (OperationContext) null);
    }

    public static StorageCredentials tryParseCredentials(String str) {
        return tryParseCredentials((Map<String, String>) Utility.parseAccountString(str));
    }
}
