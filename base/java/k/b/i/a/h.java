package k.b.i.a;

import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.l2.a;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;

public class h extends n {
    public final l x;
    public final a y;

    public h(a aVar) {
        this.x = new l(0);
        this.y = aVar;
    }

    public h(u uVar) {
        this.x = l.a((Object) uVar.a(0));
        this.y = a.a(uVar.a(1));
    }

    public static final h a(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(10);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        return new e1(fVar);
    }
}
