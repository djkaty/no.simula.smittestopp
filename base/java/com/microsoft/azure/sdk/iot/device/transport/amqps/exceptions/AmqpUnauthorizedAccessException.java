package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpUnauthorizedAccessException extends ProtocolException {
    public static final String errorCode = "amqp:unauthorized-access";

    public AmqpUnauthorizedAccessException() {
    }

    public AmqpUnauthorizedAccessException(String str) {
        super(str);
    }

    public AmqpUnauthorizedAccessException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpUnauthorizedAccessException(Throwable th) {
        super(th);
    }
}
