package k.a.b.a.c.z0;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.k.q;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class z extends k.a.b.a.c.b<q, List> implements s<q> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1838d = {i.a(35), f.a("amqp:received:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1839e = i.a(35);

    public static final class b extends AbstractList {
        public final q x;

        public /* synthetic */ b(q qVar, a aVar) {
            this.x = qVar;
        }

        public Object get(int i2) {
            if (i2 == 0) {
                return this.x.a;
            }
            if (i2 == 1) {
                return this.x.b;
            }
            throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
        }

        public int size() {
            q qVar = this.x;
            if (qVar.b != null) {
                return 2;
            }
            return qVar.a != null ? 1 : 0;
        }
    }

    public z(x xVar) {
        super(xVar);
    }

    public Class<q> a() {
        return q.class;
    }

    public i b() {
        return f1839e;
    }

    public Object d(Object obj) {
        return new b((q) obj, (a) null);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0010, code lost:
        if (r1 != 1) goto L_0x0024;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r4) {
        /*
            r3 = this;
            java.util.List r4 = (java.util.List) r4
            k.a.b.a.b.k.q r0 = new k.a.b.a.b.k.q
            r0.<init>()
            int r1 = r4.size()
            int r1 = 2 - r1
            r2 = 1
            if (r1 == 0) goto L_0x0013
            if (r1 == r2) goto L_0x001b
            goto L_0x0024
        L_0x0013:
            java.lang.Object r1 = r4.get(r2)
            k.a.b.a.b.i r1 = (k.a.b.a.b.i) r1
            r0.b = r1
        L_0x001b:
            r1 = 0
            java.lang.Object r4 = r4.get(r1)
            k.a.b.a.b.h r4 = (k.a.b.a.b.h) r4
            r0.a = r4
        L_0x0024:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.z0.z.b(java.lang.Object):java.lang.Object");
    }
}
