package com.microsoft.azure.sdk.iot.device.DeviceTwin;

public interface DeviceMethodCallback {
    DeviceMethodData call(String str, Object obj, Object obj2);
}
