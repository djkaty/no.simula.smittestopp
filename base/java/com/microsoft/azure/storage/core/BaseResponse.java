package com.microsoft.azure.storage.core;

import com.microsoft.azure.storage.Constants;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BaseResponse {
    public static String getContentMD5(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderField(Constants.HeaderConstants.CONTENT_MD5);
    }

    public static String getDate(HttpURLConnection httpURLConnection) {
        String headerField = httpURLConnection.getHeaderField("Date");
        return headerField == null ? httpURLConnection.getHeaderField(Constants.HeaderConstants.DATE) : headerField;
    }

    public static String getErrorCode(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderField(Constants.HeaderConstants.ERROR_CODE);
    }

    public static String getEtag(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderField("ETag");
    }

    public static HashMap<String, String> getMetadata(HttpURLConnection httpURLConnection) {
        return getValuesByHeaderPrefix(httpURLConnection, Constants.HeaderConstants.PREFIX_FOR_STORAGE_METADATA);
    }

    public static String getRequestId(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getHeaderField("x-ms-request-id");
    }

    public static HashMap<String, String> getValuesByHeaderPrefix(HttpURLConnection httpURLConnection, String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        Map headerFields = httpURLConnection.getHeaderFields();
        int length = str.length();
        for (Map.Entry entry : headerFields.entrySet()) {
            if (entry.getKey() != null && ((String) entry.getKey()).startsWith(str)) {
                hashMap.put(((String) entry.getKey()).substring(length), ((List) entry.getValue()).get(0));
            }
        }
        return hashMap;
    }

    public static boolean isServerRequestEncrypted(HttpURLConnection httpURLConnection) {
        return "true".equals(httpURLConnection.getHeaderField(Constants.HeaderConstants.SERVER_REQUEST_ENCRYPTED));
    }
}
