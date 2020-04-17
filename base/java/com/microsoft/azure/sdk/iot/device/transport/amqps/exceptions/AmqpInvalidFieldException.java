package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpInvalidFieldException extends ProtocolException {
    public static final String errorCode = "amqp:invalid-field";

    public AmqpInvalidFieldException() {
    }

    public AmqpInvalidFieldException(String str) {
        super(str);
    }

    public AmqpInvalidFieldException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpInvalidFieldException(Throwable th) {
        super(th);
    }
}
