package com.microsoft.azure.sdk.iot.device.transport.https;

import com.microsoft.azure.sdk.iot.device.ProxySettings;
import com.microsoft.azure.sdk.iot.device.exceptions.TransportException;
import com.microsoft.azure.sdk.iot.device.hsm.HttpsRequestResponseSerializer;
import com.microsoft.azure.sdk.iot.device.transport.HttpProxySocketFactory;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

public class HttpsConnection {
    public byte[] body;
    public final HttpURLConnection connection;
    public ProxySettings proxySettings;

    public HttpsConnection(URL url, HttpsMethod httpsMethod) {
        this(url, httpsMethod, (ProxySettings) null);
    }

    public static TransportException buildTransportException(IOException iOException) {
        TransportException transportException = new TransportException((Throwable) iOException);
        if ((iOException instanceof NoRouteToHostException) || (iOException instanceof UnknownHostException)) {
            transportException.setRetryable(true);
        }
        return transportException;
    }

    public static byte[] readInputStream(InputStream inputStream) {
        try {
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
        } catch (IOException e2) {
            throw buildTransportException(e2);
        }
    }

    public void connect() {
        try {
            if (this.body.length > 0) {
                this.connection.setDoOutput(true);
                this.connection.getOutputStream().write(this.body);
            }
            this.connection.connect();
        } catch (IOException e2) {
            throw buildTransportException(e2);
        }
    }

    public byte[] getBody() {
        return this.body;
    }

    public Map<String, List<String>> getResponseHeaders() {
        return this.connection.getHeaderFields();
    }

    public int getResponseStatus() {
        try {
            return this.connection.getResponseCode();
        } catch (IOException e2) {
            throw buildTransportException(e2);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0017, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0018, code lost:
        if (r0 != null) goto L_0x001a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0022, code lost:
        throw r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] readError() {
        /*
            r3 = this;
            java.net.HttpURLConnection r0 = r3.connection     // Catch:{ IOException -> 0x0023 }
            java.io.InputStream r0 = r0.getErrorStream()     // Catch:{ IOException -> 0x0023 }
            r1 = 0
            byte[] r1 = new byte[r1]     // Catch:{ all -> 0x0015 }
            if (r0 == 0) goto L_0x000f
            byte[] r1 = readInputStream(r0)     // Catch:{ all -> 0x0015 }
        L_0x000f:
            if (r0 == 0) goto L_0x0014
            r0.close()     // Catch:{ IOException -> 0x0023 }
        L_0x0014:
            return r1
        L_0x0015:
            r1 = move-exception
            throw r1     // Catch:{ all -> 0x0017 }
        L_0x0017:
            r2 = move-exception
            if (r0 == 0) goto L_0x0022
            r0.close()     // Catch:{ all -> 0x001e }
            goto L_0x0022
        L_0x001e:
            r0 = move-exception
            r1.addSuppressed(r0)     // Catch:{ IOException -> 0x0023 }
        L_0x0022:
            throw r2     // Catch:{ IOException -> 0x0023 }
        L_0x0023:
            r0 = move-exception
            com.microsoft.azure.sdk.iot.device.exceptions.TransportException r0 = buildTransportException(r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.https.HttpsConnection.readError():byte[]");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0012, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0013, code lost:
        if (r0 != null) goto L_0x0015;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x001d, code lost:
        throw r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] readInput() {
        /*
            r3 = this;
            java.net.HttpURLConnection r0 = r3.connection     // Catch:{ IOException -> 0x001e }
            java.io.InputStream r0 = r0.getInputStream()     // Catch:{ IOException -> 0x001e }
            byte[] r1 = readInputStream(r0)     // Catch:{ all -> 0x0010 }
            if (r0 == 0) goto L_0x000f
            r0.close()     // Catch:{ IOException -> 0x001e }
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
            r1.addSuppressed(r0)     // Catch:{ IOException -> 0x001e }
        L_0x001d:
            throw r2     // Catch:{ IOException -> 0x001e }
        L_0x001e:
            r0 = move-exception
            com.microsoft.azure.sdk.iot.device.exceptions.TransportException r0 = buildTransportException(r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.transport.https.HttpsConnection.readInput():byte[]");
    }

    public void setReadTimeoutMillis(int i2) {
        this.connection.setReadTimeout(i2);
    }

    public void setRequestHeader(String str, String str2) {
        this.connection.setRequestProperty(str, str2);
    }

    public void setRequestMethod(HttpsMethod httpsMethod) {
        if (httpsMethod == HttpsMethod.POST || httpsMethod == HttpsMethod.PUT || this.body.length <= 0) {
            try {
                this.connection.setRequestMethod(httpsMethod.name());
            } catch (ProtocolException e2) {
                throw new TransportException((Throwable) e2);
            } catch (SecurityException e3) {
                throw new TransportException((Throwable) e3);
            }
        } else {
            throw new IllegalArgumentException("Cannot change the request method from POST or PUT when the request body is non-empty.");
        }
    }

    public void setSSLContext(SSLContext sSLContext) {
        if (sSLContext != null) {
            HttpURLConnection httpURLConnection = this.connection;
            if (!(httpURLConnection instanceof HttpsURLConnection)) {
                throw new UnsupportedOperationException("HTTP connections do not support using ssl socket factory");
            } else if (this.proxySettings != null) {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(new HttpProxySocketFactory(sSLContext.getSocketFactory(), this.proxySettings));
            } else {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLContext.getSocketFactory());
            }
        } else {
            throw new IllegalArgumentException("SSL context cannot be null");
        }
    }

    public void writeOutput(byte[] bArr) {
        HttpsMethod valueOf = HttpsMethod.valueOf(this.connection.getRequestMethod());
        if (valueOf == HttpsMethod.POST || valueOf == HttpsMethod.PUT) {
            this.body = Arrays.copyOf(bArr, bArr.length);
        } else if (bArr.length > 0) {
            throw new IllegalArgumentException("Cannot write a body to a request that is not a POST or a PUT request.");
        }
    }

    public HttpsConnection(URL url, HttpsMethod httpsMethod, ProxySettings proxySettings2) {
        String protocol = url.getProtocol();
        if (protocol.equalsIgnoreCase("HTTPS") || protocol.equalsIgnoreCase(HttpsRequestResponseSerializer.Protocol)) {
            this.body = new byte[0];
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                this.connection = httpURLConnection;
                httpURLConnection.setRequestMethod(httpsMethod.name());
                this.proxySettings = proxySettings2;
            } catch (IOException e2) {
                throw buildTransportException(e2);
            }
        } else {
            throw new IllegalArgumentException(String.format("Expected URL that uses protocol HTTPS or HTTP but received one that uses protocol '%s'.%n", new Object[]{protocol}));
        }
    }

    public HttpsConnection() {
        this.connection = null;
    }
}
