package e.b.a.a.p;

public final class f {
    public static final String a = String.valueOf(Integer.MIN_VALUE);
    public static final int[] b = new int[1000];

    static {
        String.valueOf(Long.MIN_VALUE);
        int i2 = 0;
        for (int i3 = 0; i3 < 10; i3++) {
            for (int i4 = 0; i4 < 10; i4++) {
                int i5 = 0;
                while (i5 < 10) {
                    b[i2] = ((i3 + 48) << 16) | ((i4 + 48) << 8) | (i5 + 48);
                    i5++;
                    i2++;
                }
            }
        }
    }

    public static int a(int i2, char[] cArr, int i3) {
        int i4 = b[i2];
        int i5 = i3 + 1;
        cArr[i3] = (char) (i4 >> 16);
        int i6 = i5 + 1;
        cArr[i5] = (char) ((i4 >> 8) & 127);
        int i7 = i6 + 1;
        cArr[i6] = (char) (i4 & 127);
        return i7;
    }

    public static int b(int i2, char[] cArr, int i3) {
        int i4 = b[i2];
        if (i2 > 9) {
            if (i2 > 99) {
                cArr[i3] = (char) (i4 >> 16);
                i3++;
            }
            cArr[i3] = (char) ((i4 >> 8) & 127);
            i3++;
        }
        int i5 = i3 + 1;
        cArr[i3] = (char) (i4 & 127);
        return i5;
    }

    public static int c(int i2, char[] cArr, int i3) {
        int i4;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                int length = a.length();
                a.getChars(0, length, cArr, i3);
                return i3 + length;
            }
            cArr[i3] = '-';
            i2 = -i2;
            i3++;
        }
        if (i2 < 1000000) {
            if (i2 >= 1000) {
                int i5 = i2 / 1000;
                return a(i2 - (i5 * 1000), cArr, b(i5, cArr, i3));
            } else if (i2 >= 10) {
                return b(i2, cArr, i3);
            } else {
                cArr[i3] = (char) (i2 + 48);
                return i3 + 1;
            }
        } else if (i2 >= 1000000000) {
            int i6 = i2 - 1000000000;
            if (i6 >= 1000000000) {
                i6 -= 1000000000;
                i4 = i3 + 1;
                cArr[i3] = '2';
            } else {
                i4 = i3 + 1;
                cArr[i3] = '1';
            }
            int i7 = i6 / 1000;
            int i8 = i6 - (i7 * 1000);
            int i9 = i7 / 1000;
            int[] iArr = b;
            int i10 = iArr[i9];
            int i11 = i4 + 1;
            cArr[i4] = (char) (i10 >> 16);
            int i12 = i11 + 1;
            cArr[i11] = (char) ((i10 >> 8) & 127);
            int i13 = i12 + 1;
            cArr[i12] = (char) (i10 & 127);
            int i14 = iArr[i7 - (i9 * 1000)];
            int i15 = i13 + 1;
            cArr[i13] = (char) (i14 >> 16);
            int i16 = i15 + 1;
            cArr[i15] = (char) ((i14 >> 8) & 127);
            int i17 = i16 + 1;
            cArr[i16] = (char) (i14 & 127);
            int i18 = iArr[i8];
            int i19 = i17 + 1;
            cArr[i17] = (char) (i18 >> 16);
            int i20 = i19 + 1;
            cArr[i19] = (char) ((i18 >> 8) & 127);
            int i21 = i20 + 1;
            cArr[i20] = (char) (i18 & 127);
            return i21;
        } else {
            int i22 = i2 / 1000;
            int i23 = i22 / 1000;
            return a(i2 - (i22 * 1000), cArr, a(i22 - (i23 * 1000), cArr, b(i23, cArr, i3)));
        }
    }

    public static int a(int i2, byte[] bArr, int i3) {
        int i4 = b[i2];
        int i5 = i3 + 1;
        bArr[i3] = (byte) (i4 >> 16);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (i4 >> 8);
        int i7 = i6 + 1;
        bArr[i6] = (byte) i4;
        return i7;
    }

    public static int b(int i2, byte[] bArr, int i3) {
        int i4 = b[i2];
        if (i2 > 9) {
            if (i2 > 99) {
                bArr[i3] = (byte) (i4 >> 16);
                i3++;
            }
            bArr[i3] = (byte) (i4 >> 8);
            i3++;
        }
        int i5 = i3 + 1;
        bArr[i3] = (byte) i4;
        return i5;
    }

    public static int c(int i2, byte[] bArr, int i3) {
        int i4;
        if (i2 < 0) {
            if (i2 == Integer.MIN_VALUE) {
                int length = a.length();
                int i5 = 0;
                while (i5 < length) {
                    bArr[i3] = (byte) a.charAt(i5);
                    i5++;
                    i3++;
                }
                return i3;
            }
            bArr[i3] = 45;
            i2 = -i2;
            i3++;
        }
        if (i2 < 1000000) {
            if (i2 >= 1000) {
                int i6 = i2 / 1000;
                return a(i2 - (i6 * 1000), bArr, b(i6, bArr, i3));
            } else if (i2 >= 10) {
                return b(i2, bArr, i3);
            } else {
                int i7 = i3 + 1;
                bArr[i3] = (byte) (i2 + 48);
                return i7;
            }
        } else if (i2 >= 1000000000) {
            int i8 = i2 - 1000000000;
            if (i8 >= 1000000000) {
                i8 -= 1000000000;
                i4 = i3 + 1;
                bArr[i3] = 50;
            } else {
                i4 = i3 + 1;
                bArr[i3] = 49;
            }
            int i9 = i8 / 1000;
            int i10 = i8 - (i9 * 1000);
            int i11 = i9 / 1000;
            int i12 = i9 - (i11 * 1000);
            int[] iArr = b;
            int i13 = iArr[i11];
            int i14 = i4 + 1;
            bArr[i4] = (byte) (i13 >> 16);
            int i15 = i14 + 1;
            bArr[i14] = (byte) (i13 >> 8);
            int i16 = i15 + 1;
            bArr[i15] = (byte) i13;
            int i17 = iArr[i12];
            int i18 = i16 + 1;
            bArr[i16] = (byte) (i17 >> 16);
            int i19 = i18 + 1;
            bArr[i18] = (byte) (i17 >> 8);
            int i20 = i19 + 1;
            bArr[i19] = (byte) i17;
            int i21 = iArr[i10];
            int i22 = i20 + 1;
            bArr[i20] = (byte) (i21 >> 16);
            int i23 = i22 + 1;
            bArr[i22] = (byte) (i21 >> 8);
            int i24 = i23 + 1;
            bArr[i23] = (byte) i21;
            return i24;
        } else {
            int i25 = i2 / 1000;
            int i26 = i25 / 1000;
            return a(i2 - (i25 * 1000), bArr, a(i25 - (i26 * 1000), bArr, b(i26, bArr, i3)));
        }
    }
}
