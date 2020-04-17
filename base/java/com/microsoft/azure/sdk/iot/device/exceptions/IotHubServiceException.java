package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class IotHubServiceException extends TransportException {
    public IotHubServiceException() {
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.ERROR;
    }

    public IotHubServiceException(String str) {
        super(str);
    }

    public IotHubServiceException(String str, Throwable th) {
        super(str, th);
    }

    public IotHubServiceException(Throwable th) {
        super(th);
    }
}
