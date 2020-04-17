package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.Utility;
import java.util.Locale;

public enum LeaseState {
    UNSPECIFIED,
    AVAILABLE,
    LEASED,
    EXPIRED,
    BREAKING,
    BROKEN;

    public static LeaseState parse(String str) {
        if (Utility.isNullOrEmpty(str)) {
            return UNSPECIFIED;
        }
        if ("available".equals(str.toLowerCase(Locale.US))) {
            return AVAILABLE;
        }
        if ("leased".equals(str.toLowerCase(Locale.US))) {
            return LEASED;
        }
        if ("expired".equals(str.toLowerCase(Locale.US))) {
            return EXPIRED;
        }
        if ("breaking".equals(str.toLowerCase(Locale.US))) {
            return BREAKING;
        }
        if ("broken".equals(str.toLowerCase(Locale.US))) {
            return BROKEN;
        }
        return UNSPECIFIED;
    }
}
