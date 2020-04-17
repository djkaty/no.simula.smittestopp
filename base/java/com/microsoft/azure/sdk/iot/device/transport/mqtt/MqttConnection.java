package com.microsoft.azure.sdk.iot.device.transport.mqtt;

import com.microsoft.azure.sdk.iot.device.ProxySettings;
import com.microsoft.azure.sdk.iot.device.transport.HttpProxySocketFactory;
import com.microsoft.azure.sdk.iot.device.transport.mqtt.exceptions.PahoExceptionTranslator;
import java.net.Proxy;
import java.util.concurrent.ConcurrentLinkedQueue;
import javax.net.ssl.SSLContext;
import k.a.a.b.e.b;
import k.c.a.a.a.e;
import k.c.a.a.a.f;
import k.c.a.a.a.g;
import k.c.a.a.a.i;
import k.c.a.a.a.k;
import k.c.a.a.a.u.a;

public class MqttConnection {
    public static final int KEEP_ALIVE_INTERVAL = 230;
    public static final int MAX_IN_FLIGHT_COUNT = 10;
    public static final int MAX_SUBSCRIBE_ACK_WAIT_TIME = 15000;
    public static final int MQTT_VERSION = 4;
    public static final int QOS = 1;
    public static final boolean SET_CLEAN_SESSION = false;
    public ConcurrentLinkedQueue<b<String, byte[]>> allReceivedMessages;
    public i connectionOptions = null;
    public f mqttAsyncClient = null;
    public Object mqttLock;

    public MqttConnection(String str, String str2, String str3, String str4, SSLContext sSLContext, ProxySettings proxySettings) {
        if (str == null || str2 == null || str3 == null || sSLContext == null) {
            throw new IllegalArgumentException("ServerURI, clientId, and userName may not be null or empty");
        } else if (str.isEmpty() || str2.isEmpty() || str3.isEmpty()) {
            throw new IllegalArgumentException("ServerURI, clientId, and userName may not be null or empty");
        } else {
            try {
                f fVar = new f(str, str2, new a());
                this.mqttAsyncClient = fVar;
                fVar.A.f2204h.N = true;
                this.connectionOptions = new i();
                updateConnectionOptions(str3, str4, sSLContext, proxySettings);
                this.allReceivedMessages = new ConcurrentLinkedQueue<>();
                this.mqttLock = new Object();
            } catch (k e2) {
                this.mqttAsyncClient = null;
                this.connectionOptions = null;
                throw PahoExceptionTranslator.convertToMqttException(e2, "Unable to create mqttAsyncClient");
            }
        }
    }

    private void updateConnectionOptions(String str, String str2, SSLContext sSLContext, ProxySettings proxySettings) {
        i iVar = this.connectionOptions;
        if (iVar != null) {
            iVar.a = 230;
            iVar.f2191k = false;
            iVar.a(4);
            i iVar2 = this.connectionOptions;
            iVar2.f2185e = str;
            if (proxySettings == null) {
                iVar2.f2187g = sSLContext.getSocketFactory();
            } else if (proxySettings.getProxy().type() == Proxy.Type.SOCKS) {
                this.connectionOptions.f2187g = new Socks5SocketFactory(proxySettings.getHostname(), proxySettings.getPort());
            } else if (proxySettings.getProxy().type() == Proxy.Type.HTTP) {
                this.connectionOptions.f2187g = new HttpProxySocketFactory(sSLContext.getSocketFactory(), proxySettings);
            } else {
                throw new IllegalArgumentException("Proxy settings must be configured to use either SOCKS or HTTP");
            }
            if (str2 != null && !str2.isEmpty()) {
                i iVar3 = this.connectionOptions;
                char[] charArray = str2.toCharArray();
                if (iVar3 != null) {
                    iVar3.f2186f = (char[]) charArray.clone();
                    return;
                }
                throw null;
            }
            return;
        }
        throw null;
    }

    public void close() {
        f fVar = this.mqttAsyncClient;
        if (fVar != null) {
            fVar.close();
        }
    }

    public e disconnect() {
        f fVar = this.mqttAsyncClient;
        if (fVar != null) {
            return fVar.a();
        }
        return null;
    }

    public ConcurrentLinkedQueue<b<String, byte[]>> getAllReceivedMessages() {
        return this.allReceivedMessages;
    }

    public i getConnectionOptions() {
        return this.connectionOptions;
    }

    public f getMqttAsyncClient() {
        return this.mqttAsyncClient;
    }

    public Object getMqttLock() {
        return this.mqttLock;
    }

    public boolean isConnected() {
        f fVar = this.mqttAsyncClient;
        if (fVar != null) {
            return fVar.b();
        }
        return false;
    }

    public boolean sendMessageAcknowledgement(int i2) {
        try {
            this.mqttAsyncClient.a(i2, 1);
            return true;
        } catch (k e2) {
            throw PahoExceptionTranslator.convertToMqttException(e2, "Error sending message ack");
        }
    }

    public void setMqttAsyncClient(f fVar) {
        this.mqttAsyncClient = fVar;
    }

    public void setMqttCallback(g gVar) {
        if (gVar != null) {
            f mqttAsyncClient2 = getMqttAsyncClient();
            mqttAsyncClient2.C = gVar;
            mqttAsyncClient2.A.f2204h.y = gVar;
            return;
        }
        throw new IllegalArgumentException("callback cannot be null");
    }
}
