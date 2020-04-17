package k.b.a.l2;

import e.a.a.a.a;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.n;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;

public class d extends n {
    public e x;
    public a y;
    public r0 z;

    public d(u uVar) {
        if (uVar.size() == 3) {
            e a = uVar.a(0);
            this.x = a instanceof e ? (e) a : a != null ? new e(u.a((Object) a)) : null;
            this.y = a.a(uVar.a(1));
            this.z = r0.a(uVar.a(2));
            return;
        }
        StringBuilder a2 = a.a("Bad sequence size: ");
        a2.append(uVar.size());
        throw new IllegalArgumentException(a2.toString());
    }

    public t c() {
        f fVar = new f(3);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        fVar.a((e) this.z);
        return new e1(fVar);
    }
}
