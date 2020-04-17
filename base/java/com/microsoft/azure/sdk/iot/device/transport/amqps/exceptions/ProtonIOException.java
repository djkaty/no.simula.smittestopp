package com.microsoft.azure.sdk.iot.device.transport.amqps.exceptions;

import com.microsoft.azure.sdk.iot.device.exceptions.ProtocolException;

public class ProtonIOException extends ProtocolException {
    public static final String errorCode = "proton:io";

    public ProtonIOException() {
        this.isRetryable = true;
    }

    public ProtonIOException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public ProtonIOException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public ProtonIOException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
