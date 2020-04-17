package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.Utility;
import java.util.Locale;

public enum LeaseDuration {
    UNSPECIFIED,
    FIXED,
    INFINITE;

    public static LeaseDuration parse(String str) {
        if (Utility.isNullOrEmpty(str)) {
            return UNSPECIFIED;
        }
        if ("fixed".equals(str.toLowerCase(Locale.US))) {
            return FIXED;
        }
        if ("infinite".equals(str.toLowerCase(Locale.US))) {
            return INFINITE;
        }
        return UNSPECIFIED;
    }
}
