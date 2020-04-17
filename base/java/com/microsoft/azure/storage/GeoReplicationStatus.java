package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;

public enum GeoReplicationStatus {
    UNAVAILABLE,
    LIVE,
    BOOTSTRAP;

    public static GeoReplicationStatus parse(String str) {
        if (str != null) {
            if (str.equals(Constants.GEO_UNAVAILABLE_VALUE)) {
                return UNAVAILABLE;
            }
            if (str.equals(Constants.GEO_LIVE_VALUE)) {
                return LIVE;
            }
            if (str.equals(Constants.GEO_BOOTSTRAP_VALUE)) {
                return BOOTSTRAP;
            }
        }
        throw new IllegalArgumentException(String.format(Utility.LOCALE_US, SR.INVALID_GEO_REPLICATION_STATUS, new Object[]{str}));
    }
}
