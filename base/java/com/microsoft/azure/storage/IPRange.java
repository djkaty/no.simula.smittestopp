package com.microsoft.azure.storage;

import com.microsoft.azure.storage.core.SR;
import com.microsoft.azure.storage.core.Utility;
import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;
import java.net.Inet4Address;

public final class IPRange {
    public String ipMax;
    public String ipMin;

    public IPRange(String str) {
        Utility.assertNotNull("ip", str);
        validateIPAddress(str);
        this.ipMin = str;
        this.ipMax = str;
    }

    public static void validateIPAddress(String str) {
        try {
            Inet4Address inet4Address = (Inet4Address) Inet4Address.getByName(str);
        } catch (Exception e2) {
            throw new IllegalArgumentException(String.format(SR.INVALID_IP_ADDRESS, new Object[]{str}), e2);
        }
    }

    public String getIpMax() {
        return this.ipMax;
    }

    public String getIpMin() {
        return this.ipMin;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(this.ipMin);
        if (!this.ipMin.equals(this.ipMax)) {
            sb.append(CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR);
            sb.append(this.ipMax);
        }
        return sb.toString();
    }

    public IPRange(String str, String str2) {
        Utility.assertNotNull("mininimumIP", str);
        Utility.assertNotNull("maximumIP", str2);
        validateIPAddress(str);
        validateIPAddress(str2);
        this.ipMin = str;
        this.ipMax = str2;
    }
}
