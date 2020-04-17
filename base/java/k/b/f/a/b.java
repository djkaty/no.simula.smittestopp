package k.b.f.a;

import java.math.BigInteger;
import k.b.f.a.c;
import k.b.f.a.d;

public abstract class b {
    public k.b.f.b.a a;
    public c b;

    /* renamed from: c  reason: collision with root package name */
    public c f2048c;

    /* renamed from: d  reason: collision with root package name */
    public int f2049d = 0;

    public static abstract class a extends b {
        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public a(int r6, int r7, int r8, int r9) {
            /*
                r5 = this;
                if (r7 == 0) goto L_0x0049
                r0 = 2
                r1 = 1
                r2 = 3
                r3 = 0
                if (r8 != 0) goto L_0x001f
                if (r9 != 0) goto L_0x0017
                int[] r8 = new int[r2]
                r8[r3] = r3
                r8[r1] = r7
                r8[r0] = r6
                k.b.f.b.e r6 = k.b.f.b.b.a((int[]) r8)
                goto L_0x0035
            L_0x0017:
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                java.lang.String r7 = "k3 must be 0 if k2 == 0"
                r6.<init>(r7)
                throw r6
            L_0x001f:
                if (r8 <= r7) goto L_0x0041
                if (r9 <= r8) goto L_0x0039
                r4 = 5
                int[] r4 = new int[r4]
                r4[r3] = r3
                r4[r1] = r7
                r4[r0] = r8
                r4[r2] = r9
                r7 = 4
                r4[r7] = r6
                k.b.f.b.e r6 = k.b.f.b.b.a((int[]) r4)
            L_0x0035:
                r5.<init>(r6)
                return
            L_0x0039:
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                java.lang.String r7 = "k3 must be > k2"
                r6.<init>(r7)
                throw r6
            L_0x0041:
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                java.lang.String r7 = "k2 must be > k1"
                r6.<init>(r7)
                throw r6
            L_0x0049:
                java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
                java.lang.String r7 = "k1 must be > 0"
                r6.<init>(r7)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: k.b.f.a.b.a.<init>(int, int, int, int):void");
        }

        public d a(BigInteger bigInteger, BigInteger bigInteger2) {
            c a = a(bigInteger);
            c a2 = a(bigInteger2);
            int i2 = this.f2049d;
            if (i2 == 5 || i2 == 6) {
                if (!a.e()) {
                    a2 = ((c.C0101c) a2).c(a.c()).a(a);
                } else if (!a2.g().equals(this.f2048c)) {
                    throw new IllegalArgumentException();
                }
            }
            return new d.c((c) this, a, a2);
        }
    }

    /* renamed from: k.b.f.a.b$b  reason: collision with other inner class name */
    public static abstract class C0100b extends b {
        public C0100b(BigInteger bigInteger) {
            super(k.b.f.b.b.a(bigInteger));
        }
    }

    public static class c extends a {

        /* renamed from: e  reason: collision with root package name */
        public int f2050e;

        /* renamed from: f  reason: collision with root package name */
        public int f2051f;

        /* renamed from: g  reason: collision with root package name */
        public int f2052g;

        /* renamed from: h  reason: collision with root package name */
        public int f2053h;

        /* renamed from: i  reason: collision with root package name */
        public d.c f2054i = new d.c(this, (c) null, (c) null);

        public c(int i2, int i3, int i4, int i5, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i2, i3, i4, i5);
            this.f2050e = i2;
            this.f2051f = i3;
            this.f2052g = i4;
            this.f2053h = i5;
            this.b = a(bigInteger);
            this.f2048c = a(bigInteger2);
            this.f2049d = 6;
        }

        public c a(BigInteger bigInteger) {
            return new c.C0101c(this.f2050e, this.f2051f, this.f2052g, this.f2053h, bigInteger);
        }

        public d a() {
            return this.f2054i;
        }

        public d a(c cVar, c cVar2) {
            return new d.c(this, cVar, cVar2);
        }
    }

    public static class d extends C0100b {

        /* renamed from: e  reason: collision with root package name */
        public BigInteger f2055e;

        /* renamed from: f  reason: collision with root package name */
        public BigInteger f2056f;

        /* renamed from: g  reason: collision with root package name */
        public d.C0102d f2057g = new d.C0102d(this, (c) null, (c) null);

        public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            super(bigInteger);
            this.f2055e = bigInteger;
            this.f2056f = c.d.b(bigInteger);
            this.b = a(bigInteger2);
            this.f2048c = a(bigInteger3);
            this.f2049d = 4;
        }

        public c a(BigInteger bigInteger) {
            return new c.d(this.f2055e, this.f2056f, bigInteger);
        }

        public d a() {
            return this.f2057g;
        }

        public d a(c cVar, c cVar2) {
            return new d.C0102d(this, cVar, cVar2);
        }

        public d a(d dVar) {
            int i2;
            if (this == dVar.a || this.f2049d != 2 || dVar.c() || ((i2 = dVar.a.f2049d) != 2 && i2 != 3 && i2 != 4)) {
                return b.super.a(dVar);
            }
            return new d.C0102d(this, a(dVar.b.h()), a(dVar.f2066c.h()), new c[]{a(dVar.f2067d[0].h())});
        }
    }

    public b(k.b.f.b.a aVar) {
        this.a = aVar;
    }

    public abstract c a(BigInteger bigInteger);

    public abstract d a();

    public d a(BigInteger bigInteger, BigInteger bigInteger2) {
        return a(a(bigInteger), a(bigInteger2));
    }

    public abstract d a(c cVar, c cVar2);

    public boolean a(b bVar) {
        return this == bVar || (bVar != null && this.a.equals(bVar.a) && this.b.h().equals(bVar.b.h()) && this.f2048c.h().equals(bVar.f2048c.h()));
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof b) && a((b) obj));
    }

    public int hashCode() {
        return (this.a.hashCode() ^ Integer.rotateLeft(this.b.h().hashCode(), 8)) ^ Integer.rotateLeft(this.f2048c.h().hashCode(), 16);
    }

    public d a(d dVar) {
        if (this == dVar.a) {
            return dVar;
        }
        if (dVar.c()) {
            return a();
        }
        d d2 = dVar.d();
        return a(d2.b.h(), d2.b().h());
    }
}
