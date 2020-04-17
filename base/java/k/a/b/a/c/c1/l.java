package k.a.b.a.c.c1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.b.i;
import k.a.b.a.b.j;
import k.a.b.a.b.n.m;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class l extends b<m, List> implements s<m> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1686d = {i.a(16), f.a("amqp:open:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1687e = i.a(16);

    public static class a extends AbstractList {
        public m x;

        public a(m mVar) {
            this.x = mVar;
        }

        public Object get(int i2) {
            switch (i2) {
                case 0:
                    return this.x.a;
                case 1:
                    return this.x.b;
                case 2:
                    return this.x.f1626c;
                case 3:
                    return this.x.f1627d;
                case 4:
                    return this.x.f1628e;
                case 5:
                    return this.x.f1629f;
                case 6:
                    return this.x.f1630g;
                case 7:
                    return this.x.f1631h;
                case 8:
                    return this.x.f1632i;
                case 9:
                    return this.x.f1633j;
                default:
                    throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
            }
        }

        public int size() {
            m mVar = this.x;
            if (mVar.f1633j != null) {
                return 10;
            }
            if (mVar.f1632i != null) {
                return 9;
            }
            if (mVar.f1631h != null) {
                return 8;
            }
            if (mVar.f1630g != null) {
                return 7;
            }
            if (mVar.f1629f != null) {
                return 6;
            }
            if (mVar.f1628e != null) {
                return 5;
            }
            j jVar = mVar.f1627d;
            if (jVar != null && !jVar.equals(j.z)) {
                return 4;
            }
            h hVar = this.x.f1626c;
            if (hVar == null || hVar.equals(h.B)) {
                return this.x.b != null ? 2 : 1;
            }
            return 3;
        }
    }

    public l(x xVar) {
        super(xVar);
    }

    public Class<m> a() {
        return m.class;
    }

    public i b() {
        return f1687e;
    }

    public Object d(Object obj) {
        return new a((m) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0040, code lost:
        r0.f1632i = (k.a.b.a.b.f[]) r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0044, code lost:
        r1 = r6.get(7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0049, code lost:
        if (r1 == null) goto L_0x005f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0053, code lost:
        if (r1.getClass().isArray() == false) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0056, code lost:
        r0.f1631h = new k.a.b.a.b.f[]{(k.a.b.a.b.f) r1};
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x005f, code lost:
        r0.f1631h = (k.a.b.a.b.f[]) r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0063, code lost:
        r1 = r6.get(6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0068, code lost:
        if (r1 == null) goto L_0x007e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0072, code lost:
        if (r1.getClass().isArray() == false) goto L_0x0075;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0075, code lost:
        r0.f1630g = new k.a.b.a.b.f[]{(k.a.b.a.b.f) r1};
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x007e, code lost:
        r0.f1630g = (k.a.b.a.b.f[]) r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0082, code lost:
        r1 = r6.get(5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0087, code lost:
        if (r1 == null) goto L_0x009d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0091, code lost:
        if (r1.getClass().isArray() == false) goto L_0x0094;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0094, code lost:
        r0.f1629f = new k.a.b.a.b.f[]{(k.a.b.a.b.f) r1};
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x009d, code lost:
        r0.f1629f = (k.a.b.a.b.f[]) r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00a1, code lost:
        r0.f1628e = (k.a.b.a.b.h) r6.get(4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00aa, code lost:
        r1 = (k.a.b.a.b.j) r6.get(3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00b1, code lost:
        if (r1 != null) goto L_0x00b5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00b3, code lost:
        r1 = k.a.b.a.b.j.z;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00b5, code lost:
        r0.f1627d = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00b7, code lost:
        r1 = (k.a.b.a.b.h) r6.get(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00be, code lost:
        if (r1 != null) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00c0, code lost:
        r1 = k.a.b.a.b.h.B;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00c2, code lost:
        r0.f1626c = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00c4, code lost:
        r0.b = (java.lang.String) r6.get(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00cc, code lost:
        r0.a((java.lang.String) r6.get(0));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00d5, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0024, code lost:
        r1 = r6.get(8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x002a, code lost:
        if (r1 == null) goto L_0x0040;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0034, code lost:
        if (r1.getClass().isArray() == false) goto L_0x0037;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0037, code lost:
        r0.f1632i = new k.a.b.a.b.f[]{(k.a.b.a.b.f) r1};
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r6) {
        /*
            r5 = this;
            java.util.List r6 = (java.util.List) r6
            k.a.b.a.b.n.m r0 = new k.a.b.a.b.n.m
            r0.<init>()
            boolean r1 = r6.isEmpty()
            if (r1 != 0) goto L_0x00d6
            int r1 = r6.size()
            int r1 = 10 - r1
            r2 = 0
            r3 = 1
            switch(r1) {
                case 0: goto L_0x001a;
                case 1: goto L_0x0024;
                case 2: goto L_0x0044;
                case 3: goto L_0x0063;
                case 4: goto L_0x0082;
                case 5: goto L_0x00a1;
                case 6: goto L_0x00aa;
                case 7: goto L_0x00b7;
                case 8: goto L_0x00c4;
                case 9: goto L_0x00cc;
                default: goto L_0x0018;
            }
        L_0x0018:
            goto L_0x00d5
        L_0x001a:
            r1 = 9
            java.lang.Object r1 = r6.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r0.f1633j = r1
        L_0x0024:
            r1 = 8
            java.lang.Object r1 = r6.get(r1)
            if (r1 == 0) goto L_0x0040
            java.lang.Class r4 = r1.getClass()
            boolean r4 = r4.isArray()
            if (r4 == 0) goto L_0x0037
            goto L_0x0040
        L_0x0037:
            k.a.b.a.b.f[] r4 = new k.a.b.a.b.f[r3]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r4[r2] = r1
            r0.f1632i = r4
            goto L_0x0044
        L_0x0040:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1632i = r1
        L_0x0044:
            r1 = 7
            java.lang.Object r1 = r6.get(r1)
            if (r1 == 0) goto L_0x005f
            java.lang.Class r4 = r1.getClass()
            boolean r4 = r4.isArray()
            if (r4 == 0) goto L_0x0056
            goto L_0x005f
        L_0x0056:
            k.a.b.a.b.f[] r4 = new k.a.b.a.b.f[r3]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r4[r2] = r1
            r0.f1631h = r4
            goto L_0x0063
        L_0x005f:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1631h = r1
        L_0x0063:
            r1 = 6
            java.lang.Object r1 = r6.get(r1)
            if (r1 == 0) goto L_0x007e
            java.lang.Class r4 = r1.getClass()
            boolean r4 = r4.isArray()
            if (r4 == 0) goto L_0x0075
            goto L_0x007e
        L_0x0075:
            k.a.b.a.b.f[] r4 = new k.a.b.a.b.f[r3]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r4[r2] = r1
            r0.f1630g = r4
            goto L_0x0082
        L_0x007e:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1630g = r1
        L_0x0082:
            r1 = 5
            java.lang.Object r1 = r6.get(r1)
            if (r1 == 0) goto L_0x009d
            java.lang.Class r4 = r1.getClass()
            boolean r4 = r4.isArray()
            if (r4 == 0) goto L_0x0094
            goto L_0x009d
        L_0x0094:
            k.a.b.a.b.f[] r4 = new k.a.b.a.b.f[r3]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r4[r2] = r1
            r0.f1629f = r4
            goto L_0x00a1
        L_0x009d:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1629f = r1
        L_0x00a1:
            r1 = 4
            java.lang.Object r1 = r6.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1628e = r1
        L_0x00aa:
            r1 = 3
            java.lang.Object r1 = r6.get(r1)
            k.a.b.a.b.j r1 = (k.a.b.a.b.j) r1
            if (r1 != 0) goto L_0x00b5
            k.a.b.a.b.j r1 = k.a.b.a.b.j.z
        L_0x00b5:
            r0.f1627d = r1
        L_0x00b7:
            r1 = 2
            java.lang.Object r1 = r6.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 != 0) goto L_0x00c2
            k.a.b.a.b.h r1 = k.a.b.a.b.h.B
        L_0x00c2:
            r0.f1626c = r1
        L_0x00c4:
            java.lang.Object r1 = r6.get(r3)
            java.lang.String r1 = (java.lang.String) r1
            r0.b = r1
        L_0x00cc:
            java.lang.Object r6 = r6.get(r2)
            java.lang.String r6 = (java.lang.String) r6
            r0.a(r6)
        L_0x00d5:
            return r0
        L_0x00d6:
            k.a.b.a.c.q r6 = new k.a.b.a.c.q
            java.lang.String r0 = "The container-id field cannot be omitted"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.c1.l.b(java.lang.Object):java.lang.Object");
    }
}
