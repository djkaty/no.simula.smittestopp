package k.a.b.a.b.n;

import k.a.b.a.b.a;
import k.a.b.a.b.h;
import k.a.b.a.b.n.l;
import k.a.b.a.d.g;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.e0;
import k.a.b.a.d.g0.k0;
import k.a.b.a.d.h;

public final class f implements l {
    public h a;
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public j f1611c;

    public <E> void a(l.a<E> aVar, a aVar2, E e2) {
        e0 a2;
        a0 a0Var = (a0) aVar;
        if (a0Var != null) {
            k0 k0Var = a0Var.N.get((Integer) e2);
            if (k0Var != null && (a2 = k0Var.a(this.a)) != null) {
                T t = a2.f1844f;
                a2.f1846h = true;
                k0Var.f1881k.remove(a2.f1841c);
                if (this.b) {
                    a0Var.J.a(h.b.LINK_REMOTE_CLOSE, t);
                } else {
                    a0Var.J.a(h.b.LINK_REMOTE_DETACH, t);
                }
                if (a2.f1841c != null) {
                    a2.f1844f.i();
                }
                a2.f1841c = null;
                t.y = g.CLOSED;
                j jVar = this.f1611c;
                if (jVar != null) {
                    t.A.a(jVar);
                    return;
                }
                return;
            }
            return;
        }
        throw null;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("Detach{handle=");
        a2.append(this.a);
        a2.append(", closed=");
        a2.append(this.b);
        a2.append(", error=");
        a2.append(this.f1611c);
        a2.append('}');
        return a2.toString();
    }
}
