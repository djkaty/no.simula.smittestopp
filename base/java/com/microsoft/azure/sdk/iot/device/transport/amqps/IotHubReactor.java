package com.microsoft.azure.sdk.iot.device.transport.amqps;

import k.a.b.a.g.d;

public class IotHubReactor {
    public final d reactor;

    public IotHubReactor(d dVar) {
        this.reactor = dVar;
    }

    public void run() {
        this.reactor.b(10);
        this.reactor.start();
        do {
        } while (this.reactor.process());
        this.reactor.stop();
        this.reactor.process();
        this.reactor.a();
    }
}
