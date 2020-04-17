package k.a.b.a.c.z0;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.b.i;
import k.a.b.a.b.k.v;
import k.a.b.a.b.k.x;
import k.a.b.a.b.k.y;
import k.a.b.a.c.b;
import k.a.b.a.c.s;

public class d0 extends b<v, List> implements s<v> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1810d = {i.a(41), f.a("amqp:target:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1811e = i.a(41);

    public static final class a extends AbstractList {
        public final v x;

        public a(v vVar) {
            this.x = vVar;
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
                    return this.x.f1593g;
                default:
                    throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
            }
        }

        public int size() {
            v vVar = this.x;
            if (vVar.f1593g != null) {
                return 7;
            }
            if (vVar.f1592f != null) {
                return 6;
            }
            if (vVar.f1591e) {
                return 5;
            }
            h hVar = vVar.f1590d;
            if (hVar != null && !hVar.equals(h.z)) {
                return 4;
            }
            if (!this.x.f1589c.equals(y.SESSION_END)) {
                return 3;
            }
            if (!this.x.b.equals(x.NONE)) {
                return 2;
            }
            return this.x.a != null ? 1 : 0;
        }
    }

    public d0(k.a.b.a.c.x xVar) {
        super(xVar);
    }

    public Class<v> a() {
        return v.class;
    }

    public i b() {
        return f1811e;
    }

    public Object d(Object obj) {
        return new a((v) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0043, code lost:
        if (r1 != null) goto L_0x0047;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0045, code lost:
        r1 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0047, code lost:
        r1 = r1.booleanValue();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x004b, code lost:
        r0.f1591e = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004d, code lost:
        r1 = (k.a.b.a.b.h) r6.get(3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0054, code lost:
        if (r1 != null) goto L_0x0058;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0056, code lost:
        r1 = k.a.b.a.b.h.z;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0058, code lost:
        r0.f1590d = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x005a, code lost:
        r1 = (k.a.b.a.b.f) r6.get(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0061, code lost:
        if (r1 != null) goto L_0x0066;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0063, code lost:
        r1 = k.a.b.a.b.k.y.SESSION_END;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0066, code lost:
        r1 = k.a.b.a.b.k.y.valueOf(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x006a, code lost:
        if (r1 != null) goto L_0x006e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x006c, code lost:
        r1 = k.a.b.a.b.k.y.SESSION_END;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x006e, code lost:
        r0.f1589c = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0070, code lost:
        r1 = (k.a.b.a.b.h) r6.get(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0076, code lost:
        if (r1 != null) goto L_0x007b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0078, code lost:
        r1 = k.a.b.a.b.k.x.NONE;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x007b, code lost:
        r1 = k.a.b.a.b.k.x.get(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x007f, code lost:
        if (r1 != null) goto L_0x0083;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0081, code lost:
        r1 = k.a.b.a.b.k.x.NONE;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0083, code lost:
        r0.b = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0085, code lost:
        r0.a = (java.lang.String) r6.get(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x008d, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0033, code lost:
        r0.f1592f = (java.util.Map) r6.get(5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x003c, code lost:
        r1 = (java.lang.Boolean) r6.get(4);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r6) {
        /*
            r5 = this;
            java.util.List r6 = (java.util.List) r6
            k.a.b.a.b.k.v r0 = new k.a.b.a.b.k.v
            r0.<init>()
            int r1 = r6.size()
            int r1 = 7 - r1
            r2 = 1
            r3 = 0
            switch(r1) {
                case 0: goto L_0x0014;
                case 1: goto L_0x0033;
                case 2: goto L_0x003c;
                case 3: goto L_0x004d;
                case 4: goto L_0x005a;
                case 5: goto L_0x0070;
                case 6: goto L_0x0085;
                default: goto L_0x0012;
            }
        L_0x0012:
            goto L_0x008d
        L_0x0014:
            r1 = 6
            java.lang.Object r1 = r6.get(r1)
            if (r1 == 0) goto L_0x002f
            java.lang.Class r4 = r1.getClass()
            boolean r4 = r4.isArray()
            if (r4 == 0) goto L_0x0026
            goto L_0x002f
        L_0x0026:
            k.a.b.a.b.f[] r4 = new k.a.b.a.b.f[r2]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r4[r3] = r1
            r0.f1593g = r4
            goto L_0x0033
        L_0x002f:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1593g = r1
        L_0x0033:
            r1 = 5
            java.lang.Object r1 = r6.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r0.f1592f = r1
        L_0x003c:
            r1 = 4
            java.lang.Object r1 = r6.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            if (r1 != 0) goto L_0x0047
            r1 = 0
            goto L_0x004b
        L_0x0047:
            boolean r1 = r1.booleanValue()
        L_0x004b:
            r0.f1591e = r1
        L_0x004d:
            r1 = 3
            java.lang.Object r1 = r6.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 != 0) goto L_0x0058
            k.a.b.a.b.h r1 = k.a.b.a.b.h.z
        L_0x0058:
            r0.f1590d = r1
        L_0x005a:
            r1 = 2
            java.lang.Object r1 = r6.get(r1)
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            if (r1 != 0) goto L_0x0066
            k.a.b.a.b.k.y r1 = k.a.b.a.b.k.y.SESSION_END
            goto L_0x006a
        L_0x0066:
            k.a.b.a.b.k.y r1 = k.a.b.a.b.k.y.valueOf((k.a.b.a.b.f) r1)
        L_0x006a:
            if (r1 != 0) goto L_0x006e
            k.a.b.a.b.k.y r1 = k.a.b.a.b.k.y.SESSION_END
        L_0x006e:
            r0.f1589c = r1
        L_0x0070:
            java.lang.Object r1 = r6.get(r2)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 != 0) goto L_0x007b
            k.a.b.a.b.k.x r1 = k.a.b.a.b.k.x.NONE
            goto L_0x007f
        L_0x007b:
            k.a.b.a.b.k.x r1 = k.a.b.a.b.k.x.get(r1)
        L_0x007f:
            if (r1 != 0) goto L_0x0083
            k.a.b.a.b.k.x r1 = k.a.b.a.b.k.x.NONE
        L_0x0083:
            r0.b = r1
        L_0x0085:
            java.lang.Object r6 = r6.get(r3)
            java.lang.String r6 = (java.lang.String) r6
            r0.a = r6
        L_0x008d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.z0.d0.b(java.lang.Object):java.lang.Object");
    }
}
