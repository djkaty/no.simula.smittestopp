package com.microsoft.azure.storage;

import com.microsoft.azure.storage.Constants;
import com.microsoft.azure.storage.core.PathUtility;
import com.microsoft.azure.storage.core.SR;
import java.net.URI;

public final class StorageCredentialsSharedAccessSignature extends StorageCredentials {
    public final String token;

    public StorageCredentialsSharedAccessSignature(String str) {
        this.token = str;
        if (str == null) {
            setHttpsOnly(false);
            return;
        }
        try {
            String[] strArr = PathUtility.parseQueryString(str).get(Constants.QueryConstants.SIGNED_PROTOCOLS);
            setHttpsOnly(strArr != null && "https".equals(strArr[0]));
        } catch (StorageException unused) {
            setHttpsOnly(false);
        }
    }

    public String getToken() {
        return this.token;
    }

    public String toString(boolean z) {
        Object[] objArr = new Object[2];
        objArr[0] = "SharedAccessSignature";
        objArr[1] = z ? this.token : "[signature hidden]";
        return String.format("%s=%s", objArr);
    }

    public URI transformUri(URI uri, OperationContext operationContext) {
        if (uri == null) {
            return null;
        }
        if (!isHttpsOnly() || uri.getScheme().equals("https")) {
            return PathUtility.addToQuery(PathUtility.addToQuery(uri, this.token), "api-version=2018-03-28");
        }
        throw new IllegalArgumentException(SR.CANNOT_TRANSFORM_NON_HTTPS_URI_WITH_HTTPS_ONLY_CREDENTIALS);
    }

    public StorageUri transformUri(StorageUri storageUri, OperationContext operationContext) {
        return new StorageUri(transformUri(storageUri.getPrimaryUri(), operationContext), transformUri(storageUri.getSecondaryUri(), operationContext));
    }
}
