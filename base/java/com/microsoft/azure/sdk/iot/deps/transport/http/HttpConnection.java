package com.microsoft.azure.sdk.iot.deps.transport.http;

import java.io.IOException;
import java.io.InputStream;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

public class HttpConnection {
    public byte[] body;
    public final HttpsURLConnection connection;

    public HttpConnection(URL url, HttpMethod httpMethod) {
        String protocol = url.getProtocol();
        if (protocol.equalsIgnoreCase("HTTPS")) {
            this.connection = (HttpsURLConnection) url.openConnection();
            if (httpMethod == HttpMethod.PATCH) {
                setUnsupportedMethod(httpMethod);
                httpMethod = HttpMethod.POST;
            }
            this.connection.setRequestMethod(httpMethod.name());
            this.body = new byte[0];
            return;
        }
        throw new IllegalArgumentException(String.format("Expected URL that uses iotHubServiceClientProtocol HTTPS but received one that uses iotHubServiceClientProtocol '%s'.\n", new Object[]{protocol}));
    }

    public static byte[] readInputStream(InputStream inputStream) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            int read = inputStream.read();
            if (read <= -1) {
                break;
            }
            arrayList.add(Byte.valueOf((byte) read));
        }
        int size = arrayList.size();
        byte[] bArr = new byte[size];
        for (int i2 = 0; i2 < size; i2++) {
            bArr[i2] = ((Byte) arrayList.get(i2)).byteValue();
        }
        return bArr;
    }

    private void setUnsupportedMethod(HttpMethod httpMethod) {
        if (httpMethod == HttpMethod.PATCH) {
            setRequestHeader("X-HTTP-Method-Override", "PATCH");
            return;
        }
        throw new IOException("Unexpected Http Method " + httpMethod);
    }

    public void connect() {
        if (this.body.length > 0) {
            this.connection.setDoOutput(true);
            this.connection.getOutputStream().write(this.body);
        }
        this.connection.connect();
    }

    public Map<String, List<String>> getResponseHeaders() {
        return this.connection.getHeaderFields();
    }

    public int getResponseStatus() {
        return this.connection.getResponseCode();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0017, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0018, code lost:
        r0.addSuppressed(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001b, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0012, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:?, code lost:
        r1.close();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] readError() {
        /*
            r3 = this;
            r0 = 0
            byte[] r0 = new byte[r0]
            javax.net.ssl.HttpsURLConnection r1 = r3.connection
            java.io.InputStream r1 = r1.getErrorStream()
            if (r1 == 0) goto L_0x001c
            byte[] r0 = readInputStream(r1)     // Catch:{ all -> 0x0010 }
            goto L_0x001c
        L_0x0010:
            r0 = move-exception
            throw r0     // Catch:{ all -> 0x0012 }
        L_0x0012:
            r2 = move-exception
            r1.close()     // Catch:{ all -> 0x0017 }
            goto L_0x001b
        L_0x0017:
            r1 = move-exception
            r0.addSuppressed(r1)
        L_0x001b:
            throw r2
        L_0x001c:
            if (r1 == 0) goto L_0x0021
            r1.close()
        L_0x0021:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.deps.transport.http.HttpConnection.readError():byte[]");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0013, code lost:
        if (r0 != null) goto L_0x0015;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0019, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x001a, code lost:
        r1.addSuppressed(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x001d, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0012, code lost:
        r2 = move-exception;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] readInput() {
        /*
            r3 = this;
            javax.net.ssl.HttpsURLConnection r0 = r3.connection
            java.io.InputStream r0 = r0.getInputStream()
            byte[] r1 = readInputStream(r0)     // Catch:{ all -> 0x0010 }
            if (r0 == 0) goto L_0x000f
            r0.close()
        L_0x000f:
            return r1
        L_0x0010:
            r1 = move-exception
            throw r1     // Catch:{ all -> 0x0012 }
        L_0x0012:
            r2 = move-exception
            if (r0 == 0) goto L_0x001d
            r0.close()     // Catch:{ all -> 0x0019 }
            goto L_0x001d
        L_0x0019:
            r0 = move-exception
            r1.addSuppressed(r0)
        L_0x001d:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.deps.transport.http.HttpConnection.readInput():byte[]");
    }

    public void setReadTimeoutMillis(int i2) {
        this.connection.setReadTimeout(i2);
    }

    public void setRequestHeader(String str, String str2) {
        this.connection.setRequestProperty(str, str2);
    }

    public void setRequestMethod(HttpMethod httpMethod) {
        if (httpMethod == HttpMethod.POST || httpMethod == HttpMethod.PUT || this.body.length <= 0) {
            try {
                this.connection.setRequestMethod(httpMethod.name());
            } catch (ProtocolException unused) {
            }
        } else {
            throw new IllegalArgumentException("Cannot change the request method from POST or PUT when the request body is non-empty.");
        }
    }

    public void setSSLContext(SSLContext sSLContext) {
        if (sSLContext != null) {
            this.connection.setSSLSocketFactory(sSLContext.getSocketFactory());
            return;
        }
        throw new IllegalArgumentException("SSL context cannot be null");
    }

    public void writeOutput(byte[] bArr) {
        HttpMethod valueOf = HttpMethod.valueOf(this.connection.getRequestMethod());
        if (valueOf == HttpMethod.POST || valueOf == HttpMethod.PUT) {
            this.body = Arrays.copyOf(bArr, bArr.length);
        } else if (bArr.length > 0) {
            throw new IllegalArgumentException("Cannot write a body to a request that is not a POST or a PUT request.");
        }
    }

    public HttpConnection() {
        this.connection = null;
    }
}
