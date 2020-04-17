package com.microsoft.azure.sdk.iot.deps.transport.http;

import java.io.IOException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLContext;

public class HttpRequest {
    public final HttpConnection connection;

    public HttpRequest(URL url, HttpMethod httpMethod, byte[] bArr) {
        HttpConnection httpConnection = new HttpConnection(url, httpMethod);
        this.connection = httpConnection;
        httpConnection.writeOutput(bArr);
    }

    public HttpResponse send() {
        Map<String, List<String>> map;
        int i2;
        byte[] bArr = new byte[0];
        byte[] bArr2 = new byte[0];
        try {
            this.connection.connect();
            i2 = this.connection.getResponseStatus();
            map = this.connection.getResponseHeaders();
            bArr = this.connection.readInput();
        } catch (IOException unused) {
            i2 = this.connection.getResponseStatus();
            map = this.connection.getResponseHeaders();
            bArr2 = this.connection.readError();
        }
        return new HttpResponse(i2, bArr, map, bArr2);
    }

    public HttpRequest setHeaderField(String str, String str2) {
        this.connection.setRequestHeader(str, str2);
        return this;
    }

    public HttpRequest setReadTimeoutMillis(int i2) {
        this.connection.setReadTimeoutMillis(i2);
        return this;
    }

    public HttpRequest setSSLContext(SSLContext sSLContext) {
        if (sSLContext != null) {
            this.connection.setSSLContext(sSLContext);
            return this;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public HttpRequest() {
        this.connection = null;
    }
}
