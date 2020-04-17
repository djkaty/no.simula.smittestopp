package k.b.i.a;

import k.b.a.a1;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.l2.a;
import k.b.a.n;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;

public class b extends n {
    public final a A;
    public final int x;
    public final int y;
    public final k.b.i.d.a.a z;

    public b(int i2, int i3, k.b.i.d.a.a aVar, a aVar2) {
        this.x = i2;
        this.y = i3;
        this.z = new k.b.i.d.a.a(aVar.a());
        this.A = aVar2;
    }

    public b(u uVar) {
        this.x = ((l) uVar.a(0)).k();
        this.y = ((l) uVar.a(1)).k();
        this.z = new k.b.i.d.a.a(((p) uVar.a(2)).j());
        this.A = a.a(uVar.a(3));
    }

    public t c() {
        f fVar = new f(10);
        fVar.a((e) new l((long) this.x));
        fVar.a((e) new l((long) this.y));
        fVar.a((e) new a1(this.z.a()));
        fVar.a((e) this.A);
        return new e1(fVar);
    }
}
