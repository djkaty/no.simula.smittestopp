package k.b.i.b.g;

public final class t extends q {
    public final r b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2150c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f2151d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f2152e;

    public static class b {
        public final r a;
        public byte[] b = null;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f2153c = null;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f2154d = null;

        public b(r rVar) {
            this.a = rVar;
        }
    }

    public /* synthetic */ t(b bVar, a aVar) {
        super(false, bVar.a.b.f2158f);
        r rVar = bVar.a;
        this.b = rVar;
        if (rVar != null) {
            int i2 = rVar.b.f2159g;
            byte[] bArr = bVar.f2154d;
            if (bArr == null) {
                v vVar = rVar.a;
                if (vVar != null) {
                    this.f2150c = vVar.a();
                } else {
                    this.f2150c = 0;
                }
                byte[] bArr2 = bVar.b;
                if (bArr2 == null) {
                    this.f2151d = new byte[i2];
                } else if (bArr2.length == i2) {
                    this.f2151d = bArr2;
                } else {
                    throw new IllegalArgumentException("length of root must be equal to length of digest");
                }
                byte[] bArr3 = bVar.f2153c;
                if (bArr3 == null) {
                    this.f2152e = new byte[i2];
                } else if (bArr3.length == i2) {
                    this.f2152e = bArr3;
                } else {
                    throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
                }
            } else if (bArr.length == i2 + i2) {
                this.f2150c = 0;
                this.f2151d = k.b.c.e.a.b(bArr, 0, i2);
                this.f2152e = k.b.c.e.a.b(bArr, i2 + 0, i2);
            } else {
                int i3 = i2 + 4;
                if (bArr.length == i3 + i2) {
                    this.f2150c = k.b.c.e.a.b(bArr, 0);
                    this.f2151d = k.b.c.e.a.b(bArr, 4, i2);
                    this.f2152e = k.b.c.e.a.b(bArr, i3, i2);
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
        int i2 = this.b.b.f2159g;
        int i3 = 0;
        int i4 = this.f2150c;
        if (i4 != 0) {
            bArr = new byte[(i2 + 4 + i2)];
            k.b.c.e.a.b(i4, bArr, 0);
            i3 = 4;
        } else {
            bArr = new byte[(i2 + i2)];
        }
        k.b.c.e.a.a(bArr, this.f2151d, i3);
        k.b.c.e.a.a(bArr, this.f2152e, i3 + i2);
        return bArr;
    }
}
