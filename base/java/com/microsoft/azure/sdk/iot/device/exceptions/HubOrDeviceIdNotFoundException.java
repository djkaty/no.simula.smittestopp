package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class HubOrDeviceIdNotFoundException extends IotHubServiceException {
    public HubOrDeviceIdNotFoundException() {
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.HUB_OR_DEVICE_ID_NOT_FOUND;
    }

    public HubOrDeviceIdNotFoundException(String str) {
        super(str);
    }

    public HubOrDeviceIdNotFoundException(String str, Throwable th) {
        super(str, th);
    }

    public HubOrDeviceIdNotFoundException(Throwable th) {
        super(th);
    }
}
