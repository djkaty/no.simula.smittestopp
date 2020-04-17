package com.microsoft.azure.sdk.iot.device.net;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class IotHubRejectUri {
    public static final String REJECT_PATH_FORMAT = "/messages/devicebound/%s";
    public static final Map<String, String> REJECT_QUERY_PARAM;
    public final IotHubUri uri;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("?reject", "true");
        REJECT_QUERY_PARAM = Collections.unmodifiableMap(hashMap);
    }

    public IotHubRejectUri(String str, String str2, String str3, String str4) {
        String str5 = str;
        String str6 = str2;
        this.uri = new IotHubUri(str5, str6, String.format("/messages/devicebound/%s", new Object[]{str3}), REJECT_QUERY_PARAM, str4);
    }

    public String getHostname() {
        return this.uri.getHostname();
    }

    public String getPath() {
        return this.uri.getPath();
    }

    public String toString() {
        return this.uri.toString();
    }

    public IotHubRejectUri() {
        this.uri = null;
    }
}
