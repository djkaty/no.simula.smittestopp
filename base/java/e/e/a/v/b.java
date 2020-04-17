package e.e.a.v;

public final class b {
    public static byte a(int i2) {
        int c2 = c(i2, 26);
        int b = b(i2, 25) & c(i2, 52);
        int b2 = b(i2, 51) & c(i2, 62);
        int a = a(i2, 62);
        int a2 = a(i2, 63);
        return (byte) (a(b2, (i2 - 52) + 48, 0) | a(c2, i2 + 0 + 65, 0) | a(b, (i2 - 26) + 97, 0) | a(a, 43, 0) | a(a2, 47, 0));
    }

    public static int a(int i2, int i3) {
        int i4 = i2 ^ i3;
        return ((~i4) & (i4 - 1)) >>> 63;
    }

    public static int a(int i2, int i3, int i4) {
        return ((i2 - 1) & (i4 ^ i3)) ^ i3;
    }

    public static byte b(int i2) {
        int c2 = c(i2, 26);
        int b = b(i2, 25) & c(i2, 52);
        int b2 = b(i2, 51) & c(i2, 62);
        int a = a(i2, 62);
        int a2 = a(i2, 63);
        return (byte) (a(b2, (i2 - 52) + 48, 0) | a(c2, i2 + 0 + 65, 0) | a(b, (i2 - 26) + 97, 0) | a(a, 45, 0) | a(a2, 95, 0));
    }

    public static int b(int i2, int i3) {
        return (int) ((((long) i3) - ((long) i2)) >>> 63);
    }

    public static int c(int i2, int i3) {
        return (int) ((((long) i2) - ((long) i3)) >>> 63);
    }

    public static String a(byte[] bArr, boolean z) {
        int i2;
        int i3 = 0;
        int length = bArr != null ? bArr.length : 0;
        if (length == 0) {
            return "";
        }
        int i4 = length / 3;
        int i5 = i4 * 3;
        if (length == 0) {
            i2 = 0;
        } else if (z) {
            i2 = i4 << 2;
            int i6 = length % 3;
            if (i6 != 0) {
                i2 = i2 + i6 + 1;
            }
        } else {
            i2 = (((length - 1) / 3) + 1) << 2;
        }
        byte[] bArr2 = new byte[i2];
        int i7 = 0;
        int i8 = 0;
        while (i7 < i5) {
            int i9 = i7 + 1;
            int i10 = i9 + 1;
            byte b = ((bArr[i7] & 255) << 16) | ((bArr[i9] & 255) << 8);
            int i11 = i10 + 1;
            byte b2 = b | (bArr[i10] & 255);
            if (z) {
                int i12 = i8 + 1;
                bArr2[i8] = b((b2 >>> 18) & 63);
                int i13 = i12 + 1;
                bArr2[i12] = b((b2 >>> 12) & 63);
                int i14 = i13 + 1;
                bArr2[i13] = b((b2 >>> 6) & 63);
                i8 = i14 + 1;
                bArr2[i14] = b(b2 & 63);
            } else {
                int i15 = i8 + 1;
                bArr2[i8] = a((b2 >>> 18) & 63);
                int i16 = i15 + 1;
                bArr2[i15] = a((b2 >>> 12) & 63);
                int i17 = i16 + 1;
                bArr2[i16] = a((b2 >>> 6) & 63);
                i8 = i17 + 1;
                bArr2[i17] = a(b2 & 63);
            }
            i7 = i11;
        }
        int i18 = length - i5;
        if (i18 > 0) {
            int i19 = (bArr[i5] & 255) << 10;
            if (i18 == 2) {
                i3 = (bArr[length - 1] & 255) << 2;
            }
            int i20 = i19 | i3;
            if (!z) {
                bArr2[i2 - 4] = a(i20 >> 12);
                bArr2[i2 - 3] = a((i20 >>> 6) & 63);
                bArr2[i2 - 2] = i18 == 2 ? a(i20 & 63) : 61;
                bArr2[i2 - 1] = 61;
            } else if (i18 == 2) {
                bArr2[i2 - 3] = b(i20 >> 12);
                bArr2[i2 - 2] = b((i20 >>> 6) & 63);
                bArr2[i2 - 1] = b(i20 & 63);
            } else {
                bArr2[i2 - 2] = b(i20 >> 12);
                bArr2[i2 - 1] = b((i20 >>> 6) & 63);
            }
        }
        return new String(bArr2, d.a);
    }
}
