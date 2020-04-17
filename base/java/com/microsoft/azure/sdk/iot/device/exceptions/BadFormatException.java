package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class BadFormatException extends IotHubServiceException {
    public BadFormatException() {
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.BAD_FORMAT;
    }

    public BadFormatException(String str) {
        super(str);
    }

    public BadFormatException(String str, Throwable th) {
        super(str, th);
    }

    public BadFormatException(Throwable th) {
        super(th);
    }
}
