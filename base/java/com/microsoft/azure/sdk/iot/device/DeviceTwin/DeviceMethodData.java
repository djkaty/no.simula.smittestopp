package com.microsoft.azure.sdk.iot.device.DeviceTwin;

public class DeviceMethodData {
    public String responseMessage;
    public int status;

    public DeviceMethodData(int i2, String str) {
        this.status = i2;
        this.responseMessage = str;
    }

    public String getResponseMessage() {
        return this.responseMessage;
    }

    public int getStatus() {
        return this.status;
    }

    public void setResponseMessage(String str) {
        this.responseMessage = str;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }
}
