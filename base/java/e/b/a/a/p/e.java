package e.b.a.a.p;

import java.io.InputStream;

public final class e extends InputStream {
    public int A;
    public final int B;
    public final b x;
    public final InputStream y;
    public byte[] z;

    public e(b bVar, InputStream inputStream, byte[] bArr, int i2, int i3) {
        this.x = bVar;
        this.y = inputStream;
        this.z = bArr;
        this.A = i2;
        this.B = i3;
    }

    public final void a() {
        byte[] bArr = this.z;
        if (bArr != null) {
            this.z = null;
            b bVar = this.x;
            if (bVar != null) {
                bVar.a(bArr);
            }
        }
    }

    public int available() {
        if (this.z != null) {
            return this.B - this.A;
        }
        return this.y.available();
    }

    public void close() {
        a();
        this.y.close();
    }

    public void mark(int i2) {
        if (this.z == null) {
            this.y.mark(i2);
        }
    }

    public boolean markSupported() {
        return this.z == null && this.y.markSupported();
    }

    public int read() {
        byte[] bArr = this.z;
        if (bArr == null) {
            return this.y.read();
        }
        int i2 = this.A;
        int i3 = i2 + 1;
        this.A = i3;
        byte b = bArr[i2] & 255;
        if (i3 >= this.B) {
            a();
        }
        return b;
    }

    public void reset() {
        if (this.z == null) {
            this.y.reset();
        }
    }

    public long skip(long j2) {
        long j3;
        if (this.z != null) {
            int i2 = this.B;
            int i3 = this.A;
            long j4 = (long) (i2 - i3);
            if (j4 > j2) {
                this.A = i3 + ((int) j2);
                return j2;
            }
            a();
            j3 = j4 + 0;
            j2 -= j4;
        } else {
            j3 = 0;
        }
        return j2 > 0 ? j3 + this.y.skip(j2) : j3;
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (this.z == null) {
            return this.y.read(bArr, i2, i3);
        }
        int i4 = this.B - this.A;
        if (i3 > i4) {
            i3 = i4;
        }
        System.arraycopy(this.z, this.A, bArr, i2, i3);
        int i5 = this.A + i3;
        this.A = i5;
        if (i5 >= this.B) {
            a();
        }
        return i3;
    }
}
