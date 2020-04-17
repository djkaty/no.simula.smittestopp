package d.g.a.h;

import d.g.a.b;
import d.g.a.e;
import d.g.a.g;
import d.g.a.h.d;
import java.util.ArrayList;

public class a extends h {
    public int m0 = 0;
    public ArrayList<j> n0 = new ArrayList<>(4);
    public boolean o0 = true;

    public void a(int i2) {
        j jVar;
        j jVar2;
        d dVar = this.D;
        if (dVar != null && ((e) dVar).g(2)) {
            int i3 = this.m0;
            if (i3 == 0) {
                jVar = this.s.a;
            } else if (i3 == 1) {
                jVar = this.u.a;
            } else if (i3 == 2) {
                jVar = this.t.a;
            } else if (i3 == 3) {
                jVar = this.v.a;
            } else {
                return;
            }
            jVar.f507h = 5;
            int i4 = this.m0;
            if (i4 == 0 || i4 == 1) {
                this.t.a.a((j) null, 0.0f);
                this.v.a.a((j) null, 0.0f);
            } else {
                this.s.a.a((j) null, 0.0f);
                this.u.a.a((j) null, 0.0f);
            }
            this.n0.clear();
            for (int i5 = 0; i5 < this.l0; i5++) {
                d dVar2 = this.k0[i5];
                if (this.o0 || dVar2.a()) {
                    int i6 = this.m0;
                    if (i6 == 0) {
                        jVar2 = dVar2.s.a;
                    } else if (i6 == 1) {
                        jVar2 = dVar2.u.a;
                    } else if (i6 == 2) {
                        jVar2 = dVar2.t.a;
                    } else if (i6 != 3) {
                        jVar2 = null;
                    } else {
                        jVar2 = dVar2.v.a;
                    }
                    if (jVar2 != null) {
                        this.n0.add(jVar2);
                        jVar2.a.add(jVar);
                    }
                }
            }
        }
    }

    public boolean a() {
        return true;
    }

    public void l() {
        super.l();
        this.n0.clear();
    }

    public void m() {
        j jVar;
        float f2;
        j jVar2;
        int i2 = this.m0;
        float f3 = Float.MAX_VALUE;
        if (i2 != 0) {
            if (i2 == 1) {
                jVar = this.u.a;
            } else if (i2 == 2) {
                jVar = this.t.a;
            } else if (i2 == 3) {
                jVar = this.v.a;
            } else {
                return;
            }
            f3 = 0.0f;
        } else {
            jVar = this.s.a;
        }
        int size = this.n0.size();
        j jVar3 = null;
        int i3 = 0;
        while (i3 < size) {
            j jVar4 = this.n0.get(i3);
            if (jVar4.b == 1) {
                int i4 = this.m0;
                if (i4 == 0 || i4 == 2) {
                    f2 = jVar4.f506g;
                    if (f2 < f3) {
                        jVar2 = jVar4.f505f;
                    } else {
                        i3++;
                    }
                } else {
                    f2 = jVar4.f506g;
                    if (f2 > f3) {
                        jVar2 = jVar4.f505f;
                    } else {
                        i3++;
                    }
                }
                jVar3 = jVar2;
                f3 = f2;
                i3++;
            } else {
                return;
            }
        }
        jVar.f505f = jVar3;
        jVar.f506g = f3;
        jVar.a();
        int i5 = this.m0;
        if (i5 == 0) {
            this.u.a.a(jVar3, f3);
        } else if (i5 == 1) {
            this.s.a.a(jVar3, f3);
        } else if (i5 == 2) {
            this.v.a.a(jVar3, f3);
        } else if (i5 == 3) {
            this.t.a.a(jVar3, f3);
        }
    }

    public void a(e eVar) {
        c[] cVarArr;
        boolean z;
        int i2;
        int i3;
        c[] cVarArr2 = this.A;
        cVarArr2[0] = this.s;
        cVarArr2[2] = this.t;
        cVarArr2[1] = this.u;
        cVarArr2[3] = this.v;
        int i4 = 0;
        while (true) {
            cVarArr = this.A;
            if (i4 >= cVarArr.length) {
                break;
            }
            cVarArr[i4].f482i = eVar.a((Object) cVarArr[i4]);
            i4++;
        }
        int i5 = this.m0;
        if (i5 >= 0 && i5 < 4) {
            c cVar = cVarArr[i5];
            int i6 = 0;
            while (true) {
                if (i6 >= this.l0) {
                    z = false;
                    break;
                }
                d dVar = this.k0[i6];
                if ((this.o0 || dVar.a()) && ((((i2 = this.m0) == 0 || i2 == 1) && dVar.e() == d.a.MATCH_CONSTRAINT) || (((i3 = this.m0) == 2 || i3 == 3) && dVar.h() == d.a.MATCH_CONSTRAINT))) {
                    z = true;
                } else {
                    i6++;
                }
            }
            int i7 = this.m0;
            if (i7 == 0 || i7 == 1 ? this.D.e() == d.a.WRAP_CONTENT : this.D.h() == d.a.WRAP_CONTENT) {
                z = false;
            }
            for (int i8 = 0; i8 < this.l0; i8++) {
                d dVar2 = this.k0[i8];
                if (this.o0 || dVar2.a()) {
                    g a = eVar.a((Object) dVar2.A[this.m0]);
                    c[] cVarArr3 = dVar2.A;
                    int i9 = this.m0;
                    cVarArr3[i9].f482i = a;
                    if (i9 == 0 || i9 == 2) {
                        g gVar = cVar.f482i;
                        b b = eVar.b();
                        g c2 = eVar.c();
                        c2.f459d = 0;
                        b.b(gVar, a, c2, 0);
                        if (z) {
                            b.f444d.a(eVar.a(1, (String) null), (float) ((int) (b.f444d.a(c2) * -1.0f)));
                        }
                        eVar.a(b);
                    } else {
                        g gVar2 = cVar.f482i;
                        b b2 = eVar.b();
                        g c3 = eVar.c();
                        c3.f459d = 0;
                        b2.a(gVar2, a, c3, 0);
                        if (z) {
                            b2.f444d.a(eVar.a(1, (String) null), (float) ((int) (b2.f444d.a(c3) * -1.0f)));
                        }
                        eVar.a(b2);
                    }
                }
            }
            int i10 = this.m0;
            if (i10 == 0) {
                eVar.a(this.u.f482i, this.s.f482i, 0, 6);
                if (!z) {
                    eVar.a(this.s.f482i, this.D.u.f482i, 0, 5);
                }
            } else if (i10 == 1) {
                eVar.a(this.s.f482i, this.u.f482i, 0, 6);
                if (!z) {
                    eVar.a(this.s.f482i, this.D.s.f482i, 0, 5);
                }
            } else if (i10 == 2) {
                eVar.a(this.v.f482i, this.t.f482i, 0, 6);
                if (!z) {
                    eVar.a(this.t.f482i, this.D.v.f482i, 0, 5);
                }
            } else if (i10 == 3) {
                eVar.a(this.t.f482i, this.v.f482i, 0, 6);
                if (!z) {
                    eVar.a(this.t.f482i, this.D.t.f482i, 0, 5);
                }
            }
        }
    }
}
