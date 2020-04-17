package k.b.i.b.c;

public final class a extends k.b.c.d.a {
    public int a;
    public byte[] b;

    public a(int i2, byte[] bArr) {
        super(true);
        int i3;
        int length = bArr.length;
        if (i2 == 5) {
            i3 = 5184;
        } else if (i2 == 6) {
            i3 = 12352;
        } else {
            throw new IllegalArgumentException(e.a.a.a.a.a("unknown security category: ", i2));
        }
        if (length == i3) {
            this.a = i2;
            this.b = k.b.c.e.a.a(bArr);
            return;
        }
        throw new IllegalArgumentException("invalid key size for security category");
    }

    public byte[] a() {
        return k.b.c.e.a.a(this.b);
    }
}
