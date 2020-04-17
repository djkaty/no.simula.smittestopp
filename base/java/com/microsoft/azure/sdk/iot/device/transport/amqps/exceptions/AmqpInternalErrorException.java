package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpInternalErrorException extends ProtocolException {
    public static final String errorCode = "amqp:internal-error";

    public AmqpInternalErrorException() {
        this.isRetryable = true;
    }

    public AmqpInternalErrorException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpInternalErrorException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpInternalErrorException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
