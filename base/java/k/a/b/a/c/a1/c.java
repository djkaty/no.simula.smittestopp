package k.a.b.a.c.a1;

import java.util.Collections;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.l.e;
import k.a.b.a.c.b;
import k.a.b.a.c.q;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class c extends b<e, List> implements s<e> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1648d = {i.a(64), f.a("amqp:sasl-mechanisms:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1649e = i.a(64);

    public c(x xVar) {
        super(xVar);
    }

    public Class<e> a() {
        return e.class;
    }

    public i b() {
        return f1649e;
    }

    public Object d(Object obj) {
        return Collections.singletonList(((e) obj).a);
    }

    public Object b(Object obj) {
        List list = (List) obj;
        e eVar = new e();
        if (!list.isEmpty()) {
            Object obj2 = list.get(0);
            if (obj2 == null || obj2.getClass().isArray()) {
                eVar.a((f[]) obj2);
            } else {
                eVar.a((f) obj2);
            }
            return eVar;
        }
        throw new q("The sasl-server-mechanisms field cannot be omitted");
    }
}
