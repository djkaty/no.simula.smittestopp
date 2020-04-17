package com.microsoft.identity.common.internal.net;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.a.a.a.a;
import java.util.List;
import java.util.Map;

public final class HttpResponse {
    public final String mResponseBody;
    public final Map<String, List<String>> mResponseHeaders;
    public final int mStatusCode;

    public HttpResponse(int i2, String str, Map<String, List<String>> map) {
        this.mStatusCode = i2;
        this.mResponseBody = str;
        this.mResponseHeaders = map;
    }

    public String getBody() {
        return this.mResponseBody;
    }

    public Map<String, List<String>> getHeaders() {
        return this.mResponseHeaders;
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }

    public String toString() {
        StringBuilder a = a.a("HttpResponse{mStatusCode=");
        a.append(this.mStatusCode);
        a.append(", mResponseBody='");
        a.a(a, this.mResponseBody, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", mResponseHeaders=");
        a.append(this.mResponseHeaders);
        a.append('}');
        return a.toString();
    }
}
