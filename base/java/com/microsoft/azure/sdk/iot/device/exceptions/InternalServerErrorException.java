package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class InternalServerErrorException extends IotHubServiceException {
    public InternalServerErrorException() {
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.INTERNAL_SERVER_ERROR;
    }

    public InternalServerErrorException(String str) {
        super(str);
    }

    public InternalServerErrorException(String str, Throwable th) {
        super(str, th);
    }

    public InternalServerErrorException(Throwable th) {
        super(th);
    }
}
