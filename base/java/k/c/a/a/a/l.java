package k.c.a.a.a;

public class l {
    public boolean a = true;
    public byte[] b;

    /* renamed from: c  reason: collision with root package name */
    public int f2193c = 1;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2194d = false;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2195e = false;

    /* renamed from: f  reason: collision with root package name */
    public int f2196f;

    public l() {
        a(new byte[0]);
    }

    public void a(byte[] bArr) {
        a();
        if (bArr != null) {
            this.b = (byte[]) bArr.clone();
            return;
        }
        throw null;
    }

    public String toString() {
        return new String(this.b);
    }

    public void a(int i2) {
        a();
        if (i2 < 0 || i2 > 2) {
            throw new IllegalArgumentException();
        }
        this.f2193c = i2;
    }

    public l(byte[] bArr) {
        a(bArr);
    }

    public void a() {
        if (!this.a) {
            throw new IllegalStateException();
        }
    }
}
