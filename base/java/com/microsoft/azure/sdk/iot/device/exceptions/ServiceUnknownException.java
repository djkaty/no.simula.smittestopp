package com.microsoft.azure.sdk.iot.device.exceptions;

public class ServiceUnknownException extends IotHubServiceException {
    public ServiceUnknownException() {
    }

    public ServiceUnknownException(String str) {
        super(str);
    }

    public ServiceUnknownException(String str, Throwable th) {
        super(str, th);
    }

    public ServiceUnknownException(Throwable th) {
        super(th);
    }
}
