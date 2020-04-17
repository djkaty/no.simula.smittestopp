package k.b.a.i2;

import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l2.a;
import k.b.a.n;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;

public class b extends n {
    public c x = null;
    public a y = null;
    public r0 z = null;

    public b() {
    }

    public b(u uVar) {
        c cVar = null;
        Object a = uVar.a(0);
        if (a instanceof c) {
            cVar = (c) a;
        } else if (a != null) {
            cVar = new c(u.a(a));
        }
        this.x = cVar;
        this.y = a.a(uVar.a(1));
        this.z = (r0) uVar.a(2);
    }

    public t c() {
        f fVar = new f(3);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        fVar.a((e) this.z);
        return new e1(fVar);
    }
}
