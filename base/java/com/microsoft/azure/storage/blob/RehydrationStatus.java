package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.Utility;
import java.util.Locale;

public enum RehydrationStatus {
    UNKNOWN,
    PENDING_TO_HOT,
    PENDING_TO_COOL;

    public static RehydrationStatus parse(String str) {
        if (Utility.isNullOrEmpty(str)) {
            return UNKNOWN;
        }
        if ("rehydrate-pending-to-hot".equals(str.toLowerCase(Locale.US))) {
            return PENDING_TO_HOT;
        }
        if ("rehydrate-pending-to-cool".equals(str.toLowerCase(Locale.US))) {
            return PENDING_TO_COOL;
        }
        return UNKNOWN;
    }
}
