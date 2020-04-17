package k.b.i.a;

import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.l2.a;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;

public class i extends n {
    public final l x;
    public final int y;
    public final a z;

    public i(int i2, a aVar) {
        this.x = new l(0);
        this.y = i2;
        this.z = aVar;
    }

    public i(u uVar) {
        this.x = l.a((Object) uVar.a(0));
        this.y = l.a((Object) uVar.a(1)).k();
        this.z = a.a(uVar.a(2));
    }

    public static i a(Object obj) {
        if (obj instanceof i) {
            return (i) obj;
        }
        if (obj != null) {
            return new i(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(10);
        fVar.a((e) this.x);
        fVar.a((e) new l((long) this.y));
        fVar.a((e) this.z);
        return new e1(fVar);
    }
}
