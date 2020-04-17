package k.e.a;

import com.microsoft.azure.storage.Constants;
import k.e.a.x;

public class n {
    public q a;
    public int[] b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f2372c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f2373d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f2374e;

    /* renamed from: f  reason: collision with root package name */
    public short f2375f;

    /* renamed from: g  reason: collision with root package name */
    public short f2376g;

    /* renamed from: h  reason: collision with root package name */
    public int f2377h;

    /* renamed from: i  reason: collision with root package name */
    public int[] f2378i;

    public n(q qVar) {
        this.a = qVar;
    }

    public static int a(x xVar, Object obj) {
        if (obj instanceof Integer) {
            return 4194304 | ((Integer) obj).intValue();
        }
        if (obj instanceof String) {
            return a(xVar, y.c((String) obj).a(), 0);
        }
        return xVar.a("", ((q) obj).f2387d) | 12582912;
    }

    public final void b(int i2, int i3) {
        if (this.f2373d == null) {
            this.f2373d = new int[10];
        }
        int length = this.f2373d.length;
        if (i2 >= length) {
            int[] iArr = new int[Math.max(i2 + 1, length * 2)];
            System.arraycopy(this.f2373d, 0, iArr, 0, length);
            this.f2373d = iArr;
        }
        this.f2373d[i2] = i3;
    }

    public final void c(int i2) {
        if (this.f2374e == null) {
            this.f2374e = new int[10];
        }
        int length = this.f2374e.length;
        short s = this.f2376g;
        if (s >= length) {
            int[] iArr = new int[Math.max(s + 1, length * 2)];
            System.arraycopy(this.f2374e, 0, iArr, 0, length);
            this.f2374e = iArr;
        }
        int[] iArr2 = this.f2374e;
        short s2 = this.f2376g;
        short s3 = (short) (s2 + 1);
        this.f2376g = s3;
        iArr2[s2] = i2;
        short s4 = (short) (this.f2375f + s3);
        q qVar = this.a;
        if (s4 > qVar.f2391h) {
            qVar.f2391h = s4;
        }
    }

    public static int a(x xVar, String str, int i2) {
        x xVar2 = xVar;
        String str2 = str;
        char charAt = str.charAt(i2);
        int i3 = 4194306;
        if (charAt == 'F') {
            return 4194306;
        }
        if (charAt == 'L') {
            return xVar2.d(str2.substring(i2 + 1, str.length() - 1)) | 8388608;
        }
        if (charAt != 'S') {
            if (charAt == 'V') {
                return 0;
            }
            if (charAt != 'I') {
                if (charAt == 'J') {
                    return 4194308;
                }
                if (charAt != 'Z') {
                    if (charAt != '[') {
                        switch (charAt) {
                            case 'B':
                            case 'C':
                                break;
                            case 'D':
                                return 4194307;
                            default:
                                throw new IllegalArgumentException();
                        }
                    } else {
                        int i4 = i2 + 1;
                        while (str2.charAt(i4) == '[') {
                            i4++;
                        }
                        char charAt2 = str2.charAt(i4);
                        if (charAt2 != 'F') {
                            if (charAt2 == 'L') {
                                i3 = xVar2.d(str2.substring(i4 + 1, str.length() - 1)) | 8388608;
                            } else if (charAt2 == 'S') {
                                i3 = 4194316;
                            } else if (charAt2 == 'Z') {
                                i3 = 4194313;
                            } else if (charAt2 == 'I') {
                                i3 = 4194305;
                            } else if (charAt2 != 'J') {
                                switch (charAt2) {
                                    case 'B':
                                        i3 = 4194314;
                                        break;
                                    case 'C':
                                        i3 = 4194315;
                                        break;
                                    case 'D':
                                        i3 = 4194307;
                                        break;
                                    default:
                                        throw new IllegalArgumentException();
                                }
                            } else {
                                i3 = 4194308;
                            }
                        }
                        return ((i4 - i2) << 26) | i3;
                    }
                }
            }
        }
        return 4194305;
    }

    public final void b(int i2) {
        short s = this.f2376g;
        if (s >= i2) {
            this.f2376g = (short) (s - i2);
            return;
        }
        this.f2375f = (short) (this.f2375f - (i2 - s));
        this.f2376g = 0;
    }

    public final void a(x xVar, int i2, String str, int i3) {
        int i4;
        int[] iArr = new int[i3];
        this.b = iArr;
        this.f2372c = new int[0];
        int i5 = 1;
        if ((i2 & 8) != 0) {
            i5 = 0;
        } else if ((i2 & 262144) == 0) {
            iArr[0] = 8388608 | xVar.d(xVar.f2427d);
        } else {
            iArr[0] = 4194310;
        }
        for (y a2 : y.a(str)) {
            int a3 = a(xVar, a2.a(), 0);
            int i6 = i4 + 1;
            this.b[i4] = a3;
            if (a3 == 4194308 || a3 == 4194307) {
                this.b[i6] = 4194304;
                i4 = i6 + 1;
            } else {
                i4 = i6;
            }
        }
        while (i4 < i3) {
            this.b[i4] = 4194304;
            i4++;
        }
    }

    public final int a(int i2) {
        int[] iArr = this.f2373d;
        if (iArr == null || i2 >= iArr.length) {
            return i2 | 16777216;
        }
        int i3 = iArr[i2];
        if (i3 != 0) {
            return i3;
        }
        int i4 = i2 | 16777216;
        iArr[i2] = i4;
        return i4;
    }

    public final void a(x xVar, String str) {
        int i2 = 0;
        if (str.charAt(0) == '(') {
            i2 = y.d(str);
        }
        int a2 = a(xVar, str, i2);
        if (a2 != 0) {
            c(a2);
            if (a2 == 4194308 || a2 == 4194307) {
                c(4194304);
            }
        }
    }

    public final int a() {
        short s = this.f2376g;
        if (s > 0) {
            int[] iArr = this.f2374e;
            short s2 = (short) (s - 1);
            this.f2376g = s2;
            return iArr[s2];
        }
        short s3 = (short) (this.f2375f - 1);
        this.f2375f = s3;
        return 20971520 | (-s3);
    }

    public final void a(String str) {
        char charAt = str.charAt(0);
        if (charAt == '(') {
            b((y.b(str) >> 2) - 1);
        } else if (charAt == 'J' || charAt == 'D') {
            b(2);
        } else {
            b(1);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x004f A[LOOP:0: B:5:0x000d->B:21:0x004f, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0037 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int a(k.e.a.x r9, int r10) {
        /*
            r8 = this;
            r0 = 4194310(0x400006, float:5.87748E-39)
            if (r10 == r0) goto L_0x000c
            r1 = -4194304(0xffffffffffc00000, float:NaN)
            r1 = r1 & r10
            r2 = 12582912(0xc00000, float:1.7632415E-38)
            if (r1 != r2) goto L_0x0052
        L_0x000c:
            r1 = 0
        L_0x000d:
            int r2 = r8.f2377h
            if (r1 >= r2) goto L_0x0052
            int[] r2 = r8.f2378i
            r2 = r2[r1]
            r3 = -67108864(0xfffffffffc000000, float:-2.658456E36)
            r3 = r3 & r2
            r4 = 62914560(0x3c00000, float:1.1284746E-36)
            r4 = r4 & r2
            r5 = 1048575(0xfffff, float:1.469367E-39)
            r6 = r2 & r5
            r7 = 16777216(0x1000000, float:2.3509887E-38)
            if (r4 != r7) goto L_0x002a
            int[] r2 = r8.b
            r2 = r2[r6]
        L_0x0028:
            int r2 = r2 + r3
            goto L_0x0035
        L_0x002a:
            r7 = 20971520(0x1400000, float:3.526483E-38)
            if (r4 != r7) goto L_0x0035
            int[] r2 = r8.f2372c
            int r4 = r2.length
            int r4 = r4 - r6
            r2 = r2[r4]
            goto L_0x0028
        L_0x0035:
            if (r10 != r2) goto L_0x004f
            r1 = 8388608(0x800000, float:1.17549435E-38)
            if (r10 != r0) goto L_0x0043
            java.lang.String r10 = r9.f2427d
            int r9 = r9.d(r10)
        L_0x0041:
            r9 = r9 | r1
            return r9
        L_0x0043:
            r10 = r10 & r5
            k.e.a.x$a[] r0 = r9.f2435l
            r10 = r0[r10]
            java.lang.String r10 = r10.f2423e
            int r9 = r9.d(r10)
            goto L_0x0041
        L_0x004f:
            int r1 = r1 + 1
            goto L_0x000d
        L_0x0052:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.n.a(k.e.a.x, int):int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:100:0x02f8, code lost:
        b(2);
        c(4194305);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x035f, code lost:
        c(4194307);
        c(4194304);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x0366, code lost:
        c(4194306);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x036a, code lost:
        c(4194308);
        c(4194304);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x0371, code lost:
        c(4194305);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:173:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:174:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:175:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:187:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:188:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:189:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:190:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x025f, code lost:
        b(1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x02da, code lost:
        b(2);
        c(4194307);
        c(4194304);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x02e5, code lost:
        b(2);
        c(4194306);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x02ed, code lost:
        b(2);
        c(4194308);
        c(4194304);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r17, int r18, k.e.a.w r19, k.e.a.x r20) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            r2 = r18
            r3 = r19
            r4 = r20
            r6 = 4194306(0x400002, float:5.877475E-39)
            r7 = 8388608(0x800000, float:1.17549435E-38)
            r8 = 4194305(0x400001, float:5.877473E-39)
            r9 = 4194307(0x400003, float:5.877476E-39)
            r10 = 4194308(0x400004, float:5.877477E-39)
            r11 = 4194304(0x400000, float:5.877472E-39)
            switch(r1) {
                case 0: goto L_0x037b;
                case 1: goto L_0x0375;
                case 2: goto L_0x0371;
                case 3: goto L_0x0371;
                case 4: goto L_0x0371;
                case 5: goto L_0x0371;
                case 6: goto L_0x0371;
                case 7: goto L_0x0371;
                case 8: goto L_0x0371;
                case 9: goto L_0x036a;
                case 10: goto L_0x036a;
                case 11: goto L_0x0366;
                case 12: goto L_0x0366;
                case 13: goto L_0x0366;
                case 14: goto L_0x035f;
                case 15: goto L_0x035f;
                case 16: goto L_0x0371;
                case 17: goto L_0x0371;
                case 18: goto L_0x0309;
                default: goto L_0x001d;
            }
        L_0x001d:
            switch(r1) {
                case 21: goto L_0x0371;
                case 22: goto L_0x036a;
                case 23: goto L_0x0366;
                case 24: goto L_0x035f;
                case 25: goto L_0x0300;
                default: goto L_0x0020;
            }
        L_0x0020:
            r12 = 20971520(0x1400000, float:3.526483E-38)
            r14 = 16777216(0x1000000, float:2.3509887E-38)
            r15 = 62914560(0x3c00000, float:1.1284746E-36)
            r5 = 2
            r13 = 1
            switch(r1) {
                case 46: goto L_0x02f8;
                case 47: goto L_0x02ed;
                case 48: goto L_0x02e5;
                case 49: goto L_0x02da;
                case 50: goto L_0x02c5;
                case 51: goto L_0x02f8;
                case 52: goto L_0x02f8;
                case 53: goto L_0x02f8;
                case 54: goto L_0x029e;
                case 55: goto L_0x026f;
                case 56: goto L_0x029e;
                case 57: goto L_0x026f;
                case 58: goto L_0x029e;
                default: goto L_0x002b;
            }
        L_0x002b:
            r14 = 91
            r15 = 0
            r12 = 4
            switch(r1) {
                case 79: goto L_0x0269;
                case 80: goto L_0x0264;
                case 81: goto L_0x0269;
                case 82: goto L_0x0264;
                case 83: goto L_0x0269;
                case 84: goto L_0x0269;
                case 85: goto L_0x0269;
                case 86: goto L_0x0269;
                case 87: goto L_0x025f;
                case 88: goto L_0x025a;
                case 89: goto L_0x024e;
                case 90: goto L_0x023b;
                case 91: goto L_0x0221;
                case 92: goto L_0x020b;
                case 93: goto L_0x01ee;
                case 94: goto L_0x01ca;
                case 95: goto L_0x01ba;
                case 96: goto L_0x02f8;
                case 97: goto L_0x01af;
                case 98: goto L_0x02e5;
                case 99: goto L_0x01a4;
                case 100: goto L_0x02f8;
                case 101: goto L_0x01af;
                case 102: goto L_0x02e5;
                case 103: goto L_0x01a4;
                case 104: goto L_0x02f8;
                case 105: goto L_0x01af;
                case 106: goto L_0x02e5;
                case 107: goto L_0x01a4;
                case 108: goto L_0x02f8;
                case 109: goto L_0x01af;
                case 110: goto L_0x02e5;
                case 111: goto L_0x01a4;
                case 112: goto L_0x02f8;
                case 113: goto L_0x01af;
                case 114: goto L_0x02e5;
                case 115: goto L_0x01a4;
                case 116: goto L_0x037b;
                case 117: goto L_0x037b;
                case 118: goto L_0x037b;
                case 119: goto L_0x037b;
                case 120: goto L_0x02f8;
                case 121: goto L_0x0198;
                case 122: goto L_0x02f8;
                case 123: goto L_0x0198;
                case 124: goto L_0x02f8;
                case 125: goto L_0x0198;
                case 126: goto L_0x02f8;
                case 127: goto L_0x01af;
                case 128: goto L_0x02f8;
                case 129: goto L_0x01af;
                case 130: goto L_0x02f8;
                case 131: goto L_0x01af;
                case 132: goto L_0x0193;
                case 133: goto L_0x0188;
                case 134: goto L_0x0180;
                case 135: goto L_0x0175;
                case 136: goto L_0x02f8;
                case 137: goto L_0x02e5;
                case 138: goto L_0x02da;
                case 139: goto L_0x016d;
                case 140: goto L_0x0188;
                case 141: goto L_0x0175;
                case 142: goto L_0x02f8;
                case 143: goto L_0x02ed;
                case 144: goto L_0x02e5;
                case 145: goto L_0x037b;
                case 146: goto L_0x037b;
                case 147: goto L_0x037b;
                case 148: goto L_0x0165;
                case 149: goto L_0x02f8;
                case 150: goto L_0x02f8;
                case 151: goto L_0x0165;
                case 152: goto L_0x0165;
                case 153: goto L_0x025f;
                case 154: goto L_0x025f;
                case 155: goto L_0x025f;
                case 156: goto L_0x025f;
                case 157: goto L_0x025f;
                case 158: goto L_0x025f;
                case 159: goto L_0x025a;
                case 160: goto L_0x025a;
                case 161: goto L_0x025a;
                case 162: goto L_0x025a;
                case 163: goto L_0x025a;
                case 164: goto L_0x025a;
                case 165: goto L_0x025a;
                case 166: goto L_0x025a;
                case 167: goto L_0x037b;
                case 168: goto L_0x015d;
                case 169: goto L_0x015d;
                case 170: goto L_0x025f;
                case 171: goto L_0x025f;
                case 172: goto L_0x025f;
                case 173: goto L_0x025a;
                case 174: goto L_0x025f;
                case 175: goto L_0x025a;
                case 176: goto L_0x025f;
                case 177: goto L_0x037b;
                case 178: goto L_0x0156;
                case 179: goto L_0x014f;
                case 180: goto L_0x0145;
                case 181: goto L_0x013b;
                case 182: goto L_0x00f0;
                case 183: goto L_0x00f0;
                case 184: goto L_0x00f0;
                case 185: goto L_0x00f0;
                case 186: goto L_0x00e4;
                case 187: goto L_0x00d6;
                case 188: goto L_0x008a;
                case 189: goto L_0x005f;
                case 190: goto L_0x016d;
                case 191: goto L_0x025f;
                case 192: goto L_0x0045;
                case 193: goto L_0x016d;
                case 194: goto L_0x025f;
                case 195: goto L_0x025f;
                default: goto L_0x0032;
            }
        L_0x0032:
            switch(r1) {
                case 197: goto L_0x003b;
                case 198: goto L_0x025f;
                case 199: goto L_0x025f;
                default: goto L_0x0035;
            }
        L_0x0035:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            r1.<init>()
            throw r1
        L_0x003b:
            r0.b(r2)
            java.lang.String r1 = r3.f2423e
            r0.a((k.e.a.x) r4, (java.lang.String) r1)
            goto L_0x037b
        L_0x0045:
            java.lang.String r1 = r3.f2423e
            r16.a()
            char r2 = r1.charAt(r15)
            if (r2 != r14) goto L_0x0055
            r0.a((k.e.a.x) r4, (java.lang.String) r1)
            goto L_0x037b
        L_0x0055:
            int r1 = r4.d(r1)
            r1 = r1 | r7
            r0.c(r1)
            goto L_0x037b
        L_0x005f:
            java.lang.String r1 = r3.f2423e
            r16.a()
            char r2 = r1.charAt(r15)
            if (r2 != r14) goto L_0x007e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r14)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.a((k.e.a.x) r4, (java.lang.String) r1)
            goto L_0x037b
        L_0x007e:
            r2 = 75497472(0x4800000, float:3.0092655E-36)
            int r1 = r4.d(r1)
            r1 = r1 | r2
            r0.c(r1)
            goto L_0x037b
        L_0x008a:
            r16.a()
            switch(r2) {
                case 4: goto L_0x00ce;
                case 5: goto L_0x00c6;
                case 6: goto L_0x00be;
                case 7: goto L_0x00b6;
                case 8: goto L_0x00ae;
                case 9: goto L_0x00a6;
                case 10: goto L_0x009e;
                case 11: goto L_0x0096;
                default: goto L_0x0090;
            }
        L_0x0090:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            r1.<init>()
            throw r1
        L_0x0096:
            r1 = 71303172(0x4400004, float:2.2569499E-36)
            r0.c(r1)
            goto L_0x037b
        L_0x009e:
            r1 = 71303169(0x4400001, float:2.2569493E-36)
            r0.c(r1)
            goto L_0x037b
        L_0x00a6:
            r1 = 71303180(0x440000c, float:2.2569513E-36)
            r0.c(r1)
            goto L_0x037b
        L_0x00ae:
            r1 = 71303178(0x440000a, float:2.256951E-36)
            r0.c(r1)
            goto L_0x037b
        L_0x00b6:
            r1 = 71303171(0x4400003, float:2.2569497E-36)
            r0.c(r1)
            goto L_0x037b
        L_0x00be:
            r1 = 71303170(0x4400002, float:2.2569495E-36)
            r0.c(r1)
            goto L_0x037b
        L_0x00c6:
            r1 = 71303179(0x440000b, float:2.2569511E-36)
            r0.c(r1)
            goto L_0x037b
        L_0x00ce:
            r1 = 71303177(0x4400009, float:2.2569508E-36)
            r0.c(r1)
            goto L_0x037b
        L_0x00d6:
            r1 = 12582912(0xc00000, float:1.7632415E-38)
            java.lang.String r3 = r3.f2423e
            int r2 = r4.a((java.lang.String) r3, (int) r2)
            r1 = r1 | r2
            r0.c(r1)
            goto L_0x037b
        L_0x00e4:
            java.lang.String r1 = r3.f2423e
            r0.a((java.lang.String) r1)
            java.lang.String r1 = r3.f2423e
            r0.a((k.e.a.x) r4, (java.lang.String) r1)
            goto L_0x037b
        L_0x00f0:
            java.lang.String r2 = r3.f2423e
            r0.a((java.lang.String) r2)
            r2 = 184(0xb8, float:2.58E-43)
            if (r1 == r2) goto L_0x0134
            int r2 = r16.a()
            r6 = 183(0xb7, float:2.56E-43)
            if (r1 != r6) goto L_0x0134
            java.lang.String r1 = r3.f2422d
            char r1 = r1.charAt(r15)
            r6 = 60
            if (r1 != r6) goto L_0x0134
            int[] r1 = r0.f2378i
            if (r1 != 0) goto L_0x0113
            int[] r1 = new int[r5]
            r0.f2378i = r1
        L_0x0113:
            int[] r1 = r0.f2378i
            int r1 = r1.length
            int r5 = r0.f2377h
            if (r5 < r1) goto L_0x012a
            int r5 = r5 + r13
            int r6 = r1 * 2
            int r5 = java.lang.Math.max(r5, r6)
            int[] r5 = new int[r5]
            int[] r6 = r0.f2378i
            java.lang.System.arraycopy(r6, r15, r5, r15, r1)
            r0.f2378i = r5
        L_0x012a:
            int[] r1 = r0.f2378i
            int r5 = r0.f2377h
            int r6 = r5 + 1
            r0.f2377h = r6
            r1[r5] = r2
        L_0x0134:
            java.lang.String r1 = r3.f2423e
            r0.a((k.e.a.x) r4, (java.lang.String) r1)
            goto L_0x037b
        L_0x013b:
            java.lang.String r1 = r3.f2423e
            r0.a((java.lang.String) r1)
            r16.a()
            goto L_0x037b
        L_0x0145:
            r0.b(r13)
            java.lang.String r1 = r3.f2423e
            r0.a((k.e.a.x) r4, (java.lang.String) r1)
            goto L_0x037b
        L_0x014f:
            java.lang.String r1 = r3.f2423e
            r0.a((java.lang.String) r1)
            goto L_0x037b
        L_0x0156:
            java.lang.String r1 = r3.f2423e
            r0.a((k.e.a.x) r4, (java.lang.String) r1)
            goto L_0x037b
        L_0x015d:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            java.lang.String r2 = "JSR/RET are not supported with computeFrames option"
            r1.<init>(r2)
            throw r1
        L_0x0165:
            r0.b(r12)
            r0.c(r8)
            goto L_0x037b
        L_0x016d:
            r0.b(r13)
            r0.c(r8)
            goto L_0x037b
        L_0x0175:
            r0.b(r13)
            r0.c(r9)
            r0.c(r11)
            goto L_0x037b
        L_0x0180:
            r0.b(r13)
            r0.c(r6)
            goto L_0x037b
        L_0x0188:
            r0.b(r13)
            r0.c(r10)
            r0.c(r11)
            goto L_0x037b
        L_0x0193:
            r0.b(r2, r8)
            goto L_0x037b
        L_0x0198:
            r1 = 3
            r0.b(r1)
            r0.c(r10)
            r0.c(r11)
            goto L_0x037b
        L_0x01a4:
            r0.b(r12)
            r0.c(r9)
            r0.c(r11)
            goto L_0x037b
        L_0x01af:
            r0.b(r12)
            r0.c(r10)
            r0.c(r11)
            goto L_0x037b
        L_0x01ba:
            int r1 = r16.a()
            int r2 = r16.a()
            r0.c(r1)
            r0.c(r2)
            goto L_0x037b
        L_0x01ca:
            int r1 = r16.a()
            int r2 = r16.a()
            int r3 = r16.a()
            int r4 = r16.a()
            r0.c(r2)
            r0.c(r1)
            r0.c(r4)
            r0.c(r3)
            r0.c(r2)
            r0.c(r1)
            goto L_0x037b
        L_0x01ee:
            int r1 = r16.a()
            int r2 = r16.a()
            int r3 = r16.a()
            r0.c(r2)
            r0.c(r1)
            r0.c(r3)
            r0.c(r2)
            r0.c(r1)
            goto L_0x037b
        L_0x020b:
            int r1 = r16.a()
            int r2 = r16.a()
            r0.c(r2)
            r0.c(r1)
            r0.c(r2)
            r0.c(r1)
            goto L_0x037b
        L_0x0221:
            int r1 = r16.a()
            int r2 = r16.a()
            int r3 = r16.a()
            r0.c(r1)
            r0.c(r3)
            r0.c(r2)
            r0.c(r1)
            goto L_0x037b
        L_0x023b:
            int r1 = r16.a()
            int r2 = r16.a()
            r0.c(r1)
            r0.c(r2)
            r0.c(r1)
            goto L_0x037b
        L_0x024e:
            int r1 = r16.a()
            r0.c(r1)
            r0.c(r1)
            goto L_0x037b
        L_0x025a:
            r0.b(r5)
            goto L_0x037b
        L_0x025f:
            r0.b(r13)
            goto L_0x037b
        L_0x0264:
            r0.b(r12)
            goto L_0x037b
        L_0x0269:
            r1 = 3
            r0.b(r1)
            goto L_0x037b
        L_0x026f:
            r0.b(r13)
            int r1 = r16.a()
            r0.b(r2, r1)
            int r1 = r2 + 1
            r0.b(r1, r11)
            if (r2 <= 0) goto L_0x037b
            int r1 = r2 + -1
            int r2 = r0.a((int) r1)
            if (r2 == r10) goto L_0x0299
            if (r2 != r9) goto L_0x028b
            goto L_0x0299
        L_0x028b:
            r3 = r2 & r15
            if (r3 == r14) goto L_0x0291
            if (r3 != r12) goto L_0x037b
        L_0x0291:
            r3 = 1048576(0x100000, float:1.469368E-39)
            r2 = r2 | r3
            r0.b(r1, r2)
            goto L_0x037b
        L_0x0299:
            r0.b(r1, r11)
            goto L_0x037b
        L_0x029e:
            int r1 = r16.a()
            r0.b(r2, r1)
            if (r2 <= 0) goto L_0x037b
            int r1 = r2 + -1
            int r2 = r0.a((int) r1)
            if (r2 == r10) goto L_0x02c0
            if (r2 != r9) goto L_0x02b2
            goto L_0x02c0
        L_0x02b2:
            r3 = r2 & r15
            if (r3 == r14) goto L_0x02b8
            if (r3 != r12) goto L_0x037b
        L_0x02b8:
            r3 = 1048576(0x100000, float:1.469368E-39)
            r2 = r2 | r3
            r0.b(r1, r2)
            goto L_0x037b
        L_0x02c0:
            r0.b(r1, r11)
            goto L_0x037b
        L_0x02c5:
            r0.b(r13)
            int r1 = r16.a()
            r2 = 4194309(0x400005, float:5.877479E-39)
            if (r1 != r2) goto L_0x02d2
            goto L_0x02d5
        L_0x02d2:
            r2 = -67108864(0xfffffffffc000000, float:-2.658456E36)
            int r1 = r1 + r2
        L_0x02d5:
            r0.c(r1)
            goto L_0x037b
        L_0x02da:
            r0.b(r5)
            r0.c(r9)
            r0.c(r11)
            goto L_0x037b
        L_0x02e5:
            r0.b(r5)
            r0.c(r6)
            goto L_0x037b
        L_0x02ed:
            r0.b(r5)
            r0.c(r10)
            r0.c(r11)
            goto L_0x037b
        L_0x02f8:
            r0.b(r5)
            r0.c(r8)
            goto L_0x037b
        L_0x0300:
            int r1 = r0.a((int) r2)
            r0.c(r1)
            goto L_0x037b
        L_0x0309:
            int r1 = r3.b
            switch(r1) {
                case 3: goto L_0x035b;
                case 4: goto L_0x0357;
                case 5: goto L_0x0350;
                case 6: goto L_0x0349;
                case 7: goto L_0x033e;
                case 8: goto L_0x0333;
                default: goto L_0x030e;
            }
        L_0x030e:
            switch(r1) {
                case 15: goto L_0x0328;
                case 16: goto L_0x031d;
                case 17: goto L_0x0317;
                default: goto L_0x0311;
            }
        L_0x0311:
            java.lang.AssertionError r1 = new java.lang.AssertionError
            r1.<init>()
            throw r1
        L_0x0317:
            java.lang.String r1 = r3.f2423e
            r0.a((k.e.a.x) r4, (java.lang.String) r1)
            goto L_0x037b
        L_0x031d:
            java.lang.String r1 = "java/lang/invoke/MethodType"
            int r1 = r4.d(r1)
            r1 = r1 | r7
            r0.c(r1)
            goto L_0x037b
        L_0x0328:
            java.lang.String r1 = "java/lang/invoke/MethodHandle"
            int r1 = r4.d(r1)
            r1 = r1 | r7
            r0.c(r1)
            goto L_0x037b
        L_0x0333:
            java.lang.String r1 = "java/lang/String"
            int r1 = r4.d(r1)
            r1 = r1 | r7
            r0.c(r1)
            goto L_0x037b
        L_0x033e:
            java.lang.String r1 = "java/lang/Class"
            int r1 = r4.d(r1)
            r1 = r1 | r7
            r0.c(r1)
            goto L_0x037b
        L_0x0349:
            r0.c(r9)
            r0.c(r11)
            goto L_0x037b
        L_0x0350:
            r0.c(r10)
            r0.c(r11)
            goto L_0x037b
        L_0x0357:
            r0.c(r6)
            goto L_0x037b
        L_0x035b:
            r0.c(r8)
            goto L_0x037b
        L_0x035f:
            r0.c(r9)
            r0.c(r11)
            goto L_0x037b
        L_0x0366:
            r0.c(r6)
            goto L_0x037b
        L_0x036a:
            r0.c(r10)
            r0.c(r11)
            goto L_0x037b
        L_0x0371:
            r0.c(r8)
            goto L_0x037b
        L_0x0375:
            r1 = 4194309(0x400005, float:5.877479E-39)
            r0.c(r1)
        L_0x037b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.n.a(int, int, k.e.a.w, k.e.a.x):void");
    }

    public final int a(int i2, int i3) {
        int i4 = -67108864 & i2;
        int i5 = 62914560 & i2;
        if (i5 == 16777216) {
            int i6 = i4 + this.b[i2 & 1048575];
            if ((i2 & Constants.MB) == 0 || (i6 != 4194308 && i6 != 4194307)) {
                return i6;
            }
            return 4194304;
        } else if (i5 != 20971520) {
            return i2;
        } else {
            int i7 = i4 + this.f2372c[i3 - (1048575 & i2)];
            if ((i2 & Constants.MB) == 0 || (i7 != 4194308 && i7 != 4194307)) {
                return i7;
            }
            return 4194304;
        }
    }

    public final boolean a(x xVar, n nVar, int i2) {
        boolean z;
        int i3;
        int length = this.b.length;
        int length2 = this.f2372c.length;
        boolean z2 = true;
        if (nVar.b == null) {
            nVar.b = new int[length];
            z = true;
        } else {
            z = false;
        }
        for (int i4 = 0; i4 < length; i4++) {
            int[] iArr = this.f2373d;
            if (iArr == null || i4 >= iArr.length) {
                i3 = this.b[i4];
            } else {
                int i5 = iArr[i4];
                if (i5 == 0) {
                    i3 = this.b[i4];
                } else {
                    i3 = a(i5, length2);
                }
            }
            if (this.f2378i != null) {
                i3 = a(xVar, i3);
            }
            z |= a(xVar, i3, nVar.b, i4);
        }
        if (i2 > 0) {
            for (int i6 = 0; i6 < length; i6++) {
                z |= a(xVar, this.b[i6], nVar.b, i6);
            }
            if (nVar.f2372c == null) {
                nVar.f2372c = new int[1];
            } else {
                z2 = z;
            }
            return a(xVar, i2, nVar.f2372c, 0) | z2;
        }
        int length3 = this.f2372c.length + this.f2375f;
        if (nVar.f2372c == null) {
            nVar.f2372c = new int[(this.f2376g + length3)];
        } else {
            z2 = z;
        }
        for (int i7 = 0; i7 < length3; i7++) {
            int i8 = this.f2372c[i7];
            if (this.f2378i != null) {
                i8 = a(xVar, i8);
            }
            z2 |= a(xVar, i8, nVar.f2372c, i7);
        }
        for (int i9 = 0; i9 < this.f2376g; i9++) {
            int a2 = a(this.f2374e[i9], length2);
            if (this.f2378i != null) {
                a2 = a(xVar, a2);
            }
            z2 |= a(xVar, a2, nVar.f2372c, length3 + i9);
        }
        return z2;
    }

    public static boolean a(x xVar, int i2, int[] iArr, int i3) {
        int min;
        int d2;
        long j2;
        long j3;
        int i4;
        x xVar2 = xVar;
        int i5 = i2;
        int i6 = iArr[i3];
        if (i6 == i5) {
            return false;
        }
        if ((67108863 & i5) == 4194309) {
            if (i6 == 4194309) {
                return false;
            }
            i5 = 4194309;
        }
        if (i6 == 0) {
            iArr[i3] = i5;
            return true;
        }
        int i7 = i6 & -67108864;
        int i8 = 4194304;
        if (i7 != 0 || (i6 & 62914560) == 8388608) {
            if (i5 == 4194309) {
                return false;
            }
            String str = "java/lang/Object";
            if ((i5 & -4194304) != (-4194304 & i6)) {
                int i9 = i5 & -67108864;
                if (i9 != 0 || (i5 & 62914560) == 8388608) {
                    if (!(i9 == 0 || (i5 & 62914560) == 8388608)) {
                        i9 -= 67108864;
                    }
                    if (!(i7 == 0 || (i6 & 62914560) == 8388608)) {
                        i7 -= 67108864;
                    }
                    min = Math.min(i9, i7) | 8388608;
                    d2 = xVar2.d(str);
                }
            } else if ((i6 & 62914560) == 8388608) {
                int i10 = (i5 & -67108864) | 8388608;
                int i11 = i5 & 1048575;
                int i12 = 1048575 & i6;
                if (i11 < i12) {
                    j3 = (long) i11;
                    j2 = (long) i12;
                } else {
                    j3 = (long) i12;
                    j2 = (long) i11;
                }
                long j4 = j3 | (j2 << 32);
                int b2 = x.b(130, i11 + i12);
                x.a b3 = xVar2.b(b2);
                while (true) {
                    if (b3 != null) {
                        if (b3.b == 130 && b3.f2436h == b2 && b3.f2424f == j4) {
                            i4 = b3.f2425g;
                            break;
                        }
                        b3 = b3.f2437i;
                    } else {
                        x.a[] aVarArr = xVar2.f2435l;
                        String str2 = aVarArr[i11].f2423e;
                        String str3 = aVarArr[i12].f2423e;
                        if (xVar2.a != null) {
                            ClassLoader classLoader = g.class.getClassLoader();
                            try {
                                Class cls = Class.forName(str2.replace('/', '.'), false, classLoader);
                                try {
                                    Class<?> cls2 = Class.forName(str3.replace('/', '.'), false, classLoader);
                                    if (cls.isAssignableFrom(cls2)) {
                                        str = str2;
                                    } else if (cls2.isAssignableFrom(cls)) {
                                        str = str3;
                                    } else if (!cls.isInterface() && !cls2.isInterface()) {
                                        do {
                                            cls = cls.getSuperclass();
                                        } while (!cls.isAssignableFrom(cls2));
                                        str = cls.getName().replace('.', '/');
                                    }
                                    int d3 = xVar2.d(str);
                                    x.a aVar = new x.a(xVar2.f2434k, 130, j4, b2);
                                    xVar2.b(aVar);
                                    aVar.f2425g = d3;
                                    i4 = d3;
                                } catch (ClassNotFoundException e2) {
                                    throw new TypeNotPresentException(str3, e2);
                                }
                            } catch (ClassNotFoundException e3) {
                                throw new TypeNotPresentException(str2, e3);
                            }
                        } else {
                            throw null;
                        }
                    }
                }
                i8 = i10 | i4;
            } else {
                min = ((i5 & -67108864) - 67108864) | 8388608;
                d2 = xVar2.d(str);
            }
            i8 = min | d2;
        } else if (i6 == 4194309) {
            if ((i5 & -67108864) == 0 && (i5 & 62914560) != 8388608) {
                i5 = 4194304;
            }
            i8 = i5;
        }
        if (i8 == i6) {
            return false;
        }
        iArr[i3] = i8;
        return true;
    }

    public final void a(t tVar) {
        int i2;
        int[] iArr = this.b;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        loop0:
        while (true) {
            int i6 = 0;
            do {
                int i7 = 2;
                if (i4 >= iArr.length) {
                    break loop0;
                }
                i2 = iArr[i4];
                if (!(i2 == 4194308 || i2 == 4194307)) {
                    i7 = 1;
                }
                i4 += i7;
                i6++;
            } while (i2 == 4194304);
            i5 += i6;
        }
        int[] iArr2 = this.f2372c;
        int i8 = 0;
        int i9 = 0;
        while (i8 < iArr2.length) {
            int i10 = iArr2[i8];
            i8 += (i10 == 4194308 || i10 == 4194307) ? 2 : 1;
            i9++;
        }
        tVar.a(this.a.f2387d, i5, i9);
        int i11 = 3;
        int i12 = 0;
        while (true) {
            int i13 = i5 - 1;
            if (i5 <= 0) {
                break;
            }
            int i14 = iArr[i12];
            i12 += (i14 == 4194308 || i14 == 4194307) ? 2 : 1;
            tVar.W[i11] = i14;
            i5 = i13;
            i11++;
        }
        while (true) {
            int i15 = i9 - 1;
            if (i9 > 0) {
                int i16 = iArr2[i3];
                i3 += (i16 == 4194308 || i16 == 4194307) ? 2 : 1;
                tVar.W[i11] = i16;
                i11++;
                i9 = i15;
            } else {
                tVar.b();
                return;
            }
        }
    }
}
