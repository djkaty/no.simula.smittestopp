package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpIllegalStateException extends ProtocolException {
    public static final String errorCode = "amqp:illegal-state";

    public AmqpIllegalStateException() {
    }

    public AmqpIllegalStateException(String str) {
        super(str);
    }

    public AmqpIllegalStateException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpIllegalStateException(Throwable th) {
        super(th);
    }
}
