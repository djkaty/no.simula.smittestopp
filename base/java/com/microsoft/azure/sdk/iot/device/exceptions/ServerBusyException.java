package com.microsoft.azure.sdk.iot.device.exceptions;

import com.microsoft.azure.sdk.iot.device.IotHubStatusCode;

public class ServerBusyException extends IotHubServiceException {
    public ServerBusyException() {
        this.isRetryable = true;
    }

    public IotHubStatusCode getStatusCode() {
        return IotHubStatusCode.SERVER_BUSY;
    }

    public ServerBusyException(String str) {
        super(str);
        this.isRetryable = true;
    }

    public ServerBusyException(String str, Throwable th) {
        super(str, th);
        this.isRetryable = true;
    }

    public ServerBusyException(Throwable th) {
        super(th);
        this.isRetryable = true;
    }
}
