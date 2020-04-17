package com.microsoft.azure.sdk.iot.device.hsm;

import com.microsoft.azure.sdk.iot.device.hsm.parser.ErrorResponse;
import com.microsoft.azure.sdk.iot.device.hsm.parser.SignRequest;
import com.microsoft.azure.sdk.iot.device.hsm.parser.SignResponse;
import com.microsoft.azure.sdk.iot.device.hsm.parser.TrustBundleResponse;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsMethod;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsRequest;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsResponse;
import com.microsoft.identity.client.internal.MsalUtils;
import e.a.a.a.a;
import g.e.i;
import java.net.URI;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import k.f.b;
import k.f.c;

public class HttpsHsmClient {
    public static final String API_VERSION_QUERY_STRING_PREFIX = "api-version=";
    public static final String HTTPS_SCHEME = "https";
    public static final String HTTP_SCHEME = "http";
    public static final String UNIX_SCHEME = "unix";
    public static final b log = c.a((Class<?>) HttpsHsmClient.class);
    public String baseUrl;
    public String scheme;

    public HttpsHsmClient(String str) {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("baseUrl cannot be null");
        }
        log.d("Creating HttpsHsmClient with base url {}", (Object) str);
        this.baseUrl = str;
        this.scheme = new URI(str).getScheme();
    }

    private String readResponseFromChannel(i iVar) {
        log.b("Reading response from unix socket channel...");
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(10);
        String str = "";
        int i2 = 0;
        while (i2 >= 0) {
            allocateDirect.rewind();
            i2 = iVar.read(allocateDirect);
            allocateDirect.rewind();
            for (int i3 = 0; i3 < i2; i3++) {
                StringBuilder a = a.a(str);
                a.append(new String(new byte[]{allocateDirect.get()}, StandardCharsets.US_ASCII));
                str = a.toString();
            }
        }
        return str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0069  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.microsoft.azure.sdk.iot.device.transport.https.HttpsResponse sendHttpRequestUsingUnixSocket(com.microsoft.azure.sdk.iot.device.transport.https.HttpsRequest r4, java.lang.String r5, java.lang.String r6, java.lang.String r7) {
        /*
            r3 = this;
            java.lang.String r0 = "Closing unix socket channel..."
            k.f.b r1 = log
            java.lang.String r2 = "Sending data over unix socket..."
            r1.b(r2)
            r1 = 0
            byte[] r5 = com.microsoft.azure.sdk.iot.device.hsm.HttpsRequestResponseSerializer.serializeRequest(r4, r5, r6, r7)     // Catch:{ all -> 0x0066 }
            g.e.h r6 = new g.e.h     // Catch:{ all -> 0x0066 }
            r6.<init>(r7)     // Catch:{ all -> 0x0066 }
            g.e.i r7 = new g.e.i     // Catch:{ all -> 0x0066 }
            r7.<init>()     // Catch:{ all -> 0x0066 }
            r7.a((g.e.h) r6)     // Catch:{ IOException -> 0x0061 }
            byte[] r6 = r4.getBody()     // Catch:{ all -> 0x005e }
            if (r6 == 0) goto L_0x003c
            java.io.ByteArrayOutputStream r6 = new java.io.ByteArrayOutputStream     // Catch:{ all -> 0x005e }
            r6.<init>()     // Catch:{ all -> 0x005e }
            r6.write(r5)     // Catch:{ all -> 0x005e }
            byte[] r4 = r4.getBody()     // Catch:{ all -> 0x005e }
            r6.write(r4)     // Catch:{ all -> 0x005e }
            byte[] r4 = r6.toByteArray()     // Catch:{ all -> 0x005e }
            java.nio.ByteBuffer r4 = java.nio.ByteBuffer.wrap(r4)     // Catch:{ all -> 0x005e }
            r7.write(r4)     // Catch:{ all -> 0x005e }
            goto L_0x0043
        L_0x003c:
            java.nio.ByteBuffer r4 = java.nio.ByteBuffer.wrap(r5)     // Catch:{ all -> 0x005e }
            r7.write(r4)     // Catch:{ all -> 0x005e }
        L_0x0043:
            java.lang.String r4 = r3.readResponseFromChannel(r7)     // Catch:{ all -> 0x005e }
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch:{ all -> 0x005e }
            java.io.StringReader r6 = new java.io.StringReader     // Catch:{ all -> 0x005e }
            r6.<init>(r4)     // Catch:{ all -> 0x005e }
            r5.<init>(r6)     // Catch:{ all -> 0x005e }
            com.microsoft.azure.sdk.iot.device.transport.https.HttpsResponse r4 = com.microsoft.azure.sdk.iot.device.hsm.HttpsRequestResponseSerializer.deserializeResponse(r5)     // Catch:{ all -> 0x005e }
            k.f.b r5 = log
            r5.e(r0)
            r7.close()
            return r4
        L_0x005e:
            r4 = move-exception
            r1 = r7
            goto L_0x0067
        L_0x0061:
            r4 = move-exception
            r7.close()     // Catch:{ all -> 0x0066 }
            throw r4     // Catch:{ all -> 0x0066 }
        L_0x0066:
            r4 = move-exception
        L_0x0067:
            if (r1 == 0) goto L_0x0071
            k.f.b r5 = log
            r5.e(r0)
            r1.close()
        L_0x0071:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.microsoft.azure.sdk.iot.device.hsm.HttpsHsmClient.sendHttpRequestUsingUnixSocket(com.microsoft.azure.sdk.iot.device.transport.https.HttpsRequest, java.lang.String, java.lang.String, java.lang.String):com.microsoft.azure.sdk.iot.device.transport.https.HttpsResponse");
    }

    private HttpsResponse sendRequestBasedOnScheme(HttpsMethod httpsMethod, byte[] bArr, String str, String str2, String str3) {
        URL url;
        if (this.scheme.equalsIgnoreCase("https") || this.scheme.equalsIgnoreCase("http")) {
            if (str3 == null || str3.isEmpty()) {
                url = new URL(a.b(str, str2));
            } else {
                url = new URL(str + str2 + MsalUtils.QUERY_STRING_SYMBOL + str3);
            }
        } else if (this.scheme.equalsIgnoreCase(UNIX_SCHEME)) {
            url = null;
        } else {
            throw new UnsupportedOperationException("unrecognized URI scheme. Only HTTPS, HTTP and UNIX are supported");
        }
        HttpsRequest httpsRequest = new HttpsRequest(url, httpsMethod, bArr, "");
        httpsRequest.setHeaderField("Accept", "application/json");
        if (bArr.length > 0) {
            httpsRequest.setHeaderField("Content-Type", "application/json");
        }
        if (this.scheme.equalsIgnoreCase("https") || this.scheme.equalsIgnoreCase("http")) {
            return httpsRequest.send();
        }
        if (this.scheme.equalsIgnoreCase(UNIX_SCHEME)) {
            return sendHttpRequestUsingUnixSocket(httpsRequest, str2, str3, str.substring(str.indexOf("unix://") + 7));
        }
        throw new UnsupportedOperationException("unrecognized URI scheme. Only HTTPS, HTTP and UNIX are supported");
    }

    public TrustBundleResponse getTrustBundle(String str) {
        log.b("Getting trust bundle...");
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("api version cannot be null or empty");
        }
        String str2 = this.baseUrl;
        String str3 = "";
        HttpsResponse sendRequestBasedOnScheme = sendRequestBasedOnScheme(HttpsMethod.GET, new byte[0], str2 != null ? str2.replaceFirst("/*$", str3) : str3, "/trust-bundle", a.b(API_VERSION_QUERY_STRING_PREFIX, str));
        int status = sendRequestBasedOnScheme.getStatus();
        if (sendRequestBasedOnScheme.getBody() != null) {
            str3 = new String(sendRequestBasedOnScheme.getBody());
        }
        if (status >= 200 && status < 300) {
            return TrustBundleResponse.fromJson(str3);
        }
        ErrorResponse fromJson = ErrorResponse.fromJson(str3);
        if (fromJson != null) {
            StringBuilder a = a.a("Received error from hsm with status code ", status, " and message ");
            a.append(fromJson.getMessage());
            throw new HsmException(a.toString());
        }
        throw new HsmException(a.a("Received error from hsm with status code ", status));
    }

    public SignResponse sign(String str, String str2, SignRequest signRequest, String str3) {
        log.b("Sending sign request...");
        String str4 = this.baseUrl;
        String str5 = "";
        if (str4 != null) {
            str5 = str4.replaceFirst("/*$", str5);
        }
        String str6 = str5;
        StringBuilder sb = new StringBuilder();
        StringBuilder a = a.a("/modules/");
        a.append(URLEncoder.encode(str2, "UTF-8"));
        sb.append(a.toString());
        sb.append("/genid/" + URLEncoder.encode(str3, "UTF-8"));
        sb.append("/sign");
        HttpsResponse sendRequestBasedOnScheme = sendRequestBasedOnScheme(HttpsMethod.POST, signRequest.toJson().getBytes(), str6, sb.toString(), a.b(API_VERSION_QUERY_STRING_PREFIX, str));
        int status = sendRequestBasedOnScheme.getStatus();
        String str7 = new String(sendRequestBasedOnScheme.getBody());
        if (status >= 200 && status < 300) {
            return SignResponse.fromJson(str7);
        }
        String b = a.b("HttpsHsmClient received status code ", status, " from provided uri.");
        ErrorResponse fromJson = ErrorResponse.fromJson(str7);
        if (fromJson != null) {
            StringBuilder a2 = a.a(b, " Error response message: ");
            a2.append(fromJson.getMessage());
            b = a2.toString();
        }
        throw new HsmException(b);
    }
}
