package com.microsoft.identity.common.adal.internal.net;

import java.util.List;
import java.util.Map;

public class HttpWebResponse {
    public final String mResponseBody;
    public final Map<String, List<String>> mResponseHeaders;
    public final int mStatusCode;

    public HttpWebResponse(int i2, String str, Map<String, List<String>> map) {
        this.mStatusCode = i2;
        this.mResponseBody = str;
        this.mResponseHeaders = map;
    }

    public String getBody() {
        return this.mResponseBody;
    }

    public Map<String, List<String>> getResponseHeaders() {
        return this.mResponseHeaders;
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }
}
