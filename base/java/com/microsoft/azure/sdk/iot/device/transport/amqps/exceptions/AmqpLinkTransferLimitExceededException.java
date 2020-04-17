package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpLinkTransferLimitExceededException extends ProtocolException {
    public static final String errorCode = "amqp:link:transfer-limit-exceeded";

    public AmqpLinkTransferLimitExceededException() {
        this.isRetryable = true;
    }

    public AmqpLinkTransferLimitExceededException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpLinkTransferLimitExceededException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpLinkTransferLimitExceededException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
