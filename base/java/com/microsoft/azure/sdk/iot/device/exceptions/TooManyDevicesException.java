package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class TooManyDevicesException extends IotHubServiceException {
    public TooManyDevicesException() {
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.TOO_MANY_DEVICES;
    }

    public TooManyDevicesException(String str) {
        super(str);
    }

    public TooManyDevicesException(String str, Throwable th) {
        super(str, th);
    }

    public TooManyDevicesException(Throwable th) {
        super(th);
    }
}
