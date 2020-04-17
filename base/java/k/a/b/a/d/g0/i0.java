package k.a.b.a.d.g0;

import k.a.b.a.b.h;
import k.a.b.a.b.n.k;

public class i0 extends e0<q> {

    /* renamed from: j  reason: collision with root package name */
    public h f1864j;

    public i0(q qVar) {
        super(qVar);
        qVar.a0 = this;
    }

    public void a(k kVar) {
        super.a(kVar);
        int i2 = this.f1845g.x - this.f1842d.x;
        if (i2 > 0) {
            int i3 = -i2;
            ((q) this.f1844f).R += i3;
            this.f1843e = h.a(this.f1843e.x + i3);
            this.f1842d = this.f1845g;
            ((q) this.f1844f).T += i2;
        }
    }
}
