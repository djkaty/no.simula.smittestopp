package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpFrameSizeTooSmallException extends ProtocolException {
    public static final String errorCode = "amqp:frame-size-too-small";

    public AmqpFrameSizeTooSmallException() {
    }

    public AmqpFrameSizeTooSmallException(String str) {
        super(str);
    }

    public AmqpFrameSizeTooSmallException(String str, Throwable th) {
        super(str, th);
    }

    public AmqpFrameSizeTooSmallException(Throwable th) {
        super(th);
    }
}
