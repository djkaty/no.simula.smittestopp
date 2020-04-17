package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpResourceDeletedException extends ProtocolException {
    public static final String errorCode = "amqp:resource-deleted";

    public AmqpResourceDeletedException() {
    }

    public AmqpResourceDeletedException(String str) {
        super(str);
    }

    public AmqpResourceDeletedException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpResourceDeletedException(Throwable th) {
        super(th);
    }
}
