package k.b.c.c;

import k.b.c.e.a;

public class e extends a {
    public static final int[] n = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    /* renamed from: d  reason: collision with root package name */
    public int f2033d;

    /* renamed from: e  reason: collision with root package name */
    public int f2034e;

    /* renamed from: f  reason: collision with root package name */
    public int f2035f;

    /* renamed from: g  reason: collision with root package name */
    public int f2036g;

    /* renamed from: h  reason: collision with root package name */
    public int f2037h;

    /* renamed from: i  reason: collision with root package name */
    public int f2038i;

    /* renamed from: j  reason: collision with root package name */
    public int f2039j;

    /* renamed from: k  reason: collision with root package name */
    public int f2040k;

    /* renamed from: l  reason: collision with root package name */
    public int[] f2041l = new int[64];
    public int m;

    public e() {
        e();
    }

    public static int a(int i2) {
        return ((i2 << 10) | (i2 >>> 22)) ^ (((i2 >>> 2) | (i2 << 30)) ^ ((i2 >>> 13) | (i2 << 19)));
    }

    public static int a(int i2, int i3, int i4) {
        return ((~i2) & i4) ^ (i3 & i2);
    }

    public static int b(int i2) {
        return ((i2 << 7) | (i2 >>> 25)) ^ (((i2 >>> 6) | (i2 << 26)) ^ ((i2 >>> 11) | (i2 << 21)));
    }

    public static int b(int i2, int i3, int i4) {
        return ((i2 ^ i3) & i4) | (i2 & i3);
    }

    public int a(byte[] bArr, int i2) {
        c();
        a.b(this.f2033d, bArr, i2);
        a.b(this.f2034e, bArr, i2 + 4);
        a.b(this.f2035f, bArr, i2 + 8);
        a.b(this.f2036g, bArr, i2 + 12);
        a.b(this.f2037h, bArr, i2 + 16);
        a.b(this.f2038i, bArr, i2 + 20);
        a.b(this.f2039j, bArr, i2 + 24);
        a.b(this.f2040k, bArr, i2 + 28);
        e();
        return 32;
    }

    public String a() {
        return "SHA-256";
    }

    public void a(long j2) {
        if (this.m > 14) {
            d();
        }
        int[] iArr = this.f2041l;
        iArr[14] = (int) (j2 >>> 32);
        iArr[15] = (int) (j2 & -1);
    }

    public int b() {
        return 32;
    }

    public void b(byte[] bArr, int i2) {
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        int i5 = (bArr[i4 + 1] & 255) | (bArr[i2] << 24) | ((bArr[i3] & 255) << 16) | ((bArr[i4] & 255) << 8);
        int[] iArr = this.f2041l;
        int i6 = this.m;
        iArr[i6] = i5;
        int i7 = i6 + 1;
        this.m = i7;
        if (i7 == 16) {
            d();
        }
    }

    public void d() {
        for (int i2 = 16; i2 <= 63; i2++) {
            int[] iArr = this.f2041l;
            int i3 = iArr[i2 - 2];
            int i4 = ((i3 >>> 10) ^ (((i3 >>> 17) | (i3 << 15)) ^ ((i3 >>> 19) | (i3 << 13)))) + iArr[i2 - 7];
            int i5 = iArr[i2 - 15];
            iArr[i2] = i4 + ((i5 >>> 3) ^ (((i5 >>> 7) | (i5 << 25)) ^ ((i5 >>> 18) | (i5 << 14)))) + iArr[i2 - 16];
        }
        int i6 = this.f2033d;
        int i7 = this.f2034e;
        int i8 = this.f2035f;
        int i9 = this.f2036g;
        int i10 = this.f2037h;
        int i11 = this.f2038i;
        int i12 = this.f2039j;
        int i13 = this.f2040k;
        int i14 = 0;
        int i15 = 0;
        while (i14 < 8) {
            int a = a(i10, i11, i12) + b(i10) + n[i15] + this.f2041l[i15] + i13;
            int i16 = i9 + a;
            int b = b(i6, i7, i8) + a(i6) + a;
            int i17 = i15 + 1;
            int a2 = a(i16, i10, i11) + b(i16) + n[i17] + this.f2041l[i17] + i12;
            int i18 = i8 + a2;
            int b2 = b(b, i6, i7) + a(b) + a2;
            int i19 = i17 + 1;
            int a3 = a(i18, i16, i10) + b(i18) + n[i19] + this.f2041l[i19] + i11;
            int i20 = i7 + a3;
            int b3 = b(b2, b, i6) + a(b2) + a3;
            int i21 = i19 + 1;
            int a4 = a(i20, i18, i16) + b(i20) + n[i21] + this.f2041l[i21] + i10;
            int i22 = i6 + a4;
            int b4 = b(b3, b2, b) + a(b3) + a4;
            int i23 = i21 + 1;
            int a5 = a(i22, i20, i18) + b(i22) + n[i23] + this.f2041l[i23] + i16;
            int i24 = b + a5;
            int b5 = b(b4, b3, b2) + a(b4) + a5;
            int i25 = i23 + 1;
            int a6 = a(i24, i22, i20) + b(i24) + n[i25] + this.f2041l[i25] + i18;
            int i26 = b2 + a6;
            int b6 = b(b5, b4, b3) + a(b5) + a6;
            int i27 = i25 + 1;
            int a7 = a(i26, i24, i22) + b(i26) + n[i27] + this.f2041l[i27] + i20;
            int i28 = b3 + a7;
            int b7 = b(b6, b5, b4) + a(b6) + a7;
            int i29 = i27 + 1;
            int a8 = a(i28, i26, i24) + b(i28) + n[i29] + this.f2041l[i29] + i22;
            i15 = i29 + 1;
            i14++;
            int i30 = b5;
            i10 = b4 + a8;
            i6 = b(b7, b6, b5) + a(b7) + a8;
            i11 = i28;
            i7 = b7;
            i12 = i26;
            i8 = b6;
            i13 = i24;
            i9 = i30;
        }
        this.f2033d += i6;
        this.f2034e += i7;
        this.f2035f += i8;
        this.f2036g += i9;
        this.f2037h += i10;
        this.f2038i += i11;
        this.f2039j += i12;
        this.f2040k += i13;
        this.m = 0;
        for (int i31 = 0; i31 < 16; i31++) {
            this.f2041l[i31] = 0;
        }
    }

    public void e() {
        super.e();
        this.f2033d = 1779033703;
        this.f2034e = -1150833019;
        this.f2035f = 1013904242;
        this.f2036g = -1521486534;
        this.f2037h = 1359893119;
        this.f2038i = -1694144372;
        this.f2039j = 528734635;
        this.f2040k = 1541459225;
        this.m = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f2041l;
            if (i2 != iArr.length) {
                iArr[i2] = 0;
                i2++;
            } else {
                return;
            }
        }
    }
}
