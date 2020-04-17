package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpNotImplementedException extends ProtocolException {
    public static final String errorCode = "amqp:not-implemented";

    public AmqpNotImplementedException() {
    }

    public AmqpNotImplementedException(String str) {
        super(str);
    }

    public AmqpNotImplementedException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpNotImplementedException(Throwable th) {
        super(th);
    }
}
