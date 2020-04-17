package k.b.c.c;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftClientAssertion;
import k.b.c.e.a;

public class c extends a {

    /* renamed from: d  reason: collision with root package name */
    public int f2017d;

    /* renamed from: e  reason: collision with root package name */
    public int f2018e;

    /* renamed from: f  reason: collision with root package name */
    public int f2019f;

    /* renamed from: g  reason: collision with root package name */
    public int f2020g;

    /* renamed from: h  reason: collision with root package name */
    public int f2021h;

    /* renamed from: i  reason: collision with root package name */
    public int[] f2022i = new int[80];

    /* renamed from: j  reason: collision with root package name */
    public int f2023j;

    public c() {
        e();
    }

    public final int a(int i2, int i3, int i4) {
        return ((~i2) & i4) | (i3 & i2);
    }

    public int a(byte[] bArr, int i2) {
        c();
        a.b(this.f2017d, bArr, i2);
        a.b(this.f2018e, bArr, i2 + 4);
        a.b(this.f2019f, bArr, i2 + 8);
        a.b(this.f2020g, bArr, i2 + 12);
        a.b(this.f2021h, bArr, i2 + 16);
        e();
        return 20;
    }

    public String a() {
        return MicrosoftClientAssertion.THUMBPRINT_ALGORITHM;
    }

    public void a(long j2) {
        if (this.f2023j > 14) {
            d();
        }
        int[] iArr = this.f2022i;
        iArr[14] = (int) (j2 >>> 32);
        iArr[15] = (int) j2;
    }

    public int b() {
        return 20;
    }

    public final int b(int i2, int i3, int i4) {
        return (i2 & i4) | (i2 & i3) | (i3 & i4);
    }

    public void b(byte[] bArr, int i2) {
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        int i5 = (bArr[i4 + 1] & 255) | (bArr[i2] << 24) | ((bArr[i3] & 255) << 16) | ((bArr[i4] & 255) << 8);
        int[] iArr = this.f2022i;
        int i6 = this.f2023j;
        iArr[i6] = i5;
        int i7 = i6 + 1;
        this.f2023j = i7;
        if (i7 == 16) {
            d();
        }
    }

    public void d() {
        for (int i2 = 16; i2 < 80; i2++) {
            int[] iArr = this.f2022i;
            int i3 = ((iArr[i2 - 3] ^ iArr[i2 - 8]) ^ iArr[i2 - 14]) ^ iArr[i2 - 16];
            iArr[i2] = (i3 >>> 31) | (i3 << 1);
        }
        int i4 = this.f2017d;
        int i5 = this.f2018e;
        int i6 = this.f2019f;
        int i7 = this.f2020g;
        int i8 = this.f2021h;
        int i9 = 0;
        int i10 = 0;
        while (i9 < 4) {
            int i11 = i10 + 1;
            int a = e.a.a.a.a.a(a(i5, i6, i7) + ((i4 << 5) | (i4 >>> 27)), this.f2022i[i10], 1518500249, i8);
            int i12 = (i5 >>> 2) | (i5 << 30);
            int i13 = i11 + 1;
            int a2 = e.a.a.a.a.a(a(i4, i12, i6) + ((a << 5) | (a >>> 27)), this.f2022i[i11], 1518500249, i7);
            int i14 = (i4 >>> 2) | (i4 << 30);
            int i15 = i13 + 1;
            int a3 = e.a.a.a.a.a(a(a, i14, i12) + ((a2 << 5) | (a2 >>> 27)), this.f2022i[i13], 1518500249, i6);
            i8 = (a >>> 2) | (a << 30);
            int i16 = i15 + 1;
            i5 = e.a.a.a.a.a(a(a2, i8, i14) + ((a3 << 5) | (a3 >>> 27)), this.f2022i[i15], 1518500249, i12);
            i7 = (a2 >>> 2) | (a2 << 30);
            i4 = e.a.a.a.a.a(a(a3, i7, i8) + ((i5 << 5) | (i5 >>> 27)), this.f2022i[i16], 1518500249, i14);
            i6 = (a3 >>> 2) | (a3 << 30);
            i9++;
            i10 = i16 + 1;
        }
        int i17 = 0;
        while (i17 < 4) {
            int[] iArr2 = this.f2022i;
            int i18 = i10 + 1;
            int a4 = e.a.a.a.a.a(((i4 << 5) | (i4 >>> 27)) + ((i5 ^ i6) ^ i7), iArr2[i10], 1859775393, i8);
            int i19 = (i5 >>> 2) | (i5 << 30);
            int i20 = i18 + 1;
            int a5 = e.a.a.a.a.a(((a4 << 5) | (a4 >>> 27)) + ((i4 ^ i19) ^ i6), iArr2[i18], 1859775393, i7);
            int i21 = (i4 >>> 2) | (i4 << 30);
            int i22 = i20 + 1;
            int a6 = e.a.a.a.a.a(((a5 << 5) | (a5 >>> 27)) + ((a4 ^ i21) ^ i19), iArr2[i20], 1859775393, i6);
            i8 = (a4 >>> 2) | (a4 << 30);
            int i23 = i22 + 1;
            i5 = e.a.a.a.a.a(((a6 << 5) | (a6 >>> 27)) + ((a5 ^ i8) ^ i21), iArr2[i22], 1859775393, i19);
            i7 = (a5 >>> 2) | (a5 << 30);
            i4 = e.a.a.a.a.a(((i5 << 5) | (i5 >>> 27)) + ((a6 ^ i7) ^ i8), iArr2[i23], 1859775393, i21);
            i6 = (a6 >>> 2) | (a6 << 30);
            i17++;
            i10 = i23 + 1;
        }
        int i24 = 0;
        while (i24 < 4) {
            int i25 = i10 + 1;
            int a7 = e.a.a.a.a.a(b(i5, i6, i7) + ((i4 << 5) | (i4 >>> 27)), this.f2022i[i10], -1894007588, i8);
            int i26 = (i5 >>> 2) | (i5 << 30);
            int i27 = i25 + 1;
            int a8 = e.a.a.a.a.a(b(i4, i26, i6) + ((a7 << 5) | (a7 >>> 27)), this.f2022i[i25], -1894007588, i7);
            int i28 = (i4 >>> 2) | (i4 << 30);
            int i29 = i27 + 1;
            int a9 = e.a.a.a.a.a(b(a7, i28, i26) + ((a8 << 5) | (a8 >>> 27)), this.f2022i[i27], -1894007588, i6);
            i8 = (a7 >>> 2) | (a7 << 30);
            int i30 = i29 + 1;
            i5 = e.a.a.a.a.a(b(a8, i8, i28) + ((a9 << 5) | (a9 >>> 27)), this.f2022i[i29], -1894007588, i26);
            i7 = (a8 >>> 2) | (a8 << 30);
            i4 = e.a.a.a.a.a(b(a9, i7, i8) + ((i5 << 5) | (i5 >>> 27)), this.f2022i[i30], -1894007588, i28);
            i6 = (a9 >>> 2) | (a9 << 30);
            i24++;
            i10 = i30 + 1;
        }
        int i31 = 0;
        while (i31 <= 3) {
            int[] iArr3 = this.f2022i;
            int i32 = i10 + 1;
            int a10 = e.a.a.a.a.a(((i4 << 5) | (i4 >>> 27)) + ((i5 ^ i6) ^ i7), iArr3[i10], -899497514, i8);
            int i33 = (i5 >>> 2) | (i5 << 30);
            int i34 = i32 + 1;
            int a11 = e.a.a.a.a.a(((a10 << 5) | (a10 >>> 27)) + ((i4 ^ i33) ^ i6), iArr3[i32], -899497514, i7);
            int i35 = (i4 >>> 2) | (i4 << 30);
            int i36 = i34 + 1;
            int a12 = e.a.a.a.a.a(((a11 << 5) | (a11 >>> 27)) + ((a10 ^ i35) ^ i33), iArr3[i34], -899497514, i6);
            i8 = (a10 >>> 2) | (a10 << 30);
            int i37 = i36 + 1;
            i5 = e.a.a.a.a.a(((a12 << 5) | (a12 >>> 27)) + ((a11 ^ i8) ^ i35), iArr3[i36], -899497514, i33);
            i7 = (a11 >>> 2) | (a11 << 30);
            i4 = e.a.a.a.a.a(((i5 << 5) | (i5 >>> 27)) + ((a12 ^ i7) ^ i8), iArr3[i37], -899497514, i35);
            i6 = (a12 >>> 2) | (a12 << 30);
            i31++;
            i10 = i37 + 1;
        }
        this.f2017d += i4;
        this.f2018e += i5;
        this.f2019f += i6;
        this.f2020g += i7;
        this.f2021h += i8;
        this.f2023j = 0;
        for (int i38 = 0; i38 < 16; i38++) {
            this.f2022i[i38] = 0;
        }
    }

    public void e() {
        super.e();
        this.f2017d = 1732584193;
        this.f2018e = -271733879;
        this.f2019f = -1732584194;
        this.f2020g = 271733878;
        this.f2021h = -1009589776;
        this.f2023j = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.f2022i;
            if (i2 != iArr.length) {
                iArr[i2] = 0;
                i2++;
            } else {
                return;
            }
        }
    }
}
