package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpDecodeErrorException extends ProtocolException {
    public static final String errorCode = "amqp:decode-error";

    public AmqpDecodeErrorException() {
    }

    public AmqpDecodeErrorException(String str) {
        super(str);
    }

    public AmqpDecodeErrorException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpDecodeErrorException(Throwable th) {
        super(th);
    }
}
