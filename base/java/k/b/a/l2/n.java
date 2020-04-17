package k.b.a.l2;

import e.a.a.a.a;
import k.b.a.b0;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.h1;
import k.b.a.t;
import k.b.a.u;

public class n extends k.b.a.n {
    public int A = 1;
    public o x;
    public m y;
    public q z;

    public n(u uVar) {
        if (uVar.size() <= 3) {
            for (int i2 = 0; i2 != uVar.size(); i2++) {
                b0 a = b0.a((Object) uVar.a(i2));
                int i3 = a.x;
                if (i3 == 0) {
                    this.x = o.a(a, false);
                } else if (i3 == 1) {
                    this.y = m.a(a, false);
                } else if (i3 == 2) {
                    this.z = q.a(a, false);
                } else {
                    throw new IllegalArgumentException("unknown tag in Holder");
                }
            }
            this.A = 1;
            return;
        }
        StringBuilder a2 = a.a("Bad sequence size: ");
        a2.append(uVar.size());
        throw new IllegalArgumentException(a2.toString());
    }

    public t c() {
        if (this.A == 1) {
            f fVar = new f(3);
            o oVar = this.x;
            if (oVar != null) {
                fVar.a((e) new h1(false, 0, oVar));
            }
            m mVar = this.y;
            if (mVar != null) {
                fVar.a((e) new h1(false, 1, mVar));
            }
            q qVar = this.z;
            if (qVar != null) {
                fVar.a((e) new h1(false, 2, qVar));
            }
            return new e1(fVar);
        }
        m mVar2 = this.y;
        return mVar2 != null ? new h1(true, 1, mVar2) : new h1(true, 0, this.x);
    }

    public n(b0 b0Var) {
        int i2 = b0Var.x;
        if (i2 == 0) {
            this.x = o.a(b0Var, true);
        } else if (i2 == 1) {
            this.y = m.a(b0Var, true);
        } else {
            throw new IllegalArgumentException("unknown tag in Holder");
        }
        this.A = 0;
    }
}
