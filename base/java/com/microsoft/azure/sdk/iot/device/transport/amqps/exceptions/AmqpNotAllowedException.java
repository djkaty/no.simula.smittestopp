package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpNotAllowedException extends ProtocolException {
    public static final String errorCode = "amqp:not-allowed";

    public AmqpNotAllowedException() {
    }

    public AmqpNotAllowedException(String str) {
        super(str);
    }

    public AmqpNotAllowedException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpNotAllowedException(Throwable th) {
        super(th);
    }
}
