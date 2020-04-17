package com.microsoft.identity.common.internal.util;

public class NumberUtil {
    public static Integer parseIntSafely(String str) {
        try {
            return Integer.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Long parseLongSafely(String str) {
        try {
            return Long.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
