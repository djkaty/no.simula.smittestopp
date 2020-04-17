package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class RequestEntityTooLargeException extends IotHubServiceException {
    public RequestEntityTooLargeException() {
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.REQUEST_ENTITY_TOO_LARGE;
    }

    public RequestEntityTooLargeException(String str) {
        super(str);
    }

    public RequestEntityTooLargeException(String str, Throwable th) {
        super(str, th);
    }

    public RequestEntityTooLargeException(Throwable th) {
        super(th);
    }
}
