package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpLinkStolenException extends ProtocolException {
    public static final String errorCode = "amqp:link:stolen";

    public AmqpLinkStolenException() {
        this.isRetryable = true;
    }

    public AmqpLinkStolenException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpLinkStolenException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpLinkStolenException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
