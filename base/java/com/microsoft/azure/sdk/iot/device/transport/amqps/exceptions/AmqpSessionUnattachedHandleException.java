package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpSessionUnattachedHandleException extends ProtocolException {
    public static final String errorCode = "amqp:session:unattached-handle";

    public AmqpSessionUnattachedHandleException() {
        this.isRetryable = true;
    }

    public AmqpSessionUnattachedHandleException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpSessionUnattachedHandleException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpSessionUnattachedHandleException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
