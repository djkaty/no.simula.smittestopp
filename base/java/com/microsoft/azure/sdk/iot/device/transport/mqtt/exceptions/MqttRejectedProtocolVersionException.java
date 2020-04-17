package com.microsoft.azure.sdk.iot.device.transport.mqtt.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class MqttRejectedProtocolVersionException extends ProtocolException {
    public MqttRejectedProtocolVersionException() {
    }

    public MqttRejectedProtocolVersionException(String str) {
        super(str);
    }

    public MqttRejectedProtocolVersionException(String str, Throwable th) {
        super(str, th);
    }

    public MqttRejectedProtocolVersionException(Throwable th) {
        super(th);
    }
}
