package k.b.a.j2;

import java.util.Enumeration;
import k.b.a.b0;
import k.b.a.e;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;

public class a extends n {
    public u x;

    public a(u uVar) {
        this.x = uVar;
    }

    public final t a(int i2) {
        Enumeration j2 = this.x.j();
        while (j2.hasMoreElements()) {
            e eVar = (e) j2.nextElement();
            if (eVar instanceof b0) {
                b0 b0Var = (b0) eVar;
                if (b0Var.x == i2) {
                    t j3 = b0Var.j();
                    if (j3 != null) {
                        return j3;
                    }
                    throw null;
                }
            }
        }
        return null;
    }

    public t c() {
        return this.x;
    }
}
