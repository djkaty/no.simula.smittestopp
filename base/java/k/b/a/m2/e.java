package k.b.a.m2;

import k.b.a.e1;
import k.b.a.f;
import k.b.a.n;
import k.b.a.o;
import k.b.a.t;
import k.b.a.u;

public class e extends n implements f {
    public o x;
    public t y;

    public e(u uVar) {
        this.x = o.a((Object) uVar.a(0));
        this.y = uVar.a(1).c();
    }

    public static e a(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(2);
        fVar.a((k.b.a.e) this.x);
        fVar.a((k.b.a.e) this.y);
        return new e1(fVar);
    }
}
