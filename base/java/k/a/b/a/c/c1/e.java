package k.a.b.a.c.c1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.n.g;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class e extends b<g, List> implements s<g> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1677d = {i.a(21), f.a("amqp:disposition:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1678e = i.a(21);

    public static final class a extends AbstractList {
        public g x;

        public a(g gVar) {
            this.x = gVar;
        }

        public Object get(int i2) {
            if (i2 == 0) {
                return Boolean.valueOf(this.x.a.getValue());
            }
            if (i2 == 1) {
                return this.x.b;
            }
            if (i2 == 2) {
                return this.x.f1612c;
            }
            if (i2 == 3) {
                return Boolean.valueOf(this.x.f1613d);
            }
            if (i2 == 4) {
                return this.x.f1614e;
            }
            if (i2 == 5) {
                return Boolean.valueOf(this.x.f1615f);
            }
            throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
        }

        public int size() {
            g gVar = this.x;
            if (gVar.f1615f) {
                return 6;
            }
            if (gVar.f1614e != null) {
                return 5;
            }
            if (gVar.f1613d) {
                return 4;
            }
            return gVar.f1612c != null ? 3 : 2;
        }
    }

    public e(x xVar) {
        super(xVar);
    }

    public Class<g> a() {
        return g.class;
    }

    public i b() {
        return f1678e;
    }

    public Object d(Object obj) {
        return new a((g) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0023, code lost:
        if (r1 != 5) goto L_0x0073;
     */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0046  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x006e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r9) {
        /*
            r8 = this;
            java.util.List r9 = (java.util.List) r9
            k.a.b.a.b.n.g r0 = new k.a.b.a.b.n.g
            r0.<init>()
            boolean r1 = r9.isEmpty()
            if (r1 != 0) goto L_0x0074
            int r1 = r9.size()
            int r1 = 6 - r1
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r1 == 0) goto L_0x0026
            if (r1 == r6) goto L_0x0036
            if (r1 == r5) goto L_0x003e
            if (r1 == r4) goto L_0x004e
            if (r1 == r3) goto L_0x0056
            if (r1 == r2) goto L_0x005f
            goto L_0x0073
        L_0x0026:
            java.lang.Object r1 = r9.get(r2)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0030
            r1 = 0
            goto L_0x0034
        L_0x0030:
            boolean r1 = r1.booleanValue()
        L_0x0034:
            r0.f1615f = r1
        L_0x0036:
            java.lang.Object r1 = r9.get(r3)
            k.a.b.a.b.n.e r1 = (k.a.b.a.b.n.e) r1
            r0.f1614e = r1
        L_0x003e:
            java.lang.Object r1 = r9.get(r4)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0048
            r1 = 0
            goto L_0x004c
        L_0x0048:
            boolean r1 = r1.booleanValue()
        L_0x004c:
            r0.f1613d = r1
        L_0x004e:
            java.lang.Object r1 = r9.get(r5)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1612c = r1
        L_0x0056:
            java.lang.Object r1 = r9.get(r6)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.a((k.a.b.a.b.h) r1)
        L_0x005f:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            java.lang.Object r9 = r9.get(r7)
            boolean r9 = r1.equals(r9)
            if (r9 == 0) goto L_0x006e
            k.a.b.a.b.n.o r9 = k.a.b.a.b.n.o.RECEIVER
            goto L_0x0070
        L_0x006e:
            k.a.b.a.b.n.o r9 = k.a.b.a.b.n.o.SENDER
        L_0x0070:
            r0.a((k.a.b.a.b.n.o) r9)
        L_0x0073:
            return r0
        L_0x0074:
            k.a.b.a.c.q r9 = new k.a.b.a.c.q
            java.lang.String r0 = "The first field cannot be omitted"
            r9.<init>(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.c1.e.b(java.lang.Object):java.lang.Object");
    }
}
