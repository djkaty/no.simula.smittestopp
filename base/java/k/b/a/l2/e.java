package k.b.a.l2;

import e.a.a.a.a;
import k.b.a.b0;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.n;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;

public class e extends n {
    public a A;
    public l B;
    public c C;
    public u D;
    public r0 E;
    public k F;
    public l x;
    public n y;
    public b z;

    public e(u uVar) {
        int i2;
        n nVar;
        b bVar;
        n nVar2;
        if (uVar.size() < 6 || uVar.size() > 9) {
            StringBuilder a = a.a("Bad sequence size: ");
            a.append(uVar.size());
            throw new IllegalArgumentException(a.toString());
        }
        if (uVar.a(0) instanceof l) {
            this.x = l.a((Object) uVar.a(0));
            i2 = 1;
        } else {
            this.x = new l(0);
            i2 = 0;
        }
        k.b.a.e a2 = uVar.a(i2);
        c cVar = null;
        if (a2 instanceof n) {
            nVar = (n) a2;
        } else {
            if (a2 instanceof b0) {
                nVar2 = new n(b0.a((Object) a2));
            } else if (a2 != null) {
                nVar2 = new n(u.a((Object) a2));
            } else {
                nVar = null;
            }
            nVar = nVar2;
        }
        this.y = nVar;
        k.b.a.e a3 = uVar.a(i2 + 1);
        if (a3 == null || (a3 instanceof b)) {
            bVar = (b) a3;
        } else if (a3 instanceof w) {
            bVar = new b(w.a(a3));
        } else if (a3 instanceof m) {
            bVar = new b((m) a3);
        } else if (a3 instanceof b0) {
            bVar = new b(w.a(u.a((b0) a3, false)));
        } else if (a3 instanceof u) {
            bVar = new b(m.a(a3));
        } else {
            StringBuilder a4 = a.a("unknown object in factory: ");
            a4.append(a3.getClass().getName());
            throw new IllegalArgumentException(a4.toString());
        }
        this.z = bVar;
        this.A = a.a(uVar.a(i2 + 2));
        this.B = l.a((Object) uVar.a(i2 + 3));
        Object a5 = uVar.a(i2 + 4);
        if (a5 instanceof c) {
            cVar = (c) a5;
        } else if (a5 != null) {
            cVar = new c(u.a(a5));
        }
        this.C = cVar;
        this.D = u.a((Object) uVar.a(i2 + 5));
        for (int i3 = i2 + 6; i3 < uVar.size(); i3++) {
            k.b.a.e a6 = uVar.a(i3);
            if (a6 instanceof r0) {
                this.E = r0.a(uVar.a(i3));
            } else if ((a6 instanceof u) || (a6 instanceof k)) {
                this.F = k.a(uVar.a(i3));
            }
        }
    }

    public t c() {
        f fVar = new f(9);
        if (this.x.k() != 0) {
            fVar.a((k.b.a.e) this.x);
        }
        fVar.a((k.b.a.e) this.y);
        fVar.a((k.b.a.e) this.z);
        fVar.a((k.b.a.e) this.A);
        fVar.a((k.b.a.e) this.B);
        fVar.a((k.b.a.e) this.C);
        fVar.a((k.b.a.e) this.D);
        r0 r0Var = this.E;
        if (r0Var != null) {
            fVar.a((k.b.a.e) r0Var);
        }
        k kVar = this.F;
        if (kVar != null) {
            fVar.a((k.b.a.e) kVar);
        }
        return new e1(fVar);
    }
}
