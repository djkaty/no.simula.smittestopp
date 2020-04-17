package k.b.a.l2;

import e.a.a.a.a;
import k.b.a.b0;
import k.b.a.d0;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.h1;
import k.b.a.j;
import k.b.a.k2.c;
import k.b.a.l;
import k.b.a.n;
import k.b.a.u;

public class t extends n {
    public v A;
    public v B;
    public u C;
    public k D;
    public l x;
    public a y;
    public c z;

    public t(u uVar) {
        if (uVar.size() < 3 || uVar.size() > 7) {
            StringBuilder a = a.a("Bad sequence size: ");
            a.append(uVar.size());
            throw new IllegalArgumentException(a.toString());
        }
        int i2 = 0;
        if (uVar.a(0) instanceof l) {
            this.x = l.a((Object) uVar.a(0));
            i2 = 1;
        } else {
            this.x = null;
        }
        int i3 = i2 + 1;
        this.y = a.a(uVar.a(i2));
        int i4 = i3 + 1;
        this.z = c.a((Object) uVar.a(i3));
        int i5 = i4 + 1;
        this.A = v.a(uVar.a(i4));
        if (i5 < uVar.size() && ((uVar.a(i5) instanceof d0) || (uVar.a(i5) instanceof j) || (uVar.a(i5) instanceof v))) {
            this.B = v.a(uVar.a(i5));
            i5++;
        }
        if (i5 < uVar.size() && !(uVar.a(i5) instanceof b0)) {
            this.C = u.a((Object) uVar.a(i5));
            i5++;
        }
        if (i5 < uVar.size() && (uVar.a(i5) instanceof b0)) {
            this.D = k.a(u.a((b0) uVar.a(i5), true));
        }
    }

    public k.b.a.t c() {
        f fVar = new f(7);
        l lVar = this.x;
        if (lVar != null) {
            fVar.a((e) lVar);
        }
        fVar.a((e) this.y);
        fVar.a((e) this.z);
        fVar.a((e) this.A);
        v vVar = this.B;
        if (vVar != null) {
            fVar.a((e) vVar);
        }
        u uVar = this.C;
        if (uVar != null) {
            fVar.a((e) uVar);
        }
        k kVar = this.D;
        if (kVar != null) {
            fVar.a((e) new h1(0, kVar));
        }
        return new e1(fVar);
    }
}
