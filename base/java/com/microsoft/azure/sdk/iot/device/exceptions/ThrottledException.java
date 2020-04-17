package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class ThrottledException extends IotHubServiceException {
    public ThrottledException() {
        this.isRetryable = true;
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.THROTTLED;
    }

    public ThrottledException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public ThrottledException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public ThrottledException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
