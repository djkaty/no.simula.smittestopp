package k.b.a.l2;

import e.a.a.a.a;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.j;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;

public class c extends n {
    public j x;
    public j y;

    public c(u uVar) {
        if (uVar.size() == 2) {
            this.x = j.a((Object) uVar.a(0));
            this.y = j.a((Object) uVar.a(1));
            return;
        }
        StringBuilder a = a.a("Bad sequence size: ");
        a.append(uVar.size());
        throw new IllegalArgumentException(a.toString());
    }

    public t c() {
        f fVar = new f(2);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        return new e1(fVar);
    }
}
