package k.a.b.a.c.z0;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.k.r;
import k.a.b.a.b.n.j;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class a0 extends k.a.b.a.c.b<r, List> implements s<r> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1798d = {i.a(37), f.a("amqp:rejected:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1799e = i.a(37);

    public static final class b extends AbstractList {
        public final r x;

        public /* synthetic */ b(r rVar, a aVar) {
            this.x = rVar;
        }

        public Object get(int i2) {
            if (i2 == 0) {
                return this.x.a;
            }
            throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
        }

        public int size() {
            return this.x.a != null ? 1 : 0;
        }
    }

    public a0(x xVar) {
        super(xVar);
    }

    public Class<r> a() {
        return r.class;
    }

    public i b() {
        return f1799e;
    }

    public Object d(Object obj) {
        return new b((r) obj, (a) null);
    }

    public Object b(Object obj) {
        List list = (List) obj;
        r rVar = new r();
        if (1 - list.size() == 0) {
            rVar.a = (j) list.get(0);
        }
        return rVar;
    }
}
