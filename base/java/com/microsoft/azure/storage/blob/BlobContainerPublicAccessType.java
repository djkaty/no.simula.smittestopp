package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import java.util.Locale;

public enum BlobContainerPublicAccessType {
    BLOB,
    CONTAINER,
    OFF,
    UNKNOWN;

    public static BlobContainerPublicAccessType parse(String str) {
        if (Utility.isNullOrEmpty(str)) {
            return OFF;
        }
        if (SR.BLOB.equals(str.toLowerCase(Locale.US))) {
            return BLOB;
        }
        if (SR.CONTAINER.equals(str.toLowerCase(Locale.US))) {
            return CONTAINER;
        }
        return UNKNOWN;
    }
}
