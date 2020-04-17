package k.e.a;

public class c {
    public byte[] a;
    public int b;

    public c() {
        this.a = new byte[64];
    }

    public final c a(int i2, int i3) {
        int i4 = this.b;
        if (i4 + 2 > this.a.length) {
            a(2);
        }
        byte[] bArr = this.a;
        int i5 = i4 + 1;
        bArr[i4] = (byte) i2;
        bArr[i5] = (byte) i3;
        this.b = i5 + 1;
        return this;
    }

    public c b(int i2) {
        int i3 = this.b;
        int i4 = i3 + 1;
        if (i4 > this.a.length) {
            a(1);
        }
        this.a[i3] = (byte) i2;
        this.b = i4;
        return this;
    }

    public c c(int i2) {
        int i3 = this.b;
        if (i3 + 4 > this.a.length) {
            a(4);
        }
        byte[] bArr = this.a;
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i2 >>> 24);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 16);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (i2 >>> 8);
        bArr[i6] = (byte) i2;
        this.b = i6 + 1;
        return this;
    }

    public c d(int i2) {
        int i3 = this.b;
        if (i3 + 2 > this.a.length) {
            a(2);
        }
        byte[] bArr = this.a;
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i2 >>> 8);
        bArr[i4] = (byte) i2;
        this.b = i4 + 1;
        return this;
    }

    public c(int i2) {
        this.a = new byte[i2];
    }

    public final c b(int i2, int i3) {
        int i4 = this.b;
        if (i4 + 3 > this.a.length) {
            a(3);
        }
        byte[] bArr = this.a;
        int i5 = i4 + 1;
        bArr[i4] = (byte) i2;
        int i6 = i5 + 1;
        bArr[i5] = (byte) (i3 >>> 8);
        bArr[i6] = (byte) i3;
        this.b = i6 + 1;
        return this;
    }

    public final c a(int i2, int i3, int i4) {
        int i5 = this.b;
        if (i5 + 4 > this.a.length) {
            a(4);
        }
        byte[] bArr = this.a;
        int i6 = i5 + 1;
        bArr[i5] = (byte) i2;
        int i7 = i6 + 1;
        bArr[i6] = (byte) i3;
        int i8 = i7 + 1;
        bArr[i7] = (byte) (i4 >>> 8);
        bArr[i8] = (byte) i4;
        this.b = i8 + 1;
        return this;
    }

    public final c b(int i2, int i3, int i4) {
        int i5 = this.b;
        if (i5 + 5 > this.a.length) {
            a(5);
        }
        byte[] bArr = this.a;
        int i6 = i5 + 1;
        bArr[i5] = (byte) i2;
        int i7 = i6 + 1;
        bArr[i6] = (byte) (i3 >>> 8);
        int i8 = i7 + 1;
        bArr[i7] = (byte) i3;
        int i9 = i8 + 1;
        bArr[i8] = (byte) (i4 >>> 8);
        bArr[i9] = (byte) i4;
        this.b = i9 + 1;
        return this;
    }

    public final c a(String str, int i2, int i3) {
        int i4;
        int length = str.length();
        int i5 = i2;
        int i6 = i5;
        while (i5 < length) {
            char charAt = str.charAt(i5);
            i6 = (charAt < 1 || charAt > 127) ? charAt <= 2047 ? i6 + 2 : i6 + 3 : i6 + 1;
            i5++;
        }
        if (i6 <= i3) {
            int i7 = (this.b - i2) - 2;
            if (i7 >= 0) {
                byte[] bArr = this.a;
                bArr[i7] = (byte) (i6 >>> 8);
                bArr[i7 + 1] = (byte) i6;
            }
            if ((this.b + i6) - i2 > this.a.length) {
                a(i6 - i2);
            }
            int i8 = this.b;
            while (i2 < length) {
                char charAt2 = str.charAt(i2);
                if (charAt2 >= 1 && charAt2 <= 127) {
                    i4 = i8 + 1;
                    this.a[i8] = (byte) charAt2;
                } else if (charAt2 <= 2047) {
                    byte[] bArr2 = this.a;
                    int i9 = i8 + 1;
                    bArr2[i8] = (byte) (((charAt2 >> 6) & 31) | 192);
                    i8 = i9 + 1;
                    bArr2[i9] = (byte) ((charAt2 & '?') | 128);
                    i2++;
                } else {
                    byte[] bArr3 = this.a;
                    int i10 = i8 + 1;
                    bArr3[i8] = (byte) (((charAt2 >> 12) & 15) | 224);
                    int i11 = i10 + 1;
                    bArr3[i10] = (byte) (((charAt2 >> 6) & 63) | 128);
                    i4 = i11 + 1;
                    bArr3[i11] = (byte) ((charAt2 & '?') | 128);
                }
                i8 = i4;
                i2++;
            }
            this.b = i8;
            return this;
        }
        throw new IllegalArgumentException("UTF8 string too large");
    }

    public c a(byte[] bArr, int i2, int i3) {
        if (this.b + i3 > this.a.length) {
            a(i3);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i2, this.a, this.b, i3);
        }
        this.b += i3;
        return this;
    }

    public final void a(int i2) {
        int length = this.a.length * 2;
        int i3 = this.b + i2;
        if (length <= i3) {
            length = i3;
        }
        byte[] bArr = new byte[length];
        System.arraycopy(this.a, 0, bArr, 0, this.b);
        this.a = bArr;
    }
}
