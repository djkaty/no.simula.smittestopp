package k.b.a;

import java.io.EOFException;
import java.io.InputStream;

public class y1 extends b2 {
    public int A;
    public boolean B = false;
    public boolean C = true;
    public int z;

    public y1(InputStream inputStream, int i2) {
        super(inputStream, i2, i2);
        this.z = inputStream.read();
        int read = inputStream.read();
        this.A = read;
        if (read >= 0) {
            a();
            return;
        }
        throw new EOFException();
    }

    public final boolean a() {
        if (!this.B && this.C && this.z == 0 && this.A == 0) {
            this.B = true;
            a(true);
        }
        return this.B;
    }

    public int read() {
        if (a()) {
            return -1;
        }
        int read = this.x.read();
        if (read >= 0) {
            int i2 = this.z;
            this.z = this.A;
            this.A = read;
            return i2;
        }
        throw new EOFException();
    }

    public int read(byte[] bArr, int i2, int i3) {
        if (this.C || i3 < 3) {
            return super.read(bArr, i2, i3);
        }
        if (this.B) {
            return -1;
        }
        int read = this.x.read(bArr, i2 + 2, i3 - 2);
        if (read >= 0) {
            bArr[i2] = (byte) this.z;
            bArr[i2 + 1] = (byte) this.A;
            this.z = this.x.read();
            int read2 = this.x.read();
            this.A = read2;
            if (read2 >= 0) {
                return read + 2;
            }
            throw new EOFException();
        }
        throw new EOFException();
    }
}
