package k.a.b.a.c.c1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.n.n;
import k.a.b.a.b.n.s;
import k.a.b.a.c.b;
import k.a.b.a.c.x;

public final class m extends b<s, List> implements k.a.b.a.c.s<s> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1688d = {i.a(20), f.a("amqp:transfer:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1689e = i.a(20);

    public static class a extends AbstractList {
        public s x;

        public a(s sVar) {
            this.x = sVar;
        }

        public Object get(int i2) {
            switch (i2) {
                case 0:
                    return this.x.a;
                case 1:
                    return this.x.b;
                case 2:
                    return this.x.f1634c;
                case 3:
                    return this.x.f1635d;
                case 4:
                    return this.x.f1636e;
                case 5:
                    return Boolean.valueOf(this.x.f1637f);
                case 6:
                    n nVar = this.x.f1638g;
                    if (nVar == null) {
                        return null;
                    }
                    return nVar.getValue();
                case 7:
                    return this.x.f1639h;
                case 8:
                    return Boolean.valueOf(this.x.f1640i);
                case 9:
                    return Boolean.valueOf(this.x.f1641j);
                case 10:
                    return Boolean.valueOf(this.x.f1642k);
                default:
                    throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
            }
        }

        public int size() {
            s sVar = this.x;
            if (sVar.f1642k) {
                return 11;
            }
            if (sVar.f1641j) {
                return 10;
            }
            if (sVar.f1640i) {
                return 9;
            }
            if (sVar.f1639h != null) {
                return 8;
            }
            if (sVar.f1638g != null) {
                return 7;
            }
            if (sVar.f1637f) {
                return 6;
            }
            if (sVar.f1636e != null) {
                return 5;
            }
            if (sVar.f1635d != null) {
                return 4;
            }
            if (sVar.f1634c != null) {
                return 3;
            }
            return sVar.b != null ? 2 : 1;
        }
    }

    public m(x xVar) {
        super(xVar);
    }

    public Class<s> a() {
        return s.class;
    }

    public i b() {
        return f1689e;
    }

    public Object d(Object obj) {
        return new a((s) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0033, code lost:
        if (r1 != null) goto L_0x0037;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0035, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0037, code lost:
        r1 = r1.booleanValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x003b, code lost:
        r0.f1641j = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003d, code lost:
        r1 = (java.lang.Boolean) r5.get(8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0045, code lost:
        if (r1 != null) goto L_0x0049;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0047, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0049, code lost:
        r1 = r1.booleanValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x004d, code lost:
        r0.f1640i = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x004f, code lost:
        r0.f1639h = (k.a.b.a.b.n.e) r5.get(7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0058, code lost:
        r1 = (k.a.b.a.b.g) r5.get(6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x005f, code lost:
        if (r1 != null) goto L_0x0063;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0061, code lost:
        r1 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0063, code lost:
        r1 = k.a.b.a.b.n.n.values()[r1.x & 255];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x006d, code lost:
        r0.f1638g = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006f, code lost:
        r1 = (java.lang.Boolean) r5.get(5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0076, code lost:
        if (r1 != null) goto L_0x007a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0078, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x007a, code lost:
        r1 = r1.booleanValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x007e, code lost:
        r0.f1637f = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0080, code lost:
        r0.f1636e = (java.lang.Boolean) r5.get(4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0089, code lost:
        r0.f1635d = (k.a.b.a.b.h) r5.get(3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0092, code lost:
        r0.f1634c = (k.a.b.a.b.a) r5.get(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x009b, code lost:
        r0.b = (k.a.b.a.b.h) r5.get(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00a4, code lost:
        r0.a((k.a.b.a.b.h) r5.get(0));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00ad, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x002b, code lost:
        r1 = (java.lang.Boolean) r5.get(9);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r5) {
        /*
            r4 = this;
            java.util.List r5 = (java.util.List) r5
            k.a.b.a.b.n.s r0 = new k.a.b.a.b.n.s
            r0.<init>()
            boolean r1 = r5.isEmpty()
            if (r1 != 0) goto L_0x00ae
            int r1 = r5.size()
            int r1 = 11 - r1
            r2 = 0
            switch(r1) {
                case 0: goto L_0x0019;
                case 1: goto L_0x002b;
                case 2: goto L_0x003d;
                case 3: goto L_0x004f;
                case 4: goto L_0x0058;
                case 5: goto L_0x006f;
                case 6: goto L_0x0080;
                case 7: goto L_0x0089;
                case 8: goto L_0x0092;
                case 9: goto L_0x009b;
                case 10: goto L_0x00a4;
                default: goto L_0x0017;
            }
        L_0x0017:
            goto L_0x00ad
        L_0x0019:
            r1 = 10
            java.lang.Object r1 = r5.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0025
            r1 = 0
            goto L_0x0029
        L_0x0025:
            boolean r1 = r1.booleanValue()
        L_0x0029:
            r0.f1642k = r1
        L_0x002b:
            r1 = 9
            java.lang.Object r1 = r5.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0037
            r1 = 0
            goto L_0x003b
        L_0x0037:
            boolean r1 = r1.booleanValue()
        L_0x003b:
            r0.f1641j = r1
        L_0x003d:
            r1 = 8
            java.lang.Object r1 = r5.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0049
            r1 = 0
            goto L_0x004d
        L_0x0049:
            boolean r1 = r1.booleanValue()
        L_0x004d:
            r0.f1640i = r1
        L_0x004f:
            r1 = 7
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.n.e r1 = (k.a.b.a.b.n.e) r1
            r0.f1639h = r1
        L_0x0058:
            r1 = 6
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.g r1 = (k.a.b.a.b.g) r1
            if (r1 != 0) goto L_0x0063
            r1 = 0
            goto L_0x006d
        L_0x0063:
            k.a.b.a.b.n.n[] r3 = k.a.b.a.b.n.n.values()
            byte r1 = r1.x
            r1 = r1 & 255(0xff, float:3.57E-43)
            r1 = r3[r1]
        L_0x006d:
            r0.f1638g = r1
        L_0x006f:
            r1 = 5
            java.lang.Object r1 = r5.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x007a
            r1 = 0
            goto L_0x007e
        L_0x007a:
            boolean r1 = r1.booleanValue()
        L_0x007e:
            r0.f1637f = r1
        L_0x0080:
            r1 = 4
            java.lang.Object r1 = r5.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            r0.f1636e = r1
        L_0x0089:
            r1 = 3
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1635d = r1
        L_0x0092:
            r1 = 2
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.a r1 = (k.a.b.a.b.a) r1
            r0.f1634c = r1
        L_0x009b:
            r1 = 1
            java.lang.Object r1 = r5.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.b = r1
        L_0x00a4:
            java.lang.Object r5 = r5.get(r2)
            k.a.b.a.b.h r5 = (k.a.b.a.b.h) r5
            r0.a(r5)
        L_0x00ad:
            return r0
        L_0x00ae:
            k.a.b.a.c.q r5 = new k.a.b.a.c.q
            java.lang.String r0 = "The handle field cannot be omitted"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.c1.m.b(java.lang.Object):java.lang.Object");
    }
}
