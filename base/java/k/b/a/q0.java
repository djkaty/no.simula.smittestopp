package k.b.a;

import java.util.Arrays;

public class q0 extends t implements a0 {
    public final char[] x;

    public q0(char[] cArr) {
        this.x = cArr;
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof q0)) {
            return false;
        }
        return Arrays.equals(this.x, ((q0) tVar).x);
    }

    public String d() {
        return new String(this.x);
    }

    public int f() {
        return (this.x.length * 2) + d2.a(this.x.length * 2) + 1;
    }

    public boolean g() {
        return false;
    }

    public int hashCode() {
        char[] cArr = this.x;
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 = (i2 * 257) ^ cArr[length];
        }
    }

    public String toString() {
        return d();
    }

    public void a(r rVar, boolean z) {
        int length = this.x.length;
        if (z) {
            rVar.a.write(30);
        }
        rVar.a(length * 2);
        byte[] bArr = new byte[8];
        int i2 = length & -4;
        int i3 = 0;
        while (i3 < i2) {
            char[] cArr = this.x;
            char c2 = cArr[i3];
            char c3 = cArr[i3 + 1];
            char c4 = cArr[i3 + 2];
            char c5 = cArr[i3 + 3];
            i3 += 4;
            bArr[0] = (byte) (c2 >> 8);
            bArr[1] = (byte) c2;
            bArr[2] = (byte) (c3 >> 8);
            bArr[3] = (byte) c3;
            bArr[4] = (byte) (c4 >> 8);
            bArr[5] = (byte) c4;
            bArr[6] = (byte) (c5 >> 8);
            bArr[7] = (byte) c5;
            rVar.a.write(bArr, 0, 8);
        }
        if (i3 < length) {
            int i4 = 0;
            do {
                char c6 = this.x[i3];
                i3++;
                int i5 = i4 + 1;
                bArr[i4] = (byte) (c6 >> 8);
                i4 = i5 + 1;
                bArr[i5] = (byte) c6;
            } while (i3 < length);
            rVar.a.write(bArr, 0, i4);
        }
    }
}
