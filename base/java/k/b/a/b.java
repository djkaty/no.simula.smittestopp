package k.b.a;

import java.io.IOException;
import k.b.c.e.a;

public abstract class b extends t implements a0 {
    public static final char[] z = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public final byte[] x;
    public final int y;

    public b(byte[] bArr, int i2) {
        if (bArr == null) {
            throw new NullPointerException("'data' cannot be null");
        } else if (bArr.length == 0 && i2 != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        } else if (i2 > 7 || i2 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        } else {
            this.x = a.a(bArr);
            this.y = i2;
        }
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof b)) {
            return false;
        }
        b bVar = (b) tVar;
        if (this.y != bVar.y) {
            return false;
        }
        byte[] bArr = this.x;
        byte[] bArr2 = bVar.x;
        int length = bArr.length;
        if (length != bArr2.length) {
            return false;
        }
        int i2 = length - 1;
        if (i2 < 0) {
            return true;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (bArr[i3] != bArr2[i3]) {
                return false;
            }
        }
        byte b = bArr[i2];
        int i4 = this.y;
        return ((byte) (b & (255 << i4))) == ((byte) (bArr2[i2] & (255 << i4)));
    }

    public String d() {
        StringBuffer stringBuffer = new StringBuffer("#");
        try {
            byte[] e2 = e();
            for (int i2 = 0; i2 != e2.length; i2++) {
                stringBuffer.append(z[(e2[i2] >>> 4) & 15]);
                stringBuffer.append(z[e2[i2] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e3) {
            StringBuilder a = e.a.a.a.a.a("Internal error encoding BitString: ");
            a.append(e3.getMessage());
            throw new s(a.toString(), e3);
        }
    }

    public t h() {
        return new r0(this.x, this.y);
    }

    public int hashCode() {
        byte[] bArr = this.x;
        int length = bArr.length - 1;
        if (length < 0) {
            return 1;
        }
        byte b = (byte) (bArr[length] & (255 << this.y));
        int i2 = 0;
        if (bArr != null) {
            int i3 = length + 1;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                i3 = (i3 * 257) ^ bArr[0 + length];
            }
            i2 = i3;
        }
        return ((i2 * 257) ^ b) ^ this.y;
    }

    public t i() {
        return new n1(this.x, this.y);
    }

    public byte[] j() {
        byte[] bArr = this.x;
        int i2 = this.y;
        if (bArr.length == 0) {
            return bArr;
        }
        byte[] a = a.a(bArr);
        int length = bArr.length - 1;
        a[length] = (byte) ((255 << i2) & a[length]);
        return a;
    }

    public String toString() {
        return d();
    }
}
