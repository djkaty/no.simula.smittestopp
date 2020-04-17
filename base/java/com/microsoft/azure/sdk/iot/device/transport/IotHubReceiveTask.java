package com.microsoft.azure.sdk.iot.device.transport;

import k.f.b;
import k.f.c;

public final class IotHubReceiveTask implements Runnable {
    public static final String THREAD_NAME = "azure-iot-sdk-IotHubReceiveTask";
    public static final b log = c.a((Class<?>) IotHubReceiveTask.class);
    public final IotHubTransport transport;

    public IotHubReceiveTask(IotHubTransport iotHubTransport) {
        if (iotHubTransport != null) {
            this.transport = iotHubTransport;
            return;
        }
        throw new IllegalArgumentException("Parameter 'transport' must not be null");
    }

    public void run() {
        Thread.currentThread().setName(THREAD_NAME);
        try {
            this.transport.handleMessage();
        } catch (Throwable th) {
            log.b("Receive task thread encountered exception while processing received messages", th);
        }
    }
}
