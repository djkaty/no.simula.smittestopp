package e.b.a.a.r;

import e.b.a.a.s.e;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

public final class a {
    public final a a;
    public final AtomicReference<C0057a> b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1081c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1082d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f1083e;

    /* renamed from: f  reason: collision with root package name */
    public int[] f1084f;

    /* renamed from: g  reason: collision with root package name */
    public int f1085g;

    /* renamed from: h  reason: collision with root package name */
    public int f1086h;

    /* renamed from: i  reason: collision with root package name */
    public int f1087i;

    /* renamed from: j  reason: collision with root package name */
    public int f1088j;

    /* renamed from: k  reason: collision with root package name */
    public int f1089k;

    /* renamed from: l  reason: collision with root package name */
    public String[] f1090l;
    public int m;
    public int n;
    public transient boolean o;
    public boolean p;

    public a(int i2, boolean z, int i3, boolean z2) {
        this.a = null;
        this.f1081c = i3;
        this.f1082d = z;
        this.f1083e = z2;
        int i4 = 16;
        if (i2 < 16) {
            i2 = 16;
        } else if (((i2 - 1) & i2) != 0) {
            while (i4 < i2) {
                i4 += i4;
            }
            i2 = i4;
        }
        this.b = new AtomicReference<>(C0057a.a(i2));
    }

    public static int d(int i2) {
        int i3 = i2 >> 2;
        if (i3 < 64) {
            return 4;
        }
        if (i3 <= 256) {
            return 5;
        }
        return i3 <= 1024 ? 6 : 7;
    }

    public final int a(int i2) {
        return (i2 & (this.f1085g - 1)) << 2;
    }

    public String b(int i2, int i3) {
        int a2 = a(a(i2, i3));
        int[] iArr = this.f1084f;
        int i4 = iArr[a2 + 3];
        if (i4 == 2) {
            if (i2 == iArr[a2] && i3 == iArr[a2 + 1]) {
                return this.f1090l[a2 >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        int i5 = this.f1086h + ((a2 >> 3) << 2);
        int i6 = iArr[i5 + 3];
        if (i6 == 2) {
            if (i2 == iArr[i5] && i3 == iArr[i5 + 1]) {
                return this.f1090l[i5 >> 2];
            }
        } else if (i6 == 0) {
            return null;
        }
        int i7 = this.f1087i;
        int i8 = this.f1088j;
        int i9 = i7 + ((a2 >> (i8 + 2)) << i8);
        int[] iArr2 = this.f1084f;
        int i10 = (1 << i8) + i9;
        while (i9 < i10) {
            int i11 = iArr2[i9 + 3];
            if (i2 == iArr2[i9] && i3 == iArr2[i9 + 1] && 2 == i11) {
                return this.f1090l[i9 >> 2];
            }
            if (i11 == 0) {
                return null;
            }
            i9 += 4;
        }
        for (int a3 = a(); a3 < this.m; a3 += 4) {
            if (i2 == iArr2[a3] && i3 == iArr2[a3 + 1] && 2 == iArr2[a3 + 3]) {
                return this.f1090l[a3 >> 2];
            }
        }
        return null;
    }

    public String c(int i2) {
        int i3 = this.f1081c ^ i2;
        int i4 = i3 + (i3 >>> 16);
        int i5 = i4 ^ (i4 << 3);
        int a2 = a(i5 + (i5 >>> 12));
        int[] iArr = this.f1084f;
        int i6 = iArr[a2 + 3];
        if (i6 == 1) {
            if (iArr[a2] == i2) {
                return this.f1090l[a2 >> 2];
            }
        } else if (i6 == 0) {
            return null;
        }
        int i7 = this.f1086h + ((a2 >> 3) << 2);
        int i8 = iArr[i7 + 3];
        if (i8 == 1) {
            if (iArr[i7] == i2) {
                return this.f1090l[i7 >> 2];
            }
        } else if (i8 == 0) {
            return null;
        }
        int i9 = this.f1087i;
        int i10 = this.f1088j;
        int i11 = i9 + ((a2 >> (i10 + 2)) << i10);
        int[] iArr2 = this.f1084f;
        int i12 = (1 << i10) + i11;
        while (i11 < i12) {
            int i13 = iArr2[i11 + 3];
            if (i2 == iArr2[i11] && 1 == i13) {
                return this.f1090l[i11 >> 2];
            }
            if (i13 == 0) {
                return null;
            }
            i11 += 4;
        }
        for (int a3 = a(); a3 < this.m; a3 += 4) {
            if (i2 == iArr2[a3] && 1 == iArr2[a3 + 3]) {
                return this.f1090l[a3 >> 2];
            }
        }
        return null;
    }

    public String toString() {
        int i2 = this.f1086h;
        int i3 = 0;
        for (int i4 = 3; i4 < i2; i4 += 4) {
            if (this.f1084f[i4] != 0) {
                i3++;
            }
        }
        int i5 = this.f1087i;
        int i6 = 0;
        for (int i7 = this.f1086h + 3; i7 < i5; i7 += 4) {
            if (this.f1084f[i7] != 0) {
                i6++;
            }
        }
        int i8 = this.f1087i + 3;
        int i9 = this.f1085g + i8;
        int i10 = 0;
        while (i8 < i9) {
            if (this.f1084f[i8] != 0) {
                i10++;
            }
            i8 += 4;
        }
        int a2 = (this.m - a()) >> 2;
        int i11 = this.f1085g << 3;
        int i12 = 0;
        for (int i13 = 3; i13 < i11; i13 += 4) {
            if (this.f1084f[i13] != 0) {
                i12++;
            }
        }
        return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", new Object[]{a.class.getName(), Integer.valueOf(this.f1089k), Integer.valueOf(this.f1085g), Integer.valueOf(i3), Integer.valueOf(i6), Integer.valueOf(i10), Integer.valueOf(a2), Integer.valueOf(i3 + i6 + i10 + a2), Integer.valueOf(i12)});
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0020, code lost:
        r9 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0023, code lost:
        r8 = r3 + 1;
        r4 = r9 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002b, code lost:
        if (r7[r3] == r0[r9]) goto L_0x002e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002d, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002e, code lost:
        r9 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0031, code lost:
        r3 = r8 + 1;
        r4 = r9 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0039, code lost:
        if (r7[r8] == r0[r9]) goto L_0x003c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x003b, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x003c, code lost:
        r9 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x003f, code lost:
        r8 = r3 + 1;
        r4 = r9 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0047, code lost:
        if (r7[r3] == r0[r9]) goto L_0x004a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0049, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004a, code lost:
        r9 = r8 + 1;
        r3 = r4 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0052, code lost:
        if (r7[r8] == r0[r4]) goto L_0x0055;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0054, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0055, code lost:
        r8 = r9 + 1;
        r4 = r3 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x005d, code lost:
        if (r7[r9] == r0[r3]) goto L_0x0060;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x005f, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0064, code lost:
        if (r7[r8] == r0[r4]) goto L_0x0067;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0066, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0067, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0015, code lost:
        r3 = r8 + 1;
        r4 = r9 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r7[r8] == r0[r9]) goto L_0x0020;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001f, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(int[] r7, int r8, int r9) {
        /*
            r6 = this;
            int[] r0 = r6.f1084f
            r1 = 0
            r2 = 1
            switch(r8) {
                case 4: goto L_0x003e;
                case 5: goto L_0x0030;
                case 6: goto L_0x0022;
                case 7: goto L_0x0014;
                case 8: goto L_0x0008;
                default: goto L_0x0007;
            }
        L_0x0007:
            goto L_0x0068
        L_0x0008:
            r8 = r7[r1]
            int r3 = r9 + 1
            r9 = r0[r9]
            if (r8 == r9) goto L_0x0011
            return r1
        L_0x0011:
            r9 = r3
            r8 = 1
            goto L_0x0015
        L_0x0014:
            r8 = 0
        L_0x0015:
            int r3 = r8 + 1
            r8 = r7[r8]
            int r4 = r9 + 1
            r9 = r0[r9]
            if (r8 == r9) goto L_0x0020
            return r1
        L_0x0020:
            r9 = r4
            goto L_0x0023
        L_0x0022:
            r3 = 0
        L_0x0023:
            int r8 = r3 + 1
            r3 = r7[r3]
            int r4 = r9 + 1
            r9 = r0[r9]
            if (r3 == r9) goto L_0x002e
            return r1
        L_0x002e:
            r9 = r4
            goto L_0x0031
        L_0x0030:
            r8 = 0
        L_0x0031:
            int r3 = r8 + 1
            r8 = r7[r8]
            int r4 = r9 + 1
            r9 = r0[r9]
            if (r8 == r9) goto L_0x003c
            return r1
        L_0x003c:
            r9 = r4
            goto L_0x003f
        L_0x003e:
            r3 = 0
        L_0x003f:
            int r8 = r3 + 1
            r3 = r7[r3]
            int r4 = r9 + 1
            r9 = r0[r9]
            if (r3 == r9) goto L_0x004a
            return r1
        L_0x004a:
            int r9 = r8 + 1
            r8 = r7[r8]
            int r3 = r4 + 1
            r4 = r0[r4]
            if (r8 == r4) goto L_0x0055
            return r1
        L_0x0055:
            int r8 = r9 + 1
            r9 = r7[r9]
            int r4 = r3 + 1
            r3 = r0[r3]
            if (r9 == r3) goto L_0x0060
            return r1
        L_0x0060:
            r7 = r7[r8]
            r8 = r0[r4]
            if (r7 == r8) goto L_0x0067
            return r1
        L_0x0067:
            return r2
        L_0x0068:
            r0 = 0
        L_0x0069:
            int r3 = r0 + 1
            r0 = r7[r0]
            int[] r4 = r6.f1084f
            int r5 = r9 + 1
            r9 = r4[r9]
            if (r0 == r9) goto L_0x0076
            goto L_0x0079
        L_0x0076:
            if (r3 < r8) goto L_0x007a
            r1 = 1
        L_0x0079:
            return r1
        L_0x007a:
            r0 = r3
            r9 = r5
            goto L_0x0069
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.r.a.a(int[], int, int):boolean");
    }

    public a(a aVar, boolean z, int i2, boolean z2, C0057a aVar2) {
        this.a = aVar;
        this.f1081c = i2;
        this.f1082d = z;
        this.f1083e = z2;
        this.b = null;
        this.f1089k = aVar2.b;
        int i3 = aVar2.a;
        this.f1085g = i3;
        int i4 = i3 << 2;
        this.f1086h = i4;
        this.f1087i = i4 + (i4 >> 1);
        this.f1088j = aVar2.f1091c;
        this.f1084f = aVar2.f1092d;
        this.f1090l = aVar2.f1093e;
        this.m = aVar2.f1094f;
        this.n = aVar2.f1095g;
        this.o = false;
        this.p = true;
    }

    /* renamed from: e.b.a.a.r.a$a  reason: collision with other inner class name */
    public static final class C0057a {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1091c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f1092d;

        /* renamed from: e  reason: collision with root package name */
        public final String[] f1093e;

        /* renamed from: f  reason: collision with root package name */
        public final int f1094f;

        /* renamed from: g  reason: collision with root package name */
        public final int f1095g;

        public C0057a(int i2, int i3, int i4, int[] iArr, String[] strArr, int i5, int i6) {
            this.a = i2;
            this.b = i3;
            this.f1091c = i4;
            this.f1092d = iArr;
            this.f1093e = strArr;
            this.f1094f = i5;
            this.f1095g = i6;
        }

        public static C0057a a(int i2) {
            int i3 = i2 << 3;
            return new C0057a(i2, 0, a.d(i2), new int[i3], new String[(i2 << 1)], i3 - i2, i3);
        }

        public C0057a(a aVar) {
            this.a = aVar.f1085g;
            this.b = aVar.f1089k;
            this.f1091c = aVar.f1088j;
            this.f1092d = aVar.f1084f;
            this.f1093e = aVar.f1090l;
            this.f1094f = aVar.m;
            this.f1095g = aVar.n;
        }
    }

    public String a(String str, int[] iArr, int i2) {
        int i3;
        int[] iArr2 = iArr;
        int i4 = i2;
        if (this.p) {
            int[] iArr3 = this.f1084f;
            this.f1084f = Arrays.copyOf(iArr3, iArr3.length);
            String[] strArr = this.f1090l;
            this.f1090l = (String[]) Arrays.copyOf(strArr, strArr.length);
            this.p = false;
            b();
        }
        int i5 = 3;
        if (this.o) {
            this.o = false;
            this.p = false;
            int[] iArr4 = this.f1084f;
            String[] strArr2 = this.f1090l;
            int i6 = this.f1085g;
            int i7 = this.f1089k;
            int i8 = i6 + i6;
            int i9 = this.m;
            if (i8 > 65536) {
                a(true);
            } else {
                this.f1084f = new int[(iArr4.length + (i6 << 3))];
                this.f1085g = i8;
                int i10 = i8 << 2;
                this.f1086h = i10;
                this.f1087i = i10 + (i10 >> 1);
                this.f1088j = d(i8);
                this.f1090l = new String[(strArr2.length << 1)];
                a(false);
                int[] iArr5 = new int[16];
                int i11 = 0;
                int i12 = 0;
                while (i11 < i9) {
                    int i13 = iArr4[i11 + 3];
                    if (i13 != 0) {
                        i12++;
                        String str2 = strArr2[i11 >> 2];
                        if (i13 == 1) {
                            iArr5[0] = iArr4[i11];
                            a(str2, iArr5, 1);
                        } else if (i13 == 2) {
                            iArr5[0] = iArr4[i11];
                            iArr5[1] = iArr4[i11 + 1];
                            a(str2, iArr5, 2);
                        } else if (i13 != i5) {
                            if (i13 > iArr5.length) {
                                iArr5 = new int[i13];
                            }
                            System.arraycopy(iArr4, iArr4[i11 + 1], iArr5, 0, i13);
                            a(str2, iArr5, i13);
                        } else {
                            iArr5[0] = iArr4[i11];
                            iArr5[1] = iArr4[i11 + 1];
                            iArr5[2] = iArr4[i11 + 2];
                            a(str2, iArr5, 3);
                        }
                    }
                    i11 += 4;
                    i5 = 3;
                }
                if (i12 != i7) {
                    throw new IllegalStateException("Failed rehash(): old count=" + i7 + ", copyCount=" + i12);
                }
            }
        }
        String c2 = this.f1082d ? e.y.c(str) : str;
        if (i4 == 1) {
            int i14 = iArr2[0] ^ this.f1081c;
            int i15 = i14 + (i14 >>> 16);
            int i16 = i15 ^ (i15 << 3);
            i3 = b(i16 + (i16 >>> 12));
            int[] iArr6 = this.f1084f;
            iArr6[i3] = iArr2[0];
            iArr6[i3 + 3] = 1;
        } else if (i4 == 2) {
            i3 = b(a(iArr2[0], iArr2[1]));
            int[] iArr7 = this.f1084f;
            iArr7[i3] = iArr2[0];
            iArr7[i3 + 1] = iArr2[1];
            iArr7[i3 + 3] = 2;
        } else if (i4 != 3) {
            int a2 = a(iArr2, i4);
            i3 = b(a2);
            int[] iArr8 = this.f1084f;
            iArr8[i3] = a2;
            int i17 = this.n;
            int i18 = i17 + i4;
            if (i18 > iArr8.length) {
                this.f1084f = Arrays.copyOf(this.f1084f, Math.max(i18 - iArr8.length, Math.min(4096, this.f1085g)) + this.f1084f.length);
            }
            System.arraycopy(iArr2, 0, this.f1084f, i17, i4);
            this.n += i4;
            int[] iArr9 = this.f1084f;
            iArr9[i3 + 1] = i17;
            iArr9[i3 + 3] = i4;
        } else {
            i3 = b(a(iArr2[0], iArr2[1], iArr2[2]));
            int[] iArr10 = this.f1084f;
            iArr10[i3] = iArr2[0];
            iArr10[i3 + 1] = iArr2[1];
            iArr10[i3 + 2] = iArr2[2];
            iArr10[i3 + 3] = 3;
        }
        this.f1090l[i3 >> 2] = c2;
        this.f1089k++;
        b();
        return c2;
    }

    public String b(int i2, int i3, int i4) {
        int a2 = a(a(i2, i3, i4));
        int[] iArr = this.f1084f;
        int i5 = iArr[a2 + 3];
        if (i5 == 3) {
            if (i2 == iArr[a2] && iArr[a2 + 1] == i3 && iArr[a2 + 2] == i4) {
                return this.f1090l[a2 >> 2];
            }
        } else if (i5 == 0) {
            return null;
        }
        int i6 = this.f1086h + ((a2 >> 3) << 2);
        int i7 = iArr[i6 + 3];
        if (i7 == 3) {
            if (i2 == iArr[i6] && iArr[i6 + 1] == i3 && iArr[i6 + 2] == i4) {
                return this.f1090l[i6 >> 2];
            }
        } else if (i7 == 0) {
            return null;
        }
        int i8 = this.f1087i;
        int i9 = this.f1088j;
        int i10 = i8 + ((a2 >> (i9 + 2)) << i9);
        int[] iArr2 = this.f1084f;
        int i11 = (1 << i9) + i10;
        while (i10 < i11) {
            int i12 = iArr2[i10 + 3];
            if (i2 == iArr2[i10] && i3 == iArr2[i10 + 1] && i4 == iArr2[i10 + 2] && 3 == i12) {
                return this.f1090l[i10 >> 2];
            }
            if (i12 == 0) {
                return null;
            }
            i10 += 4;
        }
        for (int a3 = a(); a3 < this.m; a3 += 4) {
            if (i2 == iArr2[a3] && i3 == iArr2[a3 + 1] && i4 == iArr2[a3 + 2] && 3 == iArr2[a3 + 3]) {
                return this.f1090l[a3 >> 2];
            }
        }
        return null;
    }

    public String b(int[] iArr, int i2) {
        if (i2 >= 4) {
            int a2 = a(iArr, i2);
            int a3 = a(a2);
            int[] iArr2 = this.f1084f;
            int i3 = iArr2[a3 + 3];
            if (a2 == iArr2[a3] && i3 == i2 && a(iArr, i2, iArr2[a3 + 1])) {
                return this.f1090l[a3 >> 2];
            }
            if (i3 == 0) {
                return null;
            }
            int i4 = this.f1086h + ((a3 >> 3) << 2);
            int i5 = iArr2[i4 + 3];
            if (a2 == iArr2[i4] && i5 == i2 && a(iArr, i2, iArr2[i4 + 1])) {
                return this.f1090l[i4 >> 2];
            }
            int i6 = this.f1087i;
            int i7 = this.f1088j;
            int i8 = i6 + ((a3 >> (i7 + 2)) << i7);
            int[] iArr3 = this.f1084f;
            int i9 = (1 << i7) + i8;
            while (i8 < i9) {
                int i10 = iArr3[i8 + 3];
                if (a2 == iArr3[i8] && i2 == i10 && a(iArr, i2, iArr3[i8 + 1])) {
                    return this.f1090l[i8 >> 2];
                }
                if (i10 == 0) {
                    return null;
                }
                i8 += 4;
            }
            for (int a4 = a(); a4 < this.m; a4 += 4) {
                if (a2 == iArr3[a4] && i2 == iArr3[a4 + 3] && a(iArr, i2, iArr3[a4 + 1])) {
                    return this.f1090l[a4 >> 2];
                }
            }
            return null;
        } else if (i2 == 1) {
            return c(iArr[0]);
        } else {
            if (i2 != 2) {
                return i2 != 3 ? "" : b(iArr[0], iArr[1], iArr[2]);
            }
            return b(iArr[0], iArr[1]);
        }
    }

    public final int b(int i2) {
        int i3 = (i2 & (this.f1085g - 1)) << 2;
        int[] iArr = this.f1084f;
        if (iArr[i3 + 3] == 0) {
            return i3;
        }
        int i4 = this.f1086h + ((i3 >> 3) << 2);
        if (iArr[i4 + 3] == 0) {
            return i4;
        }
        int i5 = this.f1087i;
        int i6 = this.f1088j;
        int i7 = i5 + ((i3 >> (i6 + 2)) << i6);
        int i8 = (1 << i6) + i7;
        while (i7 < i8) {
            if (iArr[i7 + 3] == 0) {
                return i7;
            }
            i7 += 4;
        }
        int i9 = this.m;
        int i10 = i9 + 4;
        this.m = i10;
        int i11 = this.f1085g;
        if (i10 >= (i11 << 3)) {
            if (!this.f1083e || i11 <= 1024) {
                this.o = true;
            } else {
                StringBuilder a2 = e.a.a.a.a.a("Spill-over slots in symbol table with ");
                a2.append(this.f1089k);
                a2.append(" entries, hash area of ");
                a2.append(this.f1085g);
                a2.append(" slots is now full (all ");
                a2.append(this.f1085g >> 3);
                a2.append(" slots -- suspect a DoS attack based on hash collisions.");
                a2.append(" You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`");
                throw new IllegalStateException(a2.toString());
            }
        }
        return i9;
    }

    public final void b() {
        if (this.f1089k > (this.f1085g >> 1)) {
            int a2 = (this.m - a()) >> 2;
            int i2 = this.f1089k;
            if (a2 > ((i2 + 1) >> 7) || ((double) i2) > ((double) this.f1085g) * 0.8d) {
                this.o = true;
            }
        }
    }

    public int a(int i2, int i3) {
        int i4 = i2 + (i2 >>> 15);
        int i5 = this.f1081c ^ ((i3 * 33) + (i4 ^ (i4 >>> 9)));
        int i6 = i5 + (i5 >>> 16);
        int i7 = i6 ^ (i6 >>> 4);
        return i7 + (i7 << 3);
    }

    public int a(int i2, int i3, int i4) {
        int i5 = i2 ^ this.f1081c;
        int i6 = (((i5 + (i5 >>> 9)) * 31) + i3) * 33;
        int i7 = (i6 + (i6 >>> 15)) ^ i4;
        int i8 = i7 + (i7 >>> 4);
        int i9 = i8 + (i8 >>> 15);
        return i9 ^ (i9 << 9);
    }

    public int a(int[] iArr, int i2) {
        if (i2 >= 4) {
            int i3 = iArr[0] ^ this.f1081c;
            int i4 = i3 + (i3 >>> 9) + iArr[1];
            int i5 = ((i4 + (i4 >>> 15)) * 33) ^ iArr[2];
            int i6 = i5 + (i5 >>> 4);
            for (int i7 = 3; i7 < i2; i7++) {
                int i8 = iArr[i7];
                i6 += i8 ^ (i8 >> 21);
            }
            int i9 = i6 * 65599;
            int i10 = i9 + (i9 >>> 19);
            return (i10 << 5) ^ i10;
        }
        throw new IllegalArgumentException();
    }

    public final void a(boolean z) {
        this.f1089k = 0;
        this.m = a();
        this.n = this.f1085g << 3;
        if (z) {
            Arrays.fill(this.f1084f, 0);
            Arrays.fill(this.f1090l, (Object) null);
        }
    }

    public final int a() {
        int i2 = this.f1085g;
        return (i2 << 3) - i2;
    }
}
