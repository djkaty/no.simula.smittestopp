package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class PreconditionFailedException extends IotHubServiceException {
    public PreconditionFailedException() {
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.PRECONDITION_FAILED;
    }

    public PreconditionFailedException(String str) {
        super(str);
    }

    public PreconditionFailedException(String str, Throwable th) {
        super(str, th);
    }

    public PreconditionFailedException(Throwable th) {
        super(th);
    }
}
