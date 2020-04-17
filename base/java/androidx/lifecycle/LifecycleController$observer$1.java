package androidx.lifecycle;

import d.o.g;
import d.o.j;
import d.o.l;
import d.o.m;

public final class LifecycleController$observer$1 implements j {
    public final void a(l lVar, g.a aVar) {
        if (lVar == null) {
            h.k.b.g.a("source");
            throw null;
        } else if (aVar != null) {
            g lifecycle = lVar.getLifecycle();
            h.k.b.g.a((Object) lifecycle, "source.lifecycle");
            if (((m) lifecycle).b == g.b.DESTROYED) {
                throw null;
            }
            g lifecycle2 = lVar.getLifecycle();
            h.k.b.g.a((Object) lifecycle2, "source.lifecycle");
            m mVar = (m) lifecycle2;
            throw null;
        } else {
            h.k.b.g.a("<anonymous parameter 1>");
            throw null;
        }
    }
}
