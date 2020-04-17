package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpSessionHandleInUseException extends ProtocolException {
    public static final String errorCode = "amqp:session:handle-in-use";

    public AmqpSessionHandleInUseException() {
        this.isRetryable = true;
    }

    public AmqpSessionHandleInUseException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpSessionHandleInUseException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpSessionHandleInUseException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
