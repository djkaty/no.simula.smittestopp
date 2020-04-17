package e.b.a.a.p;

import java.util.Arrays;

public final class a {
    public static final char[] a;
    public static final byte[] b;

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f1048c;

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f1049d;

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f1050e;

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f1051f;

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f1052g;

    /* renamed from: h  reason: collision with root package name */
    public static final int[] f1053h;

    /* renamed from: i  reason: collision with root package name */
    public static final int[] f1054i;

    static {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        a = charArray;
        int length = charArray.length;
        b = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            b[i2] = (byte) a[i2];
        }
        int[] iArr = new int[256];
        for (int i3 = 0; i3 < 32; i3++) {
            iArr[i3] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        f1048c = iArr;
        int length2 = iArr.length;
        int[] iArr2 = new int[length2];
        System.arraycopy(iArr, 0, iArr2, 0, length2);
        for (int i4 = 128; i4 < 256; i4++) {
            iArr2[i4] = (i4 & 224) == 192 ? 2 : (i4 & 240) == 224 ? 3 : (i4 & 248) == 240 ? 4 : -1;
        }
        f1049d = iArr2;
        int[] iArr3 = new int[256];
        Arrays.fill(iArr3, -1);
        for (int i5 = 33; i5 < 256; i5++) {
            if (Character.isJavaIdentifierPart((char) i5)) {
                iArr3[i5] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        f1050e = iArr3;
        int[] iArr4 = new int[256];
        System.arraycopy(iArr3, 0, iArr4, 0, 256);
        Arrays.fill(iArr4, 128, 128, 0);
        f1051f = iArr4;
        int[] iArr5 = new int[256];
        System.arraycopy(f1049d, 128, iArr5, 128, 128);
        Arrays.fill(iArr5, 0, 32, -1);
        iArr5[9] = 0;
        iArr5[10] = 10;
        iArr5[13] = 13;
        iArr5[42] = 42;
        f1052g = iArr5;
        int[] iArr6 = new int[256];
        System.arraycopy(f1049d, 128, iArr6, 128, 128);
        Arrays.fill(iArr6, 0, 32, -1);
        iArr6[32] = 1;
        iArr6[9] = 1;
        iArr6[10] = 10;
        iArr6[13] = 13;
        iArr6[47] = 47;
        iArr6[35] = 35;
        int[] iArr7 = new int[128];
        for (int i6 = 0; i6 < 32; i6++) {
            iArr7[i6] = -1;
        }
        iArr7[34] = 34;
        iArr7[92] = 92;
        iArr7[8] = 98;
        iArr7[9] = 116;
        iArr7[12] = 102;
        iArr7[10] = 110;
        iArr7[13] = 114;
        f1053h = iArr7;
        int[] iArr8 = new int[128];
        f1054i = iArr8;
        Arrays.fill(iArr8, -1);
        for (int i7 = 0; i7 < 10; i7++) {
            f1054i[i7 + 48] = i7;
        }
        for (int i8 = 0; i8 < 6; i8++) {
            int[] iArr9 = f1054i;
            int i9 = i8 + 10;
            iArr9[i8 + 97] = i9;
            iArr9[i8 + 65] = i9;
        }
    }
}
