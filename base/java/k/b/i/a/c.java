package k.b.i.a;

import k.b.a.a1;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.n;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;
import k.b.i.d.a.a;
import k.b.i.d.a.b;
import k.b.i.d.a.d;
import k.b.i.d.a.e;

public class c extends n {
    public byte[] A;
    public byte[] B;
    public byte[] C;
    public byte[] D;
    public int x;
    public int y;
    public byte[] z;

    public c(int i2, int i3, b bVar, e eVar, d dVar, d dVar2, a aVar) {
        this.x = i2;
        this.y = i3;
        this.z = bVar.a();
        this.A = eVar.c();
        this.B = aVar.a();
        this.C = dVar.a();
        this.D = dVar2.a();
    }

    public c(u uVar) {
        this.x = ((l) uVar.a(0)).k();
        this.y = ((l) uVar.a(1)).k();
        this.z = ((p) uVar.a(2)).j();
        this.A = ((p) uVar.a(3)).j();
        this.C = ((p) uVar.a(4)).j();
        this.D = ((p) uVar.a(5)).j();
        this.B = ((p) uVar.a(6)).j();
    }

    public t c() {
        f fVar = new f(10);
        fVar.a((k.b.a.e) new l((long) this.x));
        fVar.a((k.b.a.e) new l((long) this.y));
        fVar.a((k.b.a.e) new a1(this.z));
        fVar.a((k.b.a.e) new a1(this.A));
        fVar.a((k.b.a.e) new a1(this.C));
        fVar.a((k.b.a.e) new a1(this.D));
        fVar.a((k.b.a.e) new a1(this.B));
        return new e1(fVar);
    }
}
