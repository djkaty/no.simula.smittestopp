package k.a.b.a.c.b1;

import java.util.Collections;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.m.e;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class b extends k.a.b.a.c.b<k.a.b.a.b.m.b, List> implements s<k.a.b.a.b.m.b> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1659d = {i.a(49), f.a("amqp:declare:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1660e = i.a(49);

    public b(x xVar) {
        super(xVar);
    }

    public Class<k.a.b.a.b.m.b> a() {
        return k.a.b.a.b.m.b.class;
    }

    public i b() {
        return f1660e;
    }

    public Object d(Object obj) {
        e eVar = ((k.a.b.a.b.m.b) obj).a;
        return eVar == null ? Collections.EMPTY_LIST : Collections.singletonList(eVar);
    }

    public Object b(Object obj) {
        List list = (List) obj;
        k.a.b.a.b.m.b bVar = new k.a.b.a.b.m.b();
        if (!list.isEmpty()) {
            bVar.a = (e) list.get(0);
        }
        return bVar;
    }
}
