package k.b.i.b.d;

public class a {
    public int a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f2091c;

    /* renamed from: d  reason: collision with root package name */
    public short[][][] f2092d;

    /* renamed from: e  reason: collision with root package name */
    public short[][][] f2093e;

    /* renamed from: f  reason: collision with root package name */
    public short[][] f2094f;

    /* renamed from: g  reason: collision with root package name */
    public short[] f2095g;

    public a(byte b2, byte b3, short[][][] sArr, short[][][] sArr2, short[][] sArr3, short[] sArr4) {
        byte b4 = b2 & 255;
        this.a = b4;
        byte b5 = b3 & 255;
        this.b = b5;
        this.f2091c = b5 - b4;
        this.f2092d = sArr;
        this.f2093e = sArr2;
        this.f2094f = sArr3;
        this.f2095g = sArr4;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof a)) {
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b && this.f2091c == aVar.f2091c && k.b.c.e.a.a(this.f2092d, aVar.f2092d) && k.b.c.e.a.a(this.f2093e, aVar.f2093e) && k.b.c.e.a.a(this.f2094f, aVar.f2094f) && k.b.c.e.a.a(this.f2095g, aVar.f2095g);
        }
    }

    public int hashCode() {
        int b2 = k.b.c.e.a.b(this.f2092d);
        int b3 = k.b.c.e.a.b(this.f2093e);
        int b4 = k.b.c.e.a.b(this.f2094f);
        return k.b.c.e.a.c(this.f2095g) + ((b4 + ((b3 + ((b2 + (((((this.a * 37) + this.b) * 37) + this.f2091c) * 37)) * 37)) * 37)) * 37);
    }
}
