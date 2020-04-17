package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.Utility;
import java.util.Locale;

public enum StandardBlobTier {
    UNKNOWN,
    HOT,
    COOL,
    ARCHIVE;

    public static StandardBlobTier parse(String str) {
        if (Utility.isNullOrEmpty(str)) {
            return UNKNOWN;
        }
        if ("hot".equals(str.toLowerCase(Locale.US))) {
            return HOT;
        }
        if ("cool".equals(str.toLowerCase(Locale.US))) {
            return COOL;
        }
        if ("archive".equals(str.toLowerCase(Locale.US))) {
            return ARCHIVE;
        }
        return UNKNOWN;
    }
}
