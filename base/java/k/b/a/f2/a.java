package k.b.a.f2;

import k.b.a.b0;
import k.b.a.e;
import k.b.a.f;
import k.b.a.j0;
import k.b.a.n;
import k.b.a.n0;
import k.b.a.o;
import k.b.a.t;
import k.b.a.u;

public class a extends n {
    public o x;
    public e y;

    public a(u uVar) {
        if (uVar.size() < 1 || uVar.size() > 2) {
            StringBuilder a = e.a.a.a.a.a("Bad sequence size: ");
            a.append(uVar.size());
            throw new IllegalArgumentException(a.toString());
        }
        this.x = (o) uVar.a(0);
        if (uVar.size() > 1) {
            b0 b0Var = (b0) uVar.a(1);
            if (!b0Var.y || b0Var.x != 0) {
                throw new IllegalArgumentException("Bad tag for 'content'");
            }
            this.y = b0Var.j();
        }
    }

    public t c() {
        f fVar = new f(2);
        fVar.a((e) this.x);
        e eVar = this.y;
        if (eVar != null) {
            fVar.a((e) new n0(0, eVar));
        }
        return new j0(fVar);
    }
}
