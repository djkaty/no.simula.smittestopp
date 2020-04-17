package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpPreconditionFailedException extends ProtocolException {
    public static final String errorCode = "amqp:precondition-failed";

    public AmqpPreconditionFailedException() {
    }

    public AmqpPreconditionFailedException(String str) {
        super(str);
    }

    public AmqpPreconditionFailedException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpPreconditionFailedException(Throwable th) {
        super(th);
    }
}
