package com.microsoft.azure.sdk.iot.device.transport.mqtt.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class MqttUnauthorizedException extends ProtocolException {
    public MqttUnauthorizedException() {
    }

    public MqttUnauthorizedException(String str) {
        super(str);
    }

    public MqttUnauthorizedException(String str, Throwable th) {
        super(str, th);
    }

    public MqttUnauthorizedException(Throwable th) {
        super(th);
    }
}
