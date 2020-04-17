package d.g.a.h;

import d.g.a.e;
import d.g.a.h.c;
import java.util.ArrayList;

public class d {
    public static float j0 = 0.5f;
    public c[] A;
    public ArrayList<c> B;
    public a[] C;
    public d D;
    public int E;
    public int F;
    public float G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public float V;
    public float W;
    public Object X;
    public int Y;
    public String Z;
    public int a = -1;
    public String a0;
    public int b = -1;
    public boolean b0;

    /* renamed from: c  reason: collision with root package name */
    public k f483c;
    public boolean c0;

    /* renamed from: d  reason: collision with root package name */
    public k f484d;
    public boolean d0;

    /* renamed from: e  reason: collision with root package name */
    public int f485e = 0;
    public int e0;

    /* renamed from: f  reason: collision with root package name */
    public int f486f = 0;
    public int f0;

    /* renamed from: g  reason: collision with root package name */
    public int[] f487g = new int[2];
    public float[] g0;

    /* renamed from: h  reason: collision with root package name */
    public int f488h = 0;
    public d[] h0;

    /* renamed from: i  reason: collision with root package name */
    public int f489i = 0;
    public d[] i0;

    /* renamed from: j  reason: collision with root package name */
    public float f490j = 1.0f;

    /* renamed from: k  reason: collision with root package name */
    public int f491k = 0;

    /* renamed from: l  reason: collision with root package name */
    public int f492l = 0;
    public float m = 1.0f;
    public int n = -1;
    public float o = 1.0f;
    public f p = null;
    public int[] q = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    public float r = 0.0f;
    public c s = new c(this, c.C0020c.LEFT);
    public c t = new c(this, c.C0020c.TOP);
    public c u = new c(this, c.C0020c.RIGHT);
    public c v = new c(this, c.C0020c.BOTTOM);
    public c w = new c(this, c.C0020c.BASELINE);
    public c x = new c(this, c.C0020c.CENTER_X);
    public c y = new c(this, c.C0020c.CENTER_Y);
    public c z;

    public enum a {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public d() {
        c cVar = new c(this, c.C0020c.CENTER);
        this.z = cVar;
        this.A = new c[]{this.s, this.u, this.t, this.v, this.w, cVar};
        ArrayList<c> arrayList = new ArrayList<>();
        this.B = arrayList;
        a aVar = a.FIXED;
        this.C = new a[]{aVar, aVar};
        this.D = null;
        this.E = 0;
        this.F = 0;
        this.G = 0.0f;
        this.H = -1;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        float f2 = j0;
        this.V = f2;
        this.W = f2;
        this.Y = 0;
        this.Z = null;
        this.a0 = null;
        this.b0 = false;
        this.c0 = false;
        this.d0 = false;
        this.e0 = 0;
        this.f0 = 0;
        this.g0 = new float[]{-1.0f, -1.0f};
        this.h0 = new d[]{null, null};
        this.i0 = new d[]{null, null};
        arrayList.add(this.s);
        this.B.add(this.t);
        this.B.add(this.u);
        this.B.add(this.v);
        this.B.add(this.x);
        this.B.add(this.y);
        this.B.add(this.z);
        this.B.add(this.w);
    }

    public void a(int i2) {
        for (int i3 = 0; i3 < 6; i3++) {
            j jVar = this.A[i3].a;
            c cVar = jVar.f502c;
            c cVar2 = cVar.f477d;
            if (cVar2 != null) {
                if (cVar2.f477d == cVar) {
                    jVar.f507h = 4;
                    cVar2.a.f507h = 4;
                }
                int a2 = jVar.f502c.a();
                c.C0020c cVar3 = jVar.f502c.f476c;
                if (cVar3 == c.C0020c.RIGHT || cVar3 == c.C0020c.BOTTOM) {
                    a2 = -a2;
                }
                jVar.a(cVar2.a, a2);
            }
        }
        j jVar2 = this.s.a;
        j jVar3 = this.t.a;
        j jVar4 = this.u.a;
        j jVar5 = this.v.a;
        boolean z2 = (i2 & 8) == 8;
        boolean z3 = this.C[0] == a.MATCH_CONSTRAINT && i.a(this, 0);
        if (!(jVar2.f507h == 4 || jVar4.f507h == 4)) {
            if (this.C[0] == a.FIXED || (z3 && this.Y == 8)) {
                if (this.s.f477d == null && this.u.f477d == null) {
                    jVar2.f507h = 1;
                    jVar4.f507h = 1;
                    if (z2) {
                        jVar4.a(jVar2, 1, g());
                    } else {
                        int i4 = i();
                        jVar4.f503d = jVar2;
                        jVar4.f504e = (float) i4;
                        jVar2.a.add(jVar4);
                    }
                } else if (this.s.f477d != null && this.u.f477d == null) {
                    jVar2.f507h = 1;
                    jVar4.f507h = 1;
                    if (z2) {
                        jVar4.a(jVar2, 1, g());
                    } else {
                        int i5 = i();
                        jVar4.f503d = jVar2;
                        jVar4.f504e = (float) i5;
                        jVar2.a.add(jVar4);
                    }
                } else if (this.s.f477d == null && this.u.f477d != null) {
                    jVar2.f507h = 1;
                    jVar4.f507h = 1;
                    jVar2.f503d = jVar4;
                    jVar2.f504e = (float) (-i());
                    jVar4.a.add(jVar2);
                    if (z2) {
                        jVar2.a(jVar4, -1, g());
                    } else {
                        jVar2.f503d = jVar4;
                        jVar2.f504e = (float) (-i());
                        jVar4.a.add(jVar2);
                    }
                } else if (!(this.s.f477d == null || this.u.f477d == null)) {
                    jVar2.f507h = 2;
                    jVar4.f507h = 2;
                    if (z2) {
                        g().a.add(jVar2);
                        g().a.add(jVar4);
                        k g2 = g();
                        jVar2.f508i = jVar4;
                        jVar2.f511l = g2;
                        jVar2.m = -1;
                        k g3 = g();
                        jVar4.f508i = jVar2;
                        jVar4.f511l = g3;
                        jVar4.m = 1;
                    } else {
                        jVar2.f508i = jVar4;
                        jVar4.f508i = jVar2;
                    }
                }
            } else if (z3) {
                int i6 = i();
                jVar2.f507h = 1;
                jVar4.f507h = 1;
                if (this.s.f477d == null && this.u.f477d == null) {
                    if (z2) {
                        jVar4.a(jVar2, 1, g());
                    } else {
                        jVar4.f503d = jVar2;
                        jVar4.f504e = (float) i6;
                        jVar2.a.add(jVar4);
                    }
                } else if (this.s.f477d == null || this.u.f477d != null) {
                    if (this.s.f477d != null || this.u.f477d == null) {
                        if (!(this.s.f477d == null || this.u.f477d == null)) {
                            if (z2) {
                                g().a.add(jVar2);
                                g().a.add(jVar4);
                            }
                            if (this.G == 0.0f) {
                                jVar2.f507h = 3;
                                jVar4.f507h = 3;
                                jVar2.f508i = jVar4;
                                jVar4.f508i = jVar2;
                            } else {
                                jVar2.f507h = 2;
                                jVar4.f507h = 2;
                                jVar2.f508i = jVar4;
                                jVar4.f508i = jVar2;
                                f(i6);
                            }
                        }
                    } else if (z2) {
                        jVar2.a(jVar4, -1, g());
                    } else {
                        jVar2.f503d = jVar4;
                        jVar2.f504e = (float) (-i6);
                        jVar4.a.add(jVar2);
                    }
                } else if (z2) {
                    jVar4.a(jVar2, 1, g());
                } else {
                    jVar4.f503d = jVar2;
                    jVar4.f504e = (float) i6;
                    jVar2.a.add(jVar4);
                }
            }
        }
        boolean z4 = this.C[1] == a.MATCH_CONSTRAINT && i.a(this, 1);
        if (jVar3.f507h != 4 && jVar5.f507h != 4) {
            if (this.C[1] == a.FIXED || (z4 && this.Y == 8)) {
                if (this.t.f477d == null && this.v.f477d == null) {
                    jVar3.f507h = 1;
                    jVar5.f507h = 1;
                    if (z2) {
                        jVar5.a(jVar3, 1, f());
                    } else {
                        int d2 = d();
                        jVar5.f503d = jVar3;
                        jVar5.f504e = (float) d2;
                        jVar3.a.add(jVar5);
                    }
                    c cVar4 = this.w;
                    if (cVar4.f477d != null) {
                        j jVar6 = cVar4.a;
                        jVar6.f507h = 1;
                        jVar3.a(1, jVar6, -this.Q);
                    }
                } else if (this.t.f477d != null && this.v.f477d == null) {
                    jVar3.f507h = 1;
                    jVar5.f507h = 1;
                    if (z2) {
                        jVar5.a(jVar3, 1, f());
                    } else {
                        int d3 = d();
                        jVar5.f503d = jVar3;
                        jVar5.f504e = (float) d3;
                        jVar3.a.add(jVar5);
                    }
                    int i7 = this.Q;
                    if (i7 > 0) {
                        this.w.a.a(1, jVar3, i7);
                    }
                } else if (this.t.f477d == null && this.v.f477d != null) {
                    jVar3.f507h = 1;
                    jVar5.f507h = 1;
                    if (z2) {
                        jVar3.a(jVar5, -1, f());
                    } else {
                        jVar3.f503d = jVar5;
                        jVar3.f504e = (float) (-d());
                        jVar5.a.add(jVar3);
                    }
                    int i8 = this.Q;
                    if (i8 > 0) {
                        this.w.a.a(1, jVar3, i8);
                    }
                } else if (this.t.f477d != null && this.v.f477d != null) {
                    jVar3.f507h = 2;
                    jVar5.f507h = 2;
                    if (z2) {
                        k f2 = f();
                        jVar3.f508i = jVar5;
                        jVar3.f511l = f2;
                        jVar3.m = -1;
                        k f3 = f();
                        jVar5.f508i = jVar3;
                        jVar5.f511l = f3;
                        jVar5.m = 1;
                        f().a.add(jVar3);
                        g().a.add(jVar5);
                    } else {
                        jVar3.f508i = jVar5;
                        jVar5.f508i = jVar3;
                    }
                    int i9 = this.Q;
                    if (i9 > 0) {
                        this.w.a.a(1, jVar3, i9);
                    }
                }
            } else if (z4) {
                int d4 = d();
                jVar3.f507h = 1;
                jVar5.f507h = 1;
                if (this.t.f477d == null && this.v.f477d == null) {
                    if (z2) {
                        jVar5.a(jVar3, 1, f());
                        return;
                    }
                    jVar5.f503d = jVar3;
                    jVar5.f504e = (float) d4;
                    jVar3.a.add(jVar5);
                } else if (this.t.f477d == null || this.v.f477d != null) {
                    if (this.t.f477d != null || this.v.f477d == null) {
                        if (this.t.f477d != null && this.v.f477d != null) {
                            if (z2) {
                                f().a.add(jVar3);
                                g().a.add(jVar5);
                            }
                            if (this.G == 0.0f) {
                                jVar3.f507h = 3;
                                jVar5.f507h = 3;
                                jVar3.f508i = jVar5;
                                jVar5.f508i = jVar3;
                                return;
                            }
                            jVar3.f507h = 2;
                            jVar5.f507h = 2;
                            jVar3.f508i = jVar5;
                            jVar5.f508i = jVar3;
                            e(d4);
                            int i10 = this.Q;
                            if (i10 > 0) {
                                this.w.a.a(1, jVar3, i10);
                            }
                        }
                    } else if (z2) {
                        jVar3.a(jVar5, -1, f());
                    } else {
                        jVar3.f503d = jVar5;
                        jVar3.f504e = (float) (-d4);
                        jVar5.a.add(jVar3);
                    }
                } else if (z2) {
                    jVar5.a(jVar3, 1, f());
                } else {
                    jVar5.f503d = jVar3;
                    jVar5.f504e = (float) d4;
                    jVar3.a.add(jVar5);
                }
            }
        }
    }

    public void b(e eVar) {
        eVar.a((Object) this.s);
        eVar.a((Object) this.t);
        eVar.a((Object) this.u);
        eVar.a((Object) this.v);
        if (this.Q > 0) {
            eVar.a((Object) this.w);
        }
    }

    public int c() {
        return this.J + this.F;
    }

    public int d() {
        if (this.Y == 8) {
            return 0;
        }
        return this.F;
    }

    public void e(int i2) {
        this.F = i2;
        int i3 = this.S;
        if (i2 < i3) {
            this.F = i3;
        }
    }

    public k f() {
        if (this.f484d == null) {
            this.f484d = new k();
        }
        return this.f484d;
    }

    public k g() {
        if (this.f483c == null) {
            this.f483c = new k();
        }
        return this.f483c;
    }

    public a h() {
        return this.C[1];
    }

    public int i() {
        if (this.Y == 8) {
            return 0;
        }
        return this.E;
    }

    public boolean j() {
        if (this.s.a.b == 1 && this.u.a.b == 1 && this.t.a.b == 1 && this.v.a.b == 1) {
            return true;
        }
        return false;
    }

    public void k() {
        this.s.c();
        this.t.c();
        this.u.c();
        this.v.c();
        this.w.c();
        this.x.c();
        this.y.c();
        this.z.c();
        this.D = null;
        this.r = 0.0f;
        this.E = 0;
        this.F = 0;
        this.G = 0.0f;
        this.H = -1;
        this.I = 0;
        this.J = 0;
        this.M = 0;
        this.N = 0;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        float f2 = j0;
        this.V = f2;
        this.W = f2;
        a[] aVarArr = this.C;
        a aVar = a.FIXED;
        aVarArr[0] = aVar;
        aVarArr[1] = aVar;
        this.X = null;
        this.Y = 0;
        this.a0 = null;
        this.e0 = 0;
        this.f0 = 0;
        float[] fArr = this.g0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.a = -1;
        this.b = -1;
        int[] iArr = this.q;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f485e = 0;
        this.f486f = 0;
        this.f490j = 1.0f;
        this.m = 1.0f;
        this.f489i = Integer.MAX_VALUE;
        this.f492l = Integer.MAX_VALUE;
        this.f488h = 0;
        this.f491k = 0;
        this.n = -1;
        this.o = 1.0f;
        k kVar = this.f483c;
        if (kVar != null) {
            kVar.b = 0;
            kVar.a.clear();
            kVar.f512c = 0.0f;
        }
        k kVar2 = this.f484d;
        if (kVar2 != null) {
            kVar2.b = 0;
            kVar2.a.clear();
            kVar2.f512c = 0.0f;
        }
        this.p = null;
        this.b0 = false;
        this.c0 = false;
        this.d0 = false;
    }

    public void l() {
        for (int i2 = 0; i2 < 6; i2++) {
            this.A[i2].a.e();
        }
    }

    public void m() {
    }

    public void n() {
        int i2 = this.I;
        int i3 = this.J;
        this.M = i2;
        this.N = i3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = "";
        sb.append(this.a0 != null ? e.a.a.a.a.a(e.a.a.a.a.a("type: "), this.a0, " ") : str);
        if (this.Z != null) {
            str = e.a.a.a.a.a(e.a.a.a.a.a("id: "), this.Z, " ");
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.I);
        sb.append(", ");
        sb.append(this.J);
        sb.append(") - (");
        sb.append(this.E);
        sb.append(" x ");
        sb.append(this.F);
        sb.append(") wrap: (");
        sb.append(this.T);
        sb.append(" x ");
        return e.a.a.a.a.a(sb, this.U, ")");
    }

    public int c(int i2) {
        if (i2 == 0) {
            return i();
        }
        if (i2 == 1) {
            return d();
        }
        return 0;
    }

    public final boolean d(int i2) {
        int i3 = i2 * 2;
        c[] cVarArr = this.A;
        if (!(cVarArr[i3].f477d == null || cVarArr[i3].f477d.f477d == cVarArr[i3])) {
            int i4 = i3 + 1;
            return cVarArr[i4].f477d != null && cVarArr[i4].f477d.f477d == cVarArr[i4];
        }
    }

    public a e() {
        return this.C[0];
    }

    public void f(int i2) {
        this.E = i2;
        int i3 = this.R;
        if (i2 < i3) {
            this.E = i3;
        }
    }

    public void c(int i2, int i3) {
        this.J = i2;
        int i4 = i3 - i2;
        this.F = i4;
        int i5 = this.S;
        if (i4 < i5) {
            this.F = i5;
        }
    }

    public ArrayList<c> b() {
        return this.B;
    }

    public void b(int i2, int i3) {
        this.O = i2;
        this.P = i3;
    }

    public void c(e eVar) {
        int i2;
        int i3;
        int b2 = eVar.b((Object) this.s);
        int b3 = eVar.b((Object) this.t);
        int b4 = eVar.b((Object) this.u);
        int b5 = eVar.b((Object) this.v);
        int i4 = b5 - b3;
        if (b4 - b2 < 0 || i4 < 0 || b2 == Integer.MIN_VALUE || b2 == Integer.MAX_VALUE || b3 == Integer.MIN_VALUE || b3 == Integer.MAX_VALUE || b4 == Integer.MIN_VALUE || b4 == Integer.MAX_VALUE || b5 == Integer.MIN_VALUE || b5 == Integer.MAX_VALUE) {
            b5 = 0;
            b2 = 0;
            b3 = 0;
            b4 = 0;
        }
        int i5 = b4 - b2;
        int i6 = b5 - b3;
        this.I = b2;
        this.J = b3;
        if (this.Y == 8) {
            this.E = 0;
            this.F = 0;
            return;
        }
        if (this.C[0] == a.FIXED && i5 < (i3 = this.E)) {
            i5 = i3;
        }
        if (this.C[1] == a.FIXED && i6 < (i2 = this.F)) {
            i6 = i2;
        }
        this.E = i5;
        this.F = i6;
        int i7 = this.S;
        if (i6 < i7) {
            this.F = i7;
        }
        int i8 = this.E;
        int i9 = this.R;
        if (i8 < i9) {
            this.E = i9;
        }
        this.c0 = true;
    }

    public a b(int i2) {
        if (i2 == 0) {
            return e();
        }
        if (i2 == 1) {
            return h();
        }
        return null;
    }

    public void b(a aVar) {
        this.C[1] = aVar;
        if (aVar == a.WRAP_CONTENT) {
            e(this.U);
        }
    }

    public void a(d.g.a.c cVar) {
        this.s.d();
        this.t.d();
        this.u.d();
        this.v.d();
        this.w.d();
        this.z.d();
        this.x.d();
        this.y.d();
    }

    public void a(int i2, int i3, int i4) {
        if (i4 == 0) {
            this.I = i2;
            int i5 = i3 - i2;
            this.E = i5;
            int i6 = this.R;
            if (i5 < i6) {
                this.E = i6;
            }
        } else if (i4 == 1) {
            this.J = i2;
            int i7 = i3 - i2;
            this.F = i7;
            int i8 = this.S;
            if (i7 < i8) {
                this.F = i8;
            }
        }
        this.c0 = true;
    }

    public void a(int i2, int i3) {
        this.I = i2;
        int i4 = i3 - i2;
        this.E = i4;
        int i5 = this.R;
        if (i4 < i5) {
            this.E = i5;
        }
    }

    public boolean a() {
        return this.Y != 8;
    }

    public void a(c.C0020c cVar, d dVar, c.C0020c cVar2, int i2, int i3) {
        a(cVar).a(dVar.a(cVar2), i2, i3, c.b.STRONG, 0, true);
    }

    public c a(c.C0020c cVar) {
        switch (cVar.ordinal()) {
            case 0:
                return null;
            case 1:
                return this.s;
            case 2:
                return this.t;
            case 3:
                return this.u;
            case 4:
                return this.v;
            case 5:
                return this.w;
            case 6:
                return this.z;
            case 7:
                return this.x;
            case 8:
                return this.y;
            default:
                throw new AssertionError(cVar.name());
        }
    }

    public void a(a aVar) {
        this.C[0] = aVar;
        if (aVar == a.WRAP_CONTENT) {
            f(this.T);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:190:0x02c7  */
    /* JADX WARNING: Removed duplicated region for block: B:191:0x02ca  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x02dd  */
    /* JADX WARNING: Removed duplicated region for block: B:203:0x033d  */
    /* JADX WARNING: Removed duplicated region for block: B:206:0x034c A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:207:0x034d  */
    /* JADX WARNING: Removed duplicated region for block: B:233:0x03a2  */
    /* JADX WARNING: Removed duplicated region for block: B:234:0x03ab  */
    /* JADX WARNING: Removed duplicated region for block: B:237:0x03b1  */
    /* JADX WARNING: Removed duplicated region for block: B:238:0x03b9  */
    /* JADX WARNING: Removed duplicated region for block: B:241:0x03f0  */
    /* JADX WARNING: Removed duplicated region for block: B:245:0x0419  */
    /* JADX WARNING: Removed duplicated region for block: B:248:0x0423  */
    /* JADX WARNING: Removed duplicated region for block: B:250:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x007a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(d.g.a.e r39) {
        /*
            r38 = this;
            r15 = r38
            r14 = r39
            d.g.a.h.c r0 = r15.s
            d.g.a.g r21 = r14.a((java.lang.Object) r0)
            d.g.a.h.c r0 = r15.u
            d.g.a.g r10 = r14.a((java.lang.Object) r0)
            d.g.a.h.c r0 = r15.t
            d.g.a.g r6 = r14.a((java.lang.Object) r0)
            d.g.a.h.c r0 = r15.v
            d.g.a.g r4 = r14.a((java.lang.Object) r0)
            d.g.a.h.c r0 = r15.w
            d.g.a.g r3 = r14.a((java.lang.Object) r0)
            d.g.a.h.d r0 = r15.D
            r1 = 8
            r2 = 1
            r13 = 0
            if (r0 == 0) goto L_0x00d7
            if (r0 == 0) goto L_0x0036
            d.g.a.h.d$a[] r0 = r0.C
            r0 = r0[r13]
            d.g.a.h.d$a r5 = d.g.a.h.d.a.WRAP_CONTENT
            if (r0 != r5) goto L_0x0036
            r0 = 1
            goto L_0x0037
        L_0x0036:
            r0 = 0
        L_0x0037:
            d.g.a.h.d r5 = r15.D
            if (r5 == 0) goto L_0x0045
            d.g.a.h.d$a[] r5 = r5.C
            r5 = r5[r2]
            d.g.a.h.d$a r7 = d.g.a.h.d.a.WRAP_CONTENT
            if (r5 != r7) goto L_0x0045
            r5 = 1
            goto L_0x0046
        L_0x0045:
            r5 = 0
        L_0x0046:
            boolean r7 = r15.d(r13)
            if (r7 == 0) goto L_0x0055
            d.g.a.h.d r7 = r15.D
            d.g.a.h.e r7 = (d.g.a.h.e) r7
            r7.a(r15, r13)
        L_0x0053:
            r7 = 1
            goto L_0x006b
        L_0x0055:
            d.g.a.h.c r7 = r15.s
            d.g.a.h.c r8 = r7.f477d
            if (r8 == 0) goto L_0x005f
            d.g.a.h.c r8 = r8.f477d
            if (r8 == r7) goto L_0x0053
        L_0x005f:
            d.g.a.h.c r7 = r15.u
            d.g.a.h.c r8 = r7.f477d
            if (r8 == 0) goto L_0x006a
            d.g.a.h.c r8 = r8.f477d
            if (r8 != r7) goto L_0x006a
            goto L_0x0053
        L_0x006a:
            r7 = 0
        L_0x006b:
            boolean r8 = r15.d(r2)
            if (r8 == 0) goto L_0x007a
            d.g.a.h.d r8 = r15.D
            d.g.a.h.e r8 = (d.g.a.h.e) r8
            r8.a(r15, r2)
        L_0x0078:
            r8 = 1
            goto L_0x0090
        L_0x007a:
            d.g.a.h.c r8 = r15.t
            d.g.a.h.c r9 = r8.f477d
            if (r9 == 0) goto L_0x0084
            d.g.a.h.c r9 = r9.f477d
            if (r9 == r8) goto L_0x0078
        L_0x0084:
            d.g.a.h.c r8 = r15.v
            d.g.a.h.c r9 = r8.f477d
            if (r9 == 0) goto L_0x008f
            d.g.a.h.c r9 = r9.f477d
            if (r9 != r8) goto L_0x008f
            goto L_0x0078
        L_0x008f:
            r8 = 0
        L_0x0090:
            if (r0 == 0) goto L_0x00ad
            int r9 = r15.Y
            if (r9 == r1) goto L_0x00ad
            d.g.a.h.c r9 = r15.s
            d.g.a.h.c r9 = r9.f477d
            if (r9 != 0) goto L_0x00ad
            d.g.a.h.c r9 = r15.u
            d.g.a.h.c r9 = r9.f477d
            if (r9 != 0) goto L_0x00ad
            d.g.a.h.d r9 = r15.D
            d.g.a.h.c r9 = r9.u
            d.g.a.g r9 = r14.a((java.lang.Object) r9)
            r14.b(r9, r10, r13, r2)
        L_0x00ad:
            if (r5 == 0) goto L_0x00ce
            int r9 = r15.Y
            if (r9 == r1) goto L_0x00ce
            d.g.a.h.c r9 = r15.t
            d.g.a.h.c r9 = r9.f477d
            if (r9 != 0) goto L_0x00ce
            d.g.a.h.c r9 = r15.v
            d.g.a.h.c r9 = r9.f477d
            if (r9 != 0) goto L_0x00ce
            d.g.a.h.c r9 = r15.w
            if (r9 != 0) goto L_0x00ce
            d.g.a.h.d r9 = r15.D
            d.g.a.h.c r9 = r9.v
            d.g.a.g r9 = r14.a((java.lang.Object) r9)
            r14.b(r9, r4, r13, r2)
        L_0x00ce:
            r16 = r0
            r22 = r5
            r20 = r7
            r23 = r8
            goto L_0x00df
        L_0x00d7:
            r16 = 0
            r20 = 0
            r22 = 0
            r23 = 0
        L_0x00df:
            int r0 = r15.E
            int r5 = r15.R
            if (r0 >= r5) goto L_0x00e6
            r0 = r5
        L_0x00e6:
            int r5 = r15.F
            int r7 = r15.S
            if (r5 >= r7) goto L_0x00ed
            r5 = r7
        L_0x00ed:
            d.g.a.h.d$a[] r7 = r15.C
            r7 = r7[r13]
            d.g.a.h.d$a r8 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r7 == r8) goto L_0x00f7
            r7 = 1
            goto L_0x00f8
        L_0x00f7:
            r7 = 0
        L_0x00f8:
            d.g.a.h.d$a[] r8 = r15.C
            r8 = r8[r2]
            d.g.a.h.d$a r9 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r8 == r9) goto L_0x0102
            r8 = 1
            goto L_0x0103
        L_0x0102:
            r8 = 0
        L_0x0103:
            int r9 = r15.H
            r15.n = r9
            float r9 = r15.G
            r15.o = r9
            int r11 = r15.f485e
            int r12 = r15.f486f
            r17 = 0
            r18 = 4
            int r9 = (r9 > r17 ? 1 : (r9 == r17 ? 0 : -1))
            if (r9 <= 0) goto L_0x0299
            int r9 = r15.Y
            if (r9 == r1) goto L_0x0299
            d.g.a.h.d$a[] r1 = r15.C
            r1 = r1[r13]
            d.g.a.h.d$a r9 = d.g.a.h.d.a.MATCH_CONSTRAINT
            r2 = 3
            if (r1 != r9) goto L_0x0127
            if (r11 != 0) goto L_0x0127
            r11 = 3
        L_0x0127:
            d.g.a.h.d$a[] r1 = r15.C
            r9 = 1
            r1 = r1[r9]
            d.g.a.h.d$a r9 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r1 != r9) goto L_0x0133
            if (r12 != 0) goto L_0x0133
            r12 = 3
        L_0x0133:
            d.g.a.h.d$a[] r1 = r15.C
            r9 = r1[r13]
            d.g.a.h.d$a r13 = d.g.a.h.d.a.MATCH_CONSTRAINT
            r19 = 1065353216(0x3f800000, float:1.0)
            if (r9 != r13) goto L_0x0235
            r9 = 1
            r1 = r1[r9]
            if (r1 != r13) goto L_0x0235
            if (r11 != r2) goto L_0x0235
            if (r12 != r2) goto L_0x0235
            int r1 = r15.n
            r2 = -1
            if (r1 != r2) goto L_0x0164
            if (r7 == 0) goto L_0x0153
            if (r8 != 0) goto L_0x0153
            r1 = 0
            r15.n = r1
            goto L_0x0164
        L_0x0153:
            if (r7 != 0) goto L_0x0164
            if (r8 == 0) goto L_0x0164
            r1 = 1
            r15.n = r1
            int r1 = r15.H
            if (r1 != r2) goto L_0x0164
            float r1 = r15.o
            float r1 = r19 / r1
            r15.o = r1
        L_0x0164:
            int r1 = r15.n
            if (r1 != 0) goto L_0x017c
            d.g.a.h.c r1 = r15.t
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x0178
            d.g.a.h.c r1 = r15.v
            boolean r1 = r1.b()
            if (r1 != 0) goto L_0x017c
        L_0x0178:
            r1 = 1
            r15.n = r1
            goto L_0x0194
        L_0x017c:
            r1 = 1
            int r2 = r15.n
            if (r2 != r1) goto L_0x0194
            d.g.a.h.c r1 = r15.s
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x0191
            d.g.a.h.c r1 = r15.u
            boolean r1 = r1.b()
            if (r1 != 0) goto L_0x0194
        L_0x0191:
            r1 = 0
            r15.n = r1
        L_0x0194:
            int r1 = r15.n
            r2 = -1
            if (r1 != r2) goto L_0x01e6
            d.g.a.h.c r1 = r15.t
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x01b9
            d.g.a.h.c r1 = r15.v
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x01b9
            d.g.a.h.c r1 = r15.s
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x01b9
            d.g.a.h.c r1 = r15.u
            boolean r1 = r1.b()
            if (r1 != 0) goto L_0x01e6
        L_0x01b9:
            d.g.a.h.c r1 = r15.t
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x01cd
            d.g.a.h.c r1 = r15.v
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x01cd
            r1 = 0
            r15.n = r1
            goto L_0x01e6
        L_0x01cd:
            d.g.a.h.c r1 = r15.s
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x01e6
            d.g.a.h.c r1 = r15.u
            boolean r1 = r1.b()
            if (r1 == 0) goto L_0x01e6
            float r1 = r15.o
            float r1 = r19 / r1
            r15.o = r1
            r1 = 1
            r15.n = r1
        L_0x01e6:
            int r1 = r15.n
            r2 = -1
            if (r1 != r2) goto L_0x0200
            if (r16 == 0) goto L_0x01f3
            if (r22 != 0) goto L_0x01f3
            r1 = 0
            r15.n = r1
            goto L_0x0200
        L_0x01f3:
            if (r16 != 0) goto L_0x0200
            if (r22 == 0) goto L_0x0200
            float r1 = r15.o
            float r1 = r19 / r1
            r15.o = r1
            r1 = 1
            r15.n = r1
        L_0x0200:
            int r1 = r15.n
            r2 = -1
            if (r1 != r2) goto L_0x0222
            int r1 = r15.f488h
            if (r1 <= 0) goto L_0x0211
            int r1 = r15.f491k
            if (r1 != 0) goto L_0x0211
            r1 = 0
            r15.n = r1
            goto L_0x0222
        L_0x0211:
            int r1 = r15.f488h
            if (r1 != 0) goto L_0x0222
            int r1 = r15.f491k
            if (r1 <= 0) goto L_0x0222
            float r1 = r15.o
            float r1 = r19 / r1
            r15.o = r1
            r1 = 1
            r15.n = r1
        L_0x0222:
            int r1 = r15.n
            r2 = -1
            if (r1 != r2) goto L_0x028e
            if (r16 == 0) goto L_0x028e
            if (r22 == 0) goto L_0x028e
            float r1 = r15.o
            float r1 = r19 / r1
            r15.o = r1
            r1 = 1
            r15.n = r1
            goto L_0x028e
        L_0x0235:
            d.g.a.h.d$a[] r1 = r15.C
            r7 = 0
            r8 = r1[r7]
            d.g.a.h.d$a r9 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r8 != r9) goto L_0x025a
            if (r11 != r2) goto L_0x025a
            r15.n = r7
            float r0 = r15.o
            int r2 = r15.F
            float r2 = (float) r2
            float r0 = r0 * r2
            int r0 = (int) r0
            r7 = 1
            r1 = r1[r7]
            if (r1 == r9) goto L_0x028e
            r27 = r0
            r28 = r5
            r30 = r12
            r26 = 0
            r29 = 4
            goto L_0x02a3
        L_0x025a:
            r7 = 1
            d.g.a.h.d$a[] r1 = r15.C
            r1 = r1[r7]
            d.g.a.h.d$a r8 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r1 != r8) goto L_0x028e
            if (r12 != r2) goto L_0x028e
            r15.n = r7
            int r1 = r15.H
            r2 = -1
            if (r1 != r2) goto L_0x0272
            float r1 = r15.o
            float r1 = r19 / r1
            r15.o = r1
        L_0x0272:
            float r1 = r15.o
            int r2 = r15.E
            float r2 = (float) r2
            float r1 = r1 * r2
            int r1 = (int) r1
            d.g.a.h.d$a[] r2 = r15.C
            r5 = 0
            r2 = r2[r5]
            d.g.a.h.d$a r5 = d.g.a.h.d.a.MATCH_CONSTRAINT
            r27 = r0
            r28 = r1
            r29 = r11
            if (r2 == r5) goto L_0x0294
            r26 = 0
            r30 = 4
            goto L_0x02a3
        L_0x028e:
            r27 = r0
            r28 = r5
            r29 = r11
        L_0x0294:
            r30 = r12
            r26 = 1
            goto L_0x02a3
        L_0x0299:
            r27 = r0
            r28 = r5
            r29 = r11
            r30 = r12
            r26 = 0
        L_0x02a3:
            int[] r0 = r15.f487g
            r1 = 0
            r0[r1] = r29
            r1 = 1
            r0[r1] = r30
            if (r26 == 0) goto L_0x02b7
            int r0 = r15.n
            r2 = -1
            if (r0 == 0) goto L_0x02b4
            if (r0 != r2) goto L_0x02b8
        L_0x02b4:
            r25 = 1
            goto L_0x02ba
        L_0x02b7:
            r2 = -1
        L_0x02b8:
            r25 = 0
        L_0x02ba:
            d.g.a.h.d$a[] r0 = r15.C
            r1 = 0
            r0 = r0[r1]
            d.g.a.h.d$a r1 = d.g.a.h.d.a.WRAP_CONTENT
            if (r0 != r1) goto L_0x02ca
            boolean r0 = r15 instanceof d.g.a.h.e
            if (r0 == 0) goto L_0x02ca
            r31 = 1
            goto L_0x02cc
        L_0x02ca:
            r31 = 0
        L_0x02cc:
            d.g.a.h.c r0 = r15.z
            boolean r0 = r0.b()
            r24 = 1
            r32 = r0 ^ 1
            int r0 = r15.a
            r1 = 2
            r33 = 0
            if (r0 == r1) goto L_0x033d
            d.g.a.h.d r0 = r15.D
            if (r0 == 0) goto L_0x02ea
            d.g.a.h.c r0 = r0.u
            d.g.a.g r0 = r14.a((java.lang.Object) r0)
            r34 = r0
            goto L_0x02ec
        L_0x02ea:
            r34 = r33
        L_0x02ec:
            d.g.a.h.d r0 = r15.D
            if (r0 == 0) goto L_0x02f9
            d.g.a.h.c r0 = r0.s
            d.g.a.g r0 = r14.a((java.lang.Object) r0)
            r35 = r0
            goto L_0x02fb
        L_0x02f9:
            r35 = r33
        L_0x02fb:
            d.g.a.h.d$a[] r0 = r15.C
            r13 = 0
            r5 = r0[r13]
            d.g.a.h.c r7 = r15.s
            d.g.a.h.c r8 = r15.u
            int r9 = r15.I
            int r11 = r15.R
            int[] r0 = r15.q
            r12 = r0[r13]
            float r0 = r15.V
            r13 = r0
            int r0 = r15.f488h
            r17 = r0
            int r0 = r15.f489i
            r18 = r0
            float r0 = r15.f490j
            r19 = r0
            r0 = r38
            r1 = r39
            r2 = r16
            r36 = r3
            r3 = r35
            r24 = r4
            r4 = r34
            r37 = r6
            r6 = r31
            r31 = r10
            r10 = r27
            r14 = r25
            r15 = r20
            r16 = r29
            r20 = r32
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            goto L_0x0345
        L_0x033d:
            r36 = r3
            r24 = r4
            r37 = r6
            r31 = r10
        L_0x0345:
            r15 = r38
            int r0 = r15.b
            r1 = 2
            if (r0 != r1) goto L_0x034d
            return
        L_0x034d:
            d.g.a.h.d$a[] r0 = r15.C
            r14 = 1
            r0 = r0[r14]
            d.g.a.h.d$a r1 = d.g.a.h.d.a.WRAP_CONTENT
            if (r0 != r1) goto L_0x035c
            boolean r0 = r15 instanceof d.g.a.h.e
            if (r0 == 0) goto L_0x035c
            r6 = 1
            goto L_0x035d
        L_0x035c:
            r6 = 0
        L_0x035d:
            if (r26 == 0) goto L_0x0369
            int r0 = r15.n
            if (r0 == r14) goto L_0x0366
            r1 = -1
            if (r0 != r1) goto L_0x0369
        L_0x0366:
            r16 = 1
            goto L_0x036b
        L_0x0369:
            r16 = 0
        L_0x036b:
            int r0 = r15.Q
            if (r0 <= 0) goto L_0x0398
            d.g.a.h.c r1 = r15.w
            d.g.a.h.j r1 = r1.a
            int r2 = r1.b
            if (r2 != r14) goto L_0x037d
            r10 = r39
            r1.a((d.g.a.e) r10)
            goto L_0x039a
        L_0x037d:
            r10 = r39
            r1 = 6
            r2 = r36
            r4 = r37
            r10.a(r2, r4, r0, r1)
            d.g.a.h.c r0 = r15.w
            d.g.a.h.c r0 = r0.f477d
            if (r0 == 0) goto L_0x039c
            d.g.a.g r0 = r10.a((java.lang.Object) r0)
            r3 = 0
            r10.a(r2, r0, r3, r1)
            r20 = 0
            goto L_0x039e
        L_0x0398:
            r10 = r39
        L_0x039a:
            r4 = r37
        L_0x039c:
            r20 = r32
        L_0x039e:
            d.g.a.h.d r0 = r15.D
            if (r0 == 0) goto L_0x03ab
            d.g.a.h.c r0 = r0.v
            d.g.a.g r0 = r10.a((java.lang.Object) r0)
            r25 = r0
            goto L_0x03ad
        L_0x03ab:
            r25 = r33
        L_0x03ad:
            d.g.a.h.d r0 = r15.D
            if (r0 == 0) goto L_0x03b9
            d.g.a.h.c r0 = r0.t
            d.g.a.g r0 = r10.a((java.lang.Object) r0)
            r3 = r0
            goto L_0x03bb
        L_0x03b9:
            r3 = r33
        L_0x03bb:
            d.g.a.h.d$a[] r0 = r15.C
            r5 = r0[r14]
            d.g.a.h.c r7 = r15.t
            d.g.a.h.c r8 = r15.v
            int r9 = r15.J
            int r11 = r15.S
            int[] r0 = r15.q
            r12 = r0[r14]
            float r13 = r15.W
            int r0 = r15.f491k
            r17 = r0
            int r0 = r15.f492l
            r18 = r0
            float r0 = r15.m
            r19 = r0
            r0 = r38
            r1 = r39
            r2 = r22
            r22 = r4
            r4 = r25
            r10 = r28
            r14 = r16
            r15 = r23
            r16 = r30
            r0.a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            if (r26 == 0) goto L_0x0419
            r6 = 6
            r7 = r38
            int r0 = r7.n
            r1 = 1
            if (r0 != r1) goto L_0x0408
            float r5 = r7.o
            r0 = r39
            r1 = r24
            r2 = r22
            r3 = r31
            r4 = r21
            r0.a(r1, r2, r3, r4, r5, r6)
            goto L_0x041b
        L_0x0408:
            float r5 = r7.o
            r6 = 6
            r0 = r39
            r1 = r31
            r2 = r21
            r3 = r24
            r4 = r22
            r0.a(r1, r2, r3, r4, r5, r6)
            goto L_0x041b
        L_0x0419:
            r7 = r38
        L_0x041b:
            d.g.a.h.c r0 = r7.z
            boolean r0 = r0.b()
            if (r0 == 0) goto L_0x04bb
            d.g.a.h.c r0 = r7.z
            d.g.a.h.c r0 = r0.f477d
            d.g.a.h.d r0 = r0.b
            float r1 = r7.r
            r2 = 1119092736(0x42b40000, float:90.0)
            float r1 = r1 + r2
            double r1 = (double) r1
            double r1 = java.lang.Math.toRadians(r1)
            float r1 = (float) r1
            d.g.a.h.c r2 = r7.z
            int r2 = r2.a()
            d.g.a.h.c$c r3 = d.g.a.h.c.C0020c.LEFT
            d.g.a.h.c r3 = r7.a((d.g.a.h.c.C0020c) r3)
            r4 = r39
            d.g.a.g r9 = r4.a((java.lang.Object) r3)
            d.g.a.h.c$c r3 = d.g.a.h.c.C0020c.TOP
            d.g.a.h.c r3 = r7.a((d.g.a.h.c.C0020c) r3)
            d.g.a.g r11 = r4.a((java.lang.Object) r3)
            d.g.a.h.c$c r3 = d.g.a.h.c.C0020c.RIGHT
            d.g.a.h.c r3 = r7.a((d.g.a.h.c.C0020c) r3)
            d.g.a.g r3 = r4.a((java.lang.Object) r3)
            d.g.a.h.c$c r5 = d.g.a.h.c.C0020c.BOTTOM
            d.g.a.h.c r5 = r7.a((d.g.a.h.c.C0020c) r5)
            d.g.a.g r12 = r4.a((java.lang.Object) r5)
            d.g.a.h.c$c r5 = d.g.a.h.c.C0020c.LEFT
            d.g.a.h.c r5 = r0.a((d.g.a.h.c.C0020c) r5)
            d.g.a.g r5 = r4.a((java.lang.Object) r5)
            d.g.a.h.c$c r6 = d.g.a.h.c.C0020c.TOP
            d.g.a.h.c r6 = r0.a((d.g.a.h.c.C0020c) r6)
            d.g.a.g r13 = r4.a((java.lang.Object) r6)
            d.g.a.h.c$c r6 = d.g.a.h.c.C0020c.RIGHT
            d.g.a.h.c r6 = r0.a((d.g.a.h.c.C0020c) r6)
            d.g.a.g r6 = r4.a((java.lang.Object) r6)
            d.g.a.h.c$c r8 = d.g.a.h.c.C0020c.BOTTOM
            d.g.a.h.c r0 = r0.a((d.g.a.h.c.C0020c) r8)
            d.g.a.g r14 = r4.a((java.lang.Object) r0)
            d.g.a.b r0 = r39.b()
            double r7 = (double) r1
            double r15 = java.lang.Math.sin(r7)
            double r1 = (double) r2
            r17 = r5
            r18 = r6
            double r5 = r15 * r1
            float r15 = (float) r5
            r10 = r0
            r10.b(r11, r12, r13, r14, r15)
            r4.a((d.g.a.b) r0)
            d.g.a.b r0 = r39.b()
            double r5 = java.lang.Math.cos(r7)
            double r5 = r5 * r1
            float r13 = (float) r5
            r8 = r0
            r10 = r3
            r11 = r17
            r12 = r18
            r8.b(r9, r10, r11, r12, r13)
            r4.a((d.g.a.b) r0)
        L_0x04bb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.a.h.d.a(d.g.a.e):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:150:0x0282  */
    /* JADX WARNING: Removed duplicated region for block: B:157:0x02c5  */
    /* JADX WARNING: Removed duplicated region for block: B:161:0x02d3  */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x02f4  */
    /* JADX WARNING: Removed duplicated region for block: B:175:0x02fc  */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x030b A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:184:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:186:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x008c  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0091  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00b1  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00df  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01ae A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:94:0x01c9 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(d.g.a.e r29, boolean r30, d.g.a.g r31, d.g.a.g r32, d.g.a.h.d.a r33, boolean r34, d.g.a.h.c r35, d.g.a.h.c r36, int r37, int r38, int r39, int r40, float r41, boolean r42, boolean r43, int r44, int r45, int r46, float r47, boolean r48) {
        /*
            r28 = this;
            r0 = r28
            r10 = r29
            r11 = r31
            r12 = r32
            r13 = r35
            r14 = r36
            r1 = r39
            r2 = r40
            d.g.a.g r15 = r10.a((java.lang.Object) r13)
            d.g.a.g r9 = r10.a((java.lang.Object) r14)
            d.g.a.h.c r3 = r13.f477d
            d.g.a.g r8 = r10.a((java.lang.Object) r3)
            d.g.a.h.c r3 = r14.f477d
            d.g.a.g r7 = r10.a((java.lang.Object) r3)
            boolean r3 = r10.f451g
            r6 = 1
            r5 = 6
            if (r3 == 0) goto L_0x0047
            d.g.a.h.j r3 = r13.a
            int r4 = r3.b
            if (r4 != r6) goto L_0x0047
            d.g.a.h.j r4 = r14.a
            int r4 = r4.b
            if (r4 != r6) goto L_0x0047
            r3.a((d.g.a.e) r10)
            d.g.a.h.j r1 = r14.a
            r1.a((d.g.a.e) r10)
            if (r43 != 0) goto L_0x0046
            if (r30 == 0) goto L_0x0046
            r1 = 0
            r10.b(r12, r9, r1, r5)
        L_0x0046:
            return
        L_0x0047:
            boolean r16 = r35.b()
            boolean r17 = r36.b()
            d.g.a.h.c r3 = r0.z
            boolean r18 = r3.b()
            if (r16 == 0) goto L_0x0059
            r3 = 1
            goto L_0x005a
        L_0x0059:
            r3 = 0
        L_0x005a:
            if (r17 == 0) goto L_0x005e
            int r3 = r3 + 1
        L_0x005e:
            if (r18 == 0) goto L_0x0062
            int r3 = r3 + 1
        L_0x0062:
            r4 = r3
            if (r42 == 0) goto L_0x0067
            r5 = 3
            goto L_0x0069
        L_0x0067:
            r5 = r44
        L_0x0069:
            int r3 = r33.ordinal()
            r6 = 2
            if (r3 == 0) goto L_0x0080
            r22 = r4
            r4 = 1
            if (r3 == r4) goto L_0x0078
            if (r3 == r6) goto L_0x007a
            r4 = 3
        L_0x0078:
            r3 = 0
            goto L_0x0083
        L_0x007a:
            r3 = 4
            if (r5 != r3) goto L_0x007e
            goto L_0x0078
        L_0x007e:
            r3 = 1
            goto L_0x0083
        L_0x0080:
            r22 = r4
            goto L_0x0078
        L_0x0083:
            int r4 = r0.Y
            r6 = 8
            if (r4 != r6) goto L_0x008c
            r3 = 0
            r4 = 0
            goto L_0x008f
        L_0x008c:
            r4 = r3
            r3 = r38
        L_0x008f:
            if (r48 == 0) goto L_0x00ac
            if (r16 != 0) goto L_0x009d
            if (r17 != 0) goto L_0x009d
            if (r18 != 0) goto L_0x009d
            r6 = r37
            r10.a((d.g.a.g) r15, (int) r6)
            goto L_0x00ac
        L_0x009d:
            if (r16 == 0) goto L_0x00ac
            if (r17 != 0) goto L_0x00ac
            int r6 = r35.a()
            r23 = r7
            r7 = 6
            r10.a(r15, r8, r6, r7)
            goto L_0x00af
        L_0x00ac:
            r23 = r7
            r7 = 6
        L_0x00af:
            if (r4 != 0) goto L_0x00df
            if (r34 == 0) goto L_0x00c8
            r6 = 3
            r7 = 0
            r10.a(r9, r15, r7, r6)
            r3 = 6
            if (r1 <= 0) goto L_0x00be
            r10.b(r9, r15, r1, r3)
        L_0x00be:
            r6 = 2147483647(0x7fffffff, float:NaN)
            if (r2 >= r6) goto L_0x00c6
            r10.c(r9, r15, r2, r3)
        L_0x00c6:
            r6 = 6
            goto L_0x00cd
        L_0x00c8:
            r6 = 6
            r7 = 0
            r10.a(r9, r15, r3, r6)
        L_0x00cd:
            r3 = r45
            r13 = r4
            r25 = r5
            r0 = r22
            r26 = r23
            r1 = 2
            r21 = 4
            r22 = r8
            r8 = r46
            goto L_0x01c7
        L_0x00df:
            r6 = 6
            r7 = 0
            r2 = -2
            r7 = r45
            r6 = r46
            if (r7 != r2) goto L_0x00e9
            r7 = r3
        L_0x00e9:
            if (r6 != r2) goto L_0x00ec
            r6 = r3
        L_0x00ec:
            r2 = 6
            if (r7 <= 0) goto L_0x00f6
            r10.b(r9, r15, r7, r2)
            int r3 = java.lang.Math.max(r3, r7)
        L_0x00f6:
            if (r6 <= 0) goto L_0x00ff
            r10.c(r9, r15, r6, r2)
            int r3 = java.lang.Math.min(r3, r6)
        L_0x00ff:
            r2 = 1
            if (r5 != r2) goto L_0x012d
            if (r30 == 0) goto L_0x0119
            r2 = 6
            r10.a(r9, r15, r3, r2)
            r14 = r3
            r25 = r5
            r27 = r7
            r0 = r22
            r26 = r23
            r1 = 2
            r21 = 4
            r22 = r8
            r8 = r6
            goto L_0x01ac
        L_0x0119:
            r2 = 6
            if (r43 == 0) goto L_0x0124
            r34 = r6
            r6 = 4
            r10.a(r9, r15, r3, r6)
            goto L_0x019c
        L_0x0124:
            r34 = r6
            r2 = 1
            r6 = 4
            r10.a(r9, r15, r3, r2)
            goto L_0x019c
        L_0x012d:
            r34 = r6
            r6 = 2
            if (r5 != r6) goto L_0x019c
            d.g.a.h.c$c r4 = r13.f476c
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.TOP
            if (r4 == r2) goto L_0x0156
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.BOTTOM
            if (r4 != r2) goto L_0x013d
            goto L_0x0156
        L_0x013d:
            d.g.a.h.d r2 = r0.D
            d.g.a.h.c$c r4 = d.g.a.h.c.C0020c.LEFT
            d.g.a.h.c r2 = r2.a((d.g.a.h.c.C0020c) r4)
            d.g.a.g r2 = r10.a((java.lang.Object) r2)
            d.g.a.h.d r4 = r0.D
            d.g.a.h.c$c r6 = d.g.a.h.c.C0020c.RIGHT
            d.g.a.h.c r4 = r4.a((d.g.a.h.c.C0020c) r6)
            d.g.a.g r4 = r10.a((java.lang.Object) r4)
            goto L_0x016e
        L_0x0156:
            d.g.a.h.d r2 = r0.D
            d.g.a.h.c$c r4 = d.g.a.h.c.C0020c.TOP
            d.g.a.h.c r2 = r2.a((d.g.a.h.c.C0020c) r4)
            d.g.a.g r2 = r10.a((java.lang.Object) r2)
            d.g.a.h.d r4 = r0.D
            d.g.a.h.c$c r6 = d.g.a.h.c.C0020c.BOTTOM
            d.g.a.h.c r4 = r4.a((d.g.a.h.c.C0020c) r6)
            d.g.a.g r4 = r10.a((java.lang.Object) r4)
        L_0x016e:
            r24 = r2
            r6 = r4
            d.g.a.b r4 = r29.b()
            r19 = 1
            r21 = 6
            r2 = r4
            r14 = r3
            r13 = 3
            r3 = r9
            r13 = r4
            r0 = r22
            r4 = r15
            r25 = r5
            r22 = r8
            r8 = 6
            r5 = r6
            r8 = r34
            r1 = 2
            r21 = 4
            r6 = r24
            r27 = r7
            r26 = r23
            r7 = r47
            r2.a(r3, r4, r5, r6, r7)
            r10.a((d.g.a.b) r13)
            r4 = 0
            goto L_0x01ac
        L_0x019c:
            r14 = r3
            r25 = r5
            r27 = r7
            r0 = r22
            r26 = r23
            r1 = 2
            r21 = 4
            r22 = r8
            r8 = r34
        L_0x01ac:
            if (r4 == 0) goto L_0x01c4
            if (r0 == r1) goto L_0x01c4
            if (r42 != 0) goto L_0x01c4
            r3 = r27
            int r2 = java.lang.Math.max(r3, r14)
            if (r8 <= 0) goto L_0x01be
            int r2 = java.lang.Math.min(r8, r2)
        L_0x01be:
            r4 = 6
            r10.a(r9, r15, r2, r4)
            r13 = 0
            goto L_0x01c7
        L_0x01c4:
            r3 = r27
            r13 = r4
        L_0x01c7:
            if (r48 == 0) goto L_0x0303
            if (r43 == 0) goto L_0x01cd
            goto L_0x0303
        L_0x01cd:
            r0 = 5
            if (r16 != 0) goto L_0x01e1
            if (r17 != 0) goto L_0x01e1
            if (r18 != 0) goto L_0x01e1
            if (r30 == 0) goto L_0x01dc
            r1 = 0
            r10.b(r12, r9, r1, r0)
            goto L_0x02f8
        L_0x01dc:
            r12 = r9
            r0 = 6
            r1 = 0
            goto L_0x02fa
        L_0x01e1:
            r1 = 0
            if (r16 == 0) goto L_0x01ed
            if (r17 != 0) goto L_0x01ed
            if (r30 == 0) goto L_0x02f8
            r10.b(r12, r9, r1, r0)
            goto L_0x02f8
        L_0x01ed:
            if (r16 != 0) goto L_0x0203
            if (r17 == 0) goto L_0x0203
            int r2 = r36.a()
            int r2 = -r2
            r14 = r26
            r3 = 6
            r10.a(r9, r14, r2, r3)
            if (r30 == 0) goto L_0x02f8
            r10.b(r15, r11, r1, r0)
            goto L_0x02f8
        L_0x0203:
            r14 = r26
            if (r16 == 0) goto L_0x02f8
            if (r17 == 0) goto L_0x02f8
            if (r13 == 0) goto L_0x0275
            if (r30 == 0) goto L_0x0214
            if (r39 != 0) goto L_0x0214
            r7 = 6
            r10.b(r9, r15, r1, r7)
            goto L_0x0215
        L_0x0214:
            r7 = 6
        L_0x0215:
            r1 = r25
            if (r1 != 0) goto L_0x0242
            if (r8 > 0) goto L_0x0221
            if (r3 <= 0) goto L_0x021e
            goto L_0x0221
        L_0x021e:
            r5 = 6
            r6 = 0
            goto L_0x0223
        L_0x0221:
            r5 = 4
            r6 = 1
        L_0x0223:
            int r1 = r35.a()
            r4 = r22
            r10.a(r15, r4, r1, r5)
            int r1 = r36.a()
            int r1 = -r1
            r10.a(r9, r14, r1, r5)
            if (r8 > 0) goto L_0x023b
            if (r3 <= 0) goto L_0x0239
            goto L_0x023b
        L_0x0239:
            r1 = 0
            goto L_0x023c
        L_0x023b:
            r1 = 1
        L_0x023c:
            r16 = r6
            r6 = 1
            r17 = 5
            goto L_0x024c
        L_0x0242:
            r4 = r22
            r6 = 1
            if (r1 != r6) goto L_0x024f
            r1 = 1
            r16 = 1
            r17 = 6
        L_0x024c:
            r5 = r28
            goto L_0x0280
        L_0x024f:
            r2 = 3
            r5 = r28
            if (r1 != r2) goto L_0x0273
            if (r42 != 0) goto L_0x025f
            int r1 = r5.n
            r2 = -1
            if (r1 == r2) goto L_0x025f
            if (r8 > 0) goto L_0x025f
            r1 = 6
            goto L_0x0260
        L_0x025f:
            r1 = 4
        L_0x0260:
            int r2 = r35.a()
            r10.a(r15, r4, r2, r1)
            int r2 = r36.a()
            int r2 = -r2
            r10.a(r9, r14, r2, r1)
            r1 = 1
            r16 = 1
            goto L_0x027e
        L_0x0273:
            r1 = 0
            goto L_0x027c
        L_0x0275:
            r4 = r22
            r6 = 1
            r7 = 6
            r5 = r28
            r1 = 1
        L_0x027c:
            r16 = 0
        L_0x027e:
            r17 = 5
        L_0x0280:
            if (r1 == 0) goto L_0x02c5
            int r8 = r35.a()
            int r18 = r36.a()
            r1 = r29
            r2 = r15
            r3 = r4
            r19 = r4
            r4 = r8
            r5 = r41
            r20 = 1
            r6 = r14
            r8 = 6
            r7 = r9
            r0 = r19
            r12 = 6
            r8 = r18
            r12 = r9
            r9 = r17
            r1.a(r2, r3, r4, r5, r6, r7, r8, r9)
            r1 = r35
            d.g.a.h.c r2 = r1.f477d
            d.g.a.h.d r2 = r2.b
            boolean r2 = r2 instanceof d.g.a.h.a
            r3 = r36
            d.g.a.h.c r4 = r3.f477d
            d.g.a.h.d r4 = r4.b
            boolean r4 = r4 instanceof d.g.a.h.a
            if (r2 == 0) goto L_0x02bb
            if (r4 != 0) goto L_0x02bb
            r6 = r30
            r2 = 6
            goto L_0x02d0
        L_0x02bb:
            if (r2 != 0) goto L_0x02cb
            if (r4 == 0) goto L_0x02cb
            r20 = r30
            r2 = 5
            r5 = 6
            r6 = 1
            goto L_0x02d1
        L_0x02c5:
            r1 = r35
            r3 = r36
            r0 = r4
            r12 = r9
        L_0x02cb:
            r6 = r30
            r20 = r6
            r2 = 5
        L_0x02d0:
            r5 = 5
        L_0x02d1:
            if (r16 == 0) goto L_0x02d5
            r2 = 6
            r5 = 6
        L_0x02d5:
            if (r13 != 0) goto L_0x02d9
            if (r6 != 0) goto L_0x02db
        L_0x02d9:
            if (r16 == 0) goto L_0x02e2
        L_0x02db:
            int r1 = r35.a()
            r10.b(r15, r0, r1, r5)
        L_0x02e2:
            if (r13 != 0) goto L_0x02e6
            if (r20 != 0) goto L_0x02e8
        L_0x02e6:
            if (r16 == 0) goto L_0x02f0
        L_0x02e8:
            int r0 = r36.a()
            int r0 = -r0
            r10.c(r12, r14, r0, r2)
        L_0x02f0:
            r0 = 6
            r1 = 0
            if (r30 == 0) goto L_0x02fa
            r10.b(r15, r11, r1, r0)
            goto L_0x02fa
        L_0x02f8:
            r12 = r9
            r0 = 6
        L_0x02fa:
            if (r30 == 0) goto L_0x0302
            r0 = r32
            r2 = 6
            r10.b(r0, r12, r1, r2)
        L_0x0302:
            return
        L_0x0303:
            r3 = r0
            r0 = r12
            r1 = 0
            r2 = 6
            r4 = 2
            r12 = r9
            if (r3 >= r4) goto L_0x0313
            if (r30 == 0) goto L_0x0313
            r10.b(r15, r11, r1, r2)
            r10.b(r0, r12, r1, r2)
        L_0x0313:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.a.h.d.a(d.g.a.e, boolean, d.g.a.g, d.g.a.g, d.g.a.h.d$a, boolean, d.g.a.h.c, d.g.a.h.c, int, int, int, int, float, boolean, boolean, int, int, int, float, boolean):void");
    }
}
