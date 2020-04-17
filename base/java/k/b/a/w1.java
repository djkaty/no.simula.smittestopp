package k.b.a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import k.b.j.h.a;

public class w1 extends b2 {
    public static final byte[] B = new byte[0];
    public int A;
    public final int z;

    public w1(InputStream inputStream, int i2, int i3) {
        super(inputStream, i3, i2);
        if (i2 >= 0) {
            this.z = i2;
            this.A = i2;
            if (i2 == 0) {
                a(true);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("negative lengths not allowed");
    }

    public byte[] a() {
        int i2 = this.A;
        if (i2 == 0) {
            return B;
        }
        if (i2 < this.y) {
            byte[] bArr = new byte[i2];
            int a = i2 - a.a(this.x, bArr, 0, i2);
            this.A = a;
            if (a == 0) {
                a(true);
                return bArr;
            }
            StringBuilder a2 = e.a.a.a.a.a("DEF length ");
            a2.append(this.z);
            a2.append(" object truncated by ");
            a2.append(this.A);
            throw new EOFException(a2.toString());
        }
        StringBuilder a3 = e.a.a.a.a.a("corrupted stream - out of bounds length found: ");
        a3.append(this.A);
        a3.append(" >= ");
        a3.append(this.y);
        throw new IOException(a3.toString());
    }

    public int read() {
        if (this.A == 0) {
            return -1;
        }
        int read = this.x.read();
        if (read >= 0) {
            int i2 = this.A - 1;
            this.A = i2;
            if (i2 == 0) {
                a(true);
            }
            return read;
        }
        StringBuilder a = e.a.a.a.a.a("DEF length ");
        a.append(this.z);
        a.append(" object truncated by ");
        a.append(this.A);
        throw new EOFException(a.toString());
    }

    public int read(byte[] bArr, int i2, int i3) {
        int i4 = this.A;
        if (i4 == 0) {
            return -1;
        }
        int read = this.x.read(bArr, i2, Math.min(i3, i4));
        if (read >= 0) {
            int i5 = this.A - read;
            this.A = i5;
            if (i5 == 0) {
                a(true);
            }
            return read;
        }
        StringBuilder a = e.a.a.a.a.a("DEF length ");
        a.append(this.z);
        a.append(" object truncated by ");
        a.append(this.A);
        throw new EOFException(a.toString());
    }
}
