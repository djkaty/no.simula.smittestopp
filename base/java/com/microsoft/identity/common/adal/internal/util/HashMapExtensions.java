package com.microsoft.identity.common.adal.internal.util;

import android.text.TextUtils;
import com.microsoft.identity.common.adal.internal.net.HttpWebResponse;
import com.microsoft.identity.common.internal.logging.Logger;
import com.microsoft.identity.common.internal.net.HttpResponse;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.json.JSONArray;
import org.json.JSONObject;

public final class HashMapExtensions {
    public static final String TAG = "HashMapExtensions";

    public static HashMap<String, String> getJsonResponse(HttpWebResponse httpWebResponse) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (httpWebResponse != null && !TextUtils.isEmpty(httpWebResponse.getBody())) {
            JSONObject jSONObject = new JSONObject(httpWebResponse.getBody());
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
        }
        return hashMap;
    }

    public static HashMap<String, String> jsonStringAsMap(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (!StringExtensions.isNullOrBlank(str)) {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
        }
        return hashMap;
    }

    public static HashMap<String, List<String>> jsonStringAsMapList(String str) {
        HashMap<String, List<String>> hashMap = new HashMap<>();
        if (!StringExtensions.isNullOrBlank(str)) {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                ArrayList arrayList = new ArrayList();
                JSONArray jSONArray = new JSONArray(jSONObject.getString(next));
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(jSONArray.get(i2).toString());
                }
                hashMap.put(next, arrayList);
            }
        }
        return hashMap;
    }

    public static HashMap<String, String> urlFormDecode(String str) {
        return urlFormDecodeData(str, "&");
    }

    public static HashMap<String, String> urlFormDecodeData(String str, String str2) {
        String str3;
        HashMap<String, String> hashMap = new HashMap<>();
        if (!StringExtensions.isNullOrBlank(str)) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
            while (stringTokenizer.hasMoreTokens()) {
                String[] split = stringTokenizer.nextToken().split("=");
                String str4 = null;
                if (split.length == 2) {
                    try {
                        str4 = StringExtensions.urlFormDecode(split[0].trim());
                        str3 = StringExtensions.urlFormDecode(split[1].trim());
                    } catch (UnsupportedEncodingException e2) {
                        Logger.errorPII(TAG + ":urlFormDecodeData", "Encoding format is not supported", e2);
                    }
                } else if (split.length == 1) {
                    try {
                        str4 = StringExtensions.urlFormDecode(split[0].trim());
                        str3 = "";
                    } catch (UnsupportedEncodingException e3) {
                        Logger.errorPII(TAG + ":urlFormDecodeData", "Encoding format is not supported", e3);
                    }
                } else {
                    str3 = null;
                }
                if (!StringExtensions.isNullOrBlank(str4)) {
                    hashMap.put(str4, str3);
                }
            }
        }
        return hashMap;
    }

    public static HashMap<String, String> getJsonResponse(HttpResponse httpResponse) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (httpResponse != null && !TextUtils.isEmpty(httpResponse.getBody())) {
            JSONObject jSONObject = new JSONObject(httpResponse.getBody());
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
        }
        return hashMap;
    }
}
