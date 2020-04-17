package com.microsoft.azure.sdk.iot.deps.transport.mqtt;

import e.a.a.a.a;
import java.io.IOException;
import javax.net.ssl.SSLContext;
import k.c.a.a.a.c;
import k.c.a.a.a.f;
import k.c.a.a.a.g;
import k.c.a.a.a.i;
import k.c.a.a.a.k;
import k.c.a.a.a.l;
import k.c.a.a.a.q;

public class MqttConnection implements g {
    public static final int KEEP_ALIVE_INTERVAL = 230;
    public static final int MAX_WAIT_TIME = 1000;
    public static final int MQTT_VERSION = 4;
    public static final boolean SET_CLEAN_SESSION = false;
    public static final String SSL_URL_FORMAT = "ssl://%s:8883";
    public static final String WS_SSL_URL_FORMAT = "wss://%s:443";
    public i connectionOptions;
    public f mqttAsyncClient;
    public MqttListener mqttListener;

    public MqttConnection(String str, String str2, String str3, String str4, SSLContext sSLContext, MqttListener mqttListener2, boolean z) {
        String str5;
        if (str == null || str2 == null || str3 == null || sSLContext == null) {
            throw new IllegalArgumentException();
        } else if (str.isEmpty() || str2.isEmpty() || str3.isEmpty()) {
            throw new IllegalArgumentException();
        } else if (mqttListener2 != null) {
            if (z) {
                try {
                    str5 = String.format(WS_SSL_URL_FORMAT, new Object[]{str});
                } catch (k e2) {
                    this.mqttAsyncClient = null;
                    this.connectionOptions = null;
                    StringBuilder a = a.a("Error initializing MQTT connection:");
                    a.append(e2.getMessage());
                    throw new IOException(a.toString());
                }
            } else {
                str5 = String.format(SSL_URL_FORMAT, new Object[]{str});
            }
            this.mqttListener = mqttListener2;
            this.mqttAsyncClient = new f(str5, str2, new k.c.a.a.a.u.a());
            this.connectionOptions = new i();
            f fVar = this.mqttAsyncClient;
            fVar.C = this;
            fVar.A.f2204h.y = this;
            updateConnectionOptions(str3, str4, sSLContext);
        } else {
            throw new IllegalArgumentException("The listener cannot be null.");
        }
    }

    private void updateConnectionOptions(String str, String str2, SSLContext sSLContext) {
        i iVar = this.connectionOptions;
        if (iVar != null) {
            iVar.a = 230;
            iVar.f2191k = false;
            iVar.a(4);
            i iVar2 = this.connectionOptions;
            iVar2.f2185e = str;
            iVar2.f2187g = sSLContext.getSocketFactory();
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

    public synchronized void connect() {
        try {
            if (!this.mqttAsyncClient.b()) {
                ((q) this.mqttAsyncClient.a(this.connectionOptions, (Object) null, (k.c.a.a.a.a) null)).a();
                if (this.mqttListener != null) {
                    this.mqttListener.connectionEstablished();
                }
            }
        } catch (k e2) {
            throw new IOException("Unable to connect to mqtt service", e2);
        }
    }

    public synchronized void connectionLost(Throwable th) {
        this.mqttListener.connectionLost(th);
    }

    public synchronized void deliveryComplete(c cVar) {
    }

    public synchronized void disconnect() {
        try {
            if (this.mqttAsyncClient.b()) {
                ((q) this.mqttAsyncClient.a()).a();
            }
        } catch (k e2) {
            throw new IOException("Unable to connect to mqtt service", e2);
        }
    }

    public boolean isMqttConnected() {
        f fVar = this.mqttAsyncClient;
        if (fVar == null) {
            return false;
        }
        return fVar.b();
    }

    public synchronized void messageArrived(String str, l lVar) {
        this.mqttListener.messageReceived(new MqttMessage(str, lVar));
    }

    public synchronized void publishMessage(String str, MqttQos mqttQos, byte[] bArr) {
        MqttMessage mqttMessage;
        if (bArr != null) {
            if (bArr.length != 0) {
                mqttMessage = new MqttMessage(str, bArr);
                mqttMessage.setQos(mqttQos);
                publishMessage(mqttMessage);
            }
        }
        mqttMessage = new MqttMessage(str);
        mqttMessage.setQos(mqttQos);
        publishMessage(mqttMessage);
    }

    public synchronized void subscribe(String str, MqttQos mqttQos) {
        if (this.mqttAsyncClient == null || !this.mqttAsyncClient.b()) {
            throw new IOException("Mqtt is not connected");
        }
        try {
            ((q) this.mqttAsyncClient.a(str, MqttMessage.retrieveQosValue(mqttQos))).a.a(1000);
        } catch (k e2) {
            throw new IOException("Unable to subscribe on topic : " + str, e2);
        }
    }

    public synchronized void unsubscribe(String str) {
        try {
            ((q) this.mqttAsyncClient.a(str)).a();
        } catch (k e2) {
            throw new IOException("Unable to unsubscribe message on topic : " + str, e2);
        }
    }

    public synchronized void publishMessage(MqttMessage mqttMessage) {
        if (this.mqttAsyncClient == null || !this.mqttAsyncClient.b()) {
            throw new IOException("Mqtt is not connected");
        } else if (mqttMessage != null) {
            try {
                ((q) this.mqttAsyncClient.a(mqttMessage.getTopic(), mqttMessage.getMqttMessage())).a();
            } catch (k e2) {
                throw new IOException("Unable to publish message on topic : " + mqttMessage.getTopic(), e2);
            }
        } else {
            throw new IOException("MqttMessage is null");
        }
    }
}
