package com.microsoft.azure.sdk.iot.device.net;

public final class IotHubAbandonUri {
    public static final String ABANDON_PATH_FORMAT = "/messages/devicebound/%s/abandon";
    public final IotHubUri uri;

    public IotHubAbandonUri(String str, String str2, String str3, String str4) {
        this.uri = new IotHubUri(str, str2, String.format(ABANDON_PATH_FORMAT, new Object[]{str3}), str4);
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

    public IotHubAbandonUri() {
        this.uri = null;
    }
}
