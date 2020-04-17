package k.b.c.c;

import k.b.c.a;

public abstract class b implements a {
    public static final long[] o = {4794697086780616226L, 8158064640168781261L, -5349999486874862801L, -1606136188198331460L, 4131703408338449720L, 6480981068601479193L, -7908458776815382629L, -6116909921290321640L, -2880145864133508542L, 1334009975649890238L, 2608012711638119052L, 6128411473006802146L, 8268148722764581231L, -9160688886553864527L, -7215885187991268811L, -4495734319001033068L, -1973867731355612462L, -1171420211273849373L, 1135362057144423861L, 2597628984639134821L, 3308224258029322869L, 5365058923640841347L, 6679025012923562964L, 8573033837759648693L, -7476448914759557205L, -6327057829258317296L, -5763719355590565569L, -4658551843659510044L, -4116276920077217854L, -3051310485924567259L, 489312712824947311L, 1452737877330783856L, 2861767655752347644L, 3322285676063803686L, 5560940570517711597L, 5996557281743188959L, 7280758554555802590L, 8532644243296465576L, -9096487096722542874L, -7894198246740708037L, -6719396339535248540L, -6333637450476146687L, -4446306890439682159L, -4076793802049405392L, -3345356375505022440L, -2983346525034927856L, -860691631967231958L, 1182934255886127544L, 1847814050463011016L, 2177327727835720531L, 2830643537854262169L, 3796741975233480872L, 4115178125766777443L, 5681478168544905931L, 6601373596472566643L, 7507060721942968483L, 8399075790359081724L, 8693463985226723168L, -8878714635349349518L, -8302665154208450068L, -8016688836872298968L, -6606660893046293015L, -4685533653050689259L, -4147400797238176981L, -3880063495543823972L, -3348786107499101689L, -1523767162380948706L, -757361751448694408L, 500013540394364858L, 748580250866718886L, 1242879168328830382L, 1977374033974150939L, 2944078676154940804L, 3659926193048069267L, 4368137639120453308L, 4836135668995329356L, 5532061633213252278L, 6448918945643986474L, 6902733635092675308L, 7801388544844847127L};
    public byte[] a = new byte[8];
    public int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public long f2007c;

    /* renamed from: d  reason: collision with root package name */
    public long f2008d;

    /* renamed from: e  reason: collision with root package name */
    public long f2009e;

    /* renamed from: f  reason: collision with root package name */
    public long f2010f;

    /* renamed from: g  reason: collision with root package name */
    public long f2011g;

    /* renamed from: h  reason: collision with root package name */
    public long f2012h;

    /* renamed from: i  reason: collision with root package name */
    public long f2013i;

    /* renamed from: j  reason: collision with root package name */
    public long f2014j;

    /* renamed from: k  reason: collision with root package name */
    public long f2015k;

    /* renamed from: l  reason: collision with root package name */
    public long f2016l;
    public long[] m = new long[80];
    public int n;

    public b() {
        f();
    }

    public final long a(long j2) {
        return ((j2 >>> 39) | (j2 << 25)) ^ (((j2 << 36) | (j2 >>> 28)) ^ ((j2 << 30) | (j2 >>> 34)));
    }

    public final long a(long j2, long j3, long j4) {
        return ((~j2) & j4) ^ (j3 & j2);
    }

    public void a(byte b2) {
        byte[] bArr = this.a;
        int i2 = this.b;
        int i3 = i2 + 1;
        this.b = i3;
        bArr[i2] = b2;
        if (i3 == bArr.length) {
            b(bArr, 0);
            this.b = 0;
        }
        this.f2007c++;
    }

    public void a(byte[] bArr, int i2, int i3) {
        while (this.b != 0 && i3 > 0) {
            a(bArr[i2]);
            i2++;
            i3--;
        }
        while (i3 > this.a.length) {
            b(bArr, i2);
            byte[] bArr2 = this.a;
            i2 += bArr2.length;
            i3 -= bArr2.length;
            this.f2007c += (long) bArr2.length;
        }
        while (i3 > 0) {
            a(bArr[i2]);
            i2++;
            i3--;
        }
    }

    public final long b(long j2) {
        return ((j2 >>> 41) | (j2 << 23)) ^ (((j2 << 50) | (j2 >>> 14)) ^ ((j2 << 46) | (j2 >>> 18)));
    }

    public final long b(long j2, long j3, long j4) {
        return ((j2 & j4) ^ (j2 & j3)) ^ (j3 & j4);
    }

    public void b(byte[] bArr, int i2) {
        long[] jArr = this.m;
        int i3 = this.n;
        int b2 = k.b.c.e.a.b(bArr, i2);
        jArr[i3] = (((long) k.b.c.e.a.b(bArr, i2 + 4)) & 4294967295L) | ((((long) b2) & 4294967295L) << 32);
        int i4 = this.n + 1;
        this.n = i4;
        if (i4 == 16) {
            e();
        }
    }

    public final void c() {
        long j2 = this.f2007c;
        if (j2 > 2305843009213693951L) {
            this.f2008d += j2 >>> 61;
            this.f2007c = j2 & 2305843009213693951L;
        }
    }

    public void d() {
        c();
        long j2 = this.f2007c << 3;
        long j3 = this.f2008d;
        byte b2 = Byte.MIN_VALUE;
        while (true) {
            a(b2);
            if (this.b == 0) {
                break;
            }
            b2 = 0;
        }
        if (this.n > 14) {
            e();
        }
        long[] jArr = this.m;
        jArr[14] = j3;
        jArr[15] = j2;
        e();
    }

    public void e() {
        c();
        for (int i2 = 16; i2 <= 79; i2++) {
            long[] jArr = this.m;
            long j2 = jArr[i2 - 2];
            long j3 = ((j2 >>> 6) ^ (((j2 << 45) | (j2 >>> 19)) ^ ((j2 << 3) | (j2 >>> 61)))) + jArr[i2 - 7];
            long j4 = jArr[i2 - 15];
            jArr[i2] = j3 + ((j4 >>> 7) ^ (((j4 << 63) | (j4 >>> 1)) ^ ((j4 << 56) | (j4 >>> 8)))) + jArr[i2 - 16];
        }
        long j5 = this.f2009e;
        long j6 = this.f2010f;
        long j7 = this.f2011g;
        long j8 = this.f2012h;
        long j9 = this.f2013i;
        long j10 = this.f2014j;
        long j11 = this.f2015k;
        long j12 = j10;
        long j13 = j8;
        int i3 = 0;
        long j14 = j6;
        long j15 = j7;
        long j16 = j9;
        int i4 = 0;
        long j17 = this.f2016l;
        long j18 = j11;
        long j19 = j5;
        long j20 = j18;
        while (i4 < 10) {
            int i5 = i4;
            long j21 = j16;
            int i6 = i3 + 1;
            long b2 = b(j16) + a(j16, j12, j20) + o[i3] + this.m[i3] + j17;
            long j22 = j13 + b2;
            long a2 = a(j19) + b(j19, j14, j15) + b2;
            long j23 = j22;
            long j24 = a2;
            int i7 = i6 + 1;
            long b3 = b(j22) + a(j22, j21, j12) + o[i6] + this.m[i6] + j20;
            long j25 = j19;
            long j26 = j19;
            long j27 = j15 + b3;
            long a3 = a(j24) + b(j24, j25, j14) + b3;
            long b4 = b(j27);
            long j28 = j27;
            long j29 = a3;
            int i8 = i7 + 1;
            long a4 = b4 + a(j27, j23, j21) + o[i7] + this.m[i7] + j12;
            long j30 = j14 + a4;
            long j31 = j30;
            long a5 = a(j29) + b(j29, j24, j26) + a4;
            int i9 = i8 + 1;
            long b5 = b(j30) + a(j30, j28, j23) + o[i8] + this.m[i8] + j21;
            long j32 = j29;
            long j33 = j29;
            long j34 = j26 + b5;
            long a6 = a(a5) + b(a5, j32, j24) + b5;
            long b6 = b(j34);
            long j35 = j34;
            long j36 = a6;
            int i10 = i9 + 1;
            long a7 = b6 + a(j34, j31, j28) + o[i9] + this.m[i9] + j23;
            long j37 = j24 + a7;
            long a8 = a(j36) + b(j36, a5, j33) + a7;
            int i11 = i10 + 1;
            long b7 = b(j37) + a(j37, j35, j31) + o[i10] + this.m[i10] + j28;
            long j38 = j36;
            long j39 = j36;
            long j40 = j33 + b7;
            long a9 = a(a8) + b(a8, j38, a5) + b7;
            long j41 = j37;
            long j42 = j37;
            long j43 = a9;
            int i12 = i11 + 1;
            long b8 = b(j40) + a(j40, j41, j35) + o[i11] + this.m[i11] + j31;
            long j44 = a5 + b8;
            long j45 = j40;
            long j46 = j40;
            long a10 = a(j43) + b(j43, a8, j39) + b8;
            long b9 = b(j44) + a(j44, j45, j42) + o[i12] + this.m[i12] + j35;
            long j47 = j39 + b9;
            long a11 = a(a10) + b(a10, j43, a8) + b9;
            i4 = i5 + 1;
            j15 = j43;
            i3 = i12 + 1;
            j16 = j47;
            long j48 = j42;
            j20 = j46;
            j12 = j44;
            j13 = a8;
            j17 = j48;
            j14 = a10;
            j19 = a11;
        }
        this.f2009e += j19;
        this.f2010f += j14;
        this.f2011g += j15;
        this.f2012h += j13;
        this.f2013i += j16;
        this.f2014j += j12;
        this.f2015k += j20;
        this.f2016l += j17;
        this.n = 0;
        for (int i13 = 0; i13 < 16; i13++) {
            this.m[i13] = 0;
        }
    }

    public void f() {
        this.f2007c = 0;
        this.f2008d = 0;
        int i2 = 0;
        this.b = 0;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.a;
            if (i3 >= bArr.length) {
                break;
            }
            bArr[i3] = 0;
            i3++;
        }
        this.n = 0;
        while (true) {
            long[] jArr = this.m;
            if (i2 != jArr.length) {
                jArr[i2] = 0;
                i2++;
            } else {
                return;
            }
        }
    }
}
