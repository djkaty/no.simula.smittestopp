package k.a.b.a.c.a1;

import java.util.Collections;
import java.util.List;
import k.a.b.a.b.a;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.l.g;
import k.a.b.a.c.b;
import k.a.b.a.c.q;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class e extends b<g, List> implements s<g> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1652d = {i.a(67), f.a("amqp:sasl-response:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1653e = i.a(67);

    public e(x xVar) {
        super(xVar);
    }

    public Class<g> a() {
        return g.class;
    }

    public i b() {
        return f1653e;
    }

    public Object d(Object obj) {
        return Collections.singletonList(((g) obj).a);
    }

    public Object b(Object obj) {
        List list = (List) obj;
        g gVar = new g();
        if (!list.isEmpty()) {
            if (1 - list.size() == 0) {
                a aVar = (a) list.get(0);
                if (aVar != null) {
                    gVar.a = aVar;
                } else {
                    throw new NullPointerException("the response field is mandatory");
                }
            }
            return gVar;
        }
        throw new q("The response field cannot be omitted");
    }
}
