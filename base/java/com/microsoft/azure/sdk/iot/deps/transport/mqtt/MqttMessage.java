package com.microsoft.azure.sdk.iot.deps.transport.mqtt;

import k.c.a.a.a.l;

public class MqttMessage {
    public byte[] payload;
    public MqttQos qos = MqttQos.DELIVER_UNKNOWN;
    public String topic;

    public MqttMessage(String str) {
        this.topic = str;
    }

    public static int retrieveQosValue(MqttQos mqttQos) {
        if (mqttQos == MqttQos.DELIVER_AT_MOST_ONCE) {
            return 0;
        }
        if (mqttQos == MqttQos.DELIVER_AT_LEAST_ONCE) {
            return 1;
        }
        return mqttQos == MqttQos.DELIVER_EXACTLY_ONCE ? 2 : 128;
    }

    public l getMqttMessage() {
        l lVar = new l();
        byte[] bArr = this.payload;
        if (bArr != null) {
            lVar.a(bArr);
        }
        MqttQos mqttQos = this.qos;
        if (mqttQos != MqttQos.DELIVER_UNKNOWN) {
            lVar.a(retrieveQosValue(mqttQos));
        }
        return lVar;
    }

    public byte[] getPayload() {
        return this.payload;
    }

    public MqttQos getQos() {
        return this.qos;
    }

    public String getTopic() {
        return this.topic;
    }

    public void setPayload(byte[] bArr) {
        this.payload = bArr;
    }

    public void setQos(MqttQos mqttQos) {
        this.qos = mqttQos;
    }

    public void setTopic(String str) {
        this.topic = str;
    }

    public MqttMessage(String str, l lVar) {
        if (lVar != null) {
            this.topic = str;
            this.payload = lVar.b;
            int i2 = lVar.f2193c;
            if (i2 == 0) {
                this.qos = MqttQos.DELIVER_AT_MOST_ONCE;
            } else if (i2 == 2) {
                this.qos = MqttQos.DELIVER_EXACTLY_ONCE;
            } else if (i2 == 3) {
                this.qos = MqttQos.DELIVER_AT_LEAST_ONCE;
            } else {
                this.qos = MqttQos.DELIVER_FAILURE;
            }
        } else {
            throw new IllegalArgumentException();
        }
    }

    public MqttMessage(String str, byte[] bArr) {
        this.topic = str;
        this.payload = bArr;
    }
}
