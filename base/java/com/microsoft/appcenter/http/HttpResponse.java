package com.microsoft.appcenter.http;

import java.util.HashMap;
import java.util.Map;

public class HttpResponse {
    public final Map<String, String> headers;
    public final String payload;
    public final int statusCode;

    public HttpResponse(int i2) {
        this(i2, "");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || HttpResponse.class != obj.getClass()) {
            return false;
        }
        HttpResponse httpResponse = (HttpResponse) obj;
        if (this.statusCode != httpResponse.statusCode || !this.payload.equals(httpResponse.payload) || !this.headers.equals(httpResponse.headers)) {
            return false;
        }
        return true;
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    public String getPayload() {
        return this.payload;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public int hashCode() {
        int hashCode = this.payload.hashCode();
        return this.headers.hashCode() + ((hashCode + (this.statusCode * 31)) * 31);
    }

    public HttpResponse(int i2, String str) {
        this(i2, str, new HashMap());
    }

    public HttpResponse(int i2, String str, Map<String, String> map) {
        this.payload = str;
        this.statusCode = i2;
        this.headers = map;
    }
}
