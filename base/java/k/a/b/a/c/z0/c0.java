package k.a.b.a.c.z0;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.b.i;
import k.a.b.a.b.k.u;
import k.a.b.a.b.k.x;
import k.a.b.a.b.k.y;
import k.a.b.a.c.b;
import k.a.b.a.c.s;

public class c0 extends b<u, List> implements s<u> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1806d = {i.a(40), f.a("amqp:source:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1807e = i.a(40);

    public static final class a extends AbstractList {
        public final u x;

        public a(u uVar) {
            this.x = uVar;
        }

        public Object get(int i2) {
            switch (i2) {
                case 0:
                    return this.x.a;
                case 1:
                    return this.x.b.getValue();
                case 2:
                    return this.x.f1589c.getPolicy();
                case 3:
                    return this.x.f1590d;
                case 4:
                    return Boolean.valueOf(this.x.f1591e);
                case 5:
                    return this.x.f1592f;
                case 6:
                    return this.x.f1585h;
                case 7:
                    return this.x.f1586i;
                case 8:
                    return this.x.f1587j;
                case 9:
                    return this.x.f1588k;
                case 10:
                    return this.x.f1593g;
                default:
                    throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
            }
        }

        public int size() {
            u uVar = this.x;
            if (uVar.f1593g != null) {
                return 11;
            }
            if (uVar.f1588k != null) {
                return 10;
            }
            if (uVar.f1587j != null) {
                return 9;
            }
            if (uVar.f1586i != null) {
                return 8;
            }
            if (uVar.f1585h != null) {
                return 7;
            }
            if (uVar.f1592f != null) {
                return 6;
            }
            if (uVar.f1591e) {
                return 5;
            }
            h hVar = uVar.f1590d;
            if (hVar != null && !hVar.equals(h.z)) {
                return 4;
            }
            u uVar2 = this.x;
            if (uVar2.f1589c != y.SESSION_END) {
                return 3;
            }
            if (uVar2.b != x.NONE) {
                return 2;
            }
            return uVar2.a != null ? 1 : 0;
        }
    }

    public c0(k.a.b.a.c.x xVar) {
        super(xVar);
    }

    public Class<u> a() {
        return u.class;
    }

    public i b() {
        return f1807e;
    }

    public Object d(Object obj) {
        return new a((u) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0044, code lost:
        if (r1.getClass().isArray() == false) goto L_0x0047;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0047, code lost:
        r0.f1588k = new k.a.b.a.b.f[]{(k.a.b.a.b.f) r1};
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0050, code lost:
        r0.f1588k = (k.a.b.a.b.f[]) r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0054, code lost:
        r0.f1587j = (k.a.b.a.b.k.o) r6.get(8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x005e, code lost:
        r0.f1586i = (java.util.Map) r6.get(7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0067, code lost:
        r0.f1585h = (k.a.b.a.b.f) r6.get(6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0070, code lost:
        r0.f1592f = (java.util.Map) r6.get(5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0079, code lost:
        r1 = (java.lang.Boolean) r6.get(4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0080, code lost:
        if (r1 != null) goto L_0x0084;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0082, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0084, code lost:
        r1 = r1.booleanValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0088, code lost:
        r0.f1591e = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x008a, code lost:
        r1 = (k.a.b.a.b.h) r6.get(3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0091, code lost:
        if (r1 != null) goto L_0x0095;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0093, code lost:
        r1 = k.a.b.a.b.h.z;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0095, code lost:
        r0.f1590d = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0097, code lost:
        r1 = (k.a.b.a.b.f) r6.get(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x009e, code lost:
        if (r1 != null) goto L_0x00a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00a0, code lost:
        r1 = k.a.b.a.b.k.y.SESSION_END;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00a3, code lost:
        r1 = k.a.b.a.b.k.y.valueOf(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00a7, code lost:
        if (r1 != null) goto L_0x00ab;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00a9, code lost:
        r1 = k.a.b.a.b.k.y.SESSION_END;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00ab, code lost:
        r0.f1589c = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00ad, code lost:
        r1 = (k.a.b.a.b.h) r6.get(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00b3, code lost:
        if (r1 != null) goto L_0x00b8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b5, code lost:
        r1 = k.a.b.a.b.k.x.NONE;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00b8, code lost:
        r1 = k.a.b.a.b.k.x.get(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00bc, code lost:
        if (r1 != null) goto L_0x00c0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00be, code lost:
        r1 = k.a.b.a.b.k.x.NONE;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00c0, code lost:
        r0.b = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00c2, code lost:
        r0.a = (java.lang.String) r6.get(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00ca, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0034, code lost:
        r1 = r6.get(9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (r1 == null) goto L_0x0050;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r6) {
        /*
            r5 = this;
            java.util.List r6 = (java.util.List) r6
            k.a.b.a.b.k.u r0 = new k.a.b.a.b.k.u
            r0.<init>()
            int r1 = r6.size()
            int r1 = 11 - r1
            r2 = 1
            r3 = 0
            switch(r1) {
                case 0: goto L_0x0014;
                case 1: goto L_0x0034;
                case 2: goto L_0x0054;
                case 3: goto L_0x005e;
                case 4: goto L_0x0067;
                case 5: goto L_0x0070;
                case 6: goto L_0x0079;
                case 7: goto L_0x008a;
                case 8: goto L_0x0097;
                case 9: goto L_0x00ad;
                case 10: goto L_0x00c2;
                default: goto L_0x0012;
            }
        L_0x0012:
            goto L_0x00ca
        L_0x0014:
            r1 = 10
            java.lang.Object r1 = r6.get(r1)
            if (r1 == 0) goto L_0x0030
            java.lang.Class r4 = r1.getClass()
            boolean r4 = r4.isArray()
            if (r4 == 0) goto L_0x0027
            goto L_0x0030
        L_0x0027:
            k.a.b.a.b.f[] r4 = new k.a.b.a.b.f[r2]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r4[r3] = r1
            r0.f1593g = r4
            goto L_0x0034
        L_0x0030:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1593g = r1
        L_0x0034:
            r1 = 9
            java.lang.Object r1 = r6.get(r1)
            if (r1 == 0) goto L_0x0050
            java.lang.Class r4 = r1.getClass()
            boolean r4 = r4.isArray()
            if (r4 == 0) goto L_0x0047
            goto L_0x0050
        L_0x0047:
            k.a.b.a.b.f[] r4 = new k.a.b.a.b.f[r2]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r4[r3] = r1
            r0.f1588k = r4
            goto L_0x0054
        L_0x0050:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1588k = r1
        L_0x0054:
            r1 = 8
            java.lang.Object r1 = r6.get(r1)
            k.a.b.a.b.k.o r1 = (k.a.b.a.b.k.o) r1
            r0.f1587j = r1
        L_0x005e:
            r1 = 7
            java.lang.Object r1 = r6.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r0.f1586i = r1
        L_0x0067:
            r1 = 6
            java.lang.Object r1 = r6.get(r1)
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r0.f1585h = r1
        L_0x0070:
            r1 = 5
            java.lang.Object r1 = r6.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r0.f1592f = r1
        L_0x0079:
            r1 = 4
            java.lang.Object r1 = r6.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0084
            r1 = 0
            goto L_0x0088
        L_0x0084:
            boolean r1 = r1.booleanValue()
        L_0x0088:
            r0.f1591e = r1
        L_0x008a:
            r1 = 3
            java.lang.Object r1 = r6.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 != 0) goto L_0x0095
            k.a.b.a.b.h r1 = k.a.b.a.b.h.z
        L_0x0095:
            r0.f1590d = r1
        L_0x0097:
            r1 = 2
            java.lang.Object r1 = r6.get(r1)
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            if (r1 != 0) goto L_0x00a3
            k.a.b.a.b.k.y r1 = k.a.b.a.b.k.y.SESSION_END
            goto L_0x00a7
        L_0x00a3:
            k.a.b.a.b.k.y r1 = k.a.b.a.b.k.y.valueOf((k.a.b.a.b.f) r1)
        L_0x00a7:
            if (r1 != 0) goto L_0x00ab
            k.a.b.a.b.k.y r1 = k.a.b.a.b.k.y.SESSION_END
        L_0x00ab:
            r0.f1589c = r1
        L_0x00ad:
            java.lang.Object r1 = r6.get(r2)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 != 0) goto L_0x00b8
            k.a.b.a.b.k.x r1 = k.a.b.a.b.k.x.NONE
            goto L_0x00bc
        L_0x00b8:
            k.a.b.a.b.k.x r1 = k.a.b.a.b.k.x.get(r1)
        L_0x00bc:
            if (r1 != 0) goto L_0x00c0
            k.a.b.a.b.k.x r1 = k.a.b.a.b.k.x.NONE
        L_0x00c0:
            r0.b = r1
        L_0x00c2:
            java.lang.Object r6 = r6.get(r3)
            java.lang.String r6 = (java.lang.String) r6
            r0.a = r6
        L_0x00ca:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.z0.c0.b(java.lang.Object):java.lang.Object");
    }
}
