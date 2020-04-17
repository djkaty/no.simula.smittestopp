package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpLinkMessageSizeExceededException extends ProtocolException {
    public static final String errorCode = "amqp:link:message-size-exceeded";

    public AmqpLinkMessageSizeExceededException() {
    }

    public AmqpLinkMessageSizeExceededException(String str) {
        super(str);
    }

    public AmqpLinkMessageSizeExceededException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpLinkMessageSizeExceededException(Throwable th) {
        super(th);
    }
}
