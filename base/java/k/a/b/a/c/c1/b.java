package k.a.b.a.c.c1;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.b.i;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public final class b extends k.a.b.a.c.b<k.a.b.a.b.n.b, List> implements s<k.a.b.a.b.n.b> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1671d = {i.a(17), f.a("amqp:begin:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1672e = i.a(17);

    public static class a extends AbstractList {
        public k.a.b.a.b.n.b x;

        public a(k.a.b.a.b.n.b bVar) {
            this.x = bVar;
        }

        public Object get(int i2) {
            switch (i2) {
                case 0:
                    return this.x.a;
                case 1:
                    return this.x.b;
                case 2:
                    return this.x.f1605c;
                case 3:
                    return this.x.f1606d;
                case 4:
                    return this.x.f1607e;
                case 5:
                    return this.x.f1608f;
                case 6:
                    return this.x.f1609g;
                case 7:
                    return this.x.f1610h;
                default:
                    throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
            }
        }

        public int size() {
            k.a.b.a.b.n.b bVar = this.x;
            if (bVar.f1610h != null) {
                return 8;
            }
            if (bVar.f1609g != null) {
                return 7;
            }
            if (bVar.f1608f != null) {
                return 6;
            }
            h hVar = bVar.f1607e;
            return (hVar == null || hVar.equals(h.B)) ? 4 : 5;
        }
    }

    public b(x xVar) {
        super(xVar);
    }

    public Class<k.a.b.a.b.n.b> a() {
        return k.a.b.a.b.n.b.class;
    }

    public i b() {
        return f1672e;
    }

    public Object d(Object obj) {
        return new a((k.a.b.a.b.n.b) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x003f, code lost:
        r0.f1609g = (k.a.b.a.b.f[]) r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0043, code lost:
        r1 = r7.get(5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0048, code lost:
        if (r1 == null) goto L_0x005e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0052, code lost:
        if (r1.getClass().isArray() == false) goto L_0x0055;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0055, code lost:
        r0.f1608f = new k.a.b.a.b.f[]{(k.a.b.a.b.f) r1};
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x005e, code lost:
        r0.f1608f = (k.a.b.a.b.f[]) r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0062, code lost:
        r1 = (k.a.b.a.b.h) r7.get(4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (r1 != null) goto L_0x006d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x006b, code lost:
        r1 = k.a.b.a.b.h.B;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x006d, code lost:
        r0.f1607e = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x006f, code lost:
        r1 = (k.a.b.a.b.h) r7.get(3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0075, code lost:
        if (r1 == null) goto L_0x00a7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0077, code lost:
        r0.f1606d = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0079, code lost:
        r1 = (k.a.b.a.b.h) r7.get(2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0080, code lost:
        if (r1 == null) goto L_0x009f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0082, code lost:
        r0.f1605c = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0084, code lost:
        r1 = (k.a.b.a.b.h) r7.get(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x008a, code lost:
        if (r1 == null) goto L_0x0097;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x008c, code lost:
        r0.b = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x008e, code lost:
        r0.a = (k.a.b.a.b.j) r7.get(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x009e, code lost:
        throw new java.lang.NullPointerException("the next-outgoing-id field is mandatory");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00a6, code lost:
        throw new java.lang.NullPointerException("the incoming-window field is mandatory");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00ae, code lost:
        throw new java.lang.NullPointerException("the outgoing-window field is mandatory");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00af, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0024, code lost:
        r1 = r7.get(6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0029, code lost:
        if (r1 == null) goto L_0x003f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0033, code lost:
        if (r1.getClass().isArray() == false) goto L_0x0036;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0036, code lost:
        r0.f1609g = new k.a.b.a.b.f[]{(k.a.b.a.b.f) r1};
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r7) {
        /*
            r6 = this;
            java.util.List r7 = (java.util.List) r7
            k.a.b.a.b.n.b r0 = new k.a.b.a.b.n.b
            r0.<init>()
            int r1 = r7.size()
            r2 = 3
            if (r1 <= r2) goto L_0x00b0
            int r1 = r7.size()
            int r1 = 8 - r1
            r3 = 0
            r4 = 1
            switch(r1) {
                case 0: goto L_0x001b;
                case 1: goto L_0x0024;
                case 2: goto L_0x0043;
                case 3: goto L_0x0062;
                case 4: goto L_0x006f;
                case 5: goto L_0x0079;
                case 6: goto L_0x0084;
                case 7: goto L_0x008e;
                default: goto L_0x0019;
            }
        L_0x0019:
            goto L_0x00af
        L_0x001b:
            r1 = 7
            java.lang.Object r1 = r7.get(r1)
            java.util.Map r1 = (java.util.Map) r1
            r0.f1610h = r1
        L_0x0024:
            r1 = 6
            java.lang.Object r1 = r7.get(r1)
            if (r1 == 0) goto L_0x003f
            java.lang.Class r5 = r1.getClass()
            boolean r5 = r5.isArray()
            if (r5 == 0) goto L_0x0036
            goto L_0x003f
        L_0x0036:
            k.a.b.a.b.f[] r5 = new k.a.b.a.b.f[r4]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r5[r3] = r1
            r0.f1609g = r5
            goto L_0x0043
        L_0x003f:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1609g = r1
        L_0x0043:
            r1 = 5
            java.lang.Object r1 = r7.get(r1)
            if (r1 == 0) goto L_0x005e
            java.lang.Class r5 = r1.getClass()
            boolean r5 = r5.isArray()
            if (r5 == 0) goto L_0x0055
            goto L_0x005e
        L_0x0055:
            k.a.b.a.b.f[] r5 = new k.a.b.a.b.f[r4]
            k.a.b.a.b.f r1 = (k.a.b.a.b.f) r1
            r5[r3] = r1
            r0.f1608f = r5
            goto L_0x0062
        L_0x005e:
            k.a.b.a.b.f[] r1 = (k.a.b.a.b.f[]) r1
            r0.f1608f = r1
        L_0x0062:
            r1 = 4
            java.lang.Object r1 = r7.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 != 0) goto L_0x006d
            k.a.b.a.b.h r1 = k.a.b.a.b.h.B
        L_0x006d:
            r0.f1607e = r1
        L_0x006f:
            java.lang.Object r1 = r7.get(r2)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 == 0) goto L_0x00a7
            r0.f1606d = r1
        L_0x0079:
            r1 = 2
            java.lang.Object r1 = r7.get(r1)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 == 0) goto L_0x009f
            r0.f1605c = r1
        L_0x0084:
            java.lang.Object r1 = r7.get(r4)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            if (r1 == 0) goto L_0x0097
            r0.b = r1
        L_0x008e:
            java.lang.Object r7 = r7.get(r3)
            k.a.b.a.b.j r7 = (k.a.b.a.b.j) r7
            r0.a = r7
            goto L_0x00af
        L_0x0097:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException
            java.lang.String r0 = "the next-outgoing-id field is mandatory"
            r7.<init>(r0)
            throw r7
        L_0x009f:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException
            java.lang.String r0 = "the incoming-window field is mandatory"
            r7.<init>(r0)
            throw r7
        L_0x00a7:
            java.lang.NullPointerException r7 = new java.lang.NullPointerException
            java.lang.String r0 = "the outgoing-window field is mandatory"
            r7.<init>(r0)
            throw r7
        L_0x00af:
            return r0
        L_0x00b0:
            k.a.b.a.c.q r7 = new k.a.b.a.c.q
            java.lang.String r0 = "The outgoing-window field cannot be omitted"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.c1.b.b(java.lang.Object):java.lang.Object");
    }
}
