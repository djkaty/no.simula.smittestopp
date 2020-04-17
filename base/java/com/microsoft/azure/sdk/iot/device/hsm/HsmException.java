package com.microsoft.azure.sdk.iot.device.hsm;

import com.microsoft.azure.sdk.iot.device.exceptions.DeviceClientException;

public class HsmException extends DeviceClientException {
    public HsmException() {
    }

    public HsmException(String str) {
        super(str);
    }

    public HsmException(String str, Throwable th) {
        super(str, th);
    }

    public HsmException(Throwable th) {
        super(th);
    }

    public HsmException(String str, Throwable th, boolean z, boolean z2) {
        super(str, th, z, z2);
    }
}
