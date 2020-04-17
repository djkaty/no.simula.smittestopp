package e.b.a.a.s;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;

public final class c extends OutputStream {
    public static final byte[] B = new byte[0];
    public int A;
    public final LinkedList<byte[]> x = new LinkedList<>();
    public int y;
    public byte[] z;

    public c(a aVar) {
        byte[] bArr;
        if (aVar == null) {
            bArr = new byte[500];
        } else {
            bArr = aVar.a(2);
        }
        this.z = bArr;
    }

    public void a(int i2) {
        if (this.A >= this.z.length) {
            a();
        }
        byte[] bArr = this.z;
        int i3 = this.A;
        this.A = i3 + 1;
        bArr[i3] = (byte) i2;
    }

    public void b() {
        this.y = 0;
        this.A = 0;
        if (!this.x.isEmpty()) {
            this.x.clear();
        }
    }

    public void c(int i2) {
        int i3 = this.A;
        int i4 = i3 + 1;
        byte[] bArr = this.z;
        if (i4 < bArr.length) {
            int i5 = i3 + 1;
            this.A = i5;
            bArr[i3] = (byte) (i2 >> 8);
            this.A = i5 + 1;
            bArr[i5] = (byte) i2;
            return;
        }
        a(i2 >> 8);
        a(i2);
    }

    public void close() {
    }

    public void flush() {
    }

    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i2, int i3) {
        while (true) {
            int min = Math.min(this.z.length - this.A, i3);
            if (min > 0) {
                System.arraycopy(bArr, i2, this.z, this.A, min);
                i2 += min;
                this.A += min;
                i3 -= min;
            }
            if (i3 > 0) {
                a();
            } else {
                return;
            }
        }
    }

    public final void a() {
        int length = this.y + this.z.length;
        if (length >= 0) {
            this.y = length;
            int max = Math.max(length >> 1, 1000);
            if (max > 262144) {
                max = 262144;
            }
            this.x.add(this.z);
            this.z = new byte[max];
            this.A = 0;
            return;
        }
        throw new IllegalStateException("Maximum Java array size (2GB) exceeded by `ByteArrayBuilder`");
    }

    public void b(int i2) {
        int i3 = this.A;
        int i4 = i3 + 2;
        byte[] bArr = this.z;
        if (i4 < bArr.length) {
            int i5 = i3 + 1;
            this.A = i5;
            bArr[i3] = (byte) (i2 >> 16);
            int i6 = i5 + 1;
            this.A = i6;
            bArr[i5] = (byte) (i2 >> 8);
            this.A = i6 + 1;
            bArr[i6] = (byte) i2;
            return;
        }
        a(i2 >> 16);
        a(i2 >> 8);
        a(i2);
    }

    public byte[] c() {
        int i2 = this.y + this.A;
        if (i2 == 0) {
            return B;
        }
        byte[] bArr = new byte[i2];
        Iterator it = this.x.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            byte[] bArr2 = (byte[]) it.next();
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i3, length);
            i3 += length;
        }
        System.arraycopy(this.z, 0, bArr, i3, this.A);
        int i4 = i3 + this.A;
        if (i4 == i2) {
            if (!this.x.isEmpty()) {
                b();
            }
            return bArr;
        }
        throw new RuntimeException("Internal error: total len assumed to be " + i2 + ", copied " + i4 + " bytes");
    }

    public void write(int i2) {
        a(i2);
    }
}
