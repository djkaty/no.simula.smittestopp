package k.a.b.a.d.g0;

import k.a.b.a.b.h;

public class z {
    public h a;
    public e b;

    /* renamed from: c  reason: collision with root package name */
    public e0 f1935c;

    /* renamed from: d  reason: collision with root package name */
    public int f1936d = 1;

    public z(h hVar, e eVar, e0 e0Var) {
        this.a = hVar;
        this.b = eVar;
        this.f1935c = e0Var;
    }

    public void a() {
        T t = this.f1935c.f1844f;
        k0 k0Var = t.H.L;
        if (k0Var != null) {
            if (t instanceof q) {
                k0Var.p.remove(this.a);
                k0Var.b.c(false);
            } else {
                k0Var.q.remove(this.a);
                k0Var.b.c(false);
            }
            this.b.n();
            return;
        }
        throw null;
    }
}
