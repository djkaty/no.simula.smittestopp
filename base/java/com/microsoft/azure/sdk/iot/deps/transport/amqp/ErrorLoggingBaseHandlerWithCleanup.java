package com.microsoft.azure.sdk.iot.deps.transport.amqp;

import k.a.b.a.d.g0.g;
import k.a.b.a.d.h;
import k.f.b;
import k.f.c;

public class ErrorLoggingBaseHandlerWithCleanup extends ErrorLoggingBaseHandler {
    public static final b log = c.a((Class<?>) ErrorLoggingBaseHandlerWithCleanup.class);

    public void onConnectionLocalClose(h hVar) {
        super.onConnectionLocalClose(hVar);
        g gVar = (g) hVar;
        if (gVar.U().e() == k.a.b.a.d.g.CLOSED) {
            log.e("Stopping reactor now that amqp connection is closed locally and remotely");
            gVar.b().stop();
        }
    }

    public void onConnectionLocalOpen(h hVar) {
        super.onConnectionLocalOpen(hVar);
        log.e("Amqp Connection opened locally");
    }

    public void onConnectionRemoteClose(h hVar) {
        super.onConnectionRemoteClose(hVar);
        g gVar = (g) hVar;
        if (gVar.U().J() == k.a.b.a.d.g.CLOSED) {
            log.e("Stopping reactor now that connection is closed locally and remotely");
            gVar.b().stop();
            return;
        }
        log.b("Closing amqp connection locally since amqp connection was closed remotely");
        gVar.U().close();
    }

    public void onConnectionRemoteOpen(h hVar) {
        super.onConnectionRemoteOpen(hVar);
        log.b("Amqp Connection opened remotely");
    }

    public void onLinkLocalClose(h hVar) {
        super.onLinkLocalClose(hVar);
        log.b("Closing amqp session locally since amqp link was closed locally");
        ((g) hVar).T().close();
    }

    public void onLinkLocalOpen(h hVar) {
        super.onLinkLocalOpen(hVar);
        log.d("Amqp Link with name {} opened locally", (Object) ((g) hVar).G().getName());
    }

    public void onLinkRemoteClose(h hVar) {
        super.onLinkRemoteClose(hVar);
        g gVar = (g) hVar;
        if (gVar.G().J() == k.a.b.a.d.g.ACTIVE) {
            log.b("Closing amqp link locally since amqp link was closed remotely");
            gVar.G().close();
        }
    }

    public void onLinkRemoteOpen(h hVar) {
        super.onLinkRemoteOpen(hVar);
        log.e("Amqp Link with name {} opened remotely", (Object) ((g) hVar).G().getName());
    }

    public void onSessionLocalClose(h hVar) {
        super.onSessionLocalClose(hVar);
        log.b("Closing amqp connection locally since amqp session was closed locally");
        ((g) hVar).U().close();
    }

    public void onSessionLocalOpen(h hVar) {
        super.onSessionLocalOpen(hVar);
        log.e("Amqp Session opened locally");
    }

    public void onSessionRemoteClose(h hVar) {
        super.onSessionRemoteClose(hVar);
        g gVar = (g) hVar;
        if (gVar.T().J() == k.a.b.a.d.g.ACTIVE) {
            log.b("Closing amqp session locally since amqp session was closed remotely");
            gVar.T().close();
        }
    }

    public void onSessionRemoteOpen(h hVar) {
        super.onSessionRemoteOpen(hVar);
        log.b("Amqp Session opened remotely");
    }

    public void onTransportError(h hVar) {
        super.onTransportError(hVar);
        g gVar = (g) hVar;
        if (gVar.U() != null) {
            log.b("Closing amqp connection locally since amqp transport error was thrown");
            gVar.U().close();
        }
    }
}
