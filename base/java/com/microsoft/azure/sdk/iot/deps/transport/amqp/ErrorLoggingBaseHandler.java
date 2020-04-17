package com.microsoft.azure.sdk.iot.deps.transport.amqp;

import k.a.b.a.d.a;
import k.a.b.a.d.g0.g;
import k.a.b.a.d.h;
import k.f.b;
import k.f.c;

public class ErrorLoggingBaseHandler extends a {
    public static final b log = c.a((Class<?>) ErrorLoggingBaseHandler.class);
    public ProtonJExceptionParser protonJExceptionParser;

    public void onConnectionRemoteClose(h hVar) {
        g gVar = (g) hVar;
        if (gVar.U().J().equals(k.a.b.a.d.g.ACTIVE)) {
            ProtonJExceptionParser protonJExceptionParser2 = new ProtonJExceptionParser(gVar);
            this.protonJExceptionParser = protonJExceptionParser2;
            if (protonJExceptionParser2.getError() == null) {
                log.a("Amqp connection was closed remotely with an unknown exception");
            } else {
                log.d("Amqp connection was closed remotely with exception {} with description {}", this.protonJExceptionParser.getError(), this.protonJExceptionParser.getErrorDescription());
            }
        } else {
            log.e("Amqp connection closed remotely after being closed locally");
        }
    }

    public void onLinkRemoteClose(h hVar) {
        g gVar = (g) hVar;
        if (gVar.G().J().equals(k.a.b.a.d.g.ACTIVE)) {
            ProtonJExceptionParser protonJExceptionParser2 = new ProtonJExceptionParser(gVar);
            this.protonJExceptionParser = protonJExceptionParser2;
            if (protonJExceptionParser2.getError() == null) {
                log.a("Amqp link {} was closed remotely", (Object) gVar.G().getName());
            } else if (gVar.G().getName() != null) {
                log.a("Amqp link {} was closed remotely with exception {} with description {}", gVar.G().getName(), this.protonJExceptionParser.getError(), this.protonJExceptionParser.getErrorDescription());
            } else {
                log.d("Unknown amqp link was closed remotely with exception {} with description {}", this.protonJExceptionParser.getError(), this.protonJExceptionParser.getErrorDescription());
            }
        } else {
            log.d("Amqp link {} closed remotely after being closed locally", (Object) gVar.G().getName());
        }
    }

    public void onSessionRemoteClose(h hVar) {
        g gVar = (g) hVar;
        if (gVar.T().J().equals(k.a.b.a.d.g.ACTIVE)) {
            ProtonJExceptionParser protonJExceptionParser2 = new ProtonJExceptionParser(gVar);
            this.protonJExceptionParser = protonJExceptionParser2;
            if (protonJExceptionParser2.getError() == null) {
                log.a("Amqp session was closed remotely with an unknown exception");
            } else {
                log.d("Amqp session was closed remotely with exception {} with description {}", this.protonJExceptionParser.getError(), this.protonJExceptionParser.getErrorDescription());
            }
        } else {
            log.e("Amqp session closed remotely after being closed locally");
        }
    }

    public void onTransportError(h hVar) {
        ProtonJExceptionParser protonJExceptionParser2 = new ProtonJExceptionParser(hVar);
        this.protonJExceptionParser = protonJExceptionParser2;
        if (protonJExceptionParser2.getError() == null) {
            log.a("Amqp transport threw an unknown exception");
        } else {
            log.d("Amqp transport threw exception {} with description {}", this.protonJExceptionParser.getError(), this.protonJExceptionParser.getErrorDescription());
        }
    }
}
