package k.a.b.a.d.g0;

import java.nio.ByteBuffer;
import k.a.b.a.c.x0;
import k.a.b.a.c.y0;

public class k implements y0 {
    public byte[] a = new byte[1024];
    public int b;

    public int a() {
        return Integer.MAX_VALUE;
    }

    public void a(byte b2) {
        c(1);
        byte[] bArr = this.a;
        int i2 = this.b;
        this.b = i2 + 1;
        bArr[i2] = b2;
    }

    public /* synthetic */ void a(String str) {
        x0.a((y0) this, str);
    }

    public void b(int i2) {
        c(4);
        byte[] bArr = this.a;
        int i3 = this.b;
        int i4 = i3 + 1;
        this.b = i4;
        bArr[i3] = (byte) (i2 >>> 24);
        int i5 = i4 + 1;
        this.b = i5;
        bArr[i4] = (byte) (i2 >>> 16);
        int i6 = i5 + 1;
        this.b = i6;
        bArr[i5] = (byte) (i2 >>> 8);
        this.b = i6 + 1;
        bArr[i6] = (byte) (i2 >>> 0);
    }

    public int c() {
        return Integer.MAX_VALUE - this.b;
    }

    public int position() {
        return this.b;
    }

    public void c(int i2) {
        byte[] bArr = this.a;
        int length = bArr.length;
        int i3 = this.b;
        if (i2 > length - i3) {
            byte[] bArr2 = new byte[Math.max(bArr.length << 1, i2 + i3)];
            byte[] bArr3 = this.a;
            System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
            this.a = bArr2;
        }
    }

    public void a(short s) {
        c(2);
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        bArr[i2] = (byte) (s >>> 8);
        this.b = i3 + 1;
        bArr[i3] = (byte) (s >>> 0);
    }

    public void a(long j2) {
        c(8);
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        bArr[i2] = (byte) ((int) (j2 >>> 56));
        int i4 = i3 + 1;
        this.b = i4;
        bArr[i3] = (byte) ((int) (j2 >>> 48));
        int i5 = i4 + 1;
        this.b = i5;
        bArr[i4] = (byte) ((int) (j2 >>> 40));
        int i6 = i5 + 1;
        this.b = i6;
        bArr[i5] = (byte) ((int) (j2 >>> 32));
        int i7 = i6 + 1;
        this.b = i7;
        bArr[i6] = (byte) ((int) (j2 >>> 24));
        int i8 = i7 + 1;
        this.b = i8;
        bArr[i7] = (byte) ((int) (j2 >>> 16));
        int i9 = i8 + 1;
        this.b = i9;
        bArr[i8] = (byte) ((int) (j2 >>> 8));
        this.b = i9 + 1;
        bArr[i9] = (byte) ((int) (j2 >>> 0));
    }

    public boolean b() {
        return this.b < Integer.MAX_VALUE;
    }

    public void a(float f2) {
        b(Float.floatToRawIntBits(f2));
    }

    public void a(double d2) {
        a(Double.doubleToRawLongBits(d2));
    }

    public void a(byte[] bArr, int i2, int i3) {
        if (i3 != 0) {
            c(i3);
            System.arraycopy(bArr, i2, this.a, this.b, i3);
            this.b += i3;
        }
    }

    public void a(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        c(remaining);
        if (byteBuffer.hasArray()) {
            System.arraycopy(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), this.a, this.b, remaining);
            byteBuffer.position(byteBuffer.position() + remaining);
        } else {
            byteBuffer.get(this.a, this.b, remaining);
        }
        this.b += remaining;
    }

    public void a(int i2) {
        if (i2 >= 0) {
            byte[] bArr = this.a;
            if (i2 > bArr.length) {
                c(i2 - bArr.length);
            }
            this.b = i2;
            return;
        }
        throw new IllegalArgumentException("Requested new buffer position cannot be negative");
    }
}
