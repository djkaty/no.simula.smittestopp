package com.microsoft.azure.sdk.iot.device;

public interface IotHubEventCallback {
    void execute(IotHubStatusCode iotHubStatusCode, Object obj);
}
