package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Cache;
import com.android.volley.Header;
import com.android.volley.Network;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.microsoft.appcenter.channel.DefaultChannel;
import com.microsoft.azure.storage.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

public class BasicNetwork implements Network {
    public static final boolean DEBUG = VolleyLog.DEBUG;
    public static final int DEFAULT_POOL_SIZE = 4096;
    public static final int SLOW_REQUEST_THRESHOLD_MS = 3000;
    public final BaseHttpStack mBaseHttpStack;
    @Deprecated
    public final HttpStack mHttpStack;
    public final ByteArrayPool mPool;

    @Deprecated
    public BasicNetwork(HttpStack httpStack) {
        this(httpStack, new ByteArrayPool(4096));
    }

    public static void attemptRetryOnException(String str, Request<?> request, VolleyError volleyError) {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
            request.addMarker(String.format("%s-retry [timeout=%s]", new Object[]{str, Integer.valueOf(timeoutMs)}));
        } catch (VolleyError e2) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", new Object[]{str, Integer.valueOf(timeoutMs)}));
            throw e2;
        }
    }

    public static List<Header> combineHeaders(List<Header> list, Cache.Entry entry) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            for (Header name : list) {
                treeSet.add(name.getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<Header> list2 = entry.allResponseHeaders;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (Header next : entry.allResponseHeaders) {
                    if (!treeSet.contains(next.getName())) {
                        arrayList.add(next);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry next2 : entry.responseHeaders.entrySet()) {
                if (!treeSet.contains(next2.getKey())) {
                    arrayList.add(new Header((String) next2.getKey(), (String) next2.getValue()));
                }
            }
        }
        return arrayList;
    }

    @Deprecated
    public static Map<String, String> convertHeaders(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i2 = 0; i2 < headerArr.length; i2++) {
            treeMap.put(headerArr[i2].getName(), headerArr[i2].getValue());
        }
        return treeMap;
    }

    private Map<String, String> getCacheHeaders(Cache.Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        String str = entry.etag;
        if (str != null) {
            hashMap.put(Constants.HeaderConstants.IF_NONE_MATCH, str);
        }
        long j2 = entry.lastModified;
        if (j2 > 0) {
            hashMap.put(Constants.HeaderConstants.IF_MODIFIED_SINCE, HttpHeaderParser.formatEpochAsRfc1123(j2));
        }
        return hashMap;
    }

    private byte[] inputStreamToBytes(InputStream inputStream, int i2) {
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.mPool, i2);
        if (inputStream != null) {
            try {
                byte[] buf = this.mPool.getBuf(1024);
                while (true) {
                    int read = inputStream.read(buf);
                    if (read == -1) {
                        break;
                    }
                    poolingByteArrayOutputStream.write(buf, 0, read);
                }
                byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
                try {
                    inputStream.close();
                } catch (IOException unused) {
                    VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                }
                this.mPool.returnBuf(buf);
                poolingByteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                        VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.mPool.returnBuf((byte[]) null);
                poolingByteArrayOutputStream.close();
                throw th;
            }
        } else {
            throw new ServerError();
        }
    }

    private void logSlowRequests(long j2, Request<?> request, byte[] bArr, int i2) {
        if (DEBUG || j2 > DefaultChannel.MINIMUM_TRANSMISSION_INTERVAL) {
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(j2);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(i2);
            objArr[4] = Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount());
            VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    public void logError(String str, String str2, long j2) {
        VolleyLog.v("HTTP ERROR(%s) %d ms to fetch %s", str, Long.valueOf(SystemClock.elapsedRealtime() - j2), str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00aa, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00ac, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00ad, code lost:
        r1 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00ae, code lost:
        r18 = r1;
        r2 = r12;
        r14 = r20;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00b4, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00b5, code lost:
        r1 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00b7, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00b8, code lost:
        r18 = r1;
        r14 = null;
        r2 = r12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00bd, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00be, code lost:
        r18 = r1;
        r14 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00c3, code lost:
        r0 = r2.getStatusCode();
        com.android.volley.VolleyLog.e("Unexpected response code %d for %s", java.lang.Integer.valueOf(r0), r29.getUrl());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00dc, code lost:
        if (r14 != null) goto L_0x00de;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00de, code lost:
        r12 = new com.android.volley.NetworkResponse(r0, r14, false, android.os.SystemClock.elapsedRealtime() - r9, r18);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00ee, code lost:
        if (r0 == 401) goto L_0x012a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00f7, code lost:
        if (r0 < 400) goto L_0x0104;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0103, code lost:
        throw new com.android.volley.ClientError(r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0106, code lost:
        if (r0 < 500) goto L_0x0124;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0110, code lost:
        if (r29.shouldRetryServerErrors() != false) goto L_0x0112;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0112, code lost:
        attemptRetryOnException("server", r8, new com.android.volley.ServerError(r12));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x0123, code lost:
        throw new com.android.volley.ServerError(r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x0129, code lost:
        throw new com.android.volley.ServerError(r12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x012a, code lost:
        attemptRetryOnException(com.microsoft.identity.common.internal.ui.webview.ProcessUtil.AuthServiceProcess, r8, new com.android.volley.AuthFailureError(r12));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0136, code lost:
        attemptRetryOnException("network", r8, new com.android.volley.NetworkError());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x0147, code lost:
        throw new com.android.volley.NoConnectionError(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x0148, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x0149, code lost:
        r2 = e.a.a.a.a.a("Bad URL ");
        r2.append(r29.getUrl());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x015f, code lost:
        throw new java.lang.RuntimeException(r2.toString(), r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x0160, code lost:
        attemptRetryOnException("socket", r8, new com.android.volley.TimeoutError());
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0148 A[ExcHandler: MalformedURLException (r0v1 'e' java.net.MalformedURLException A[CUSTOM_DECLARE]), Splitter:B:2:0x000e] */
    /* JADX WARNING: Removed duplicated region for block: B:79:? A[ExcHandler: SocketTimeoutException (unused java.net.SocketTimeoutException), SYNTHETIC, Splitter:B:2:0x000e] */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x0142 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.android.volley.NetworkResponse performRequest(com.android.volley.Request<?> r29) {
        /*
            r28 = this;
            r7 = r28
            r8 = r29
            long r9 = android.os.SystemClock.elapsedRealtime()
        L_0x0008:
            java.util.List r1 = java.util.Collections.emptyList()
            r11 = 0
            r2 = 0
            com.android.volley.Cache$Entry r0 = r29.getCacheEntry()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00bd }
            java.util.Map r0 = r7.getCacheHeaders(r0)     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00bd }
            com.android.volley.toolbox.BaseHttpStack r3 = r7.mBaseHttpStack     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00bd }
            com.android.volley.toolbox.HttpResponse r12 = r3.executeRequest(r8, r0)     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00bd }
            int r14 = r12.getStatusCode()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00b7 }
            java.util.List r13 = r12.getHeaders()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00b7 }
            r0 = 304(0x130, float:4.26E-43)
            if (r14 != r0) goto L_0x005f
            com.android.volley.Cache$Entry r0 = r29.getCacheEntry()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            if (r0 != 0) goto L_0x0043
            com.android.volley.NetworkResponse r0 = new com.android.volley.NetworkResponse     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            r16 = 304(0x130, float:4.26E-43)
            r17 = 0
            r18 = 1
            long r3 = android.os.SystemClock.elapsedRealtime()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            long r19 = r3 - r9
            r15 = r0
            r21 = r13
            r15.<init>((int) r16, (byte[]) r17, (boolean) r18, (long) r19, (java.util.List<com.android.volley.Header>) r21)     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            return r0
        L_0x0043:
            java.util.List r27 = combineHeaders(r13, r0)     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            com.android.volley.NetworkResponse r1 = new com.android.volley.NetworkResponse     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            r22 = 304(0x130, float:4.26E-43)
            byte[] r0 = r0.data     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            r24 = 1
            long r3 = android.os.SystemClock.elapsedRealtime()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            long r25 = r3 - r9
            r21 = r1
            r23 = r0
            r21.<init>((int) r22, (byte[]) r23, (boolean) r24, (long) r25, (java.util.List<com.android.volley.Header>) r27)     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            return r1
        L_0x005d:
            r0 = move-exception
            goto L_0x006e
        L_0x005f:
            java.io.InputStream r0 = r12.getContent()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00b4 }
            if (r0 == 0) goto L_0x0073
            int r1 = r12.getContentLength()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            byte[] r0 = r7.inputStreamToBytes(r0, r1)     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x005d }
            goto L_0x0075
        L_0x006e:
            r14 = r2
            r2 = r12
            r18 = r13
            goto L_0x00c1
        L_0x0073:
            byte[] r0 = new byte[r11]     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00b4 }
        L_0x0075:
            r20 = r0
            long r0 = android.os.SystemClock.elapsedRealtime()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00ac }
            long r2 = r0 - r9
            r1 = r28
            r4 = r29
            r5 = r20
            r6 = r14
            r1.logSlowRequests(r2, r4, r5, r6)     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00ac }
            r0 = 200(0xc8, float:2.8E-43)
            if (r14 < r0) goto L_0x00a3
            r0 = 299(0x12b, float:4.19E-43)
            if (r14 > r0) goto L_0x00a3
            com.android.volley.NetworkResponse r0 = new com.android.volley.NetworkResponse     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00ac }
            r16 = 0
            long r1 = android.os.SystemClock.elapsedRealtime()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00ac }
            long r17 = r1 - r9
            r1 = r13
            r13 = r0
            r15 = r20
            r19 = r1
            r13.<init>((int) r14, (byte[]) r15, (boolean) r16, (long) r17, (java.util.List<com.android.volley.Header>) r19)     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00aa }
            return r0
        L_0x00a3:
            r1 = r13
            java.io.IOException r0 = new java.io.IOException     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00aa }
            r0.<init>()     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00aa }
            throw r0     // Catch:{ SocketTimeoutException -> 0x0160, MalformedURLException -> 0x0148, IOException -> 0x00aa }
        L_0x00aa:
            r0 = move-exception
            goto L_0x00ae
        L_0x00ac:
            r0 = move-exception
            r1 = r13
        L_0x00ae:
            r18 = r1
            r2 = r12
            r14 = r20
            goto L_0x00c1
        L_0x00b4:
            r0 = move-exception
            r1 = r13
            goto L_0x00b8
        L_0x00b7:
            r0 = move-exception
        L_0x00b8:
            r18 = r1
            r14 = r2
            r2 = r12
            goto L_0x00c1
        L_0x00bd:
            r0 = move-exception
            r18 = r1
            r14 = r2
        L_0x00c1:
            if (r2 == 0) goto L_0x0142
            int r0 = r2.getStatusCode()
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            r1[r11] = r2
            r2 = 1
            java.lang.String r3 = r29.getUrl()
            r1[r2] = r3
            java.lang.String r2 = "Unexpected response code %d for %s"
            com.android.volley.VolleyLog.e(r2, r1)
            if (r14 == 0) goto L_0x0136
            com.android.volley.NetworkResponse r1 = new com.android.volley.NetworkResponse
            r15 = 0
            long r2 = android.os.SystemClock.elapsedRealtime()
            long r16 = r2 - r9
            r12 = r1
            r13 = r0
            r12.<init>((int) r13, (byte[]) r14, (boolean) r15, (long) r16, (java.util.List<com.android.volley.Header>) r18)
            r2 = 401(0x191, float:5.62E-43)
            if (r0 == r2) goto L_0x012a
            r2 = 403(0x193, float:5.65E-43)
            if (r0 != r2) goto L_0x00f5
            goto L_0x012a
        L_0x00f5:
            r2 = 400(0x190, float:5.6E-43)
            if (r0 < r2) goto L_0x0104
            r2 = 499(0x1f3, float:6.99E-43)
            if (r0 <= r2) goto L_0x00fe
            goto L_0x0104
        L_0x00fe:
            com.android.volley.ClientError r0 = new com.android.volley.ClientError
            r0.<init>(r1)
            throw r0
        L_0x0104:
            r2 = 500(0x1f4, float:7.0E-43)
            if (r0 < r2) goto L_0x0124
            r2 = 599(0x257, float:8.4E-43)
            if (r0 > r2) goto L_0x0124
            boolean r0 = r29.shouldRetryServerErrors()
            if (r0 == 0) goto L_0x011e
            com.android.volley.ServerError r0 = new com.android.volley.ServerError
            r0.<init>(r1)
            java.lang.String r1 = "server"
            attemptRetryOnException(r1, r8, r0)
            goto L_0x0008
        L_0x011e:
            com.android.volley.ServerError r0 = new com.android.volley.ServerError
            r0.<init>(r1)
            throw r0
        L_0x0124:
            com.android.volley.ServerError r0 = new com.android.volley.ServerError
            r0.<init>(r1)
            throw r0
        L_0x012a:
            com.android.volley.AuthFailureError r0 = new com.android.volley.AuthFailureError
            r0.<init>((com.android.volley.NetworkResponse) r1)
            java.lang.String r1 = "auth"
            attemptRetryOnException(r1, r8, r0)
            goto L_0x0008
        L_0x0136:
            com.android.volley.NetworkError r0 = new com.android.volley.NetworkError
            r0.<init>()
            java.lang.String r1 = "network"
            attemptRetryOnException(r1, r8, r0)
            goto L_0x0008
        L_0x0142:
            com.android.volley.NoConnectionError r1 = new com.android.volley.NoConnectionError
            r1.<init>(r0)
            throw r1
        L_0x0148:
            r0 = move-exception
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "Bad URL "
            java.lang.StringBuilder r2 = e.a.a.a.a.a(r2)
            java.lang.String r3 = r29.getUrl()
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2, r0)
            throw r1
        L_0x0160:
            com.android.volley.TimeoutError r0 = new com.android.volley.TimeoutError
            r0.<init>()
            java.lang.String r1 = "socket"
            attemptRetryOnException(r1, r8, r0)
            goto L_0x0008
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.BasicNetwork.performRequest(com.android.volley.Request):com.android.volley.NetworkResponse");
    }

    @Deprecated
    public BasicNetwork(HttpStack httpStack, ByteArrayPool byteArrayPool) {
        this.mHttpStack = httpStack;
        this.mBaseHttpStack = new AdaptedHttpStack(httpStack);
        this.mPool = byteArrayPool;
    }

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.mBaseHttpStack = baseHttpStack;
        this.mHttpStack = baseHttpStack;
        this.mPool = byteArrayPool;
    }
}
