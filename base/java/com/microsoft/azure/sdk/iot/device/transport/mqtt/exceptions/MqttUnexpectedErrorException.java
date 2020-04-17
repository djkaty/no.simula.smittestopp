package com.microsoft.azure.sdk.iot.device.transport.mqtt.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class MqttUnexpectedErrorException extends ProtocolException {
    public MqttUnexpectedErrorException() {
    }

    public MqttUnexpectedErrorException(String str) {
        super(str);
    }

    public MqttUnexpectedErrorException(String str, Throwable th) {
        super(str, th);
    }

    public MqttUnexpectedErrorException(Throwable th) {
        super(th);
    }
}
