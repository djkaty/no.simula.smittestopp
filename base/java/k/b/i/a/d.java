package k.b.i.a;

import k.b.a.a1;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.n;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;
import k.b.i.d.a.a;

public class d extends n {
    public final int x;
    public final int y;
    public final a z;

    public d(int i2, int i3, a aVar) {
        this.x = i2;
        this.y = i3;
        this.z = new a(aVar);
    }

    public d(u uVar) {
        this.x = ((l) uVar.a(0)).k();
        this.y = ((l) uVar.a(1)).k();
        this.z = new a(((p) uVar.a(2)).j());
    }

    public t c() {
        f fVar = new f(10);
        fVar.a((e) new l((long) this.x));
        fVar.a((e) new l((long) this.y));
        fVar.a((e) new a1(this.z.a()));
        return new e1(fVar);
    }
}
