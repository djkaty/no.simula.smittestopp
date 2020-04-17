package com.microsoft.identity.common.internal.util;

import android.util.Pair;
import com.microsoft.identity.common.adal.internal.util.StringExtensions;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public final class StringUtil {
    public static int compareSemanticVersion(String str, String str2) {
        if (str2 == null) {
            return 1;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        int max = Math.max(split.length, split2.length);
        int i2 = 0;
        while (i2 < max) {
            int parseInt = i2 < split.length ? Integer.parseInt(split[i2]) : 0;
            int parseInt2 = i2 < split2.length ? Integer.parseInt(split2[i2]) : 0;
            if (parseInt < parseInt2) {
                return -1;
            }
            if (parseInt > parseInt2) {
                return 1;
            }
            i2++;
        }
        return 0;
    }

    public static String convertSetToString(Set<String> set, String str) {
        if (set == null || set.isEmpty() || str == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = set.iterator();
        sb.append(it.next());
        while (it.hasNext()) {
            sb.append(str);
            sb.append(it.next());
        }
        return sb.toString();
    }

    public static int countMatches(String str, String str2) {
        if (isEmpty(str) || isEmpty(str2)) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 <= str.length() - str2.length(); i3++) {
            if (str.substring(i3, str2.length() + i3).equalsIgnoreCase(str2)) {
                i2++;
            }
        }
        return i2;
    }

    public static Pair<String, String> getTenantInfo(String str) {
        String str2;
        String[] split = str.split("\\.");
        String str3 = null;
        if (2 != split.length || StringExtensions.isNullOrBlank(split[0]) || StringExtensions.isNullOrBlank(split[1])) {
            str2 = null;
        } else {
            str3 = split[0];
            str2 = split[1];
        }
        return new Pair<>(str3, str2);
    }

    public static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean isUuid(String str) {
        try {
            UUID.fromString(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public static String join(char c2, List<String> list) {
        StringBuilder sb = new StringBuilder();
        char c3 = 0;
        for (String next : list) {
            if (c3 != 0) {
                sb.append(c3);
            }
            sb.append(next);
            c3 = c2;
        }
        return sb.toString();
    }
}
