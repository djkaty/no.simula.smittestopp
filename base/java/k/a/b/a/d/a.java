package k.a.b.a.d;

import java.util.Iterator;
import java.util.LinkedHashSet;
import k.a.b.a.d.g0.g;
import k.a.b.a.d.g0.r;

public class a implements d {
    public LinkedHashSet<l> children = new LinkedHashSet<>();

    public static l getHandler(u uVar) {
        Class<l> cls = l.class;
        return cls.cast(((r) uVar).a.get(cls));
    }

    public static void setHandler(u uVar, l lVar) {
        ((r) uVar).a.put(l.class, lVar);
    }

    public void add(l lVar) {
        this.children.add(lVar);
    }

    public Iterator<l> children() {
        return this.children.iterator();
    }

    public void handle(h hVar) {
        g gVar = (g) hVar;
        switch (gVar.w().ordinal()) {
            case 0:
                onReactorInit(gVar);
                return;
            case 1:
                onReactorQuiesced(gVar);
                return;
            case 2:
                onReactorFinal(gVar);
                return;
            case 3:
                onTimerTask(gVar);
                return;
            case 4:
                onConnectionInit(gVar);
                return;
            case 5:
                onConnectionBound(gVar);
                return;
            case 6:
                onConnectionUnbound(gVar);
                return;
            case 7:
                onConnectionLocalOpen(gVar);
                return;
            case 8:
                onConnectionRemoteOpen(gVar);
                return;
            case 9:
                onConnectionLocalClose(gVar);
                return;
            case 10:
                onConnectionRemoteClose(gVar);
                return;
            case 11:
                onConnectionFinal(gVar);
                return;
            case 12:
                onSessionInit(gVar);
                return;
            case 13:
                onSessionLocalOpen(gVar);
                return;
            case 14:
                onSessionRemoteOpen(gVar);
                return;
            case 15:
                onSessionLocalClose(gVar);
                return;
            case 16:
                onSessionRemoteClose(gVar);
                return;
            case 17:
                onSessionFinal(gVar);
                return;
            case 18:
                onLinkInit(gVar);
                return;
            case 19:
                onLinkLocalOpen(gVar);
                return;
            case 20:
                onLinkRemoteOpen(gVar);
                return;
            case 21:
                onLinkLocalDetach(gVar);
                return;
            case 22:
                onLinkRemoteDetach(gVar);
                return;
            case 23:
                onLinkLocalClose(gVar);
                return;
            case 24:
                onLinkRemoteClose(gVar);
                return;
            case 25:
                onLinkFlow(gVar);
                return;
            case 26:
                onLinkFinal(gVar);
                return;
            case 27:
                onDelivery(gVar);
                return;
            case 28:
                onTransport(gVar);
                return;
            case 29:
                onTransportError(gVar);
                return;
            case 30:
                onTransportHeadClosed(gVar);
                return;
            case 31:
                onTransportTailClosed(gVar);
                return;
            case 32:
                onTransportClosed(gVar);
                return;
            case 33:
                onSelectableInit(gVar);
                return;
            case 34:
                onSelectableWritable(gVar);
                return;
            case 35:
                onSelectableReadable(gVar);
                return;
            case 36:
                onSelectableWritable(gVar);
                return;
            case 37:
                onSelectableExpired(gVar);
                return;
            case 38:
                onSelectableError(gVar);
                return;
            case 39:
                onSelectableFinal(gVar);
                return;
            case 40:
                onUnhandled(gVar);
                return;
            default:
                return;
        }
    }

    public void onConnectionBound(h hVar) {
        onUnhandled(hVar);
    }

    public void onConnectionFinal(h hVar) {
        onUnhandled(hVar);
    }

    public void onConnectionInit(h hVar) {
        onUnhandled(hVar);
    }

    public void onConnectionLocalClose(h hVar) {
        onUnhandled(hVar);
    }

    public void onConnectionLocalOpen(h hVar) {
        onUnhandled(hVar);
    }

    public void onConnectionRemoteClose(h hVar) {
        onUnhandled(hVar);
    }

    public void onConnectionRemoteOpen(h hVar) {
        onUnhandled(hVar);
    }

    public void onConnectionUnbound(h hVar) {
        onUnhandled(hVar);
    }

    public void onDelivery(h hVar) {
        onUnhandled(hVar);
    }

    public void onLinkFinal(h hVar) {
        onUnhandled(hVar);
    }

    public void onLinkFlow(h hVar) {
        onUnhandled(hVar);
    }

    public void onLinkInit(h hVar) {
        onUnhandled(hVar);
    }

    public void onLinkLocalClose(h hVar) {
        onUnhandled(hVar);
    }

    public void onLinkLocalDetach(h hVar) {
        onUnhandled(hVar);
    }

    public void onLinkLocalOpen(h hVar) {
        onUnhandled(hVar);
    }

    public void onLinkRemoteClose(h hVar) {
        onUnhandled(hVar);
    }

    public void onLinkRemoteDetach(h hVar) {
        onUnhandled(hVar);
    }

    public void onLinkRemoteOpen(h hVar) {
        onUnhandled(hVar);
    }

    public void onReactorFinal(h hVar) {
        onUnhandled(hVar);
    }

    public void onReactorInit(h hVar) {
        onUnhandled(hVar);
    }

    public void onReactorQuiesced(h hVar) {
        onUnhandled(hVar);
    }

    public void onSelectableError(h hVar) {
        onUnhandled(hVar);
    }

    public void onSelectableExpired(h hVar) {
        onUnhandled(hVar);
    }

    public void onSelectableFinal(h hVar) {
        onUnhandled(hVar);
    }

    public void onSelectableInit(h hVar) {
        onUnhandled(hVar);
    }

    public void onSelectableReadable(h hVar) {
        onUnhandled(hVar);
    }

    public void onSelectableUpdated(h hVar) {
        onUnhandled(hVar);
    }

    public void onSelectableWritable(h hVar) {
        onUnhandled(hVar);
    }

    public void onSessionFinal(h hVar) {
        onUnhandled(hVar);
    }

    public void onSessionInit(h hVar) {
        onUnhandled(hVar);
    }

    public void onSessionLocalClose(h hVar) {
        onUnhandled(hVar);
    }

    public void onSessionLocalOpen(h hVar) {
        onUnhandled(hVar);
    }

    public void onSessionRemoteClose(h hVar) {
        onUnhandled(hVar);
    }

    public void onSessionRemoteOpen(h hVar) {
        onUnhandled(hVar);
    }

    public void onTimerTask(h hVar) {
        onUnhandled(hVar);
    }

    public void onTransport(h hVar) {
        onUnhandled(hVar);
    }

    public void onTransportClosed(h hVar) {
        onUnhandled(hVar);
    }

    public void onTransportError(h hVar) {
        onUnhandled(hVar);
    }

    public void onTransportHeadClosed(h hVar) {
        onUnhandled(hVar);
    }

    public void onTransportTailClosed(h hVar) {
        onUnhandled(hVar);
    }

    public void onUnhandled(h hVar) {
    }

    public static void setHandler(j jVar, l lVar) {
        ((r) jVar.q()).a.put(l.class, lVar);
    }

    public static l getHandler(j jVar) {
        Class<l> cls = l.class;
        return cls.cast(((r) jVar.q()).a.get(cls));
    }
}
