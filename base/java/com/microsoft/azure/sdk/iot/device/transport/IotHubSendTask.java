package com.microsoft.azure.sdk.iot.device.transport;

import k.f.b;
import k.f.c;

public final class IotHubSendTask implements Runnable {
    public static final String THREAD_NAME = "azure-iot-sdk-IotHubSendTask";
    public static final b log = c.a((Class<?>) IotHubSendTask.class);
    public final IotHubTransport transport;

    public IotHubSendTask(IotHubTransport iotHubTransport) {
        if (iotHubTransport != null) {
            this.transport = iotHubTransport;
            return;
        }
        throw new IllegalArgumentException("Parameter 'transport' must not be null");
    }

    public void run() {
        Thread.currentThread().setName(THREAD_NAME);
        try {
            this.transport.sendMessages();
            this.transport.invokeCallbacks();
        } catch (Throwable th) {
            log.b("Send task encountered exception while sending messages", th);
        }
    }
}
