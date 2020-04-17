package k.a.b.a.c.b1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class d extends b<k.a.b.a.b.m.d, List> implements s<k.a.b.a.b.m.d> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1663d = {i.a(50), f.a("amqp:discharge:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1664e = i.a(50);

    public static class a extends AbstractList {
        public k.a.b.a.b.m.d x;

        public a(k.a.b.a.b.m.d dVar) {
            this.x = dVar;
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
            return this.x.b != null ? 2 : 1;
        }
    }

    public d(x xVar) {
        super(xVar);
    }

    public Class<k.a.b.a.b.m.d> a() {
        return k.a.b.a.b.m.d.class;
    }

    public i b() {
        return f1664e;
    }

    public Object d(Object obj) {
        return new a((k.a.b.a.b.m.d) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0016, code lost:
        if (r1 != 1) goto L_0x002c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r4) {
        /*
            r3 = this;
            java.util.List r4 = (java.util.List) r4
            k.a.b.a.b.m.d r0 = new k.a.b.a.b.m.d
            r0.<init>()
            boolean r1 = r4.isEmpty()
            if (r1 != 0) goto L_0x0035
            int r1 = r4.size()
            int r1 = 2 - r1
            r2 = 1
            if (r1 == 0) goto L_0x0019
            if (r1 == r2) goto L_0x0021
            goto L_0x002c
        L_0x0019:
            java.lang.Object r1 = r4.get(r2)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            r0.b = r1
        L_0x0021:
            r1 = 0
            java.lang.Object r4 = r4.get(r1)
            k.a.b.a.b.a r4 = (k.a.b.a.b.a) r4
            if (r4 == 0) goto L_0x002d
            r0.a = r4
        L_0x002c:
            return r0
        L_0x002d:
            java.lang.NullPointerException r4 = new java.lang.NullPointerException
            java.lang.String r0 = "the txn-id field is mandatory"
            r4.<init>(r0)
            throw r4
        L_0x0035:
            k.a.b.a.c.q r4 = new k.a.b.a.c.q
            java.lang.String r0 = "The txn-id field cannot be omitted"
            r4.<init>(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.b1.d.b(java.lang.Object):java.lang.Object");
    }
}
