package k.a.b.a.b.n;

import k.a.b.a.b.a;
import k.a.b.a.b.n.l;
import k.a.b.a.d.g;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.d;
import k.a.b.a.d.h;

public final class c implements l {
    public j a;

    public <E> void a(l.a<E> aVar, a aVar2, E e2) {
        a0 a0Var = (a0) aVar;
        if (a0Var != null) {
            Integer num = (Integer) e2;
            a0Var.Y = true;
            a0Var.o0 = 0;
            g gVar = g.CLOSED;
            a0Var.y = gVar;
            d dVar = a0Var.J;
            if (dVar != null) {
                dVar.y = gVar;
                j jVar = this.a;
                if (jVar != null) {
                    dVar.A.a(jVar);
                }
                d dVar2 = a0Var.J;
                dVar2.a(h.b.CONNECTION_REMOTE_CLOSE, dVar2);
                return;
            }
            return;
        }
        throw null;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("Close{error=");
        a2.append(this.a);
        a2.append('}');
        return a2.toString();
    }
}
