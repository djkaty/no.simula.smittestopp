package k.a.b.a.c.c1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class k extends b<k.a.b.a.b.n.k, List> implements s<k.a.b.a.b.n.k> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1684d = {i.a(19), f.a("amqp:flow:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1685e = i.a(19);

    public static class a extends AbstractList {
        public k.a.b.a.b.n.k x;

        public a(k.a.b.a.b.n.k kVar) {
            this.x = kVar;
        }

        public Object get(int i2) {
            switch (i2) {
                case 0:
                    return this.x.a;
                case 1:
                    return this.x.b;
                case 2:
                    return this.x.f1617c;
                case 3:
                    return this.x.f1618d;
                case 4:
                    return this.x.f1619e;
                case 5:
                    return this.x.f1620f;
                case 6:
                    return this.x.f1621g;
                case 7:
                    return this.x.f1622h;
                case 8:
                    return Boolean.valueOf(this.x.f1623i);
                case 9:
                    return Boolean.valueOf(this.x.f1624j);
                case 10:
                    return this.x.f1625k;
                default:
                    throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
            }
        }

        public int size() {
            k.a.b.a.b.n.k kVar = this.x;
            if (kVar.f1625k != null) {
                return 11;
            }
            if (kVar.f1624j) {
                return 10;
            }
            if (kVar.f1623i) {
                return 9;
            }
            if (kVar.f1622h != null) {
                return 8;
            }
            if (kVar.f1621g != null) {
                return 7;
            }
            if (kVar.f1620f != null) {
                return 6;
            }
            return kVar.f1619e != null ? 5 : 4;
        }
    }

    public k(x xVar) {
        super(xVar);
    }

    public Class<k.a.b.a.b.n.k> a() {
        return k.a.b.a.b.n.k.class;
    }

    public i b() {
        return f1685e;
    }

    public Object d(Object obj) {
        return new a((k.a.b.a.b.n.k) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0036, code lost:
        r1 = (java.lang.Boolean) r5.get(8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x003e, code lost:
        if (r1 != null) goto L_0x0042;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0040, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0042, code lost:
        r1 = r1.booleanValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0046, code lost:
        r0.f1623i = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0048, code lost:
        r0.f1622h = (k.a.b.a.b.h) r5.get(7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0051, code lost:
        r0.f1621g = (k.a.b.a.b.h) r5.get(6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005a, code lost:
        r0.f1620f = (k.a.b.a.b.h) r5.get(5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0063, code lost:
        r0.f1619e = (k.a.b.a.b.h) r5.get(4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x006c, code lost:
        r0.c((k.a.b.a.b.h) r5.get(3));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0075, code lost:
        r0.b((k.a.b.a.b.h) r5.get(2));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x007f, code lost:
        r0.a((k.a.b.a.b.h) r5.get(1));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0089, code lost:
        r0.a = (k.a.b.a.b.h) r5.get(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0091, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0024, code lost:
        r1 = (java.lang.Boolean) r5.get(9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x002c, code lost:
        if (r1 != null) goto L_0x0030;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x002e, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0030, code lost:
        r1 = r1.booleanValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0034, code lost:
        r0.f1624j = r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r5) {
        /*
            r4 = this;
            java.util.List r5 = (java.util.List) r5
            k.a.b.a.b.n.k r0 = new k.a.b.a.b.n.k
            r0.<init>()
            int r1 = r5.size()
            r2 = 3
            if (r1 <= r2) goto L_0x0092
            int r1 = r5.size()
            int r1 = 11 - r1
            r3 = 0
            switch(r1) {
                case 0: goto L_0x001a;
                case 1: goto L_0x0024;
                case 2: goto L_0x0036;
                case 3: goto L_0x0048;
                case 4: goto L_0x0051;
                case 5: goto L_0x005a;
                case 6: goto L_0x0063;
                case 7: goto L_0x006c;
                case 8: goto L_0x0075;
                case 9: goto L_0x007f;
                case 10: goto L_0x0089;
                default: goto L_0x0018;
            }
        L_0x0018:
            goto L_0x0091
        L_0x001a:
            r1 = 10
            java.lang.Object r1 = r5.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r0.f1625k = r1
        L_0x0024:
            r1 = 9
            java.lang.Object r1 = r5.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0030
            r1 = 0
            goto L_0x0034
        L_0x0030:
            boolean r1 = r1.booleanValue()
        L_0x0034:
            r0.f1624j = r1
        L_0x0036:
            r1 = 8
            java.lang.Object r1 = r5.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0042
            r1 = 0
            goto L_0x0046
        L_0x0042:
            boolean r1 = r1.booleanValue()
        L_0x0046:
            r0.f1623i = r1
        L_0x0048:
            r1 = 7
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1622h = r1
        L_0x0051:
            r1 = 6
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1621g = r1
        L_0x005a:
            r1 = 5
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1620f = r1
        L_0x0063:
            r1 = 4
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1619e = r1
        L_0x006c:
            java.lang.Object r1 = r5.get(r2)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.c(r1)
        L_0x0075:
            r1 = 2
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.b(r1)
        L_0x007f:
            r1 = 1
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.a(r1)
        L_0x0089:
            java.lang.Object r5 = r5.get(r3)
            k.a.b.a.b.h r5 = (k.a.b.a.b.h) r5
            r0.a = r5
        L_0x0091:
            return r0
        L_0x0092:
            k.a.b.a.c.q r5 = new k.a.b.a.c.q
            java.lang.String r0 = "The outgoing-window field cannot be omitted"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.c1.k.b(java.lang.Object):java.lang.Object");
    }
}
