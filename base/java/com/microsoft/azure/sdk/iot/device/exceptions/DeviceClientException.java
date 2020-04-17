package com.microsoft.azure.sdk.iot.device.exceptions;

public class DeviceClientException extends Exception {
    public DeviceClientException() {
    }

    public DeviceClientException(String str) {
        super(str);
    }

    public DeviceClientException(String str, Throwable th) {
        super(str, th);
    }

    public DeviceClientException(Throwable th) {
        super(th);
    }

    public DeviceClientException(String str, Throwable th, boolean z, boolean z2) {
        super(str, th, z, z2);
    }
}
