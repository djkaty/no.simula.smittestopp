package com.microsoft.appcenter.http;

import com.microsoft.appcenter.http.HttpClient;
import java.util.Map;

public abstract class HttpClientCallDecorator implements Runnable, ServiceCall, ServiceCallback {
    public final HttpClient.CallTemplate mCallTemplate;
    public final HttpClient mDecoratedApi;
    public final Map<String, String> mHeaders;
    public final String mMethod;
    public ServiceCall mServiceCall;
    public final ServiceCallback mServiceCallback;
    public final String mUrl;

    public HttpClientCallDecorator(HttpClient httpClient, String str, String str2, Map<String, String> map, HttpClient.CallTemplate callTemplate, ServiceCallback serviceCallback) {
        this.mDecoratedApi = httpClient;
        this.mUrl = str;
        this.mMethod = str2;
        this.mHeaders = map;
        this.mCallTemplate = callTemplate;
        this.mServiceCallback = serviceCallback;
    }

    public synchronized void cancel() {
        this.mServiceCall.cancel();
    }

    public void onCallFailed(Exception exc) {
        this.mServiceCallback.onCallFailed(exc);
    }

    public void onCallSucceeded(HttpResponse httpResponse) {
        this.mServiceCallback.onCallSucceeded(httpResponse);
    }

    public synchronized void run() {
        this.mServiceCall = this.mDecoratedApi.callAsync(this.mUrl, this.mMethod, this.mHeaders, this.mCallTemplate, this);
    }
}
