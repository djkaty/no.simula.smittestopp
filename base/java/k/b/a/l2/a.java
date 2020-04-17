package k.b.a.l2;

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

    public a(o oVar) {
        this.x = oVar;
    }

    public a(o oVar, e eVar) {
        this.x = oVar;
        this.y = eVar;
    }

    public a(u uVar) {
        if (uVar.size() < 1 || uVar.size() > 2) {
            StringBuilder a = e.a.a.a.a.a("Bad sequence size: ");
            a.append(uVar.size());
            throw new IllegalArgumentException(a.toString());
        }
        this.x = o.a((Object) uVar.a(0));
        this.y = uVar.size() == 2 ? uVar.a(1) : null;
    }

    public static a a(Object obj) {
        if (obj instanceof a) {
            return (a) obj;
        }
        if (obj != null) {
            return new a(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(2);
        fVar.a((e) this.x);
        e eVar = this.y;
        if (eVar != null) {
            fVar.a(eVar);
        }
        return new e1(fVar);
    }
}
