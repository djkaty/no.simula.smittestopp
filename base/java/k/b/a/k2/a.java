package k.b.a.k2;

import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.n;
import k.b.a.o;
import k.b.a.t;
import k.b.a.u;

public class a extends n {
    public o x;
    public e y;

    public a(u uVar) {
        this.x = (o) uVar.a(0);
        this.y = uVar.a(1);
    }

    public static a a(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(u.a(obj));
        }
        throw new IllegalArgumentException("null value in getInstance()");
    }

    public t c() {
        f fVar = new f(2);
        fVar.a((e) this.x);
        fVar.a(this.y);
        return new e1(fVar);
    }
}
