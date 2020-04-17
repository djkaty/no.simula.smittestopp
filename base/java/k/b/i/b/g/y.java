package k.b.i.b.g;

public final class y extends p {
    public final w b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2173c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f2174d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f2175e;

    public static class b {
        public final w a;
        public byte[] b = null;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f2176c = null;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f2177d = null;

        public b(w wVar) {
            this.a = wVar;
        }
    }

    public /* synthetic */ y(b bVar, a aVar) {
        super(false, bVar.a.f2158f);
        w wVar = bVar.a;
        this.b = wVar;
        if (wVar != null) {
            int i2 = wVar.f2159g;
            byte[] bArr = bVar.f2177d;
            if (bArr == null) {
                v vVar = wVar.a;
                if (vVar != null) {
                    this.f2173c = vVar.a();
                } else {
                    this.f2173c = 0;
                }
                byte[] bArr2 = bVar.b;
                if (bArr2 == null) {
                    this.f2174d = new byte[i2];
                } else if (bArr2.length == i2) {
                    this.f2174d = bArr2;
                } else {
                    throw new IllegalArgumentException("length of root must be equal to length of digest");
                }
                byte[] bArr3 = bVar.f2176c;
                if (bArr3 == null) {
                    this.f2175e = new byte[i2];
                } else if (bArr3.length == i2) {
                    this.f2175e = bArr3;
                } else {
                    throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
                }
            } else if (bArr.length == i2 + i2) {
                this.f2173c = 0;
                this.f2174d = k.b.c.e.a.b(bArr, 0, i2);
                this.f2175e = k.b.c.e.a.b(bArr, i2 + 0, i2);
            } else {
                int i3 = i2 + 4;
                if (bArr.length == i3 + i2) {
                    this.f2173c = k.b.c.e.a.b(bArr, 0);
                    this.f2174d = k.b.c.e.a.b(bArr, 4, i2);
                    this.f2175e = k.b.c.e.a.b(bArr, i3, i2);
                    return;
                }
                throw new IllegalArgumentException("public key has wrong size");
            }
        } else {
            throw new NullPointerException("params == null");
        }
    }

    public byte[] a() {
        byte[] bArr;
        int i2 = this.b.f2159g;
        int i3 = 0;
        int i4 = this.f2173c;
        if (i4 != 0) {
            bArr = new byte[(i2 + 4 + i2)];
            k.b.c.e.a.b(i4, bArr, 0);
            i3 = 4;
        } else {
            bArr = new byte[(i2 + i2)];
        }
        k.b.c.e.a.a(bArr, this.f2174d, i3);
        k.b.c.e.a.a(bArr, this.f2175e, i3 + i2);
        return bArr;
    }
}
