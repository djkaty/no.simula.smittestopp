package com.microsoft.azure.storage.core;

import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import com.microsoft.azure.storage.Constants;
import e.a.a.a.a;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class Canonicalizer {
    public static final Pattern CRLF = Pattern.compile(ProxyHandlerImpl.NEW_LINE, 16);
    public static final int ExpectedBlobQueueCanonicalizedStringLength = 300;
    public static final int ExpectedTableCanonicalizedStringLength = 200;

    public static void addCanonicalizedHeaders(HttpURLConnection httpURLConnection, StringBuilder sb) {
        Map requestProperties = httpURLConnection.getRequestProperties();
        ArrayList arrayList = new ArrayList();
        for (String str : requestProperties.keySet()) {
            if (str.toLowerCase(Utility.LOCALE_US).startsWith(Constants.PREFIX_FOR_STORAGE_HEADER)) {
                arrayList.add(str.toLowerCase(Utility.LOCALE_US));
            }
        }
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            StringBuilder sb2 = new StringBuilder(str2);
            boolean z = false;
            Iterator<String> it2 = getHeaderValues(requestProperties, str2).iterator();
            String str3 = ":";
            while (it2.hasNext()) {
                String next = it2.next();
                if (next != null) {
                    z = true;
                }
                String replaceAll = CRLF.matcher(next).replaceAll(Matcher.quoteReplacement(""));
                sb2.append(str3);
                sb2.append(replaceAll);
                str3 = ",";
            }
            if (z) {
                appendCanonicalizedElement(sb, sb2.toString());
            }
        }
    }

    public static void appendCanonicalizedElement(StringBuilder sb, String str) {
        sb.append("\n");
        sb.append(str);
    }

    public static String canonicalizeHttpRequest(URL url, String str, String str2, String str3, long j2, String str4, HttpURLConnection httpURLConnection) {
        String str5;
        StringBuilder sb = new StringBuilder(300);
        sb.append(httpURLConnection.getRequestMethod());
        appendCanonicalizedElement(sb, Utility.getStandardHeaderValue(httpURLConnection, "Content-Encoding"));
        appendCanonicalizedElement(sb, Utility.getStandardHeaderValue(httpURLConnection, Constants.HeaderConstants.CONTENT_LANGUAGE));
        if (j2 <= 0) {
            str5 = "";
        } else {
            str5 = String.valueOf(j2);
        }
        appendCanonicalizedElement(sb, str5);
        appendCanonicalizedElement(sb, Utility.getStandardHeaderValue(httpURLConnection, Constants.HeaderConstants.CONTENT_MD5));
        if (str3 == null) {
            str3 = "";
        }
        appendCanonicalizedElement(sb, str3);
        if (!Utility.getStandardHeaderValue(httpURLConnection, Constants.HeaderConstants.DATE).equals("")) {
            str4 = "";
        }
        appendCanonicalizedElement(sb, str4);
        appendCanonicalizedElement(sb, Utility.getStandardHeaderValue(httpURLConnection, Constants.HeaderConstants.IF_MODIFIED_SINCE));
        appendCanonicalizedElement(sb, Utility.getStandardHeaderValue(httpURLConnection, Constants.HeaderConstants.IF_MATCH));
        appendCanonicalizedElement(sb, Utility.getStandardHeaderValue(httpURLConnection, Constants.HeaderConstants.IF_NONE_MATCH));
        appendCanonicalizedElement(sb, Utility.getStandardHeaderValue(httpURLConnection, Constants.HeaderConstants.IF_UNMODIFIED_SINCE));
        appendCanonicalizedElement(sb, Utility.getStandardHeaderValue(httpURLConnection, "Range"));
        addCanonicalizedHeaders(httpURLConnection, sb);
        appendCanonicalizedElement(sb, getCanonicalizedResource(url, str));
        return sb.toString();
    }

    public static String canonicalizeTableHttpRequest(URL url, String str, String str2, String str3, long j2, String str4, HttpURLConnection httpURLConnection) {
        StringBuilder sb = new StringBuilder(ExpectedTableCanonicalizedStringLength);
        sb.append(httpURLConnection.getRequestMethod());
        appendCanonicalizedElement(sb, Utility.getStandardHeaderValue(httpURLConnection, Constants.HeaderConstants.CONTENT_MD5));
        appendCanonicalizedElement(sb, str3);
        String standardHeaderValue = Utility.getStandardHeaderValue(httpURLConnection, Constants.HeaderConstants.DATE);
        if (!standardHeaderValue.equals("")) {
            str4 = standardHeaderValue;
        }
        appendCanonicalizedElement(sb, str4);
        appendCanonicalizedElement(sb, getCanonicalizedResourceLite(url, str));
        return sb.toString();
    }

    public static String getCanonicalizedResource(URL url, String str) {
        String str2;
        StringBuilder sb = new StringBuilder("/" + str + url.getPath());
        if (url.getQuery() == null || !url.getQuery().contains("=")) {
            return sb.toString();
        }
        HashMap<String, String[]> parseQueryString = PathUtility.parseQueryString(url.getQuery());
        HashMap hashMap = new HashMap();
        for (Map.Entry next : parseQueryString.entrySet()) {
            List<String> asList = Arrays.asList((Object[]) next.getValue());
            Collections.sort(asList);
            StringBuilder sb2 = new StringBuilder();
            for (String str3 : asList) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str3);
            }
            if (next.getKey() == null) {
                str2 = null;
            } else {
                str2 = ((String) next.getKey()).toLowerCase(Utility.LOCALE_US);
            }
            hashMap.put(str2, sb2.toString());
        }
        ArrayList arrayList = new ArrayList(hashMap.keySet());
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str4 = (String) it.next();
            StringBuilder a = a.a(str4, ":");
            a.append((String) hashMap.get(str4));
            appendCanonicalizedElement(sb, a.toString());
        }
        return sb.toString();
    }

    public static String getCanonicalizedResourceLite(URL url, String str) {
        StringBuilder sb = new StringBuilder("/" + str + url.getPath());
        String[] strArr = PathUtility.parseQueryString(url.getQuery()).get(Constants.QueryConstants.COMPONENT);
        if (strArr != null) {
            List<String> asList = Arrays.asList(strArr);
            Collections.sort(asList);
            sb.append("?comp=");
            StringBuilder sb2 = new StringBuilder();
            for (String str2 : asList) {
                if (sb2.length() > 0) {
                    sb2.append(",");
                }
                sb2.append(str2);
            }
            sb.append(sb2);
        }
        return sb.toString();
    }

    public static ArrayList<String> getHeaderValues(Map<String, List<String>> map, String str) {
        List<String> list;
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Map.Entry<String, List<String>>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                list = null;
                break;
            }
            Map.Entry next = it.next();
            if (((String) next.getKey()).toLowerCase(Utility.LOCALE_US).equals(str)) {
                list = (List) next.getValue();
                break;
            }
        }
        if (list != null) {
            for (String trimStart : list) {
                arrayList.add(Utility.trimStart(trimStart));
            }
        }
        return arrayList;
    }

    public abstract String canonicalize(HttpURLConnection httpURLConnection, String str, Long l2);
}
