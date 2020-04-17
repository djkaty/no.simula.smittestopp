package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpResourceLockedException extends ProtocolException {
    public static final String errorCode = "amqp:resource-locked";

    public AmqpResourceLockedException() {
        this.isRetryable = true;
    }

    public AmqpResourceLockedException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpResourceLockedException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpResourceLockedException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
