package k.b.f.a;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;

public abstract class d {

    /* renamed from: e  reason: collision with root package name */
    public static final c[] f2065e = new c[0];
    public b a;
    public c b;

    /* renamed from: c  reason: collision with root package name */
    public c f2066c;

    /* renamed from: d  reason: collision with root package name */
    public c[] f2067d;

    public static abstract class a extends d {
        public a(b bVar, c cVar, c cVar2) {
            super(bVar, cVar, cVar2);
        }
    }

    public static abstract class b extends d {
        public b(b bVar, c cVar, c cVar2) {
            super(bVar, cVar, cVar2);
        }

        public b(b bVar, c cVar, c cVar2, c[] cVarArr) {
            super(bVar, cVar, cVar2, cVarArr);
        }
    }

    public static class c extends a {
        public c(b bVar, c cVar, c cVar2) {
            super(bVar, cVar, cVar2);
        }

        public c b() {
            int a = a();
            if (a != 5 && a != 6) {
                return this.f2066c;
            }
            c cVar = this.b;
            c cVar2 = this.f2066c;
            if (c() || cVar.e()) {
                return cVar2;
            }
            c c2 = cVar2.a(cVar).c(cVar);
            if (6 != a) {
                return c2;
            }
            c cVar3 = this.f2067d[0];
            return !cVar3.d() ? c2.b(cVar3) : c2;
        }
    }

    /* renamed from: k.b.f.a.d$d  reason: collision with other inner class name */
    public static class C0102d extends b {
        public C0102d(b bVar, c cVar, c cVar2) {
            super(bVar, cVar, cVar2);
        }

        public C0102d(b bVar, c cVar, c cVar2, c[] cVarArr) {
            super(bVar, cVar, cVar2, cVarArr);
        }

        public c a(int i2) {
            if (i2 != 1 || 4 != a()) {
                return d.super.a(i2);
            }
            c[] cVarArr = this.f2067d;
            c cVar = cVarArr[1];
            if (cVar == null) {
                c cVar2 = cVarArr[0];
                c cVar3 = this.a.b;
                if (cVar3.e() || cVar2.d()) {
                    cVar = cVar3;
                } else {
                    c g2 = cVar2.g().g();
                    c f2 = cVar3.f();
                    cVar = f2.a() < cVar3.a() ? g2.c(f2).f() : g2.c(cVar3);
                }
                cVarArr[1] = cVar;
            }
            return cVar;
        }
    }

    public d(b bVar, c cVar, c cVar2) {
        c[] cVarArr;
        int i2 = bVar == null ? 0 : bVar.f2049d;
        if (i2 == 0 || i2 == 5) {
            cVarArr = f2065e;
        } else {
            c a2 = bVar.a(a.b);
            if (!(i2 == 1 || i2 == 2)) {
                if (i2 == 3) {
                    cVarArr = new c[]{a2, a2, a2};
                } else if (i2 == 4) {
                    cVarArr = new c[]{a2, bVar.b};
                } else if (i2 != 6) {
                    throw new IllegalArgumentException("unknown coordinate system");
                }
            }
            cVarArr = new c[]{a2};
        }
        this.a = bVar;
        this.b = cVar;
        this.f2066c = cVar2;
        this.f2067d = cVarArr;
    }

    public d(b bVar, c cVar, c cVar2, c[] cVarArr) {
        this.a = bVar;
        this.b = cVar;
        this.f2066c = cVar2;
        this.f2067d = cVarArr;
    }

    public int a() {
        b bVar = this.a;
        if (bVar == null) {
            return 0;
        }
        return bVar.f2049d;
    }

    public c a(int i2) {
        if (i2 >= 0) {
            c[] cVarArr = this.f2067d;
            if (i2 < cVarArr.length) {
                return cVarArr[i2];
            }
        }
        return null;
    }

    public c b() {
        return this.f2066c;
    }

    public boolean c() {
        if (!(this.b == null || this.f2066c == null)) {
            c[] cVarArr = this.f2067d;
            if (cVarArr.length <= 0 || !cVarArr[0].e()) {
                return false;
            }
        }
        return true;
    }

    public d d() {
        int a2;
        if (c() || (a2 = a()) == 0 || a2 == 5) {
            return this;
        }
        c a3 = a(0);
        return a3.d() ? this : a(a3.c());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0117, code lost:
        if (r1.b().equals(r12.b()) != false) goto L_0x012a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x0126, code lost:
        if (r1.a(r3) != false) goto L_0x012a;
     */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x010b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r12) {
        /*
            r11 = this;
            r0 = 1
            if (r12 != r11) goto L_0x0004
            return r0
        L_0x0004:
            boolean r1 = r12 instanceof k.b.f.a.d
            r2 = 0
            if (r1 != 0) goto L_0x000a
            return r2
        L_0x000a:
            k.b.f.a.d r12 = (k.b.f.a.d) r12
            if (r12 != 0) goto L_0x0010
            goto L_0x012b
        L_0x0010:
            k.b.f.a.b r1 = r11.a
            k.b.f.a.b r3 = r12.a
            if (r1 != 0) goto L_0x0018
            r4 = 1
            goto L_0x0019
        L_0x0018:
            r4 = 0
        L_0x0019:
            if (r3 != 0) goto L_0x001d
            r5 = 1
            goto L_0x001e
        L_0x001d:
            r5 = 0
        L_0x001e:
            boolean r6 = r11.c()
            boolean r7 = r12.c()
            if (r6 != 0) goto L_0x011a
            if (r7 == 0) goto L_0x002c
            goto L_0x011a
        L_0x002c:
            if (r4 == 0) goto L_0x0031
            if (r5 == 0) goto L_0x0031
            goto L_0x0037
        L_0x0031:
            if (r4 == 0) goto L_0x003a
            k.b.f.a.d r12 = r12.d()
        L_0x0037:
            r1 = r11
            goto L_0x0101
        L_0x003a:
            if (r5 == 0) goto L_0x0042
            k.b.f.a.d r1 = r11.d()
            goto L_0x0101
        L_0x0042:
            boolean r3 = r1.a((k.b.f.a.b) r3)
            if (r3 != 0) goto L_0x004a
            goto L_0x012b
        L_0x004a:
            r3 = 2
            k.b.f.a.d[] r4 = new k.b.f.a.d[r3]
            r4[r2] = r11
            k.b.f.a.d r12 = r1.a((k.b.f.a.d) r12)
            r4[r0] = r12
            r12 = 0
        L_0x0056:
            if (r12 >= r3) goto L_0x006e
            int r5 = r2 + r12
            r5 = r4[r5]
            if (r5 == 0) goto L_0x006b
            k.b.f.a.b r5 = r5.a
            if (r1 != r5) goto L_0x0063
            goto L_0x006b
        L_0x0063:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "'points' entries must be null or on this curve"
            r12.<init>(r0)
            throw r12
        L_0x006b:
            int r12 = r12 + 1
            goto L_0x0056
        L_0x006e:
            int r12 = r1.f2049d
            if (r12 == 0) goto L_0x00fd
            r1 = 5
            if (r12 == r1) goto L_0x00fd
            k.b.f.a.c[] r12 = new k.b.f.a.c[r3]
            int[] r5 = new int[r3]
            r6 = 0
            r7 = 0
        L_0x007b:
            if (r6 >= r3) goto L_0x00af
            int r8 = r2 + r6
            r9 = r4[r8]
            if (r9 == 0) goto L_0x00ac
            int r10 = r9.a()
            if (r10 == 0) goto L_0x009e
            if (r10 == r1) goto L_0x009e
            boolean r10 = r9.c()
            if (r10 != 0) goto L_0x009e
            k.b.f.a.c[] r10 = r9.f2067d
            r10 = r10[r2]
            boolean r10 = r10.d()
            if (r10 == 0) goto L_0x009c
            goto L_0x009e
        L_0x009c:
            r10 = 0
            goto L_0x009f
        L_0x009e:
            r10 = 1
        L_0x009f:
            if (r10 != 0) goto L_0x00ac
            k.b.f.a.c r9 = r9.a((int) r2)
            r12[r7] = r9
            int r9 = r7 + 1
            r5[r7] = r8
            r7 = r9
        L_0x00ac:
            int r6 = r6 + 1
            goto L_0x007b
        L_0x00af:
            if (r7 != 0) goto L_0x00b2
            goto L_0x00fd
        L_0x00b2:
            k.b.f.a.c[] r1 = new k.b.f.a.c[r7]
            r3 = r12[r2]
            r1[r2] = r3
            r3 = 0
        L_0x00b9:
            int r3 = r3 + r0
            if (r3 >= r7) goto L_0x00cb
            int r6 = r3 + -1
            r6 = r1[r6]
            int r8 = r2 + r3
            r8 = r12[r8]
            k.b.f.a.c r6 = r6.c(r8)
            r1[r3] = r6
            goto L_0x00b9
        L_0x00cb:
            int r3 = r3 + -1
            r6 = r1[r3]
            k.b.f.a.c r6 = r6.c()
        L_0x00d3:
            if (r3 <= 0) goto L_0x00e9
            int r8 = r3 + -1
            int r3 = r3 + 0
            r9 = r12[r3]
            r10 = r1[r8]
            k.b.f.a.c r10 = r10.c(r6)
            r12[r3] = r10
            k.b.f.a.c r6 = r6.c(r9)
            r3 = r8
            goto L_0x00d3
        L_0x00e9:
            r12[r2] = r6
            r1 = 0
        L_0x00ec:
            if (r1 >= r7) goto L_0x00fd
            r3 = r5[r1]
            r6 = r4[r3]
            r8 = r12[r1]
            k.b.f.a.d r6 = r6.a((k.b.f.a.c) r8)
            r4[r3] = r6
            int r1 = r1 + 1
            goto L_0x00ec
        L_0x00fd:
            r1 = r4[r2]
            r12 = r4[r0]
        L_0x0101:
            k.b.f.a.c r3 = r1.b
            k.b.f.a.c r4 = r12.b
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x0129
            k.b.f.a.c r1 = r1.b()
            k.b.f.a.c r12 = r12.b()
            boolean r12 = r1.equals(r12)
            if (r12 == 0) goto L_0x0129
            goto L_0x012a
        L_0x011a:
            if (r6 == 0) goto L_0x0129
            if (r7 == 0) goto L_0x0129
            if (r4 != 0) goto L_0x012a
            if (r5 != 0) goto L_0x012a
            boolean r12 = r1.a((k.b.f.a.b) r3)
            if (r12 == 0) goto L_0x0129
            goto L_0x012a
        L_0x0129:
            r0 = 0
        L_0x012a:
            r2 = r0
        L_0x012b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.f.a.d.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i2;
        b bVar = this.a;
        if (bVar == null) {
            i2 = 0;
        } else {
            i2 = ~bVar.hashCode();
        }
        if (c()) {
            return i2;
        }
        d d2 = d();
        return (i2 ^ (d2.b.hashCode() * 17)) ^ (d2.b().hashCode() * 257);
    }

    public String toString() {
        if (c()) {
            return "INF";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        stringBuffer.append(this.b);
        stringBuffer.append(WWWAuthenticateHeader.COMMA);
        stringBuffer.append(this.f2066c);
        for (c append : this.f2067d) {
            stringBuffer.append(WWWAuthenticateHeader.COMMA);
            stringBuffer.append(append);
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public d a(c cVar) {
        int a2 = a();
        if (a2 != 1) {
            if (a2 == 2 || a2 == 3 || a2 == 4) {
                c g2 = cVar.g();
                return this.a.a(this.b.c(g2), this.f2066c.c(g2.c(cVar)));
            } else if (a2 != 6) {
                throw new IllegalStateException("not a projective coordinate system");
            }
        }
        return this.a.a(this.b.c(cVar), this.f2066c.c(cVar));
    }
}
