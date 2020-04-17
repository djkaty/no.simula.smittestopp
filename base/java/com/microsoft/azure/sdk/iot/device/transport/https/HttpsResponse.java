package com.microsoft.azure.sdk.iot.device.transport.https;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HttpsResponse {
    public final byte[] body;
    public final byte[] errorReason;
    public final Map<String, String> headerFields;
    public final int status;

    public HttpsResponse(int i2, byte[] bArr, Map<String, List<String>> map, byte[] bArr2) {
        this.status = i2;
        this.body = Arrays.copyOf(bArr, bArr.length);
        this.errorReason = bArr2;
        this.headerFields = new HashMap();
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            if (str != null) {
                this.headerFields.put(canonicalizeFieldName(str), flattenValuesList((List) next.getValue()));
            }
        }
    }

    public static String canonicalizeFieldName(String str) {
        return str != null ? str.toLowerCase() : str;
    }

    public static String flattenValuesList(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String append : list) {
            sb.append(append);
            sb.append(",");
        }
        return new StringBuilder(sb.substring(0, Math.max(0, sb.length() - 1))).toString();
    }

    public byte[] getBody() {
        byte[] bArr = this.body;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public byte[] getErrorReason() {
        return this.errorReason;
    }

    public String getHeaderField(String str) {
        String str2 = this.headerFields.get(canonicalizeFieldName(str));
        if (str2 != null) {
            return str2;
        }
        throw new IllegalArgumentException(String.format("Could not find a value associated with the header field name '%s'.%n", new Object[]{str}));
    }

    public Map<String, String> getHeaderFields() {
        HashMap hashMap = new HashMap();
        for (Map.Entry next : this.headerFields.entrySet()) {
            hashMap.put(next.getKey(), next.getValue());
        }
        return hashMap;
    }

    public int getStatus() {
        return this.status;
    }

    public HttpsResponse() {
        this.status = 0;
        this.body = null;
        this.headerFields = null;
        this.errorReason = null;
    }
}
