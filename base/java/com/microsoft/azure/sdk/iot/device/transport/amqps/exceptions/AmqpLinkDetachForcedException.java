package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpLinkDetachForcedException extends ProtocolException {
    public static final String errorCode = "amqp:link:detach-forced";

    public AmqpLinkDetachForcedException() {
        this.isRetryable = true;
    }

    public AmqpLinkDetachForcedException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpLinkDetachForcedException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpLinkDetachForcedException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
