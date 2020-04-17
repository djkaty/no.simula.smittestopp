package com.microsoft.azure.sdk.iot.device.exceptions;

public class IotHubException extends Exception {
    public IotHubException() {
    }

    public IotHubException(String str) {
        super(str);
    }

    public IotHubException(String str, Throwable th) {
        super(str, th);
    }

    public IotHubException(Throwable th) {
        super(th);
    }
}
