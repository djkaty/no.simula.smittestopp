package k.a.b.a.g;

import k.a.b.a.d.a;
import k.a.b.a.d.f;
import k.a.b.a.d.g;
import k.a.b.a.d.h;
import k.a.b.a.d.n;

public class c extends a {
    public final void a(f fVar) {
        if (fVar.J() != g.CLOSED) {
            fVar.close();
        }
    }

    public final void b(f fVar) {
        if (fVar.J() == g.UNINITIALIZED) {
            fVar.open();
        }
    }

    public void onConnectionRemoteClose(h hVar) {
        a(((k.a.b.a.d.g0.g) hVar).U());
    }

    public void onConnectionRemoteOpen(h hVar) {
        b(((k.a.b.a.d.g0.g) hVar).U());
    }

    public void onLinkRemoteClose(h hVar) {
        a(((k.a.b.a.d.g0.g) hVar).G());
    }

    public void onLinkRemoteOpen(h hVar) {
        n G = ((k.a.b.a.d.g0.g) hVar).G();
        if (G.J() == g.UNINITIALIZED) {
            if (G.z() != null) {
                G.a(G.z().a());
            }
            if (G.r() != null) {
                G.a(G.r().a());
            }
        }
        b(G);
    }

    public void onSessionRemoteClose(h hVar) {
        a(((k.a.b.a.d.g0.g) hVar).T());
    }

    public void onSessionRemoteOpen(h hVar) {
        b(((k.a.b.a.d.g0.g) hVar).T());
    }
}
