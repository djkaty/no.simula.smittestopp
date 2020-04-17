package com.microsoft.azure.sdk.iot.device.exceptions;

public class TransportException extends DeviceClientException {
    public IotHubService iotHubService = IotHubService.NOT_APPLICABLE;
    public boolean isRetryable = false;

    public enum IotHubService {
        TWIN,
        TELEMETRY,
        METHODS,
        FILE_UPLOAD,
        NOT_APPLICABLE
    }

    public TransportException() {
    }

    public IotHubService getIotHubService() {
        return this.iotHubService;
    }

    public boolean isRetryable() {
        return this.isRetryable;
    }

    public void setIotHubService(IotHubService iotHubService2) {
        this.iotHubService = iotHubService2;
    }

    public void setRetryable(boolean z) {
        this.isRetryable = z;
    }

    public TransportException(String str) {
        super(str);
    }

    public TransportException(String str, Throwable th) {
        super(str, th);
    }

    public TransportException(Throwable th) {
        super(th);
    }
}
