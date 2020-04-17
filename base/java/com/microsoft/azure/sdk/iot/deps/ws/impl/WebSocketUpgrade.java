package com.microsoft.azure.sdk.iot.deps.ws.impl;

import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import com.microsoft.azure.sdk.iot.deps.util.Base64;
import com.microsoft.identity.client.internal.MsalUtils;
import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftClientAssertion;
import com.microsoft.identity.common.internal.telemetry.TelemetryEventStrings;
import e.a.a.a.a;
import java.nio.charset.StandardCharsets;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Map;
import java.util.Scanner;

public class WebSocketUpgrade {
    public static final String RFC_GUID = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    public Map<String, String> _additionalHeaders = null;
    public boolean _certAvailability = false;
    public final char _colon = ':';
    public String _host = "";
    public String _path = "";
    public String _port = "";
    public String _protocol = "";
    public final char _slash = '/';
    public String _webSocketKey = "";

    public WebSocketUpgrade(String str, String str2, int i2, String str3, Map<String, String> map) {
        setHostFinal(str);
        setPathFinal(str2);
        setPortFinal(i2);
        setProtocolFinal(str3);
        setAdditionalHeadersFinal(map);
    }

    private String createWebSocketKey() {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        return Base64.encodeBase64StringLocal(bArr).trim();
    }

    public void clearAdditionalHeaders() {
        this._additionalHeaders.clear();
    }

    public String createUpgradeRequest() {
        if (this._host.isEmpty()) {
            throw new InvalidParameterException("host header has no value");
        } else if (!this._protocol.isEmpty()) {
            this._webSocketKey = createWebSocketKey();
            StringBuilder a = a.a("GET https://");
            a.append(this._host);
            a.append(this._path);
            a.append(MsalUtils.QUERY_STRING_SYMBOL);
            a.append("iothub-no-client-cert=");
            a.append(!this._certAvailability);
            a.append(" HTTP/1.1");
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Connection: Upgrade,Keep-Alive");
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Upgrade: websocket");
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Sec-WebSocket-Version: 13");
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Sec-WebSocket-Key: ");
            a.append(this._webSocketKey);
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Sec-WebSocket-Protocol: ");
            a.append(this._protocol);
            a.append(ProxyHandlerImpl.NEW_LINE);
            a.append("Host: ");
            a.append(this._host);
            a.append(ProxyHandlerImpl.NEW_LINE);
            Map<String, String> map = this._additionalHeaders;
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

    @Deprecated
    public void setAdditionalHeaders(Map<String, String> map) {
        this._additionalHeaders = map;
    }

    public final void setAdditionalHeadersFinal(Map<String, String> map) {
        this._additionalHeaders = map;
    }

    public void setClientCertAvailable() {
        this._certAvailability = true;
    }

    @Deprecated
    public void setHost(String str) {
        this._host = str;
    }

    public final void setHostFinal(String str) {
        this._host = str;
    }

    @Deprecated
    public void setPath(String str) {
        this._path = str;
        if (!str.isEmpty()) {
            char charAt = this._path.charAt(0);
            getClass();
            if (charAt != '/') {
                StringBuilder sb = new StringBuilder();
                getClass();
                sb.append('/');
                sb.append(this._path);
                this._path = sb.toString();
            }
        }
    }

    public final void setPathFinal(String str) {
        this._path = str;
        if (!str.isEmpty()) {
            char charAt = this._path.charAt(0);
            getClass();
            if (charAt != '/') {
                StringBuilder sb = new StringBuilder();
                getClass();
                sb.append('/');
                sb.append(this._path);
                this._path = sb.toString();
            }
        }
    }

    @Deprecated
    public void setPort(int i2) {
        this._port = "";
        if (i2 != 0) {
            this._port = String.valueOf(i2);
        }
    }

    public final void setPortFinal(int i2) {
        this._port = "";
        if (i2 != 0) {
            this._port = String.valueOf(i2);
        }
    }

    @Deprecated
    public void setProtocol(String str) {
        this._protocol = str;
    }

    public final void setProtocolFinal(String str) {
        this._protocol = str;
    }

    public String toString() {
        StringBuilder a = a.a("WebSocketUpgrade [host=");
        a.append(this._host);
        a.append(", path=");
        a.append(this._path);
        a.append(", port=");
        a.append(this._port);
        a.append(", protocol=");
        a.append(this._protocol);
        a.append(", webSocketKey=");
        a.append(this._webSocketKey);
        Map<String, String> map = this._additionalHeaders;
        if (map != null && !map.isEmpty()) {
            a.append(", additionalHeaders=");
            for (Map.Entry next : this._additionalHeaders.entrySet()) {
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
            } else if (nextLine.toLowerCase().contains("sec-websocket-protocol") && nextLine.toLowerCase().contains(this._protocol.toLowerCase())) {
                bool4 = true;
            } else if (nextLine.toLowerCase().contains("sec-websocket-accept")) {
                try {
                    if (nextLine.contains(Base64.encodeBase64StringLocal(MessageDigest.getInstance(MicrosoftClientAssertion.THUMBPRINT_ALGORITHM).digest((this._webSocketKey + RFC_GUID).getBytes())).trim())) {
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
