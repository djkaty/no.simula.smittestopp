package com.microsoft.azure.sdk.iot.device.net;

public final class IotHubMessageUri {
    public static final String MESSAGE_PATH = "/messages/devicebound";
    public final IotHubUri uri;

    public IotHubMessageUri(String str, String str2, String str3) {
        this.uri = new IotHubUri(str, str2, MESSAGE_PATH, str3);
    }

    public String getHostname() {
        IotHubUri iotHubUri = this.uri;
        if (iotHubUri != null) {
            return iotHubUri.getHostname();
        }
        return null;
    }

    public String getPath() {
        IotHubUri iotHubUri = this.uri;
        if (iotHubUri != null) {
            return iotHubUri.getPath();
        }
        return null;
    }

    public String toString() {
        IotHubUri iotHubUri = this.uri;
        if (iotHubUri != null) {
            return iotHubUri.toString();
        }
        return null;
    }

    public IotHubMessageUri() {
        this.uri = null;
    }
}
