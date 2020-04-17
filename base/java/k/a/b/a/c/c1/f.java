package k.a.b.a.c.c1;

import java.util.Collections;
import java.util.List;
import k.a.b.a.b.n.i;
import k.a.b.a.b.n.j;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class f extends b<i, List> implements s<i> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1679d = {k.a.b.a.b.i.a(23), k.a.b.a.b.f.a("amqp:end:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final k.a.b.a.b.i f1680e = k.a.b.a.b.i.a(23);

    public f(x xVar) {
        super(xVar);
    }

    public Class<i> a() {
        return i.class;
    }

    public k.a.b.a.b.i b() {
        return f1680e;
    }

    public Object d(Object obj) {
        j jVar = ((i) obj).a;
        return jVar == null ? Collections.EMPTY_LIST : Collections.singletonList(jVar);
    }

    public Object b(Object obj) {
        List list = (List) obj;
        i iVar = new i();
        if (!list.isEmpty()) {
            iVar.a = (j) list.get(0);
        }
        return iVar;
    }
}
