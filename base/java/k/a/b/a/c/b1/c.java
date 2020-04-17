package k.a.b.a.c.b1;

import java.util.Collections;
import java.util.List;
import k.a.b.a.b.a;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.c.b;
import k.a.b.a.c.q;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class c extends b<k.a.b.a.b.m.c, List> implements s<k.a.b.a.b.m.c> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1661d = {i.a(51), f.a("amqp:declared:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1662e = i.a(51);

    public c(x xVar) {
        super(xVar);
    }

    public Class<k.a.b.a.b.m.c> a() {
        return k.a.b.a.b.m.c.class;
    }

    public i b() {
        return f1662e;
    }

    public Object d(Object obj) {
        return Collections.singletonList(((k.a.b.a.b.m.c) obj).a);
    }

    public Object b(Object obj) {
        List list = (List) obj;
        k.a.b.a.b.m.c cVar = new k.a.b.a.b.m.c();
        if (!list.isEmpty()) {
            a aVar = (a) list.get(0);
            if (aVar != null) {
                cVar.a = aVar;
                return cVar;
            }
            throw new NullPointerException("the txn-id field is mandatory");
        }
        throw new q("The txn-id field cannot be omitted");
    }
}
