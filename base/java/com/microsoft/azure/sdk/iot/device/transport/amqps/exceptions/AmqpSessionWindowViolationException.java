package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpSessionWindowViolationException extends ProtocolException {
    public static final String errorCode = "amqp:session:window-violation";

    public AmqpSessionWindowViolationException() {
        this.isRetryable = true;
    }

    public AmqpSessionWindowViolationException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpSessionWindowViolationException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpSessionWindowViolationException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
