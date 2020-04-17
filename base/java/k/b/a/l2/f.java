package k.b.a.l2;

import k.b.a.e;
import k.b.a.n;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;

public class f extends n {
    public u x;
    public u y;

    public f(u uVar) {
        this.x = uVar;
        if (uVar.size() == 3) {
            e a = uVar.a(0);
            this.y = a instanceof u ? (u) a : a != null ? new u(u.a((Object) a)) : null;
            a.a(uVar.a(1));
            r0.a(uVar.a(2));
            return;
        }
        throw new IllegalArgumentException("sequence wrong size for a certificate");
    }

    public t c() {
        return this.x;
    }
}
