package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpNotFoundException extends ProtocolException {
    public static final String errorCode = "amqp:not-found";

    public AmqpNotFoundException() {
    }

    public AmqpNotFoundException(String str) {
        super(str);
    }

    public AmqpNotFoundException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpNotFoundException(Throwable th) {
        super(th);
    }
}
