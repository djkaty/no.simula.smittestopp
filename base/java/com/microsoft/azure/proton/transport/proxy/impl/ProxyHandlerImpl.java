package com.microsoft.azure.proton.transport.proxy.impl;

import com.microsoft.azure.proton.transport.proxy.ProxyHandler;
import com.microsoft.azure.sdk.iot.device.transport.amqps.AmqpsDeviceTwin;
import e.d.a.a.a.a.a.c;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;

public class ProxyHandlerImpl implements ProxyHandler {
    public static final String CONNECT_REQUEST = "CONNECT %1$s HTTP/1.1%2$sHost: %1$s%2$sConnection: Keep-Alive%2$s";
    public static final String HEADER_FORMAT = "%s: %s";
    public static final String NEW_LINE = "\r\n";

    public static /* synthetic */ void a(StringBuilder sb, String str, String str2) {
        sb.append(String.format(HEADER_FORMAT, new Object[]{str, str2}));
        sb.append(NEW_LINE);
    }

    public String createProxyRequest(String str, Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(Locale.ROOT, CONNECT_REQUEST, new Object[]{str, NEW_LINE}));
        if (map != null) {
            map.forEach(new c(sb));
        }
        sb.append(NEW_LINE);
        return sb.toString();
    }

    public ProxyHandler.ProxyResponseResult validateProxyResponse(ByteBuffer byteBuffer) {
        String str = null;
        if (byteBuffer.remaining() > 0) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            String str2 = new String(bArr, StandardCharsets.UTF_8);
            Scanner scanner = new Scanner(str2);
            if (scanner.hasNextLine()) {
                String nextLine = scanner.nextLine();
                if ((nextLine.toLowerCase().contains("http/1.1") || nextLine.toLowerCase().contains("http/1.0")) && nextLine.contains(AmqpsDeviceTwin.DEFAULT_STATUS_CODE) && nextLine.toLowerCase().contains("connection established")) {
                    return new ProxyHandler.ProxyResponseResult(true, (String) null);
                }
            }
            str = str2;
        }
        return new ProxyHandler.ProxyResponseResult(false, str);
    }
}
