package k.c.a.a.a.s.r;

import com.microsoft.azure.proton.transport.proxy.impl.ProxyHandlerImpl;
import com.microsoft.azure.sdk.iot.deps.ws.impl.WebSocketUpgrade;
import com.microsoft.identity.client.internal.MsalUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;
import java.util.UUID;

public class e {
    public InputStream a;
    public OutputStream b;

    /* renamed from: c  reason: collision with root package name */
    public String f2255c;

    /* renamed from: d  reason: collision with root package name */
    public String f2256d;

    /* renamed from: e  reason: collision with root package name */
    public int f2257e;

    /* renamed from: f  reason: collision with root package name */
    public Properties f2258f;

    public e(InputStream inputStream, OutputStream outputStream, String str, String str2, int i2, Properties properties) {
        this.a = inputStream;
        this.b = outputStream;
        this.f2255c = str;
        this.f2256d = str2;
        this.f2257e = i2;
        this.f2258f = properties;
    }

    public void a() {
        byte[] bArr = new byte[16];
        System.arraycopy(UUID.randomUUID().toString().getBytes(), 0, bArr, 0, 16);
        a.b.putByteArray("aKey", bArr);
        String str = a.b.a;
        String str2 = "/mqtt";
        try {
            URI uri = new URI(this.f2255c);
            if (uri.getRawPath() != null && !uri.getRawPath().isEmpty()) {
                str2 = uri.getRawPath();
                if (uri.getRawQuery() != null && !uri.getRawQuery().isEmpty()) {
                    str2 = String.valueOf(str2) + MsalUtils.QUERY_STRING_SYMBOL + uri.getRawQuery();
                }
            }
            PrintWriter printWriter = new PrintWriter(this.b);
            printWriter.print("GET " + str2 + " HTTP/1.1" + ProxyHandlerImpl.NEW_LINE);
            if (this.f2257e != 80) {
                printWriter.print("Host: " + this.f2256d + ":" + this.f2257e + ProxyHandlerImpl.NEW_LINE);
            } else {
                printWriter.print("Host: " + this.f2256d + ProxyHandlerImpl.NEW_LINE);
            }
            printWriter.print("Upgrade: websocket\r\n");
            printWriter.print("Connection: Upgrade\r\n");
            printWriter.print("Sec-WebSocket-Key: " + str + ProxyHandlerImpl.NEW_LINE);
            printWriter.print("Sec-WebSocket-Protocol: mqtt\r\n");
            printWriter.print("Sec-WebSocket-Version: 13\r\n");
            if (this.f2258f != null) {
                for (String str3 : this.f2258f.keySet()) {
                    printWriter.print(String.valueOf(str3) + ": " + this.f2258f.getProperty(str3) + ProxyHandlerImpl.NEW_LINE);
                }
            }
            String userInfo = uri.getUserInfo();
            if (userInfo != null) {
                StringBuilder sb = new StringBuilder("Authorization: Basic ");
                a.b.putByteArray("akey", userInfo.getBytes());
                sb.append(a.b.a);
                sb.append(ProxyHandlerImpl.NEW_LINE);
                printWriter.print(sb.toString());
            }
            printWriter.print(ProxyHandlerImpl.NEW_LINE);
            printWriter.flush();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.a));
            ArrayList arrayList = new ArrayList();
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                while (!readLine.equals("")) {
                    arrayList.add(readLine);
                    readLine = bufferedReader.readLine();
                }
                HashMap hashMap = new HashMap();
                for (int i2 = 1; i2 < arrayList.size(); i2++) {
                    String[] split = ((String) arrayList.get(i2)).split(":");
                    hashMap.put(split[0].toLowerCase(), split[1]);
                }
                String str4 = (String) hashMap.get("connection");
                if (str4 == null || str4.equalsIgnoreCase("upgrade")) {
                    throw new IOException("WebSocket Response header: Incorrect connection header");
                }
                String str5 = (String) hashMap.get("upgrade");
                if (str5 == null || !str5.toLowerCase().contains("websocket")) {
                    throw new IOException("WebSocket Response header: Incorrect upgrade.");
                } else if (((String) hashMap.get("sec-websocket-protocol")) == null) {
                    throw new IOException("WebSocket Response header: empty sec-websocket-protocol");
                } else if (hashMap.containsKey("sec-websocket-accept")) {
                    try {
                        a(str, (String) hashMap.get("sec-websocket-accept"));
                    } catch (NoSuchAlgorithmException e2) {
                        throw new IOException(e2.getMessage());
                    } catch (c unused) {
                        throw new IOException("WebSocket Response header: Incorrect Sec-WebSocket-Key");
                    }
                } else {
                    throw new IOException("WebSocket Response header: Missing Sec-WebSocket-Accept");
                }
            } else {
                throw new IOException("WebSocket Response header: Invalid response from Server, It may not support WebSockets.");
            }
        } catch (URISyntaxException e3) {
            throw new IllegalStateException(e3.getMessage());
        }
    }

    public final void a(String str, String str2) {
        a.b.putByteArray("aKey", MessageDigest.getInstance("SHA1").digest((String.valueOf(str) + WebSocketUpgrade.RFC_GUID).getBytes()));
        if (!a.b.a.trim().equals(str2.trim())) {
            throw new c();
        }
    }
}
