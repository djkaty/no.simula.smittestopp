package com.microsoft.azure.sdk.iot.device.net;

public final class IotHubCompleteUri {
    public static final String COMPLETE_PATH_FORMAT = "/messages/devicebound/%s";
    public final IotHubUri uri;

    public IotHubCompleteUri(String str, String str2, String str3, String str4) {
        this.uri = new IotHubUri(str, str2, String.format("/messages/devicebound/%s", new Object[]{str3}), str4);
    }

    public String getHostname() {
        return this.uri.getHostname();
    }

    public String getPath() {
        return this.uri.getPath();
    }

    public String toString() {
        return this.uri.toString();
    }

    public IotHubCompleteUri() {
        this.uri = null;
    }
}
