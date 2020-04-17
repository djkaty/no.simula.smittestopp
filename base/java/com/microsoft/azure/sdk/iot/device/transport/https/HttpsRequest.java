package com.microsoft.azure.sdk.iot.device.transport.https;

import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import com.microsoft.azure.sdk.iot.device.ProxySettings;
import com.microsoft.azure.storage.Constants;
import com.microsoft.identity.common.internal.net.HttpRequest;
import e.a.a.a.a;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLContext;

public class HttpsRequest {
    public byte[] body;
    public int connectionTimeout;
    public Map<String, List<String>> headers;
    public HttpsMethod method;
    public ProxySettings proxySettings;
    public SSLContext sslContext;
    public URL url;

    public HttpsRequest(URL url2, HttpsMethod httpsMethod, byte[] bArr, String str) {
        this(url2, httpsMethod, bArr, str, (ProxySettings) null);
    }

    public byte[] getBody() {
        return this.body;
    }

    public String getHttpMethod() {
        return this.method.toString();
    }

    public String getRequestHeaders() {
        String str = "";
        for (String next : this.headers.keySet()) {
            String b = a.b(a.b(str, next), ": ");
            for (String b2 : this.headers.get(next)) {
                b = a.b(a.b(b, b2), "; ");
            }
            str = a.b(b.substring(0, b.length() - 2), ProxyHandlerImpl.NEW_LINE);
        }
        return str;
    }

    public URL getRequestUrl() {
        return this.url;
    }

    public HttpsResponse send() {
        URL url2 = this.url;
        if (url2 != null) {
            HttpsConnection httpsConnection = new HttpsConnection(url2, this.method, this.proxySettings);
            for (String next : this.headers.keySet()) {
                for (String requestHeader : this.headers.get(next)) {
                    httpsConnection.setRequestHeader(next, requestHeader);
                }
            }
            httpsConnection.writeOutput(this.body);
            SSLContext sSLContext = this.sslContext;
            if (sSLContext != null) {
                httpsConnection.setSSLContext(sSLContext);
            }
            int i2 = this.connectionTimeout;
            if (i2 != 0) {
                httpsConnection.setReadTimeoutMillis(i2);
            }
            byte[] bArr = new byte[0];
            byte[] bArr2 = new byte[0];
            httpsConnection.connect();
            int responseStatus = httpsConnection.getResponseStatus();
            Map<String, List<String>> responseHeaders = httpsConnection.getResponseHeaders();
            if (responseStatus == 200) {
                bArr = httpsConnection.readInput();
            }
            return new HttpsResponse(responseStatus, bArr, responseHeaders, bArr2);
        }
        throw new IllegalArgumentException("url cannot be null");
    }

    public HttpsRequest setHeaderField(String str, String str2) {
        if (this.headers.containsKey(str)) {
            this.headers.get(str).add(str2);
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str2);
            this.headers.put(str, arrayList);
        }
        return this;
    }

    public HttpsRequest setReadTimeoutMillis(int i2) {
        this.connectionTimeout = i2;
        return this;
    }

    public HttpsRequest setSSLContext(SSLContext sSLContext) {
        if (sSLContext != null) {
            this.sslContext = sSLContext;
            return this;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public HttpsRequest(URL url2, HttpsMethod httpsMethod, byte[] bArr, String str, ProxySettings proxySettings2) {
        this.url = url2;
        this.method = httpsMethod;
        this.body = bArr;
        this.headers = new HashMap();
        ArrayList arrayList = new ArrayList();
        if (!(url2 == null || url2.getHost() == null || url2.getHost().isEmpty())) {
            String host = url2.getHost();
            if (url2.getPort() != -1) {
                StringBuilder a = a.a(host, ":");
                a.append(url2.getPort());
                host = a.toString();
            }
            arrayList.add(host);
            this.headers.put(HttpRequest.HOST, arrayList);
        }
        if (str != null && !str.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(str);
            this.headers.put(Constants.HeaderConstants.USER_AGENT, arrayList2);
        }
        this.proxySettings = proxySettings2;
    }

    public HttpsRequest() {
    }
}
