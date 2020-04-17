package com.microsoft.azure.sdk.iot.deps.transport.mqtt;

public interface MqttListener {
    void connectionEstablished();

    void connectionLost(Throwable th);

    void messageReceived(MqttMessage mqttMessage);
}
