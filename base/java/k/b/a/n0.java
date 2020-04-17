package k.b.a;

import e.a.a.a.a;
import java.util.Enumeration;

public class n0 extends b0 {
    public n0(int i2, e eVar) {
        super(true, i2, eVar);
    }

    public n0(boolean z, int i2, e eVar) {
        super(z, i2, eVar);
    }

    public void a(r rVar, boolean z) {
        Enumeration enumeration;
        rVar.a(z, 160, this.x);
        rVar.a.write(128);
        if (!this.y) {
            e eVar = this.z;
            if (eVar instanceof p) {
                enumeration = eVar instanceof h0 ? ((h0) eVar).k() : new h0(((p) eVar).j()).k();
            } else if (eVar instanceof u) {
                enumeration = ((u) eVar).j();
            } else if (eVar instanceof x) {
                x xVar = (x) eVar;
                if (xVar != null) {
                    enumeration = new w(xVar);
                } else {
                    throw null;
                }
            } else {
                StringBuilder a = a.a("not implemented: ");
                a.append(this.z.getClass().getName());
                throw new h(a.toString());
            }
            rVar.a(enumeration);
        } else {
            rVar.a(this.z.c(), true);
        }
        rVar.a.write(0);
        rVar.a.write(0);
    }

    public int f() {
        int f2 = this.z.c().f();
        if (this.y) {
            return d2.a(f2) + d2.b(this.x) + f2;
        }
        return d2.b(this.x) + (f2 - 1);
    }

    public boolean g() {
        return this.y || this.z.c().g();
    }
}
