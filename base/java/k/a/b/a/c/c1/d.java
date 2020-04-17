package k.a.b.a.c.c1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.i;
import k.a.b.a.b.n.f;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class d extends b<f, List> implements s<f> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1675d = {i.a(22), k.a.b.a.b.f.a("amqp:detach:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1676e = i.a(22);

    public static class a extends AbstractList {
        public f x;

        public a(f fVar) {
            this.x = fVar;
        }

        public Object get(int i2) {
            if (i2 == 0) {
                return this.x.a;
            }
            if (i2 == 1) {
                return Boolean.valueOf(this.x.b);
            }
            if (i2 == 2) {
                return this.x.f1611c;
            }
            throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
        }

        public int size() {
            f fVar = this.x;
            if (fVar.f1611c != null) {
                return 3;
            }
            return fVar.b ? 2 : 1;
        }
    }

    public d(x xVar) {
        super(xVar);
    }

    public Class<f> a() {
        return f.class;
    }

    public i b() {
        return f1676e;
    }

    public Object d(Object obj) {
        return new a((f) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r1 != 2) goto L_0x003f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r6) {
        /*
            r5 = this;
            java.util.List r6 = (java.util.List) r6
            k.a.b.a.b.n.f r0 = new k.a.b.a.b.n.f
            r0.<init>()
            boolean r1 = r6.isEmpty()
            if (r1 != 0) goto L_0x0048
            int r1 = r6.size()
            int r1 = 3 - r1
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L_0x001d
            if (r1 == r3) goto L_0x0025
            if (r1 == r2) goto L_0x0035
            goto L_0x003f
        L_0x001d:
            java.lang.Object r1 = r6.get(r2)
            k.a.b.a.b.n.j r1 = (k.a.b.a.b.n.j) r1
            r0.f1611c = r1
        L_0x0025:
            java.lang.Object r1 = r6.get(r3)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x002f
            r1 = 0
            goto L_0x0033
        L_0x002f:
            boolean r1 = r1.booleanValue()
        L_0x0033:
            r0.b = r1
        L_0x0035:
            java.lang.Object r6 = r6.get(r4)
            k.a.b.a.b.h r6 = (k.a.b.a.b.h) r6
            if (r6 == 0) goto L_0x0040
            r0.a = r6
        L_0x003f:
            return r0
        L_0x0040:
            java.lang.NullPointerException r6 = new java.lang.NullPointerException
            java.lang.String r0 = "the handle field is mandatory"
            r6.<init>(r0)
            throw r6
        L_0x0048:
            k.a.b.a.c.q r6 = new k.a.b.a.c.q
            java.lang.String r0 = "The handle field cannot be omitted"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.c1.d.b(java.lang.Object):java.lang.Object");
    }
}
