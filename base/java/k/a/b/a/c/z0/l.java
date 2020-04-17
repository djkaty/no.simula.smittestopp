package k.a.b.a.c.z0;

import java.util.Collections;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.k.b;
import k.a.b.a.c.a;
import k.a.b.a.c.r;
import k.a.b.a.c.r0;
import k.a.b.a.c.x;
import k.a.b.a.c.y;
import k.a.b.a.c.y0;

public class l implements a<b>, y<b> {
    public static final Object[] b = {i.a(118), f.a("amqp:amqp-sequence:list")};
    public final b a;

    public l(x xVar) {
        this.a = new b(xVar);
    }

    public r0 a(Object obj) {
        return this.a.a((b) obj);
    }

    public void c(Object obj) {
        y0 y0Var = this.a.b.a;
        y0Var.a((byte) 0);
        y0Var.a((byte) 83);
        y0Var.a((byte) 118);
        this.a.b.b(((b) obj).a);
    }

    public boolean e() {
        return false;
    }

    public r0<b> f() {
        if (this.a != null) {
            return null;
        }
        throw null;
    }

    public Object k() {
        List list;
        r rVar = this.a.a;
        byte b2 = rVar.a.get();
        if (b2 == -64) {
            list = (List) rVar.f1768c[192].k();
        } else if (b2 == -48) {
            list = (List) rVar.f1768c[208].k();
        } else if (b2 == 64) {
            list = null;
        } else if (b2 == 69) {
            list = Collections.EMPTY_LIST;
        } else {
            throw new k.a.b.a.a(e.a.a.a.a.a("Expected List type but found encoding: ", (int) b2));
        }
        return new b(list);
    }

    public Class<b> a() {
        return b.class;
    }
}
