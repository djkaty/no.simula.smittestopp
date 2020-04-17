package k.a.b.a.c.a1;

import java.util.Collections;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.c.b;
import k.a.b.a.c.q;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class a extends b<k.a.b.a.b.l.a, List> implements s<k.a.b.a.b.l.a> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1644d = {i.a(66), f.a("amqp:sasl-challenge:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1645e = i.a(66);

    public a(x xVar) {
        super(xVar);
    }

    public Class<k.a.b.a.b.l.a> a() {
        return k.a.b.a.b.l.a.class;
    }

    public i b() {
        return f1645e;
    }

    public Object d(Object obj) {
        return Collections.singletonList(((k.a.b.a.b.l.a) obj).a);
    }

    public Object b(Object obj) {
        List list = (List) obj;
        k.a.b.a.b.l.a aVar = new k.a.b.a.b.l.a();
        if (!list.isEmpty()) {
            k.a.b.a.b.a aVar2 = (k.a.b.a.b.a) list.get(0);
            if (aVar2 != null) {
                aVar.a = aVar2;
                return aVar;
            }
            throw new NullPointerException("the challenge field is mandatory");
        }
        throw new q("The challenge field cannot be omitted");
    }
}
