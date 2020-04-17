package com.android.volley;

import com.microsoft.azure.storage.core.Canonicalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class NetworkResponse {
    public final List<Header> allHeaders;
    public final byte[] data;
    public final Map<String, String> headers;
    public final long networkTimeMs;
    public final boolean notModified;
    public final int statusCode;

    @Deprecated
    public NetworkResponse(int i2, byte[] bArr, Map<String, String> map, boolean z, long j2) {
        this(i2, bArr, map, toAllHeaderList(map), z, j2);
    }

    public static List<Header> toAllHeaderList(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry next : map.entrySet()) {
            arrayList.add(new Header((String) next.getKey(), (String) next.getValue()));
        }
        return arrayList;
    }

    public static Map<String, String> toHeaderMap(List<Header> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header next : list) {
            treeMap.put(next.getName(), next.getValue());
        }
        return treeMap;
    }

    public NetworkResponse(int i2, byte[] bArr, boolean z, long j2, List<Header> list) {
        this(i2, bArr, toHeaderMap(list), list, z, j2);
    }

    @Deprecated
    public NetworkResponse(int i2, byte[] bArr, Map<String, String> map, boolean z) {
        this(i2, bArr, map, z, 0);
    }

    public NetworkResponse(byte[] bArr) {
        this((int) Canonicalizer.ExpectedTableCanonicalizedStringLength, bArr, false, 0, (List<Header>) Collections.emptyList());
    }

    @Deprecated
    public NetworkResponse(byte[] bArr, Map<String, String> map) {
        this((int) Canonicalizer.ExpectedTableCanonicalizedStringLength, bArr, map, false, 0);
    }

    public NetworkResponse(int i2, byte[] bArr, Map<String, String> map, List<Header> list, boolean z, long j2) {
        this.statusCode = i2;
        this.data = bArr;
        this.headers = map;
        if (list == null) {
            this.allHeaders = null;
        } else {
            this.allHeaders = Collections.unmodifiableList(list);
        }
        this.notModified = z;
        this.networkTimeMs = j2;
    }
}
