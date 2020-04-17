package com.microsoft.azure.storage.blob;

import com.microsoft.azure.storage.core.Utility;
import java.util.Locale;

public enum PremiumPageBlobTier {
    UNKNOWN,
    P4,
    P6,
    P10,
    P20,
    P30,
    P40,
    P50,
    P60;

    public static PremiumPageBlobTier parse(String str) {
        if (Utility.isNullOrEmpty(str)) {
            return UNKNOWN;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        if ("p4".equals(lowerCase)) {
            return P4;
        }
        if ("p6".equals(lowerCase)) {
            return P6;
        }
        if ("p10".equals(lowerCase)) {
            return P10;
        }
        if ("p20".equals(lowerCase)) {
            return P20;
        }
        if ("p30".equals(lowerCase)) {
            return P30;
        }
        if ("p40".equals(lowerCase)) {
            return P40;
        }
        if ("p50".equals(lowerCase)) {
            return P50;
        }
        if ("p60".equals(lowerCase)) {
            return P60;
        }
        return UNKNOWN;
    }
}
