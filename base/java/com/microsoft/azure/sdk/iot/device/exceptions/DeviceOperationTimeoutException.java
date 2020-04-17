package com.microsoft.azure.sdk.iot.device.exceptions;

public class DeviceOperationTimeoutException extends DeviceClientException {
    public DeviceOperationTimeoutException() {
    }

    public DeviceOperationTimeoutException(String str) {
        super(str);
    }

    public DeviceOperationTimeoutException(String str, Throwable th) {
        super(str, th);
    }

    public DeviceOperationTimeoutException(Throwable th) {
        super(th);
    }
}
