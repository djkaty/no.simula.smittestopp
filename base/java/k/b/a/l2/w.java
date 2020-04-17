package k.b.a.l2;

import e.a.a.a.a;
import k.b.a.b0;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.h1;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;

public class w extends n {
    public m x;
    public o y;
    public q z;

    public w(u uVar) {
        int i2;
        if (uVar.size() <= 3) {
            if (!(uVar.a(0) instanceof b0)) {
                this.x = m.a(uVar.a(0));
                i2 = 1;
            } else {
                i2 = 0;
            }
            while (i2 != uVar.size()) {
                b0 a = b0.a((Object) uVar.a(i2));
                int i3 = a.x;
                if (i3 == 0) {
                    this.y = o.a(a, false);
                } else if (i3 == 1) {
                    this.z = q.a(a, false);
                } else {
                    StringBuilder a2 = a.a("Bad tag number: ");
                    a2.append(a.x);
                    throw new IllegalArgumentException(a2.toString());
                }
                i2++;
            }
            return;
        }
        StringBuilder a3 = a.a("Bad sequence size: ");
        a3.append(uVar.size());
        throw new IllegalArgumentException(a3.toString());
    }

    public static w a(Object obj) {
        if (obj instanceof w) {
            return (w) obj;
        }
        if (obj != null) {
            return new w(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(3);
        m mVar = this.x;
        if (mVar != null) {
            fVar.a((e) mVar);
        }
        o oVar = this.y;
        if (oVar != null) {
            fVar.a((e) new h1(false, 0, oVar));
        }
        q qVar = this.z;
        if (qVar != null) {
            fVar.a((e) new h1(false, 1, qVar));
        }
        return new e1(fVar);
    }
}
