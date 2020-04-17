package d.g.a.h;

import d.g.a.e;
import d.g.a.g;
import d.g.a.h.c;
import e.a.a.a.a;

public class j extends l {

    /* renamed from: c  reason: collision with root package name */
    public c f502c;

    /* renamed from: d  reason: collision with root package name */
    public j f503d;

    /* renamed from: e  reason: collision with root package name */
    public float f504e;

    /* renamed from: f  reason: collision with root package name */
    public j f505f;

    /* renamed from: g  reason: collision with root package name */
    public float f506g;

    /* renamed from: h  reason: collision with root package name */
    public int f507h = 0;

    /* renamed from: i  reason: collision with root package name */
    public j f508i;

    /* renamed from: j  reason: collision with root package name */
    public k f509j = null;

    /* renamed from: k  reason: collision with root package name */
    public int f510k = 1;

    /* renamed from: l  reason: collision with root package name */
    public k f511l = null;
    public int m = 1;

    public j(c cVar) {
        this.f502c = cVar;
    }

    public String a(int i2) {
        return i2 == 1 ? "DIRECT" : i2 == 2 ? "CENTER" : i2 == 3 ? "MATCH" : i2 == 4 ? "CHAIN" : i2 == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public void a(j jVar, float f2) {
        if (this.b == 0 || !(this.f505f == jVar || this.f506g == f2)) {
            this.f505f = jVar;
            this.f506g = f2;
            if (this.b == 1) {
                b();
            }
            a();
        }
    }

    public void d() {
        j jVar;
        j jVar2;
        j jVar3;
        j jVar4;
        j jVar5;
        j jVar6;
        float f2;
        float f3;
        float f4;
        float f5;
        j jVar7;
        boolean z = true;
        if (this.b != 1 && this.f507h != 4) {
            k kVar = this.f509j;
            if (kVar != null) {
                if (kVar.b == 1) {
                    this.f504e = ((float) this.f510k) * kVar.f512c;
                } else {
                    return;
                }
            }
            k kVar2 = this.f511l;
            if (kVar2 != null) {
                if (kVar2.b == 1) {
                    float f6 = kVar2.f512c;
                } else {
                    return;
                }
            }
            if (this.f507h == 1 && ((jVar7 = this.f503d) == null || jVar7.b == 1)) {
                j jVar8 = this.f503d;
                if (jVar8 == null) {
                    this.f505f = this;
                    this.f506g = this.f504e;
                } else {
                    this.f505f = jVar8.f505f;
                    this.f506g = jVar8.f506g + this.f504e;
                }
                a();
            } else if (this.f507h == 2 && (jVar4 = this.f503d) != null && jVar4.b == 1 && (jVar5 = this.f508i) != null && (jVar6 = jVar5.f503d) != null && jVar6.b == 1) {
                this.f505f = jVar4.f505f;
                jVar5.f505f = jVar6.f505f;
                c.C0020c cVar = this.f502c.f476c;
                int i2 = 0;
                if (!(cVar == c.C0020c.RIGHT || cVar == c.C0020c.BOTTOM)) {
                    z = false;
                }
                if (z) {
                    f3 = this.f503d.f506g;
                    f2 = this.f508i.f503d.f506g;
                } else {
                    f3 = this.f508i.f503d.f506g;
                    f2 = this.f503d.f506g;
                }
                float f7 = f3 - f2;
                c cVar2 = this.f502c;
                c.C0020c cVar3 = cVar2.f476c;
                if (cVar3 == c.C0020c.LEFT || cVar3 == c.C0020c.RIGHT) {
                    f5 = f7 - ((float) this.f502c.b.i());
                    f4 = this.f502c.b.V;
                } else {
                    f5 = f7 - ((float) cVar2.b.d());
                    f4 = this.f502c.b.W;
                }
                int a = this.f502c.a();
                int a2 = this.f508i.f502c.a();
                if (this.f502c.f477d == this.f508i.f502c.f477d) {
                    f4 = 0.5f;
                    a2 = 0;
                } else {
                    i2 = a;
                }
                float f8 = (float) i2;
                float f9 = (float) a2;
                float f10 = (f5 - f8) - f9;
                if (z) {
                    j jVar9 = this.f508i;
                    jVar9.f506g = (f10 * f4) + jVar9.f503d.f506g + f9;
                    this.f506g = (this.f503d.f506g - f8) - ((1.0f - f4) * f10);
                } else {
                    this.f506g = (f10 * f4) + this.f503d.f506g + f8;
                    j jVar10 = this.f508i;
                    jVar10.f506g = (jVar10.f503d.f506g - f9) - ((1.0f - f4) * f10);
                }
                a();
                this.f508i.a();
            } else if (this.f507h == 3 && (jVar = this.f503d) != null && jVar.b == 1 && (jVar2 = this.f508i) != null && (jVar3 = jVar2.f503d) != null && jVar3.b == 1) {
                this.f505f = jVar.f505f;
                jVar2.f505f = jVar3.f505f;
                this.f506g = jVar.f506g + this.f504e;
                jVar2.f506g = jVar3.f506g + jVar2.f504e;
                a();
                this.f508i.a();
            } else if (this.f507h == 5) {
                this.f502c.b.m();
            }
        }
    }

    public void e() {
        this.b = 0;
        this.a.clear();
        this.f503d = null;
        this.f504e = 0.0f;
        this.f509j = null;
        this.f510k = 1;
        this.f511l = null;
        this.m = 1;
        this.f505f = null;
        this.f506g = 0.0f;
        this.f508i = null;
        this.f507h = 0;
    }

    public String toString() {
        if (this.b != 1) {
            StringBuilder a = a.a("{ ");
            a.append(this.f502c);
            a.append(" UNRESOLVED} type: ");
            a.append(a(this.f507h));
            return a.toString();
        } else if (this.f505f == this) {
            StringBuilder a2 = a.a("[");
            a2.append(this.f502c);
            a2.append(", RESOLVED: ");
            a2.append(this.f506g);
            a2.append("]  type: ");
            a2.append(a(this.f507h));
            return a2.toString();
        } else {
            StringBuilder a3 = a.a("[");
            a3.append(this.f502c);
            a3.append(", RESOLVED: ");
            a3.append(this.f505f);
            a3.append(":");
            a3.append(this.f506g);
            a3.append("] type: ");
            a3.append(a(this.f507h));
            return a3.toString();
        }
    }

    public void a(int i2, j jVar, int i3) {
        this.f507h = i2;
        this.f503d = jVar;
        this.f504e = (float) i3;
        jVar.a.add(this);
    }

    public void a(j jVar, int i2) {
        this.f503d = jVar;
        this.f504e = (float) i2;
        jVar.a.add(this);
    }

    public void a(j jVar, int i2, k kVar) {
        this.f503d = jVar;
        jVar.a.add(this);
        this.f509j = kVar;
        this.f510k = i2;
        kVar.a.add(this);
    }

    public void a(e eVar) {
        g gVar = this.f502c.f482i;
        j jVar = this.f505f;
        if (jVar == null) {
            eVar.a(gVar, (int) (this.f506g + 0.5f));
        } else {
            eVar.a(gVar, eVar.a((Object) jVar.f502c), (int) (this.f506g + 0.5f), 6);
        }
    }
}
