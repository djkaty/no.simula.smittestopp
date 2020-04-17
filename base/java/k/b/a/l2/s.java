package k.b.a.l2;

import e.a.a.a.a;
import java.util.Enumeration;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.n;
import k.b.a.r0;
import k.b.a.t;
import k.b.a.u;

public class s extends n {
    public a x;
    public r0 y;

    public s(a aVar, e eVar) {
        this.y = new r0(eVar);
        this.x = aVar;
    }

    public s(a aVar, byte[] bArr) {
        this.y = new r0(bArr);
        this.x = aVar;
    }

    public s(u uVar) {
        if (uVar.size() == 2) {
            Enumeration j2 = uVar.j();
            this.x = a.a(j2.nextElement());
            this.y = r0.a(j2.nextElement());
            return;
        }
        StringBuilder a = a.a("Bad sequence size: ");
        a.append(uVar.size());
        throw new IllegalArgumentException(a.toString());
    }

    public static s a(Object obj) {
        if (obj instanceof s) {
            return (s) obj;
        }
        if (obj != null) {
            return new s(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(2);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        return new e1(fVar);
    }

    public t f() {
        r0 r0Var = this.y;
        if (r0Var.y == 0) {
            return t.a(k.b.c.e.a.a(r0Var.x));
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }
}
