package com.microsoft.appcenter.http;

public abstract class HttpClientDecorator implements HttpClient {
    public final HttpClient mDecoratedApi;

    public HttpClientDecorator(HttpClient httpClient) {
        this.mDecoratedApi = httpClient;
    }

    public void close() {
        this.mDecoratedApi.close();
    }

    public HttpClient getDecoratedApi() {
        return this.mDecoratedApi;
    }

    public void reopen() {
        this.mDecoratedApi.reopen();
    }
}
