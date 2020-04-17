package k.a.b.a.c.c1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.n.n;
import k.a.b.a.b.n.p;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class a extends b<k.a.b.a.b.n.a, List> implements s<k.a.b.a.b.n.a> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1669d = {i.a(18), f.a("amqp:attach:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1670e = i.a(18);

    /* renamed from: k.a.b.a.c.c1.a$a  reason: collision with other inner class name */
    public static class C0095a extends AbstractList {
        public k.a.b.a.b.n.a x;

        public C0095a(k.a.b.a.b.n.a aVar) {
            this.x = aVar;
        }

        public Object get(int i2) {
            switch (i2) {
                case 0:
                    return this.x.a;
                case 1:
                    return this.x.b;
                case 2:
                    return Boolean.valueOf(this.x.f1595c.getValue());
                case 3:
                    return this.x.f1596d.getValue();
                case 4:
                    return this.x.f1597e.getValue();
                case 5:
                    return this.x.f1598f;
                case 6:
                    return this.x.f1599g;
                case 7:
                    return this.x.f1600h;
                case 8:
                    return Boolean.valueOf(this.x.f1601i);
                case 9:
                    return this.x.f1602j;
                case 10:
                    return this.x.f1603k;
                case 11:
                    return this.x.f1604l;
                case 12:
                    return this.x.m;
                case 13:
                    return this.x.n;
                default:
                    throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
            }
        }

        public int size() {
            k.a.b.a.b.n.a aVar = this.x;
            if (aVar.n != null) {
                return 14;
            }
            if (aVar.m != null) {
                return 13;
            }
            if (aVar.f1604l != null) {
                return 12;
            }
            if (aVar.f1603k != null) {
                return 11;
            }
            if (aVar.f1602j != null) {
                return 10;
            }
            if (aVar.f1601i) {
                return 9;
            }
            if (aVar.f1600h != null) {
                return 8;
            }
            if (aVar.f1599g != null) {
                return 7;
            }
            if (aVar.f1598f != null) {
                return 6;
            }
            n nVar = aVar.f1597e;
            if (nVar != null && !nVar.equals(n.FIRST)) {
                return 5;
            }
            p pVar = this.x.f1596d;
            return (pVar == null || pVar.equals(p.MIXED)) ? 3 : 4;
        }
    }

    public a(x xVar) {
        super(xVar);
    }

    public Class<k.a.b.a.b.n.a> a() {
        return k.a.b.a.b.n.a.class;
    }

    public i b() {
        return f1670e;
    }

    public Object d(Object obj) {
        return new C0095a((k.a.b.a.b.n.a) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0041, code lost:
        r0.m = (k.a.b.a.b.f[]) r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0045, code lost:
        r1 = r7.get(11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x004b, code lost:
        if (r1 == null) goto L_0x0061;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0055, code lost:
        if (r1.getClass().isArray() == false) goto L_0x0058;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0058, code lost:
        r0.f1604l = new k.a.b.a.b.f[]{(k.a.b.a.b.f) r1};
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0061, code lost:
        r0.f1604l = (k.a.b.a.b.f[]) r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0065, code lost:
        r0.f1603k = (k.a.b.a.b.i) r7.get(10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x006f, code lost:
        r0.f1602j = (k.a.b.a.b.h) r7.get(9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0079, code lost:
        r1 = (java.lang.Boolean) r7.get(8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0081, code lost:
        if (r1 != null) goto L_0x0085;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0083, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0085, code lost:
        r1 = r1.booleanValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0089, code lost:
        r0.f1601i = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x008b, code lost:
        r0.f1600h = (java.util.Map) r7.get(7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0094, code lost:
        r0.f1599g = (k.a.b.a.b.n.r) r7.get(6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x009d, code lost:
        r0.f1598f = (k.a.b.a.b.n.q) r7.get(5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00a6, code lost:
        r1 = (k.a.b.a.b.g) r7.get(4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00ad, code lost:
        if (r1 != null) goto L_0x00b2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00af, code lost:
        r1 = k.a.b.a.b.n.n.FIRST;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00b2, code lost:
        r1 = k.a.b.a.b.n.n.values()[r1.x & 255];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00bc, code lost:
        if (r1 != null) goto L_0x00c0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00be, code lost:
        r1 = k.a.b.a.b.n.n.FIRST;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00c0, code lost:
        r0.f1597e = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00c2, code lost:
        r1 = (k.a.b.a.b.g) r7.get(3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00c9, code lost:
        if (r1 != null) goto L_0x00ce;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00cb, code lost:
        r1 = k.a.b.a.b.n.p.MIXED;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00ce, code lost:
        r1 = k.a.b.a.b.n.p.values()[r1.x & 255];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00d8, code lost:
        if (r1 != null) goto L_0x00dc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00da, code lost:
        r1 = k.a.b.a.b.n.p.MIXED;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00dc, code lost:
        r0.f1596d = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00e8, code lost:
        if (java.lang.Boolean.TRUE.equals(r7.get(2)) == false) goto L_0x00ed;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00ea, code lost:
        r1 = k.a.b.a.b.n.o.RECEIVER;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00ed, code lost:
        r1 = k.a.b.a.b.n.o.SENDER;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00ef, code lost:
        if (r1 == null) goto L_0x0118;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00f1, code lost:
        r0.f1595c = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00f3, code lost:
        r1 = (k.a.b.a.b.h) r7.get(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00f9, code lost:
        if (r1 == null) goto L_0x0110;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00fb, code lost:
        r0.b = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00fd, code lost:
        r7 = (java.lang.String) r7.get(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0103, code lost:
        if (r7 == null) goto L_0x0108;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0105, code lost:
        r0.a = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x010f, code lost:
        throw new java.lang.NullPointerException("the name field is mandatory");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0117, code lost:
        throw new java.lang.NullPointerException("the handle field is mandatory");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x011f, code lost:
        throw new java.lang.NullPointerException("Role cannot be null");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x0120, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0025, code lost:
        r1 = r7.get(12);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x002b, code lost:
        if (r1 == null) goto L_0x0041;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0035, code lost:
        if (r1.getClass().isArray() == false) goto L_0x0038;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0038, code lost:
        r0.m = new k.a.b.a.b.f[]{(k.a.b.a.b.f) r1};
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r7) {
        /*
            r6 = this;
            java.util.List r7 = (java.util.List) r7
            k.a.b.a.b.n.a r0 = new k.a.b.a.b.n.a
            r0.<init>()
            int r1 = r7.size()
            r2 = 2
            if (r1 <= r2) goto L_0x0121
            int r1 = r7.size()
            int r1 = 14 - r1
            r3 = 1
            r4 = 0
            switch(r1) {
                case 0: goto L_0x001b;
                case 1: goto L_0x0025;
                case 2: goto L_0x0045;
                case 3: goto L_0x0065;
                case 4: goto L_0x006f;
                case 5: goto L_0x0079;
                case 6: goto L_0x008b;
                case 7: goto L_0x0094;
                case 8: goto L_0x009d;
                case 9: goto L_0x00a6;
                case 10: goto L_0x00c2;
                case 11: goto L_0x00de;
                case 12: goto L_0x00f3;
                case 13: goto L_0x00fd;
                default: goto L_0x0019;
            }
        L_0x0019:
            goto L_0x0120
        L_0x001b:
            r1 = 13
            java.lang.Object r1 = r7.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r0.n = r1
        L_0x0025:
            r1 = 12
            java.lang.Object r1 = r7.get(r1)
            if (r1 == 0) goto L_0x0041
            java.lang.Class r5 = r1.getClass()
            boolean r5 = r5.isArray()
            if (r5 == 0) goto L_0x0038
            goto L_0x0041
        L_0x0038:
            k.a.b.a.b.f[] r5 = new k.a.b.a.b.f[r3]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r5[r4] = r1
            r0.m = r5
            goto L_0x0045
        L_0x0041:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.m = r1
        L_0x0045:
            r1 = 11
            java.lang.Object r1 = r7.get(r1)
            if (r1 == 0) goto L_0x0061
            java.lang.Class r5 = r1.getClass()
            boolean r5 = r5.isArray()
            if (r5 == 0) goto L_0x0058
            goto L_0x0061
        L_0x0058:
            k.a.b.a.b.f[] r5 = new k.a.b.a.b.f[r3]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r5[r4] = r1
            r0.f1604l = r5
            goto L_0x0065
        L_0x0061:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1604l = r1
        L_0x0065:
            r1 = 10
            java.lang.Object r1 = r7.get(r1)
            k.a.b.a.b.i r1 = (k.a.b.a.b.i) r1
            r0.f1603k = r1
        L_0x006f:
            r1 = 9
            java.lang.Object r1 = r7.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1602j = r1
        L_0x0079:
            r1 = 8
            java.lang.Object r1 = r7.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0085
            r1 = 0
            goto L_0x0089
        L_0x0085:
            boolean r1 = r1.booleanValue()
        L_0x0089:
            r0.f1601i = r1
        L_0x008b:
            r1 = 7
            java.lang.Object r1 = r7.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r0.f1600h = r1
        L_0x0094:
            r1 = 6
            java.lang.Object r1 = r7.get(r1)
            k.a.b.a.b.n.r r1 = (k.a.b.a.b.n.r) r1
            r0.f1599g = r1
        L_0x009d:
            r1 = 5
            java.lang.Object r1 = r7.get(r1)
            k.a.b.a.b.n.q r1 = (k.a.b.a.b.n.q) r1
            r0.f1598f = r1
        L_0x00a6:
            r1 = 4
            java.lang.Object r1 = r7.get(r1)
            k.a.b.a.b.g r1 = (k.a.b.a.b.g) r1
            if (r1 != 0) goto L_0x00b2
            k.a.b.a.b.n.n r1 = k.a.b.a.b.n.n.FIRST
            goto L_0x00bc
        L_0x00b2:
            k.a.b.a.b.n.n[] r5 = k.a.b.a.b.n.n.values()
            byte r1 = r1.x
            r1 = r1 & 255(0xff, float:3.57E-43)
            r1 = r5[r1]
        L_0x00bc:
            if (r1 != 0) goto L_0x00c0
            k.a.b.a.b.n.n r1 = k.a.b.a.b.n.n.FIRST
        L_0x00c0:
            r0.f1597e = r1
        L_0x00c2:
            r1 = 3
            java.lang.Object r1 = r7.get(r1)
            k.a.b.a.b.g r1 = (k.a.b.a.b.g) r1
            if (r1 != 0) goto L_0x00ce
            k.a.b.a.b.n.p r1 = k.a.b.a.b.n.p.MIXED
            goto L_0x00d8
        L_0x00ce:
            k.a.b.a.b.n.p[] r5 = k.a.b.a.b.n.p.values()
            byte r1 = r1.x
            r1 = r1 & 255(0xff, float:3.57E-43)
            r1 = r5[r1]
        L_0x00d8:
            if (r1 != 0) goto L_0x00dc
            k.a.b.a.b.n.p r1 = k.a.b.a.b.n.p.MIXED
        L_0x00dc:
            r0.f1596d = r1
        L_0x00de:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            java.lang.Object r2 = r7.get(r2)
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x00ed
            k.a.b.a.b.n.o r1 = k.a.b.a.b.n.o.RECEIVER
            goto L_0x00ef
        L_0x00ed:
            k.a.b.a.b.n.o r1 = k.a.b.a.b.n.o.SENDER
        L_0x00ef:
            if (r1 == 0) goto L_0x0118
            r0.f1595c = r1
        L_0x00f3:
            java.lang.Object r1 = r7.get(r3)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 == 0) goto L_0x0110
            r0.b = r1
        L_0x00fd:
            java.lang.Object r7 = r7.get(r4)
            java.lang.String r7 = (java.lang.String) r7
            if (r7 == 0) goto L_0x0108
            r0.a = r7
            goto L_0x0120
        L_0x0108:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException
            java.lang.String r0 = "the name field is mandatory"
            r7.<init>(r0)
            throw r7
        L_0x0110:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException
            java.lang.String r0 = "the handle field is mandatory"
            r7.<init>(r0)
            throw r7
        L_0x0118:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException
            java.lang.String r0 = "Role cannot be null"
            r7.<init>(r0)
            throw r7
        L_0x0120:
            return r0
        L_0x0121:
            k.a.b.a.c.q r7 = new k.a.b.a.c.q
            java.lang.String r0 = "The role field cannot be omitted"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.c1.a.b(java.lang.Object):java.lang.Object");
    }
}
