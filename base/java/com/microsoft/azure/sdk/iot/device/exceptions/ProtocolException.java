package com.microsoft.azure.sdk.iot.device.exceptions;

public class ProtocolException extends TransportException {
    public ProtocolException() {
    }

    public ProtocolException(String str) {
        super(str);
    }

    public ProtocolException(String str, Throwable th) {
        super(str, th);
    }

    public ProtocolException(Throwable th) {
        super(th);
    }
}
