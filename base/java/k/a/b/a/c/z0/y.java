package k.a.b.a.c.z0;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.k.p;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class y extends b<p, List> implements s<p> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1836d = {i.a(115), f.a("amqp:properties:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1837e = i.a(115);

    public static final class a extends AbstractList {
        public p x;

        public a(p pVar) {
            this.x = pVar;
        }

        public Object get(int i2) {
            switch (i2) {
                case 0:
                    return this.x.a;
                case 1:
                    return this.x.b;
                case 2:
                    return this.x.f1575c;
                case 3:
                    return this.x.f1576d;
                case 4:
                    return this.x.f1577e;
                case 5:
                    return this.x.f1578f;
                case 6:
                    return this.x.f1579g;
                case 7:
                    return this.x.f1580h;
                case 8:
                    return this.x.f1581i;
                case 9:
                    return this.x.f1582j;
                case 10:
                    return this.x.f1583k;
                case 11:
                    return this.x.f1584l;
                case 12:
                    return this.x.m;
                default:
                    throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
            }
        }

        public int size() {
            p pVar = this.x;
            if (pVar.m != null) {
                return 13;
            }
            if (pVar.f1584l != null) {
                return 12;
            }
            if (pVar.f1583k != null) {
                return 11;
            }
            if (pVar.f1582j != null) {
                return 10;
            }
            if (pVar.f1581i != null) {
                return 9;
            }
            if (pVar.f1580h != null) {
                return 8;
            }
            if (pVar.f1579g != null) {
                return 7;
            }
            if (pVar.f1578f != null) {
                return 6;
            }
            if (pVar.f1577e != null) {
                return 5;
            }
            if (pVar.f1576d != null) {
                return 4;
            }
            if (pVar.f1575c != null) {
                return 3;
            }
            if (pVar.b != null) {
                return 2;
            }
            return pVar.a != null ? 1 : 0;
        }
    }

    public y(x xVar) {
        super(xVar);
    }

    public Class<p> a() {
        return p.class;
    }

    public i b() {
        return f1837e;
    }

    public Object d(Object obj) {
        return new a((p) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x005c, code lost:
        r0.f1577e = (java.lang.String) r3.get(4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0065, code lost:
        r0.f1576d = (java.lang.String) r3.get(3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x006e, code lost:
        r0.f1575c = (java.lang.String) r3.get(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0077, code lost:
        r0.b = (k.a.b.a.b.a) r3.get(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0080, code lost:
        r0.a = r3.get(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0087, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:3:0x001b, code lost:
        r0.f1584l = (k.a.b.a.b.h) r3.get(11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0025, code lost:
        r0.f1583k = (java.lang.String) r3.get(10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x002f, code lost:
        r0.f1582j = (java.util.Date) r3.get(9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0039, code lost:
        r0.f1581i = (java.util.Date) r3.get(8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0043, code lost:
        r0.f1580h = (k.a.b.a.b.f) r3.get(7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x004c, code lost:
        r0.f1579g = (k.a.b.a.b.f) r3.get(6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0055, code lost:
        r0.f1578f = r3.get(5);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r3) {
        /*
            r2 = this;
            java.util.List r3 = (java.util.List) r3
            k.a.b.a.b.k.p r0 = new k.a.b.a.b.k.p
            r0.<init>()
            int r1 = r3.size()
            int r1 = 13 - r1
            switch(r1) {
                case 0: goto L_0x0011;
                case 1: goto L_0x001b;
                case 2: goto L_0x0025;
                case 3: goto L_0x002f;
                case 4: goto L_0x0039;
                case 5: goto L_0x0043;
                case 6: goto L_0x004c;
                case 7: goto L_0x0055;
                case 8: goto L_0x005c;
                case 9: goto L_0x0065;
                case 10: goto L_0x006e;
                case 11: goto L_0x0077;
                case 12: goto L_0x0080;
                default: goto L_0x0010;
            }
        L_0x0010:
            goto L_0x0087
        L_0x0011:
            r1 = 12
            java.lang.Object r1 = r3.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.m = r1
        L_0x001b:
            r1 = 11
            java.lang.Object r1 = r3.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1584l = r1
        L_0x0025:
            r1 = 10
            java.lang.Object r1 = r3.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.f1583k = r1
        L_0x002f:
            r1 = 9
            java.lang.Object r1 = r3.get(r1)
            java.util.Date r1 = (java.util.Date) r1
            r0.f1582j = r1
        L_0x0039:
            r1 = 8
            java.lang.Object r1 = r3.get(r1)
            java.util.Date r1 = (java.util.Date) r1
            r0.f1581i = r1
        L_0x0043:
            r1 = 7
            java.lang.Object r1 = r3.get(r1)
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r0.f1580h = r1
        L_0x004c:
            r1 = 6
            java.lang.Object r1 = r3.get(r1)
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r0.f1579g = r1
        L_0x0055:
            r1 = 5
            java.lang.Object r1 = r3.get(r1)
            r0.f1578f = r1
        L_0x005c:
            r1 = 4
            java.lang.Object r1 = r3.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.f1577e = r1
        L_0x0065:
            r1 = 3
            java.lang.Object r1 = r3.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.f1576d = r1
        L_0x006e:
            r1 = 2
            java.lang.Object r1 = r3.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            r0.f1575c = r1
        L_0x0077:
            r1 = 1
            java.lang.Object r1 = r3.get(r1)
            k.a.b.a.b.a r1 = (k.a.b.a.b.a) r1
            r0.b = r1
        L_0x0080:
            r1 = 0
            java.lang.Object r3 = r3.get(r1)
            r0.a = r3
        L_0x0087:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.z0.y.b(java.lang.Object):java.lang.Object");
    }
}
