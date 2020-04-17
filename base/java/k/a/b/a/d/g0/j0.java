package k.a.b.a.d.g0;

import k.a.b.a.b.h;
import k.a.b.a.b.n.k;

public class j0 extends e0<x> {

    /* renamed from: k  reason: collision with root package name */
    public static final h f1871k = h.z;

    /* renamed from: j  reason: collision with root package name */
    public e f1872j;

    public j0(x xVar) {
        super(xVar);
        this.f1842d = f1871k;
        xVar.a0 = this;
    }

    public void a(k kVar) {
        super.a(kVar);
        boolean z = kVar.f1623i;
        x xVar = (x) this.f1844f;
        xVar.X = z;
        int i2 = xVar.R;
        h a = this.f1843e.a(this.f1842d);
        h hVar = kVar.f1621g;
        h hVar2 = kVar.f1620f;
        if (hVar2 == null) {
            hVar2 = f1871k;
        }
        h a2 = hVar.a(hVar2);
        h c2 = a2.c(this.f1842d);
        this.f1843e = c2;
        ((x) this.f1844f).R = a2.c(a).x + i2;
        x xVar2 = (x) this.f1844f;
        xVar2.H.H.a(xVar2.K);
        this.f1843e = c2;
    }
}
