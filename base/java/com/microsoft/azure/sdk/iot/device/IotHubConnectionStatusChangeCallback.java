package com.microsoft.azure.sdk.iot.device;

import com.microsoft.azure.sdk.iot.device.transport.IotHubConnectionStatus;

public interface IotHubConnectionStatusChangeCallback {
    void execute(IotHubConnectionStatus iotHubConnectionStatus, IotHubConnectionStatusChangeReason iotHubConnectionStatusChangeReason, Throwable th, Object obj);
}
