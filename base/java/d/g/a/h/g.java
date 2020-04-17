package d.g.a.h;

import d.g.a.b;
import d.g.a.e;
import d.g.a.h.c;
import d.g.a.h.d;
import java.util.ArrayList;

public class g extends d {
    public float k0 = -1.0f;
    public int l0 = -1;
    public int m0 = -1;
    public c n0 = this.t;
    public int o0;
    public boolean p0;

    public g() {
        this.o0 = 0;
        this.p0 = false;
        this.B.clear();
        this.B.add(this.n0);
        int length = this.A.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.A[i2] = this.n0;
        }
    }

    public c a(c.C0020c cVar) {
        switch (cVar.ordinal()) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
            case 3:
                if (this.o0 == 1) {
                    return this.n0;
                }
                break;
            case 2:
            case 4:
                if (this.o0 == 0) {
                    return this.n0;
                }
                break;
        }
        throw new AssertionError(cVar.name());
    }

    public boolean a() {
        return true;
    }

    public ArrayList<c> b() {
        return this.B;
    }

    public void c(e eVar) {
        if (this.D != null) {
            int b = eVar.b((Object) this.n0);
            if (this.o0 == 1) {
                this.I = b;
                this.J = 0;
                e(this.D.d());
                f(0);
                return;
            }
            this.I = 0;
            this.J = b;
            f(this.D.i());
            e(0);
        }
    }

    public void g(int i2) {
        if (this.o0 != i2) {
            this.o0 = i2;
            this.B.clear();
            if (this.o0 == 1) {
                this.n0 = this.s;
            } else {
                this.n0 = this.t;
            }
            this.B.add(this.n0);
            int length = this.A.length;
            for (int i3 = 0; i3 < length; i3++) {
                this.A[i3] = this.n0;
            }
        }
    }

    public void a(e eVar) {
        e eVar2 = (e) this.D;
        if (eVar2 != null) {
            c a = eVar2.a(c.C0020c.LEFT);
            c a2 = eVar2.a(c.C0020c.RIGHT);
            d dVar = this.D;
            boolean z = true;
            boolean z2 = dVar != null && dVar.C[0] == d.a.WRAP_CONTENT;
            if (this.o0 == 0) {
                a = eVar2.a(c.C0020c.TOP);
                a2 = eVar2.a(c.C0020c.BOTTOM);
                d dVar2 = this.D;
                if (dVar2 == null || dVar2.C[1] != d.a.WRAP_CONTENT) {
                    z = false;
                }
                z2 = z;
            }
            if (this.l0 != -1) {
                d.g.a.g a3 = eVar.a((Object) this.n0);
                eVar.a(a3, eVar.a((Object) a), this.l0, 6);
                if (z2) {
                    eVar.b(eVar.a((Object) a2), a3, 0, 5);
                }
            } else if (this.m0 != -1) {
                d.g.a.g a4 = eVar.a((Object) this.n0);
                d.g.a.g a5 = eVar.a((Object) a2);
                eVar.a(a4, a5, -this.m0, 6);
                if (z2) {
                    eVar.b(a4, eVar.a((Object) a), 0, 5);
                    eVar.b(a5, a4, 0, 5);
                }
            } else if (this.k0 != -1.0f) {
                d.g.a.g a6 = eVar.a((Object) this.n0);
                d.g.a.g a7 = eVar.a((Object) a);
                d.g.a.g a8 = eVar.a((Object) a2);
                float f2 = this.k0;
                boolean z3 = this.p0;
                b b = eVar.b();
                if (z3) {
                    b.a(eVar, 0);
                }
                b.f444d.a(a6, -1.0f);
                b.f444d.a(a7, 1.0f - f2);
                b.f444d.a(a8, f2);
                eVar.a(b);
            }
        }
    }

    public void a(int i2) {
        d dVar = this.D;
        if (dVar != null) {
            if (this.o0 == 1) {
                this.t.a.a(1, dVar.t.a, 0);
                this.v.a.a(1, dVar.t.a, 0);
                int i3 = this.l0;
                if (i3 != -1) {
                    this.s.a.a(1, dVar.s.a, i3);
                    this.u.a.a(1, dVar.s.a, this.l0);
                    return;
                }
                int i4 = this.m0;
                if (i4 != -1) {
                    this.s.a.a(1, dVar.u.a, -i4);
                    this.u.a.a(1, dVar.u.a, -this.m0);
                } else if (this.k0 != -1.0f && dVar.e() == d.a.FIXED) {
                    int i5 = (int) (((float) dVar.E) * this.k0);
                    this.s.a.a(1, dVar.s.a, i5);
                    this.u.a.a(1, dVar.s.a, i5);
                }
            } else {
                this.s.a.a(1, dVar.s.a, 0);
                this.u.a.a(1, dVar.s.a, 0);
                int i6 = this.l0;
                if (i6 != -1) {
                    this.t.a.a(1, dVar.t.a, i6);
                    this.v.a.a(1, dVar.t.a, this.l0);
                    return;
                }
                int i7 = this.m0;
                if (i7 != -1) {
                    this.t.a.a(1, dVar.v.a, -i7);
                    this.v.a.a(1, dVar.v.a, -this.m0);
                } else if (this.k0 != -1.0f && dVar.h() == d.a.FIXED) {
                    int i8 = (int) (((float) dVar.F) * this.k0);
                    this.t.a.a(1, dVar.t.a, i8);
                    this.v.a.a(1, dVar.t.a, i8);
                }
            }
        }
    }
}
