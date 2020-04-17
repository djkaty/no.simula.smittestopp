package com.microsoft.azure.sdk.iot.device.transport.mqtt.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class MqttBadUsernameOrPasswordException extends ProtocolException {
    public MqttBadUsernameOrPasswordException() {
    }

    public MqttBadUsernameOrPasswordException(String str) {
        super(str);
    }

    public MqttBadUsernameOrPasswordException(String str, Throwable th) {
        super(str, th);
    }

    public MqttBadUsernameOrPasswordException(Throwable th) {
        super(th);
    }
}
