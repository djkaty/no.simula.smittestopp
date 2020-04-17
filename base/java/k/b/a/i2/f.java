package k.b.a.i2;

import java.util.Enumeration;
import k.b.a.a1;
import k.b.a.b;
import k.b.a.b0;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.h1;
import k.b.a.l;
import k.b.a.l2.a;
import k.b.a.n;
import k.b.a.p;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;
import k.b.a.x;

public class f extends n {
    public x A;
    public b B;
    public l x;
    public a y;
    public p z;

    public f(a aVar, e eVar, x xVar, byte[] bArr) {
        this.x = new l(bArr != null ? k.b.j.b.b : k.b.j.b.a);
        this.y = aVar;
        this.z = new a1(eVar);
        this.A = xVar;
        this.B = bArr == null ? null : new r0(bArr);
    }

    public f(u uVar) {
        Enumeration j2 = uVar.j();
        l a = l.a(j2.nextElement());
        this.x = a;
        int k2 = a.k();
        if (k2 < 0 || k2 > 1) {
            throw new IllegalArgumentException("invalid version for private key info");
        }
        this.y = a.a(j2.nextElement());
        this.z = p.a(j2.nextElement());
        int i2 = -1;
        while (j2.hasMoreElements()) {
            b0 b0Var = (b0) j2.nextElement();
            int i3 = b0Var.x;
            if (i3 > i2) {
                if (i3 == 0) {
                    this.A = x.a(b0Var, false);
                } else if (i3 != 1) {
                    throw new IllegalArgumentException("unknown optional field in private key info");
                } else if (k2 >= 1) {
                    this.B = r0.a(b0Var, false);
                } else {
                    throw new IllegalArgumentException("'publicKey' requires version v2(1) or later");
                }
                i2 = i3;
            } else {
                throw new IllegalArgumentException("invalid optional field in private key info");
            }
        }
    }

    public static f a(Object obj) {
        if (obj instanceof f) {
            return (f) obj;
        }
        if (obj != null) {
            return new f(u.a(obj));
        }
        return null;
    }

    public t c() {
        k.b.a.f fVar = new k.b.a.f(5);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        fVar.a((e) this.z);
        x xVar = this.A;
        if (xVar != null) {
            fVar.a((e) new h1(false, 0, xVar));
        }
        b bVar = this.B;
        if (bVar != null) {
            fVar.a((e) new h1(false, 1, bVar));
        }
        return new e1(fVar);
    }

    public e f() {
        return t.a(this.z.j());
    }
}
