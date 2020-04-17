package com.microsoft.azure.sdk.iot.deps.transport.amqp;

import k.a.b.a.g.d;

public class AmqpReactor {
    public static final int REACTOR_TIMEOUT = 10;
    public final d reactor;

    public AmqpReactor(d dVar) {
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
