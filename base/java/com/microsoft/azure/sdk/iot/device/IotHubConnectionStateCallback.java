package com.microsoft.azure.sdk.iot.device;

public interface IotHubConnectionStateCallback {
    void execute(IotHubConnectionState iotHubConnectionState, Object obj);
}
