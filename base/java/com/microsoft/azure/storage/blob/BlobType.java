package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.Utility;
import java.util.Locale;

public enum BlobType {
    UNSPECIFIED,
    BLOCK_BLOB,
    PAGE_BLOB,
    APPEND_BLOB;

    public static BlobType parse(String str) {
        if (Utility.isNullOrEmpty(str)) {
            return UNSPECIFIED;
        }
        if ("blockblob".equals(str.toLowerCase(Locale.US))) {
            return BLOCK_BLOB;
        }
        if ("pageblob".equals(str.toLowerCase(Locale.US))) {
            return PAGE_BLOB;
        }
        if ("appendblob".equals(str.toLowerCase(Locale.US))) {
            return APPEND_BLOB;
        }
        return UNSPECIFIED;
    }
}
