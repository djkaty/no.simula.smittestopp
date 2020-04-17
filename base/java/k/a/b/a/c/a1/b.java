package k.a.b.a.c.a1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.l.d;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class b extends k.a.b.a.c.b<d, List> implements s<d> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1646d = {i.a(65), f.a("amqp:sasl-init:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1647e = i.a(65);

    public static class a extends AbstractList {
        public d x;

        public a(d dVar) {
            this.x = dVar;
        }

        public Object get(int i2) {
            if (i2 == 0) {
                return this.x.a;
            }
            if (i2 == 1) {
                return this.x.b;
            }
            if (i2 == 2) {
                return this.x.f1594c;
            }
            throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
        }

        public int size() {
            d dVar = this.x;
            if (dVar.f1594c != null) {
                return 3;
            }
            return dVar.b != null ? 2 : 1;
        }
    }

    public b(x xVar) {
        super(xVar);
    }

    public Class<d> a() {
        return d.class;
    }

    public i b() {
        return f1647e;
    }

    public Object d(Object obj) {
        return new a((d) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r1 != 2) goto L_0x0037;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r5) {
        /*
            r4 = this;
            java.util.List r5 = (java.util.List) r5
            k.a.b.a.b.l.d r0 = new k.a.b.a.b.l.d
            r0.<init>()
            int r1 = r5.size()
            if (r1 <= 0) goto L_0x0040
            int r1 = r5.size()
            int r1 = 3 - r1
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L_0x001c
            if (r1 == r3) goto L_0x0024
            if (r1 == r2) goto L_0x002c
            goto L_0x0037
        L_0x001c:
            java.lang.Object r1 = r5.get(r2)
            java.lang.String r1 = (java.lang.String) r1
            r0.f1594c = r1
        L_0x0024:
            java.lang.Object r1 = r5.get(r3)
            k.a.b.a.b.a r1 = (k.a.b.a.b.a) r1
            r0.b = r1
        L_0x002c:
            r1 = 0
            java.lang.Object r5 = r5.get(r1)
            k.a.b.a.b.f r5 = (k.a.b.a.b.f) r5
            if (r5 == 0) goto L_0x0038
            r0.a = r5
        L_0x0037:
            return r0
        L_0x0038:
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.String r0 = "the mechanism field is mandatory"
            r5.<init>(r0)
            throw r5
        L_0x0040:
            k.a.b.a.c.q r5 = new k.a.b.a.c.q
            java.lang.String r0 = "The mechanism field cannot be omitted"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.a1.b.b(java.lang.Object):java.lang.Object");
    }
}
