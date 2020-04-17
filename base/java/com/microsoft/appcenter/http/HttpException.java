package com.microsoft.appcenter.http;

import android.text.TextUtils;
import java.io.IOException;

public class HttpException extends IOException {
    public final HttpResponse mHttpResponse;

    public HttpException(HttpResponse httpResponse) {
        super(getDetailMessage(httpResponse.getStatusCode(), httpResponse.getPayload()));
        this.mHttpResponse = httpResponse;
    }

    public static String getDetailMessage(int i2, String str) {
        if (TextUtils.isEmpty(str)) {
            return String.valueOf(i2);
        }
        return i2 + " - " + str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || HttpException.class != obj.getClass()) {
            return false;
        }
        return this.mHttpResponse.equals(((HttpException) obj).mHttpResponse);
    }

    public HttpResponse getHttpResponse() {
        return this.mHttpResponse;
    }

    public int hashCode() {
        return this.mHttpResponse.hashCode();
    }
}
