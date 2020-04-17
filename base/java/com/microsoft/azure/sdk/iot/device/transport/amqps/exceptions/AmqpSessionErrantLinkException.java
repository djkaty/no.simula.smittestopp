package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpSessionErrantLinkException extends ProtocolException {
    public static final String errorCode = "amqp:session:errant-link";

    public AmqpSessionErrantLinkException() {
        this.isRetryable = true;
    }

    public AmqpSessionErrantLinkException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpSessionErrantLinkException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpSessionErrantLinkException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
