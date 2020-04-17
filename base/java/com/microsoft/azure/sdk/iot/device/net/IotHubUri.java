package com.microsoft.azure.sdk.iot.device.net;

import com.microsoft.azure.sdk.iot.device.hsm.HttpsHsmClient;
import com.microsoft.azure.sdk.iot.device.transport.TransportUtils;
import com.microsoft.identity.client.internal.MsalUtils;
import e.a.a.a.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;

public final class IotHubUri {
    public static final String API_VERSION;
    public static final Charset IOTHUB_URL_ENCODING_CHARSET = StandardCharsets.UTF_8;
    public static final String PATH_FORMAT = "/devices/%s%s";
    public static final String PATH_FORMAT_WITH_MODULEID = "/devices/%s/modules/%s/%s";
    public String hostname;
    public String path;
    public String uri;

    static {
        StringBuilder a = a.a(HttpsHsmClient.API_VERSION_QUERY_STRING_PREFIX);
        a.append(TransportUtils.IOTHUB_API_VERSION);
        API_VERSION = a.toString();
    }

    public IotHubUri(String str, String str2, String str3, Map<String, String> map, String str4) {
        String str5;
        this.hostname = str;
        if (str4 == null || str4.isEmpty()) {
            str5 = String.format(PATH_FORMAT, new Object[]{str2, str3});
        } else {
            str5 = String.format(PATH_FORMAT_WITH_MODULEID, new Object[]{str2, str4, str3});
        }
        this.path = urlEncodePath(str5);
        StringBuilder sb = new StringBuilder(this.hostname);
        sb.append(this.path);
        sb.append(MsalUtils.QUERY_STRING_SYMBOL);
        sb.append(API_VERSION);
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                sb.append("&");
                appendQueryParam(sb, (String) next.getKey(), (String) next.getValue());
            }
        }
        this.uri = sb.toString();
    }

    public static void appendQueryParam(StringBuilder sb, String str, String str2) {
        try {
            String encode = URLEncoder.encode(str, IOTHUB_URL_ENCODING_CHARSET.name());
            String encode2 = URLEncoder.encode(str2, IOTHUB_URL_ENCODING_CHARSET.name());
            sb.append(encode);
            sb.append("=");
            sb.append(encode2);
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static String getApiVersionString() {
        return API_VERSION;
    }

    public static String getResourceUri(String str, String str2, String str3) {
        IotHubUri iotHubUri = new IotHubUri(str, str2, "", str3);
        return iotHubUri.getHostname() + iotHubUri.getPath();
    }

    public static String urlEncodePath(String str) {
        String[] split = str.split("/");
        StringBuilder sb = new StringBuilder();
        try {
            for (String str2 : split) {
                if (str2.length() > 0) {
                    String encode = URLEncoder.encode(str2, IOTHUB_URL_ENCODING_CHARSET.name());
                    sb.append("/");
                    sb.append(encode);
                }
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public String getHostname() {
        return this.hostname;
    }

    public String getPath() {
        return this.path;
    }

    public String toString() {
        return this.uri;
    }

    public String toStringWithoutApiVersion() {
        return this.hostname + this.path;
    }

    public IotHubUri(String str, String str2, String str3, String str4) {
        this(str, str2, str3, (Map<String, String>) null, str4);
    }

    public IotHubUri() {
    }
}
