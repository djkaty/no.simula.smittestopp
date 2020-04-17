package k.b.a.l2;

import e.a.a.a.a;
import k.b.a.b0;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.n;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;

public class o extends n {
    public m x;
    public l y;
    public r0 z;

    public o(u uVar) {
        if (uVar.size() == 2 || uVar.size() == 3) {
            this.x = m.a(uVar.a(0));
            this.y = l.a((Object) uVar.a(1));
            if (uVar.size() == 3) {
                this.z = r0.a(uVar.a(2));
                return;
            }
            return;
        }
        StringBuilder a = a.a("Bad sequence size: ");
        a.append(uVar.size());
        throw new IllegalArgumentException(a.toString());
    }

    public static o a(b0 b0Var, boolean z2) {
        u a = u.a(b0Var, z2);
        if (a instanceof o) {
            return (o) a;
        }
        if (a != null) {
            return new o(u.a((Object) a));
        }
        return null;
    }

    public t c() {
        f fVar = new f(3);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        r0 r0Var = this.z;
        if (r0Var != null) {
            fVar.a((e) r0Var);
        }
        return new e1(fVar);
    }
}
