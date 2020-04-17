package k.a.b.a.b.n;

import k.a.b.a.b.a;
import k.a.b.a.b.n.l;
import k.a.b.a.d.g;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.k0;
import k.a.b.a.d.g0.y;
import k.a.b.a.d.h;

public final class i implements l {
    public j a;

    public <E> void a(l.a<E> aVar, a aVar2, E e2) {
        a0 a0Var = (a0) aVar;
        if (a0Var != null) {
            Integer num = (Integer) e2;
            k0 k0Var = a0Var.N.get(num);
            if (k0Var != null) {
                a0Var.N.remove(num);
                k0Var.s = true;
                k0Var.c();
                y yVar = k0Var.b;
                yVar.y = g.CLOSED;
                j jVar = this.a;
                if (jVar != null) {
                    yVar.A.a(jVar);
                }
                a0Var.J.a(h.b.SESSION_REMOTE_CLOSE, yVar);
                return;
            }
            return;
        }
        throw null;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("End{error=");
        a2.append(this.a);
        a2.append('}');
        return a2.toString();
    }
}
