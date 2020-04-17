package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpConnectionForcedException extends ProtocolException {
    public static final String errorCode = "amqp:connection:forced";

    public AmqpConnectionForcedException() {
        this.isRetryable = true;
    }

    public AmqpConnectionForcedException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpConnectionForcedException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpConnectionForcedException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
