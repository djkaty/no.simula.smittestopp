package d.g.a.h;

import d.g.a.g;

public class c {
    public j a = new j(this);
    public final d b;

    /* renamed from: c  reason: collision with root package name */
    public final C0020c f476c;

    /* renamed from: d  reason: collision with root package name */
    public c f477d;

    /* renamed from: e  reason: collision with root package name */
    public int f478e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f479f = -1;

    /* renamed from: g  reason: collision with root package name */
    public b f480g = b.NONE;

    /* renamed from: h  reason: collision with root package name */
    public int f481h;

    /* renamed from: i  reason: collision with root package name */
    public g f482i;

    public enum a {
        RELAXED,
        STRICT
    }

    public enum b {
        NONE,
        STRONG,
        WEAK
    }

    /* renamed from: d.g.a.h.c$c  reason: collision with other inner class name */
    public enum C0020c {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public c(d dVar, C0020c cVar) {
        a aVar = a.RELAXED;
        this.f481h = 0;
        this.b = dVar;
        this.f476c = cVar;
    }

    public int a() {
        c cVar;
        if (this.b.Y == 8) {
            return 0;
        }
        int i2 = this.f479f;
        if (i2 <= -1 || (cVar = this.f477d) == null || cVar.b.Y != 8) {
            return this.f478e;
        }
        return i2;
    }

    public boolean b() {
        return this.f477d != null;
    }

    public void c() {
        this.f477d = null;
        this.f478e = 0;
        this.f479f = -1;
        this.f480g = b.STRONG;
        this.f481h = 0;
        a aVar = a.RELAXED;
        this.a.e();
    }

    public void d() {
        g gVar = this.f482i;
        if (gVar == null) {
            this.f482i = new g(g.a.UNRESTRICTED);
        } else {
            gVar.a();
        }
    }

    public String toString() {
        return this.b.Z + ":" + this.f476c.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0034, code lost:
        if ((r4.b.Q > 0) == false) goto L_0x0058;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0054, code lost:
        if (r10 != d.g.a.h.c.C0020c.CENTER_Y) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0070, code lost:
        if (r10 != d.g.a.h.c.C0020c.CENTER_Y) goto L_0x0058;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0073, code lost:
        r10 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x008b, code lost:
        if (r10 != d.g.a.h.c.C0020c.CENTER_X) goto L_0x0058;
     */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0090 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(d.g.a.h.c r5, int r6, int r7, d.g.a.h.c.b r8, int r9, boolean r10) {
        /*
            r4 = this;
            r0 = 0
            r1 = 1
            if (r5 != 0) goto L_0x0014
            r5 = 0
            r4.f477d = r5
            r4.f478e = r0
            r5 = -1
            r4.f479f = r5
            d.g.a.h.c$b r5 = d.g.a.h.c.b.NONE
            r4.f480g = r5
            r5 = 2
            r4.f481h = r5
            return r1
        L_0x0014:
            if (r10 != 0) goto L_0x0091
            d.g.a.h.c$c r10 = r5.f476c
            d.g.a.h.c$c r2 = r4.f476c
            if (r10 != r2) goto L_0x0037
            d.g.a.h.c$c r10 = d.g.a.h.c.C0020c.BASELINE
            if (r2 != r10) goto L_0x0056
            d.g.a.h.d r10 = r5.b
            int r10 = r10.Q
            if (r10 <= 0) goto L_0x0028
            r10 = 1
            goto L_0x0029
        L_0x0028:
            r10 = 0
        L_0x0029:
            if (r10 == 0) goto L_0x0058
            d.g.a.h.d r10 = r4.b
            int r10 = r10.Q
            if (r10 <= 0) goto L_0x0033
            r10 = 1
            goto L_0x0034
        L_0x0033:
            r10 = 0
        L_0x0034:
            if (r10 != 0) goto L_0x0056
            goto L_0x0058
        L_0x0037:
            int r2 = r2.ordinal()
            switch(r2) {
                case 0: goto L_0x0058;
                case 1: goto L_0x0075;
                case 2: goto L_0x005a;
                case 3: goto L_0x0075;
                case 4: goto L_0x005a;
                case 5: goto L_0x0058;
                case 6: goto L_0x004a;
                case 7: goto L_0x0058;
                case 8: goto L_0x0058;
                default: goto L_0x003e;
            }
        L_0x003e:
            java.lang.AssertionError r5 = new java.lang.AssertionError
            d.g.a.h.c$c r6 = r4.f476c
            java.lang.String r6 = r6.name()
            r5.<init>(r6)
            throw r5
        L_0x004a:
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.BASELINE
            if (r10 == r2) goto L_0x0058
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.CENTER_X
            if (r10 == r2) goto L_0x0058
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.CENTER_Y
            if (r10 == r2) goto L_0x0058
        L_0x0056:
            r10 = 1
            goto L_0x008e
        L_0x0058:
            r10 = 0
            goto L_0x008e
        L_0x005a:
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.TOP
            if (r10 == r2) goto L_0x0065
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.BOTTOM
            if (r10 != r2) goto L_0x0063
            goto L_0x0065
        L_0x0063:
            r2 = 0
            goto L_0x0066
        L_0x0065:
            r2 = 1
        L_0x0066:
            d.g.a.h.d r3 = r5.b
            boolean r3 = r3 instanceof d.g.a.h.g
            if (r3 == 0) goto L_0x0073
            if (r2 != 0) goto L_0x0056
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.CENTER_Y
            if (r10 != r2) goto L_0x0058
            goto L_0x0056
        L_0x0073:
            r10 = r2
            goto L_0x008e
        L_0x0075:
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.LEFT
            if (r10 == r2) goto L_0x0080
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.RIGHT
            if (r10 != r2) goto L_0x007e
            goto L_0x0080
        L_0x007e:
            r2 = 0
            goto L_0x0081
        L_0x0080:
            r2 = 1
        L_0x0081:
            d.g.a.h.d r3 = r5.b
            boolean r3 = r3 instanceof d.g.a.h.g
            if (r3 == 0) goto L_0x0073
            if (r2 != 0) goto L_0x0056
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.CENTER_X
            if (r10 != r2) goto L_0x0058
            goto L_0x0056
        L_0x008e:
            if (r10 != 0) goto L_0x0091
            return r0
        L_0x0091:
            r4.f477d = r5
            if (r6 <= 0) goto L_0x0098
            r4.f478e = r6
            goto L_0x009a
        L_0x0098:
            r4.f478e = r0
        L_0x009a:
            r4.f479f = r7
            r4.f480g = r8
            r4.f481h = r9
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.a.h.c.a(d.g.a.h.c, int, int, d.g.a.h.c$b, int, boolean):boolean");
    }
}
