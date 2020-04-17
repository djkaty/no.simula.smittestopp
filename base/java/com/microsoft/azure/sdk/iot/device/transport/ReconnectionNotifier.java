package com.microsoft.azure.sdk.iot.device.transport;

import e.a.a.a.a;

public final class ReconnectionNotifier {
    public static final String THREAD_NAME = "azure-iot-sdk-ReconnectionTask";

    public static void notifyDisconnectAsync(final Throwable th, final IotHubListener iotHubListener, final String str) {
        new Thread(new Runnable() {
            public void run() {
                iotHubListener.onConnectionLost(th, str);
            }
        }, a.b("azure-iot-sdk-ReconnectionTask:", str)).start();
    }
}
