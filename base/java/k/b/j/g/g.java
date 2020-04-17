package k.b.j.g;

import java.io.IOException;
import java.io.OutputStream;

public class g implements d {
    public final byte[] a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    public final byte[] b = new byte[128];

    public g() {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.b;
            if (i3 >= bArr.length) {
                break;
            }
            bArr[i3] = -1;
            i3++;
        }
        while (true) {
            byte[] bArr2 = this.a;
            if (i2 < bArr2.length) {
                this.b[bArr2[i2]] = (byte) i2;
                i2++;
            } else {
                byte[] bArr3 = this.b;
                bArr3[65] = bArr3[97];
                bArr3[66] = bArr3[98];
                bArr3[67] = bArr3[99];
                bArr3[68] = bArr3[100];
                bArr3[69] = bArr3[101];
                bArr3[70] = bArr3[102];
                return;
            }
        }
    }

    public static boolean a(char c2) {
        return c2 == 10 || c2 == 13 || c2 == 9 || c2 == ' ';
    }

    public int a(String str, OutputStream outputStream) {
        int length = str.length();
        while (length > 0 && a(str.charAt(length - 1))) {
            length--;
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            while (i2 < length && a(str.charAt(i2))) {
                i2++;
            }
            int i4 = i2 + 1;
            byte b2 = this.b[str.charAt(i2)];
            while (i4 < length && a(str.charAt(i4))) {
                i4++;
            }
            int i5 = i4 + 1;
            byte b3 = this.b[str.charAt(i4)];
            if ((b2 | b3) >= 0) {
                outputStream.write((b2 << 4) | b3);
                i3++;
                i2 = i5;
            } else {
                throw new IOException("invalid characters encountered in Hex string");
            }
        }
        return i3;
    }

    public byte[] a(String str, int i2, int i3) {
        if (str == null) {
            throw new NullPointerException("'str' cannot be null");
        } else if (i2 < 0 || i3 < 0 || i2 > str.length() - i3) {
            throw new IndexOutOfBoundsException("invalid offset and/or length specified");
        } else if ((i3 & 1) == 0) {
            int i4 = i3 >>> 1;
            byte[] bArr = new byte[i4];
            int i5 = 0;
            while (i5 < i4) {
                int i6 = i2 + 1;
                int i7 = i6 + 1;
                byte b2 = (this.b[str.charAt(i2)] << 4) | this.b[str.charAt(i6)];
                if (b2 >= 0) {
                    bArr[i5] = (byte) b2;
                    i5++;
                    i2 = i7;
                } else {
                    throw new IOException("invalid characters encountered in Hex string");
                }
            }
            return bArr;
        } else {
            throw new IOException("a hexadecimal encoding must have an even number of characters");
        }
    }
}
