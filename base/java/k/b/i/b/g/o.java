package k.b.i.b.g;

public abstract class o {
    public final int a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2130c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2131d;

    public static abstract class a<T extends a> {
        public final int a;
        public int b = 0;

        /* renamed from: c  reason: collision with root package name */
        public long f2132c = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f2133d = 0;

        public a(int i2) {
            this.a = i2;
        }

        public abstract T a();

        public T a(int i2) {
            this.f2133d = i2;
            return a();
        }

        public T a(long j2) {
            this.f2132c = j2;
            return a();
        }

        public T b(int i2) {
            this.b = i2;
            return a();
        }
    }

    public o(a aVar) {
        this.a = aVar.b;
        this.b = aVar.f2132c;
        this.f2130c = aVar.a;
        this.f2131d = aVar.f2133d;
    }

    public byte[] a() {
        byte[] bArr = new byte[32];
        k.b.c.e.a.b(this.a, bArr, 0);
        k.b.c.e.a.a(this.b, bArr, 4);
        k.b.c.e.a.b(this.f2130c, bArr, 12);
        k.b.c.e.a.b(this.f2131d, bArr, 28);
        return bArr;
    }
}
