package k.a.b.a.c.a1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.i;
import k.a.b.a.b.l.f;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class d extends b<f, List> implements s<f> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1650d = {i.a(68), k.a.b.a.b.f.a("amqp:sasl-outcome:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1651e = i.a(68);

    public static final class a extends AbstractList {
        public final f x;

        public a(f fVar) {
            this.x = fVar;
        }

        public Object get(int i2) {
            if (i2 == 0) {
                return this.x.a.getValue();
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

    public Class<f> a() {
        return f.class;
    }

    public i b() {
        return f1651e;
    }

    public Object d(Object obj) {
        return new a((f) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0016, code lost:
        if (r1 != 1) goto L_0x0030;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r4) {
        /*
            r3 = this;
            java.util.List r4 = (java.util.List) r4
            k.a.b.a.b.l.f r0 = new k.a.b.a.b.l.f
            r0.<init>()
            boolean r1 = r4.isEmpty()
            if (r1 != 0) goto L_0x0039
            int r1 = r4.size()
            int r1 = 2 - r1
            r2 = 1
            if (r1 == 0) goto L_0x0019
            if (r1 == r2) goto L_0x0021
            goto L_0x0030
        L_0x0019:
            java.lang.Object r1 = r4.get(r2)
            k.a.b.a.b.a r1 = (k.a.b.a.b.a) r1
            r0.b = r1
        L_0x0021:
            r1 = 0
            java.lang.Object r4 = r4.get(r1)
            k.a.b.a.b.g r4 = (k.a.b.a.b.g) r4
            k.a.b.a.b.l.b r4 = k.a.b.a.b.l.b.valueOf((k.a.b.a.b.g) r4)
            if (r4 == 0) goto L_0x0031
            r0.a = r4
        L_0x0030:
            return r0
        L_0x0031:
            java.lang.NullPointerException r4 = new java.lang.NullPointerException
            java.lang.String r0 = "the code field is mandatory"
            r4.<init>(r0)
            throw r4
        L_0x0039:
            k.a.b.a.c.q r4 = new k.a.b.a.c.q
            java.lang.String r0 = "The code field cannot be omitted"
            r4.<init>(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.a1.d.b(java.lang.Object):java.lang.Object");
    }
}
