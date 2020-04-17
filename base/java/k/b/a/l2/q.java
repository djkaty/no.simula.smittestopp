package k.b.a.l2;

import e.a.a.a.a;
import k.b.a.b0;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.g;
import k.b.a.n;
import k.b.a.o;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;

public class q extends n {
    public r0 A;
    public g x;
    public o y;
    public a z;

    public q(u uVar) {
        g gVar;
        if (uVar.size() > 4 || uVar.size() < 3) {
            StringBuilder a = a.a("Bad sequence size: ");
            a.append(uVar.size());
            throw new IllegalArgumentException(a.toString());
        }
        int i2 = 0;
        e a2 = uVar.a(0);
        if (a2 == null || (a2 instanceof g)) {
            gVar = (g) a2;
        } else if (a2 instanceof byte[]) {
            try {
                gVar = (g) t.a((byte[]) a2);
            } catch (Exception e2) {
                throw new IllegalArgumentException(a.a(e2, a.a("encoding error in getInstance: ")));
            }
        } else {
            StringBuilder a3 = a.a("illegal object in getInstance: ");
            a3.append(a2.getClass().getName());
            throw new IllegalArgumentException(a3.toString());
        }
        this.x = gVar;
        if (uVar.size() == 4) {
            this.y = o.a((Object) uVar.a(1));
            i2 = 1;
        }
        this.z = a.a(uVar.a(i2 + 1));
        this.A = r0.a(uVar.a(i2 + 2));
    }

    public static q a(b0 b0Var, boolean z2) {
        u a = u.a(b0Var, z2);
        if (a instanceof q) {
            return (q) a;
        }
        if (a != null) {
            return new q(u.a((Object) a));
        }
        return null;
    }

    public t c() {
        f fVar = new f(4);
        fVar.a((e) this.x);
        o oVar = this.y;
        if (oVar != null) {
            fVar.a((e) oVar);
        }
        fVar.a((e) this.z);
        fVar.a((e) this.A);
        return new e1(fVar);
    }
}
