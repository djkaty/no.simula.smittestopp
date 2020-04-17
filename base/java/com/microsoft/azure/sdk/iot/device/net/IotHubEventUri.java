package com.microsoft.azure.sdk.iot.device.net;

public final class IotHubEventUri {
    public static final String EVENT_PATH = "/messages/events";
    public final IotHubUri uri;

    public IotHubEventUri(String str, String str2, String str3) {
        this.uri = new IotHubUri(str, str2, EVENT_PATH, str3);
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

    public IotHubEventUri() {
        this.uri = null;
    }
}
