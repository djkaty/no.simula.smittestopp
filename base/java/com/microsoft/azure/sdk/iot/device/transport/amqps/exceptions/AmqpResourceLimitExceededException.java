package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpResourceLimitExceededException extends ProtocolException {
    public static final String errorCode = "amqp:resource-limit-exceeded";

    public AmqpResourceLimitExceededException() {
    }

    public AmqpResourceLimitExceededException(String str) {
        super(str);
    }

    public AmqpResourceLimitExceededException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpResourceLimitExceededException(Throwable th) {
        super(th);
    }
}
