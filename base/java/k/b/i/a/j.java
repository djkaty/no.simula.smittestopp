package k.b.i.a;

import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.l2.a;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;

public class j extends n {
    public final a A;
    public final l x;
    public final int y;
    public final int z;

    public j(int i2, int i3, a aVar) {
        this.x = new l(0);
        this.y = i2;
        this.z = i3;
        this.A = aVar;
    }

    public j(u uVar) {
        this.x = l.a((Object) uVar.a(0));
        this.y = l.a((Object) uVar.a(1)).k();
        this.z = l.a((Object) uVar.a(2)).k();
        this.A = a.a(uVar.a(3));
    }

    public static j a(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(10);
        fVar.a((e) this.x);
        fVar.a((e) new l((long) this.y));
        fVar.a((e) new l((long) this.z));
        fVar.a((e) this.A);
        return new e1(fVar);
    }
}
