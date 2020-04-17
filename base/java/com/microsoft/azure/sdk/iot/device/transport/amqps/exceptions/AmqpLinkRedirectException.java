package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpLinkRedirectException extends ProtocolException {
    public static final String errorCode = "amqp:link:redirect";

    public AmqpLinkRedirectException() {
        this.isRetryable = true;
    }

    public AmqpLinkRedirectException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpLinkRedirectException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpLinkRedirectException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
