package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpConnectionFramingErrorException extends ProtocolException {
    public static final String errorCode = "amqp:connection:framing-error";

    public AmqpConnectionFramingErrorException() {
        this.isRetryable = true;
    }

    public AmqpConnectionFramingErrorException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpConnectionFramingErrorException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpConnectionFramingErrorException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
