package k.b.c.c;

import java.util.Arrays;
import k.b.c.a;
import k.b.c.b;

public class h implements b, a {

    /* renamed from: g  reason: collision with root package name */
    public static long[] f2042g = {1, 32898, -9223372036854742902L, -9223372034707259392L, 32907, 2147483649L, -9223372034707259263L, -9223372036854743031L, 138, 136, 2147516425L, 2147483658L, 2147516555L, -9223372036854775669L, -9223372036854742903L, -9223372036854743037L, -9223372036854743038L, -9223372036854775680L, 32778, -9223372034707292150L, -9223372034707259263L, -9223372036854742912L, 2147483649L, -9223372034707259384L};
    public long[] a;
    public byte[] b;

    /* renamed from: c  reason: collision with root package name */
    public int f2043c;

    /* renamed from: d  reason: collision with root package name */
    public int f2044d;

    /* renamed from: e  reason: collision with root package name */
    public int f2045e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2046f;

    public h(int i2) {
        if (i2 == 128 || i2 == 256) {
            this.a = new long[25];
            this.b = new byte[192];
            a(i2);
            return;
        }
        throw new IllegalArgumentException(e.a.a.a.a.b("'bitLength' ", i2, " not supported for SHAKE"));
    }

    public int a(byte[] bArr, int i2) {
        int i3 = this.f2045e / 8;
        doFinal(bArr, i2, i3);
        return i3;
    }

    public String a() {
        StringBuilder a2 = e.a.a.a.a.a("SHAKE");
        a2.append(this.f2045e);
        return a2.toString();
    }

    public final void b(byte[] bArr, int i2) {
        int i3 = this.f2043c >> 6;
        for (int i4 = 0; i4 < i3; i4++) {
            long[] jArr = this.a;
            jArr[i4] = jArr[i4] ^ k.b.c.e.a.d(bArr, i2);
            i2 += 8;
        }
        d();
    }

    public final void c() {
        long[] jArr = this.a;
        int i2 = this.f2043c >> 6;
        byte[] bArr = this.b;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = jArr[0 + i4];
            k.b.c.e.a.c((int) (4294967295L & j2), bArr, i3);
            k.b.c.e.a.c((int) (j2 >>> 32), bArr, i3 + 4);
            i3 += 8;
        }
    }

    public final void d() {
        long[] jArr = this.a;
        int i2 = 0;
        long j2 = jArr[0];
        boolean z = true;
        long j3 = jArr[1];
        long j4 = jArr[2];
        char c2 = 3;
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        long j10 = jArr[8];
        long j11 = jArr[9];
        long j12 = jArr[10];
        long j13 = jArr[11];
        long j14 = jArr[12];
        long j15 = jArr[13];
        long j16 = jArr[14];
        long j17 = jArr[15];
        long j18 = jArr[16];
        long j19 = jArr[17];
        long j20 = jArr[18];
        long j21 = jArr[19];
        long j22 = jArr[20];
        long j23 = jArr[21];
        long j24 = jArr[22];
        long j25 = jArr[23];
        int i3 = 24;
        long j26 = jArr[24];
        while (i2 < i3) {
            long j27 = (((j2 ^ j7) ^ j12) ^ j17) ^ j22;
            long j28 = (((j3 ^ j8) ^ j13) ^ j18) ^ j23;
            long j29 = (((j4 ^ j9) ^ j14) ^ j19) ^ j24;
            long j30 = (((j5 ^ j10) ^ j15) ^ j20) ^ j25;
            long j31 = (((j6 ^ j11) ^ j16) ^ j21) ^ j26;
            long j32 = ((j28 << (z ? 1 : 0)) | (j28 >>> -1)) ^ j31;
            long j33 = ((j29 << z) | (j29 >>> -1)) ^ j27;
            long j34 = ((j30 << z) | (j30 >>> -1)) ^ j28;
            long j35 = ((j31 << z) | (j31 >>> -1)) ^ j29;
            long j36 = ((j27 << z) | (j27 >>> -1)) ^ j30;
            long j37 = j2 ^ j32;
            long j38 = j7 ^ j32;
            long j39 = j12 ^ j32;
            long j40 = j17 ^ j32;
            long j41 = j22 ^ j32;
            long j42 = j3 ^ j33;
            long j43 = j8 ^ j33;
            long j44 = j13 ^ j33;
            long j45 = j18 ^ j33;
            long j46 = j23 ^ j33;
            long j47 = j4 ^ j34;
            long j48 = j9 ^ j34;
            long j49 = j14 ^ j34;
            long j50 = j19 ^ j34;
            long j51 = j24 ^ j34;
            long j52 = j5 ^ j35;
            long j53 = j10 ^ j35;
            long j54 = j15 ^ j35;
            long j55 = j20 ^ j35;
            long j56 = j25 ^ j35;
            long j57 = j11 ^ j36;
            long j58 = j16 ^ j36;
            long j59 = j21 ^ j36;
            long j60 = j26 ^ j36;
            long j61 = (j42 << z) | (j42 >>> 63);
            long j62 = (j43 << 44) | (j43 >>> 20);
            long j63 = j6 ^ j36;
            long j64 = (j57 << 20) | (j57 >>> 44);
            long j65 = j51 << 61;
            long j66 = j51 >>> c2;
            long j67 = j52;
            long j68 = j65 | j66;
            long j69 = (j49 << 43) | (j49 >>> 21);
            long j70 = (j47 << 62) | (j47 >>> 2);
            long j71 = (j54 << 25) | (j54 >>> 39);
            long j72 = j59 << 8;
            long j73 = j59 >>> 56;
            long j74 = (j58 << 39) | (j58 >>> 25);
            long j75 = j72 | j73;
            long j76 = (j41 << 18) | (j41 >>> 46);
            long j77 = j40 << 41;
            long j78 = j40 >>> 23;
            long j79 = (j56 << 56) | (j56 >>> 8);
            long j80 = j77 | j78;
            long j81 = j60 << 14;
            long j82 = j60 >>> 50;
            long j83 = (j63 << 27) | (j63 >>> 37);
            long j84 = j81 | j82;
            long j85 = j46 << 2;
            long j86 = j46 >>> 62;
            long j87 = j75;
            long j88 = j85 | j86;
            long j89 = (j53 << 55) | (j53 >>> 9);
            long j90 = j45 << 45;
            long j91 = j45 >>> 19;
            long j92 = j89;
            long j93 = j90 | j91;
            long j94 = j71;
            long j95 = (j38 << 36) | (j38 >>> 28);
            long j96 = j68;
            long j97 = (j55 << 21) | (j55 >>> 43);
            long j98 = j50 << 15;
            long j99 = j50 >>> 49;
            long j100 = j93;
            long j101 = j98 | j99;
            long j102 = j44 << 10;
            long j103 = j44 >>> 54;
            long j104 = j101;
            long j105 = j102 | j103;
            long j106 = j48 << 6;
            long j107 = j48 >>> 58;
            long j108 = j105;
            long j109 = j106 | j107;
            long j110 = j39 << 3;
            long j111 = j39 >>> 61;
            long j112 = j109;
            long j113 = j110 | j111;
            long j114 = (j67 << 28) | (j67 >>> 36);
            long j115 = ((~j62) & j69) ^ j37;
            long j116 = ((~j69) & j97) ^ j62;
            j4 = ((~j97) & j84) ^ j69;
            long j117 = ((~j84) & j37) ^ j97;
            long j118 = ((~j37) & j62) ^ j84;
            long j119 = j64;
            long j120 = ((~j119) & j113) ^ j114;
            long j121 = ((~j113) & j100) ^ j119;
            long j122 = j117;
            long j123 = j100;
            long j124 = j118;
            long j125 = ((~j123) & j96) ^ j113;
            long j126 = j96;
            long j127 = j125;
            long j128 = j123 ^ ((~j126) & j114);
            long j129 = ((~j114) & j119) ^ j126;
            long j130 = j112;
            j12 = j61 ^ ((~j130) & j94);
            long j131 = j128;
            long j132 = j94;
            long j133 = ((~j132) & j87) ^ j130;
            long j134 = j87;
            long j135 = j129;
            long j136 = ((~j134) & j76) ^ j132;
            long j137 = j76;
            long j138 = j136;
            long j139 = j134 ^ ((~j137) & j61);
            long j140 = ((~j61) & j130) ^ j137;
            long j141 = j95;
            long j142 = j83 ^ ((~j141) & j108);
            long j143 = j139;
            long j144 = j108;
            long j145 = j140;
            long j146 = ((~j144) & j104) ^ j141;
            long j147 = j104;
            long j148 = j120;
            long j149 = j79;
            long j150 = j144 ^ ((~j147) & j79);
            long j151 = ((~j149) & j83) ^ j147;
            long j152 = ((~j83) & j141) ^ j149;
            long j153 = j92;
            long j154 = j151;
            long j155 = j74;
            j21 = j152;
            long j156 = ((~j155) & j80) ^ j153;
            long j157 = j80;
            long j158 = j70 ^ ((~j153) & j74);
            long j159 = j88;
            long j160 = j155 ^ ((~j157) & j88);
            long j161 = ((~j159) & j70) ^ j157;
            long j162 = j115 ^ f2042g[i2];
            i2++;
            j7 = j148;
            j14 = j138;
            j13 = j133;
            j22 = j158;
            j25 = j161;
            j15 = j143;
            jArr = jArr;
            j10 = j131;
            j6 = j124;
            j19 = j150;
            j17 = j142;
            i3 = 24;
            long j163 = j162;
            z = true;
            j3 = j116;
            j20 = j154;
            j18 = j146;
            j24 = j160;
            j11 = j135;
            j23 = j156;
            j26 = ((~j70) & j153) ^ j159;
            j2 = j163;
            long j164 = j121;
            c2 = 3;
            j5 = j122;
            j16 = j145;
            j9 = j127;
            j8 = j164;
        }
        long[] jArr2 = jArr;
        jArr2[0] = j2;
        jArr2[1] = j3;
        jArr2[2] = j4;
        jArr2[3] = j5;
        jArr2[4] = j6;
        jArr2[5] = j7;
        jArr2[6] = j8;
        jArr2[7] = j9;
        jArr2[8] = j10;
        jArr2[9] = j11;
        jArr2[10] = j12;
        jArr2[11] = j13;
        jArr2[12] = j14;
        jArr2[13] = j15;
        jArr2[14] = j16;
        jArr2[15] = j17;
        jArr2[16] = j18;
        jArr2[17] = j19;
        jArr2[18] = j20;
        jArr2[19] = j21;
        jArr2[20] = j22;
        jArr2[21] = j23;
        jArr2[22] = j24;
        jArr2[23] = j25;
        jArr2[24] = j26;
    }

    public int doFinal(byte[] bArr, int i2, int i3) {
        boolean z = this.f2046f;
        if (!z) {
            int i4 = this.f2044d;
            if (i4 % 8 != 0) {
                throw new IllegalStateException("attempt to absorb with odd length queue");
            } else if (!z) {
                this.b[i4 >> 3] = (byte) 15;
                this.f2044d = i4 + 4;
            } else {
                throw new IllegalStateException("attempt to absorb while squeezing");
            }
        }
        long j2 = ((long) i3) * 8;
        if (!this.f2046f) {
            e();
        }
        long j3 = 0;
        if (j2 % 8 == 0) {
            while (j3 < j2) {
                if (this.f2044d == 0) {
                    d();
                    c();
                    this.f2044d = this.f2043c;
                }
                int min = (int) Math.min((long) this.f2044d, j2 - j3);
                System.arraycopy(this.b, (this.f2043c - this.f2044d) / 8, bArr, ((int) (j3 / 8)) + i2, min / 8);
                this.f2044d -= min;
                j3 += (long) min;
            }
            a(this.f2045e);
            return i3;
        }
        throw new IllegalStateException("outputLength not a multiple of 8");
    }

    public final void e() {
        byte[] bArr = this.b;
        int i2 = this.f2044d;
        int i3 = i2 >> 3;
        bArr[i3] = (byte) (bArr[i3] | ((byte) ((int) (1 << (i2 & 7)))));
        int i4 = i2 + 1;
        this.f2044d = i4;
        if (i4 == this.f2043c) {
            b(bArr, 0);
            this.f2044d = 0;
        }
        int i5 = this.f2044d;
        int i6 = i5 >> 6;
        int i7 = i5 & 63;
        int i8 = 0;
        for (int i9 = 0; i9 < i6; i9++) {
            long[] jArr = this.a;
            jArr[i9] = jArr[i9] ^ k.b.c.e.a.d(this.b, i8);
            i8 += 8;
        }
        if (i7 > 0) {
            long[] jArr2 = this.a;
            jArr2[i6] = jArr2[i6] ^ (k.b.c.e.a.d(this.b, i8) & ((1 << i7) - 1));
        }
        long[] jArr3 = this.a;
        int i10 = (this.f2043c - 1) >> 6;
        jArr3[i10] = jArr3[i10] ^ Long.MIN_VALUE;
        d();
        c();
        this.f2044d = this.f2043c;
        this.f2046f = true;
    }

    public int b() {
        return this.f2045e / 8;
    }

    public final void a(int i2) {
        if (i2 == 128 || i2 == 224 || i2 == 256 || i2 == 288 || i2 == 384 || i2 == 512) {
            b(1600 - (i2 << 1));
            return;
        }
        throw new IllegalArgumentException("bitLength must be one of 128, 224, 256, 288, 384, or 512.");
    }

    public final void b(int i2) {
        if (i2 <= 0 || i2 >= 1600 || i2 % 64 != 0) {
            throw new IllegalStateException("invalid rate value");
        }
        this.f2043c = i2;
        int i3 = 0;
        while (true) {
            long[] jArr = this.a;
            if (i3 < jArr.length) {
                jArr[i3] = 0;
                i3++;
            } else {
                Arrays.fill(this.b, (byte) 0);
                this.f2044d = 0;
                this.f2046f = false;
                this.f2045e = (1600 - i2) / 2;
                return;
            }
        }
    }

    public void a(byte[] bArr, int i2, int i3) {
        int i4;
        int i5 = this.f2044d;
        if (i5 % 8 != 0) {
            throw new IllegalStateException("attempt to absorb with odd length queue");
        } else if (!this.f2046f) {
            int i6 = i5 >> 3;
            int i7 = this.f2043c >> 3;
            int i8 = 0;
            while (i8 < i3) {
                if (i6 != 0 || i8 > (i4 = i3 - i7)) {
                    int min = Math.min(i7 - i6, i3 - i8);
                    System.arraycopy(bArr, i2 + i8, this.b, i6, min);
                    i6 += min;
                    i8 += min;
                    if (i6 == i7) {
                        b(this.b, 0);
                        i6 = 0;
                    }
                } else {
                    do {
                        b(bArr, i2 + i8);
                        i8 += i7;
                    } while (i8 <= i4);
                }
            }
            this.f2044d = i6 << 3;
        } else {
            throw new IllegalStateException("attempt to absorb while squeezing");
        }
    }
}
