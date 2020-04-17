package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class AmqpConnectionThrottledException extends ProtocolException {
    public static final String errorCode = "com.microsoft:device-container-throttled";

    public AmqpConnectionThrottledException() {
        this.isRetryable = true;
    }

    public AmqpConnectionThrottledException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public AmqpConnectionThrottledException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public AmqpConnectionThrottledException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
