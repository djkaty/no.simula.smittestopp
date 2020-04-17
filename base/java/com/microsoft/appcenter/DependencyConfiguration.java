package com.microsoft.appcenter;

import com.microsoft.appcenter.http.HttpClient;

public final class DependencyConfiguration {
    public static HttpClient sHttpClient;

    public static HttpClient getHttpClient() {
        return sHttpClient;
    }

    public static void setHttpClient(HttpClient httpClient) {
        sHttpClient = httpClient;
    }
}
