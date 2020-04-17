package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpConnectionRedirectException extends ProtocolException {
    public static final String errorCode = "amqp:connection:redirect";

    public AmqpConnectionRedirectException() {
        this.isRetryable = true;
    }

    public AmqpConnectionRedirectException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpConnectionRedirectException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpConnectionRedirectException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
