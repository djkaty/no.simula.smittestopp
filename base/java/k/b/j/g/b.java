package k.b.j.g;

import java.io.IOException;
import java.io.OutputStream;

public class b implements d {
    public final byte[] a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    public byte b = 61;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f2181c = new byte[128];

    public b() {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.f2181c;
            if (i3 >= bArr.length) {
                break;
            }
            bArr[i3] = -1;
            i3++;
        }
        while (true) {
            byte[] bArr2 = this.a;
            if (i2 < bArr2.length) {
                this.f2181c[bArr2[i2]] = (byte) i2;
                i2++;
            } else {
                return;
            }
        }
    }

    public final int a(String str, int i2, int i3) {
        while (i2 < i3 && a(str.charAt(i2))) {
            i2++;
        }
        return i2;
    }

    public int a(String str, OutputStream outputStream) {
        int length = str.length();
        while (length > 0 && a(str.charAt(length - 1))) {
            length--;
        }
        int i2 = 0;
        if (length == 0) {
            return 0;
        }
        int i3 = length;
        int i4 = 0;
        while (i3 > 0 && i4 != 4) {
            if (!a(str.charAt(i3 - 1))) {
                i4++;
            }
            i3--;
        }
        int a2 = a(str, 0, i3);
        while (a2 < i3) {
            int i5 = a2 + 1;
            byte b2 = this.f2181c[str.charAt(a2)];
            int a3 = a(str, i5, i3);
            int i6 = a3 + 1;
            byte b3 = this.f2181c[str.charAt(a3)];
            int a4 = a(str, i6, i3);
            int i7 = a4 + 1;
            byte b4 = this.f2181c[str.charAt(a4)];
            int a5 = a(str, i7, i3);
            int i8 = a5 + 1;
            byte b5 = this.f2181c[str.charAt(a5)];
            if ((b2 | b3 | b4 | b5) >= 0) {
                outputStream.write((b2 << 2) | (b3 >> 4));
                outputStream.write((b3 << 4) | (b4 >> 2));
                outputStream.write((b4 << 6) | b5);
                i2 += 3;
                a2 = a(str, i8, i3);
            } else {
                throw new IOException("invalid characters encountered in base64 data");
            }
        }
        int a6 = a(str, a2, length);
        int a7 = a(str, a6 + 1, length);
        int a8 = a(str, a7 + 1, length);
        int a9 = a(str, a8 + 1, length);
        char charAt = str.charAt(a6);
        char charAt2 = str.charAt(a7);
        char charAt3 = str.charAt(a8);
        char charAt4 = str.charAt(a9);
        byte b6 = this.b;
        int i9 = 2;
        if (charAt3 == b6) {
            if (charAt4 == b6) {
                byte[] bArr = this.f2181c;
                byte b7 = bArr[charAt];
                byte b8 = bArr[charAt2];
                if ((b7 | b8) >= 0) {
                    outputStream.write((b8 >> 4) | (b7 << 2));
                    i9 = 1;
                } else {
                    throw new IOException("invalid characters encountered at end of base64 data");
                }
            } else {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
        } else if (charAt4 == b6) {
            byte[] bArr2 = this.f2181c;
            byte b9 = bArr2[charAt];
            byte b10 = bArr2[charAt2];
            byte b11 = bArr2[charAt3];
            if ((b9 | b10 | b11) >= 0) {
                outputStream.write((b9 << 2) | (b10 >> 4));
                outputStream.write((b11 >> 2) | (b10 << 4));
            } else {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
        } else {
            byte[] bArr3 = this.f2181c;
            byte b12 = bArr3[charAt];
            byte b13 = bArr3[charAt2];
            byte b14 = bArr3[charAt3];
            byte b15 = bArr3[charAt4];
            if ((b12 | b13 | b14 | b15) >= 0) {
                outputStream.write((b12 << 2) | (b13 >> 4));
                outputStream.write((b13 << 4) | (b14 >> 2));
                outputStream.write(b15 | (b14 << 6));
                i9 = 3;
            } else {
                throw new IOException("invalid characters encountered at end of base64 data");
            }
        }
        return i2 + i9;
    }

    public final boolean a(char c2) {
        return c2 == 10 || c2 == 13 || c2 == 9 || c2 == ' ';
    }
}
