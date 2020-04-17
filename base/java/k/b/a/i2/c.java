package k.b.a.i2;

import e.a.a.a.a;
import java.util.NoSuchElementException;
import k.b.a.b0;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.h1;
import k.b.a.l;
import k.b.a.l2.s;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;
import k.b.a.x;

public class c extends n {
    public x A = null;
    public l x = new l(0);
    public k.b.a.k2.c y;
    public s z;

    public c(u uVar) {
        a aVar;
        this.x = (l) uVar.a(0);
        this.y = k.b.a.k2.c.a((Object) uVar.a(1));
        this.z = s.a(uVar.a(2));
        if (uVar.size() > 3) {
            this.A = x.a((b0) uVar.a(3), false);
        }
        x xVar = this.A;
        if (xVar != null) {
            int i2 = 0;
            while (true) {
                if (!(i2 < xVar.x.length)) {
                    break;
                }
                e[] eVarArr = xVar.x;
                if (i2 < eVarArr.length) {
                    int i3 = i2 + 1;
                    e eVar = eVarArr[i2];
                    if (eVar == null || (eVar instanceof a)) {
                        aVar = (a) eVar;
                    } else if (eVar instanceof u) {
                        aVar = new a((u) eVar);
                    } else {
                        StringBuilder a = a.a("unknown object in factory: ");
                        a.append(eVar.getClass().getName());
                        throw new IllegalArgumentException(a.toString());
                    }
                    if (!aVar.x.b(e.f1979j) || aVar.y.x.length == 1) {
                        i2 = i3;
                    } else {
                        throw new IllegalArgumentException("challengePassword attribute must have one value");
                    }
                } else {
                    throw new NoSuchElementException("ASN1Set Enumeration");
                }
            }
        }
        if (this.y == null || this.x == null || this.z == null) {
            throw new IllegalArgumentException("Not all mandatory fields set in CertificationRequestInfo generator.");
        }
    }

    public t c() {
        f fVar = new f(4);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        fVar.a((e) this.z);
        x xVar = this.A;
        if (xVar != null) {
            fVar.a((e) new h1(false, 0, xVar));
        }
        return new e1(fVar);
    }
}
