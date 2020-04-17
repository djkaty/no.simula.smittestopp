package com.microsoft.identity.common.adal.internal.net;

import java.net.HttpURLConnection;
import java.net.URL;

public final class HttpUrlConnectionFactory {
    public static HttpURLConnection sMockedConnection;
    public static URL sMockedConnectionOpenUrl;

    public static HttpURLConnection createHttpUrlConnection(URL url) {
        HttpURLConnection httpURLConnection = sMockedConnection;
        if (httpURLConnection == null) {
            return (HttpURLConnection) url.openConnection();
        }
        sMockedConnectionOpenUrl = url;
        return httpURLConnection;
    }

    public static URL getMockedConnectionOpenUrl() {
        return sMockedConnectionOpenUrl;
    }

    public static void setMockedHttpUrlConnection(HttpURLConnection httpURLConnection) {
        sMockedConnection = httpURLConnection;
        if (httpURLConnection == null) {
            sMockedConnectionOpenUrl = null;
        }
    }
}
