package com.microsoft.azure.sdk.iot.device.transport.mqtt.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class MqttServerUnavailableException extends ProtocolException {
    public MqttServerUnavailableException() {
        this.isRetryable = true;
    }

    public MqttServerUnavailableException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public MqttServerUnavailableException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public MqttServerUnavailableException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
