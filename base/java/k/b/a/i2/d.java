package k.b.a.i2;

import java.util.Enumeration;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l2.a;
import k.b.a.n;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;

public class d extends n {
    public a x;
    public p y;

    public d(u uVar) {
        Enumeration j2 = uVar.j();
        this.x = a.a(j2.nextElement());
        this.y = p.a(j2.nextElement());
    }

    public t c() {
        f fVar = new f(2);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        return new e1(fVar);
    }
}
