package k.b.c.c;

public abstract class a implements k.b.c.a {
    public final byte[] a = new byte[4];
    public int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public long f2006c;

    public void a(byte b2) {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        bArr[i2] = b2;
        if (i3 == bArr.length) {
            b(bArr, 0);
            this.b = 0;
        }
        this.f2006c++;
    }

    public abstract void a(long j2);

    public void a(byte[] bArr, int i2, int i3) {
        int i4 = 0;
        int max = Math.max(0, i3);
        if (this.b != 0) {
            int i5 = 0;
            while (true) {
                if (i5 >= max) {
                    i4 = i5;
                    break;
                }
                byte[] bArr2 = this.a;
                int i6 = this.b;
                int i7 = i6 + 1;
                this.b = i7;
                int i8 = i5 + 1;
                bArr2[i6] = bArr[i5 + i2];
                if (i7 == 4) {
                    b(bArr2, 0);
                    this.b = 0;
                    i4 = i8;
                    break;
                }
                i5 = i8;
            }
        }
        int i9 = ((max - i4) & -4) + i4;
        while (i4 < i9) {
            b(bArr, i2 + i4);
            i4 += 4;
        }
        while (i4 < max) {
            byte[] bArr3 = this.a;
            int i10 = this.b;
            this.b = i10 + 1;
            bArr3[i10] = bArr[i4 + i2];
            i4++;
        }
        this.f2006c += (long) max;
    }

    public abstract void b(byte[] bArr, int i2);

    public void c() {
        long j2 = this.f2006c << 3;
        byte b2 = Byte.MIN_VALUE;
        while (true) {
            a(b2);
            if (this.b != 0) {
                b2 = 0;
            } else {
                a(j2);
                d();
                return;
            }
        }
    }

    public abstract void d();

    public void e() {
        this.f2006c = 0;
        this.b = 0;
        int i2 = 0;
        while (true) {
            byte[] bArr = this.a;
            if (i2 < bArr.length) {
                bArr[i2] = 0;
                i2++;
            } else {
                return;
            }
        }
    }
}
