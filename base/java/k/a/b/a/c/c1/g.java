package k.a.b.a.c.c1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.n.j;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class g extends b<j, List> implements s<j> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1681d = {i.a(29), f.a("amqp:error:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1682e = i.a(29);

    public static class a extends AbstractList {
        public j x;

        public a(j jVar) {
            this.x = jVar;
        }

        public Object get(int i2) {
            if (i2 == 0) {
                return this.x.a;
            }
            if (i2 == 1) {
                return this.x.b;
            }
            if (i2 == 2) {
                return this.x.f1616c;
            }
            throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
        }

        public int size() {
            j jVar = this.x;
            if (jVar.f1616c != null) {
                return 3;
            }
            return jVar.b != null ? 2 : 1;
        }
    }

    public g(x xVar) {
        super(xVar);
    }

    public Class<j> a() {
        return j.class;
    }

    public i b() {
        return f1682e;
    }

    public Object d(Object obj) {
        return new a((j) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r1 != 2) goto L_0x0036;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r5) {
        /*
            r4 = this;
            java.util.List r5 = (java.util.List) r5
            k.a.b.a.b.n.j r0 = new k.a.b.a.b.n.j
            r0.<init>()
            boolean r1 = r5.isEmpty()
            if (r1 != 0) goto L_0x0037
            int r1 = r5.size()
            int r1 = 3 - r1
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L_0x001c
            if (r1 == r3) goto L_0x0024
            if (r1 == r2) goto L_0x002c
            goto L_0x0036
        L_0x001c:
            java.lang.Object r1 = r5.get(r2)
            java.util.Map r1 = (java.util.Map) r1
            r0.f1616c = r1
        L_0x0024:
            java.lang.Object r1 = r5.get(r3)
            java.lang.String r1 = (java.lang.String) r1
            r0.b = r1
        L_0x002c:
            r1 = 0
            java.lang.Object r5 = r5.get(r1)
            k.a.b.a.b.f r5 = (k.a.b.a.b.f) r5
            r0.a((k.a.b.a.b.f) r5)
        L_0x0036:
            return r0
        L_0x0037:
            k.a.b.a.c.q r5 = new k.a.b.a.c.q
            java.lang.String r0 = "The condition field cannot be omitted"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.c1.g.b(java.lang.Object):java.lang.Object");
    }
}
