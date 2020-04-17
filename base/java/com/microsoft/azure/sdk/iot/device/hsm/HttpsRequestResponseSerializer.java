package com.microsoft.azure.sdk.iot.device.hsm;

import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import com.microsoft.azure.sdk.iot.device.transport.ProxiedSSLSocket;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsRequest;
import com.microsoft.azure.sdk.iot.device.transport.https.HttpsResponse;
import com.microsoft.identity.client.internal.MsalUtils;
import e.a.a.a.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class HttpsRequestResponseSerializer {
    public static final String CR = "\r";
    public static final String HeaderSeparator = ":";
    public static final String LF = "\n";
    public static final long MAXIMUM_HEADER_COUNT = 500;
    public static final String Protocol = "HTTP";
    public static final String ProtocolVersionSeparator = "/";
    public static final String SP = " ";
    public static final String VERSION = "1.1";

    public static HttpsResponse deserializeResponse(BufferedReader bufferedReader) {
        if (bufferedReader != null) {
            String readLine = bufferedReader.readLine();
            if (readLine == null || readLine.isEmpty()) {
                throw new IOException("Response is empty.");
            }
            String[] split = readLine.split(" ");
            if (split.length == 3) {
                String[] split2 = split[0].split("/");
                if (split2.length == 2) {
                    String str = split2[1];
                    try {
                        int intValue = Integer.valueOf(split[1]).intValue();
                        Map<String, List<String>> readHeaderFields = readHeaderFields(bufferedReader);
                        byte[] readBody = readBody(bufferedReader);
                        byte[] bytes = split[2].getBytes();
                        bufferedReader.close();
                        return new HttpsResponse(intValue, readBody, readHeaderFields, bytes);
                    } catch (NumberFormatException unused) {
                        throw new IOException(a.a(a.a("StatusCode is not valid "), split[1], CryptoConstants.ALIAS_SEPARATOR));
                    }
                } else {
                    throw new IOException(a.a(a.a("Version is not valid "), split[0], CryptoConstants.ALIAS_SEPARATOR));
                }
            } else {
                throw new IOException("Status line is not valid.");
            }
        } else {
            throw new IllegalArgumentException("buffered reader cannot be null");
        }
    }

    public static String preProcessRequestPath(String str) {
        return str.replace("[", "").replace("]", "");
    }

    public static byte[] readBody(BufferedReader bufferedReader) {
        String readLine = bufferedReader.readLine();
        String str = "";
        while (readLine != null && !readLine.isEmpty()) {
            str = a.b(str, readLine);
            readLine = bufferedReader.readLine();
        }
        return str.getBytes();
    }

    public static Map<String, List<String>> readHeaderFields(BufferedReader bufferedReader) {
        String str;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        String readLine = bufferedReader.readLine();
        while (readLine != null && !readLine.isEmpty()) {
            arrayList.add(readLine);
            readLine = bufferedReader.readLine();
            if (((long) arrayList.size()) > 500) {
                throw new IOException("HSM provided too many http headers");
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext() && (str = (String) it.next()) != null && !str.isEmpty()) {
            int indexOf = str.indexOf(":");
            if (indexOf > 0) {
                String substring = str.substring(0, indexOf);
                String substring2 = str.substring(indexOf + 1);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(substring2);
                hashMap.put(substring, arrayList2);
            } else {
                throw new IOException(a.a("Header is invalid ", str, CryptoConstants.ALIAS_SEPARATOR));
            }
        }
        return hashMap;
    }

    public static byte[] serializeRequest(HttpsRequest httpsRequest, String str, String str2, String str3) {
        if (httpsRequest == null) {
            throw new IllegalArgumentException("The httpsRequest cannot be null");
        } else if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("path cannot be null or empty");
        } else if (str3 == null || str3.isEmpty()) {
            throw new IllegalArgumentException("host cannot be null or empty");
        } else {
            httpsRequest.setHeaderField("Connection", "close");
            String preProcessRequestPath = preProcessRequestPath(str);
            StringBuilder sb = new StringBuilder();
            sb.append(httpsRequest.getHttpMethod());
            sb.append(" ");
            sb.append(preProcessRequestPath);
            if (str2 != null && !str2.isEmpty()) {
                sb.append(MsalUtils.QUERY_STRING_SYMBOL + str2);
            }
            sb.append(" ");
            sb.append(ProxiedSSLSocket.HTTP);
            sb.append("1.1");
            sb.append(CR);
            sb.append("\n");
            sb.append("Host: " + str3 + ProxyHandlerImpl.NEW_LINE);
            if (httpsRequest.getRequestHeaders() != null && !httpsRequest.getRequestHeaders().isEmpty()) {
                sb.append(httpsRequest.getRequestHeaders());
            }
            if (!(httpsRequest.getBody() == null || httpsRequest.getBody().length == 0)) {
                StringBuilder a = a.a("Content-Length: ");
                a.append(httpsRequest.getBody().length);
                a.append(ProxyHandlerImpl.NEW_LINE);
                sb.append(a.toString());
            }
            return a.a(sb, CR, "\n").getBytes(StandardCharsets.US_ASCII);
        }
    }
}
