package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class UnauthorizedException extends IotHubServiceException {
    public UnauthorizedException() {
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.UNAUTHORIZED;
    }

    public UnauthorizedException(String str) {
        super(str);
    }

    public UnauthorizedException(String str, Throwable th) {
        super(str, th);
    }

    public UnauthorizedException(Throwable th) {
        super(th);
    }
}
