package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.Utility;
import java.util.Locale;

public enum LeaseStatus {
    UNSPECIFIED,
    LOCKED,
    UNLOCKED;

    public static LeaseStatus parse(String str) {
        if (Utility.isNullOrEmpty(str)) {
            return UNSPECIFIED;
        }
        if ("unlocked".equals(str.toLowerCase(Locale.US))) {
            return UNLOCKED;
        }
        if ("locked".equals(str.toLowerCase(Locale.US))) {
            return LOCKED;
        }
        return UNSPECIFIED;
    }
}
