package k.a.b.a.c.c1;

import java.util.Collections;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.n.j;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class c extends b<k.a.b.a.b.n.c, List> implements s<k.a.b.a.b.n.c> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1673d = {i.a(24), f.a("amqp:close:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1674e = i.a(24);

    public c(x xVar) {
        super(xVar);
    }

    public Class<k.a.b.a.b.n.c> a() {
        return k.a.b.a.b.n.c.class;
    }

    public i b() {
        return f1674e;
    }

    public Object d(Object obj) {
        j jVar = ((k.a.b.a.b.n.c) obj).a;
        return jVar == null ? Collections.EMPTY_LIST : Collections.singletonList(jVar);
    }

    public Object b(Object obj) {
        List list = (List) obj;
        k.a.b.a.b.n.c cVar = new k.a.b.a.b.n.c();
        if (!list.isEmpty()) {
            cVar.a = (j) list.get(0);
        }
        return cVar;
    }
}
