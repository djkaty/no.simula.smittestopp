package k.b.a.l2;

import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.n;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;

public class g extends n {
    public boolean A = false;
    public int B;
    public t x;
    public a y;
    public r0 z;

    public g(u uVar) {
        if (uVar.size() == 3) {
            e a = uVar.a(0);
            this.x = a instanceof t ? (t) a : a != null ? new t(u.a((Object) a)) : null;
            this.y = a.a(uVar.a(1));
            this.z = r0.a(uVar.a(2));
            return;
        }
        throw new IllegalArgumentException("sequence wrong size for CertificateList");
    }

    public t c() {
        f fVar = new f(3);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        fVar.a((e) this.z);
        return new e1(fVar);
    }

    public int hashCode() {
        if (!this.A) {
            this.B = super.hashCode();
            this.A = true;
        }
        return this.B;
    }
}
