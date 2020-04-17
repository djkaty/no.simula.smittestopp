package k.a.b.a.c.b1;

import java.util.Collections;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class a extends b<k.a.b.a.b.m.a, List> implements s<k.a.b.a.b.m.a> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1657d = {i.a(48), f.a("amqp:coordinator:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1658e = i.a(48);

    public a(x xVar) {
        super(xVar);
    }

    public Class<k.a.b.a.b.m.a> a() {
        return k.a.b.a.b.m.a.class;
    }

    public i b() {
        return f1658e;
    }

    public Object d(Object obj) {
        f[] fVarArr = ((k.a.b.a.b.m.a) obj).a;
        if (fVarArr == null || fVarArr.length == 0) {
            return Collections.EMPTY_LIST;
        }
        return Collections.singletonList(fVarArr);
    }

    public Object b(Object obj) {
        List list = (List) obj;
        k.a.b.a.b.m.a aVar = new k.a.b.a.b.m.a();
        if (1 - list.size() == 0) {
            Object obj2 = list.get(0);
            if (obj2 == null || obj2.getClass().isArray()) {
                aVar.a = (f[]) obj2;
            } else {
                aVar.a = new f[]{(f) obj2};
            }
        }
        return aVar;
    }
}
