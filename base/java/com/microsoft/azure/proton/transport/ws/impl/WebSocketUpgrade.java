package com.microsoft.azure.proton.transport.ws.impl;

import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftClientAssertion;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import e.a.a.a.a;
import java.nio.charset.StandardCharsets;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.Scanner;

public class WebSocketUpgrade {
    public final Map<String, String> additionalHeaders;
    public final String host;
    public final String path;
    public final String port;
    public final String protocol;
    public final String query;
    public final char questionMark = '?';
    public final String rfcGuid = com.microsoft.azure.sdk.iot.deps.ws.impl.WebSocketUpgrade.RFC_GUID;
    public final char slash = '/';
    public volatile String webSocketKey;

    public WebSocketUpgrade(String str, String str2, String str3, int i2, String str4, Map<String, String> map) {
        String str5 = "";
        this.webSocketKey = str5;
        this.host = str;
        if (!str2.isEmpty()) {
            char charAt = str2.charAt(0);
            getClass();
            if (charAt != '/') {
                StringBuilder sb = new StringBuilder();
                getClass();
                sb.append('/');
                sb.append(str2);
                str2 = sb.toString();
            }
        }
        this.path = str2;
        if (!str3.isEmpty()) {
            char charAt2 = str3.charAt(0);
            getClass();
            if (charAt2 != '?') {
                StringBuilder sb2 = new StringBuilder();
                getClass();
                sb2.append('?');
                sb2.append(str3);
                str3 = sb2.toString();
            }
        }
        this.query = str3;
        this.port = i2 != 0 ? String.valueOf(i2) : str5;
        this.protocol = str4;
        this.additionalHeaders = map;
    }

    private String createWebSocketKey() {
        byte[] bArr = new byte[16];
        for (int i2 = 0; i2 < 16; i2++) {
            bArr[i2] = (byte) ((int) (Math.random() * 256.0d));
        }
        return Base64.encodeBase64StringLocal(bArr).trim();
    }

    public String createUpgradeRequest() {
        if (this.host.isEmpty()) {
            throw new InvalidParameterException("host header has no value");
        } else if (!this.protocol.isEmpty()) {
            this.webSocketKey = createWebSocketKey();
            StringBuilder a = a.a("GET https://");
            a.append(this.host);
            a.append(this.path);
            a.append(this.query);
            a.append(" HTTP/1.1");
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Connection: Upgrade,Keep-Alive");
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Upgrade: websocket");
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Sec-WebSocket-Version: 13");
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Sec-WebSocket-Key: ");
            a.append(this.webSocketKey);
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Sec-WebSocket-Protocol: ");
            a.append(this.protocol);
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Host: ");
            a.append(this.host);
            a.append(ProxyHandlerImpl.NEW_LINE);
            Map<String, String> map = this.additionalHeaders;
            if (map != null) {
                for (Map.Entry next : map.entrySet()) {
                    a.append(((String) next.getKey()) + ": " + ((String) next.getValue()));
                    a.append(ProxyHandlerImpl.NEW_LINE);
                }
            }
            a.append(ProxyHandlerImpl.NEW_LINE);
            return a.toString();
        } else {
            throw new InvalidParameterException("protocol header has no value");
        }
    }

    public String toString() {
        StringBuilder a = a.a("WebSocketUpgrade [host=");
        a.append(this.host);
        a.append(", path=");
        a.append(this.path);
        a.append(", port=");
        a.append(this.port);
        a.append(", protocol=");
        a.append(this.protocol);
        a.append(", webSocketKey=");
        a.append(this.webSocketKey);
        Map<String, String> map = this.additionalHeaders;
        if (map != null && !map.isEmpty()) {
            a.append(", additionalHeaders=");
            for (Map.Entry next : this.additionalHeaders.entrySet()) {
                a.append(((String) next.getKey()) + ":" + ((String) next.getValue()));
                a.append(", ");
            }
            int lastIndexOf = a.lastIndexOf(", ");
            a.delete(lastIndexOf, lastIndexOf + 2);
        }
        a.append("]");
        return a.toString();
    }

    public Boolean validateUpgradeReply(byte[] bArr) {
        Scanner scanner = new Scanner(new String(bArr, StandardCharsets.UTF_8));
        Boolean bool = false;
        Boolean bool2 = null;
        Boolean bool3 = null;
        Boolean bool4 = null;
        Boolean bool5 = null;
        while (scanner.hasNextLine()) {
            String nextLine = scanner.nextLine();
            if (nextLine.toLowerCase().contains("http/1.1") && nextLine.contains(TelemetryEventStrings.Api.LOCAL_ACQUIRE_TOKEN_INTERACTIVE) && nextLine.toLowerCase().contains("switching protocols")) {
                bool = true;
            } else if (nextLine.toLowerCase().contains("upgrade") && nextLine.toLowerCase().contains("websocket")) {
                bool2 = true;
            } else if (nextLine.toLowerCase().contains("connection") && nextLine.toLowerCase().contains("upgrade")) {
                bool3 = true;
            } else if (nextLine.toLowerCase().contains("sec-websocket-protocol") && nextLine.toLowerCase().contains(this.protocol.toLowerCase())) {
                bool4 = true;
            } else if (nextLine.toLowerCase().contains("sec-websocket-accept")) {
                try {
                    MessageDigest instance = MessageDigest.getInstance(MicrosoftClientAssertion.THUMBPRINT_ALGORITHM);
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.webSocketKey);
                    getClass();
                    sb.append(com.microsoft.azure.sdk.iot.deps.ws.impl.WebSocketUpgrade.RFC_GUID);
                    if (nextLine.contains(Base64.encodeBase64StringLocal(instance.digest(sb.toString().getBytes())).trim())) {
                        bool5 = true;
                    }
                } catch (NoSuchAlgorithmException unused) {
                }
            }
        }
        scanner.close();
        if (!bool.booleanValue() || !bool2.booleanValue() || !bool3.booleanValue() || !bool4.booleanValue() || !bool5.booleanValue()) {
            return false;
        }
        return true;
    }
}
