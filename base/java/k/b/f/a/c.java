package k.b.f.a;

import java.math.BigInteger;
import java.util.Arrays;

public abstract class c implements a {

    public static abstract class a extends c {
    }

    public static abstract class b extends c {
    }

    public int a() {
        return h().bitLength();
    }

    public abstract c a(c cVar);

    public abstract int b();

    public abstract c b(c cVar);

    public abstract c c();

    public abstract c c(c cVar);

    public boolean d() {
        return a() == 1;
    }

    public boolean e() {
        return h().signum() == 0;
    }

    public abstract c f();

    public abstract c g();

    public abstract BigInteger h();

    public String toString() {
        return h().toString(16);
    }

    public static class d extends b {

        /* renamed from: d  reason: collision with root package name */
        public BigInteger f2062d;

        /* renamed from: e  reason: collision with root package name */
        public BigInteger f2063e;

        /* renamed from: f  reason: collision with root package name */
        public BigInteger f2064f;

        public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            if (bigInteger3 == null || bigInteger3.signum() < 0 || bigInteger3.compareTo(bigInteger) >= 0) {
                throw new IllegalArgumentException("x value invalid in Fp field element");
            }
            this.f2062d = bigInteger;
            this.f2063e = bigInteger2;
            this.f2064f = bigInteger3;
        }

        public static BigInteger b(BigInteger bigInteger) {
            int bitLength = bigInteger.bitLength();
            if (bitLength < 96 || bigInteger.shiftRight(bitLength - 64).longValue() != -1) {
                return null;
            }
            return a.b.shiftLeft(bitLength).subtract(bigInteger);
        }

        public c a(c cVar) {
            BigInteger bigInteger = this.f2062d;
            BigInteger bigInteger2 = this.f2063e;
            BigInteger add = this.f2064f.add(cVar.h());
            if (add.compareTo(this.f2062d) >= 0) {
                add = add.subtract(this.f2062d);
            }
            return new d(bigInteger, bigInteger2, add);
        }

        public int b() {
            return this.f2062d.bitLength();
        }

        public c b(c cVar) {
            return new d(this.f2062d, this.f2063e, a(this.f2064f, a(cVar.h())));
        }

        public c c() {
            return new d(this.f2062d, this.f2063e, a(this.f2064f));
        }

        public c c(c cVar) {
            return new d(this.f2062d, this.f2063e, a(this.f2064f, cVar.h()));
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f2062d.equals(dVar.f2062d) && this.f2064f.equals(dVar.f2064f);
        }

        public c f() {
            if (this.f2064f.signum() == 0) {
                return this;
            }
            BigInteger bigInteger = this.f2062d;
            return new d(bigInteger, this.f2063e, bigInteger.subtract(this.f2064f));
        }

        public c g() {
            BigInteger bigInteger = this.f2062d;
            BigInteger bigInteger2 = this.f2063e;
            BigInteger bigInteger3 = this.f2064f;
            return new d(bigInteger, bigInteger2, a(bigInteger3, bigInteger3));
        }

        public BigInteger h() {
            return this.f2064f;
        }

        public int hashCode() {
            return this.f2062d.hashCode() ^ this.f2064f.hashCode();
        }

        public BigInteger a(BigInteger bigInteger) {
            boolean z;
            boolean z2;
            int bitLength = this.f2062d.bitLength();
            int i2 = (bitLength + 31) >> 5;
            int[] a = k.b.c.e.a.a(bitLength, this.f2062d);
            int[] a2 = k.b.c.e.a.a(bitLength, bigInteger);
            int[] iArr = new int[i2];
            int length = a.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    z = true;
                    break;
                } else if (a2[i3] != 0) {
                    z = false;
                    break;
                } else {
                    i3++;
                }
            }
            if (!z) {
                if (k.b.c.e.a.a(length, a2)) {
                    System.arraycopy(a2, 0, iArr, 0, length);
                } else {
                    int[] iArr2 = new int[length];
                    System.arraycopy(a2, 0, iArr2, 0, length);
                    int[] iArr3 = new int[length];
                    iArr3[0] = 1;
                    int a3 = (iArr2[0] & 1) == 0 ? k.b.c.e.a.a(a, iArr2, length, iArr3, 0) : 0;
                    if (!k.b.c.e.a.a(length, iArr2)) {
                        int[] iArr4 = new int[length];
                        System.arraycopy(a, 0, iArr4, 0, length);
                        int[] iArr5 = new int[length];
                        int i4 = length;
                        int i5 = 0;
                        while (true) {
                            int i6 = i4 - 1;
                            if (iArr2[i6] != 0 || iArr4[i6] != 0) {
                                while (true) {
                                    if (i6 < 0) {
                                        break;
                                    }
                                    int i7 = iArr2[i6] ^ Integer.MIN_VALUE;
                                    int i8 = iArr4[i6] ^ Integer.MIN_VALUE;
                                    if (i7 < i8) {
                                        z2 = false;
                                        break;
                                    } else if (i7 > i8) {
                                        break;
                                    } else {
                                        i6--;
                                    }
                                }
                                z2 = true;
                                if (!z2) {
                                    k.b.c.e.a.a(i4, iArr2, iArr4);
                                    i5 = k.b.c.e.a.a(a, iArr4, i4, iArr5, (k.b.c.e.a.a(length, iArr3, iArr5) - a3) + i5);
                                    if (k.b.c.e.a.a(i4, iArr4)) {
                                        k.b.c.e.a.a(a, i5, iArr5, iArr);
                                        break;
                                    }
                                } else {
                                    k.b.c.e.a.a(i4, iArr4, iArr2);
                                    a3 = k.b.c.e.a.a(a, iArr2, i4, iArr3, (k.b.c.e.a.a(length, iArr5, iArr3) - i5) + a3);
                                    if (k.b.c.e.a.a(i4, iArr2)) {
                                        break;
                                    }
                                }
                            } else {
                                i4 = i6;
                            }
                        }
                    }
                    k.b.c.e.a.a(a, a3, iArr3, iArr);
                }
                byte[] bArr = new byte[(i2 << 2)];
                for (int i9 = 0; i9 < i2; i9++) {
                    int i10 = iArr[i9];
                    if (i10 != 0) {
                        k.b.c.e.a.b(i10, bArr, ((i2 - 1) - i9) << 2);
                    }
                }
                return new BigInteger(1, bArr);
            }
            throw new IllegalArgumentException("'x' cannot be 0");
        }

        public BigInteger a(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger multiply = bigInteger.multiply(bigInteger2);
            if (this.f2063e == null) {
                return multiply.mod(this.f2062d);
            }
            boolean z = multiply.signum() < 0;
            if (z) {
                multiply = multiply.abs();
            }
            int bitLength = this.f2062d.bitLength();
            boolean equals = this.f2063e.equals(a.b);
            while (multiply.bitLength() > bitLength + 1) {
                BigInteger shiftRight = multiply.shiftRight(bitLength);
                BigInteger subtract = multiply.subtract(shiftRight.shiftLeft(bitLength));
                if (!equals) {
                    shiftRight = shiftRight.multiply(this.f2063e);
                }
                multiply = shiftRight.add(subtract);
            }
            while (multiply.compareTo(this.f2062d) >= 0) {
                multiply = multiply.subtract(this.f2062d);
            }
            return (!z || multiply.signum() == 0) ? multiply : this.f2062d.subtract(multiply);
        }
    }

    /* renamed from: k.b.f.a.c$c  reason: collision with other inner class name */
    public static class C0101c extends a {

        /* renamed from: d  reason: collision with root package name */
        public int f2058d;

        /* renamed from: e  reason: collision with root package name */
        public int f2059e;

        /* renamed from: f  reason: collision with root package name */
        public int[] f2060f;

        /* renamed from: g  reason: collision with root package name */
        public e f2061g;

        public C0101c(int i2, int i3, int i4, int i5, BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > i2) {
                throw new IllegalArgumentException("x value invalid in F2m field element");
            }
            if (i4 == 0 && i5 == 0) {
                this.f2058d = 2;
                this.f2060f = new int[]{i3};
            } else if (i4 >= i5) {
                throw new IllegalArgumentException("k2 must be smaller than k3");
            } else if (i4 > 0) {
                this.f2058d = 3;
                this.f2060f = new int[]{i3, i4, i5};
            } else {
                throw new IllegalArgumentException("k2 must be larger than 0");
            }
            this.f2059e = i2;
            this.f2061g = new e(bigInteger);
        }

        public C0101c(int i2, int[] iArr, e eVar) {
            this.f2059e = i2;
            this.f2058d = iArr.length == 1 ? 2 : 3;
            this.f2060f = iArr;
            this.f2061g = eVar;
        }

        public int a() {
            return this.f2061g.a();
        }

        public c a(c cVar) {
            e eVar = (e) this.f2061g.clone();
            e eVar2 = ((C0101c) cVar).f2061g;
            int b = eVar2.b();
            if (b != 0) {
                int i2 = b + 0;
                long[] jArr = eVar.x;
                if (i2 > jArr.length) {
                    long[] jArr2 = new long[i2];
                    System.arraycopy(jArr, 0, jArr2, 0, Math.min(jArr.length, i2));
                    eVar.x = jArr2;
                }
                e.a(eVar.x, 0, eVar2.x, 0, b);
            }
            return new C0101c(this.f2059e, this.f2060f, eVar);
        }

        public int b() {
            return this.f2059e;
        }

        public c b(c cVar) {
            return c(cVar.c());
        }

        public c c() {
            int i2;
            int i3 = this.f2059e;
            int[] iArr = this.f2060f;
            e eVar = this.f2061g;
            int a = eVar.a();
            if (a != 0) {
                if (a != 1) {
                    int i4 = (i3 + 63) >>> 6;
                    e eVar2 = new e(i4);
                    e.a(eVar2.x, 0, i3, i3, iArr);
                    e eVar3 = new e(i4);
                    eVar3.x[0] = 1;
                    e eVar4 = new e(i4);
                    int[] iArr2 = {a, i3 + 1};
                    e[] eVarArr = {(e) eVar.clone(), eVar2};
                    int[] iArr3 = {1, 0};
                    e[] eVarArr2 = {eVar3, eVar4};
                    int i5 = iArr2[1];
                    int i6 = iArr3[1];
                    int i7 = i5 - iArr2[0];
                    int i8 = 1;
                    while (true) {
                        if (i7 < 0) {
                            i7 = -i7;
                            iArr2[i8] = i5;
                            iArr3[i8] = i6;
                            i8 = 1 - i8;
                            i5 = iArr2[i8];
                            i6 = iArr3[i8];
                        }
                        i2 = 1 - i8;
                        eVarArr[i8].a(eVarArr[i2], iArr2[i2], i7);
                        int a2 = eVarArr[i8].a(i5);
                        if (a2 == 0) {
                            break;
                        }
                        int i9 = iArr3[i2];
                        eVarArr2[i8].a(eVarArr2[i2], i9, i7);
                        int i10 = i9 + i7;
                        if (i10 > i6) {
                            i6 = i10;
                        } else if (i10 == i6) {
                            i6 = eVarArr2[i8].a(i6);
                        }
                        i7 += a2 - i5;
                        i5 = a2;
                    }
                    eVar = eVarArr2[i2];
                }
                return new C0101c(i3, iArr, eVar);
            }
            throw new IllegalStateException();
        }

        public boolean d() {
            long[] jArr = this.f2061g.x;
            if (jArr[0] != 1) {
                return false;
            }
            for (int i2 = 1; i2 < jArr.length; i2++) {
                if (jArr[i2] != 0) {
                    return false;
                }
            }
            return true;
        }

        public boolean e() {
            long[] jArr = this.f2061g.x;
            for (long j2 : jArr) {
                if (j2 != 0) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0101c)) {
                return false;
            }
            C0101c cVar = (C0101c) obj;
            if (this.f2059e != cVar.f2059e || this.f2058d != cVar.f2058d || !Arrays.equals(this.f2060f, cVar.f2060f) || !this.f2061g.equals(cVar.f2061g)) {
                return false;
            }
            return true;
        }

        public c f() {
            return this;
        }

        public c g() {
            int i2 = this.f2059e;
            int[] iArr = this.f2060f;
            e eVar = this.f2061g;
            int b = eVar.b();
            if (b != 0) {
                int i3 = b << 1;
                long[] jArr = new long[i3];
                int i4 = 0;
                while (i4 < i3) {
                    long j2 = eVar.x[i4 >>> 1];
                    int i5 = i4 + 1;
                    jArr[i4] = e.b((int) j2);
                    i4 = i5 + 1;
                    jArr[i5] = e.b((int) (j2 >>> 32));
                }
                eVar = new e(jArr, 0, e.b(jArr, 0, i3, i2, iArr));
            }
            return new C0101c(i2, iArr, eVar);
        }

        public BigInteger h() {
            e eVar = this.f2061g;
            int b = eVar.b();
            if (b == 0) {
                return a.a;
            }
            int i2 = b - 1;
            long j2 = eVar.x[i2];
            byte[] bArr = new byte[8];
            int i3 = 0;
            boolean z = false;
            for (int i4 = 7; i4 >= 0; i4--) {
                byte b2 = (byte) ((int) (j2 >>> (i4 * 8)));
                if (z || b2 != 0) {
                    bArr[i3] = b2;
                    i3++;
                    z = true;
                }
            }
            byte[] bArr2 = new byte[((i2 * 8) + i3)];
            for (int i5 = 0; i5 < i3; i5++) {
                bArr2[i5] = bArr[i5];
            }
            for (int i6 = b - 2; i6 >= 0; i6--) {
                long j3 = eVar.x[i6];
                int i7 = 7;
                while (i7 >= 0) {
                    bArr2[i3] = (byte) ((int) (j3 >>> (i7 * 8)));
                    i7--;
                    i3++;
                }
            }
            return new BigInteger(1, bArr2);
        }

        public int hashCode() {
            return (this.f2061g.hashCode() ^ this.f2059e) ^ k.b.c.e.a.b(this.f2060f);
        }

        public c c(c cVar) {
            long[] jArr;
            int[] iArr;
            long[] jArr2;
            int i2;
            int i3 = this.f2059e;
            int[] iArr2 = this.f2060f;
            e eVar = this.f2061g;
            e eVar2 = ((C0101c) cVar).f2061g;
            int a = eVar.a();
            if (a != 0) {
                int a2 = eVar2.a();
                if (a2 != 0) {
                    if (a > a2) {
                        int i4 = a2;
                        a2 = a;
                        a = i4;
                    } else {
                        e eVar3 = eVar2;
                        eVar2 = eVar;
                        eVar = eVar3;
                    }
                    int i5 = (a + 63) >>> 6;
                    int i6 = (a2 + 63) >>> 6;
                    int i7 = ((a + a2) + 62) >>> 6;
                    boolean z = true;
                    if (i5 == 1) {
                        long j2 = eVar2.x[0];
                        if (j2 != 1) {
                            long[] jArr3 = new long[i7];
                            long[] jArr4 = eVar.x;
                            if ((j2 & 1) != 0) {
                                e.a(jArr3, 0, jArr4, 0, i6);
                            }
                            int i8 = 1;
                            while (true) {
                                j2 >>>= z ? 1 : 0;
                                if (j2 == 0) {
                                    break;
                                }
                                if ((j2 & 1) != 0) {
                                    long a3 = e.a(jArr3, 0, jArr4, 0, i6, i8);
                                    if (a3 != 0) {
                                        int i9 = i6 + 0;
                                        jArr3[i9] = a3 ^ jArr3[i9];
                                    }
                                }
                                i8++;
                                z = true;
                            }
                            eVar = new e(jArr3, 0, e.b(jArr3, 0, i7, i3, iArr2));
                        }
                    } else {
                        int i10 = ((a2 + 7) + 63) >>> 6;
                        int[] iArr3 = new int[16];
                        int i11 = i10 << 4;
                        long[] jArr5 = new long[i11];
                        iArr3[1] = i10;
                        System.arraycopy(eVar.x, 0, jArr5, i10, i6);
                        int i12 = 2;
                        int i13 = i10;
                        for (int i14 = 16; i12 < i14; i14 = 16) {
                            i13 += i10;
                            iArr3[i12] = i13;
                            if ((i12 & 1) == 0) {
                                jArr2 = jArr5;
                                i2 = i11;
                                iArr = iArr3;
                                e.c(jArr5, i13 >>> 1, jArr5, i13, i10, 1);
                            } else {
                                jArr2 = jArr5;
                                i2 = i11;
                                iArr = iArr3;
                                int i15 = i13 - i10;
                                for (int i16 = 0; i16 < i10; i16++) {
                                    jArr2[i13 + i16] = jArr2[i10 + i16] ^ jArr2[i15 + i16];
                                }
                            }
                            i12++;
                            i11 = i2;
                            jArr5 = jArr2;
                            iArr3 = iArr;
                        }
                        long[] jArr6 = jArr5;
                        int i17 = i11;
                        int[] iArr4 = iArr3;
                        long[] jArr7 = new long[i17];
                        e.c(jArr6, 0, jArr7, 0, i17, 4);
                        long[] jArr8 = eVar2.x;
                        int i18 = i7 << 3;
                        long[] jArr9 = new long[i18];
                        int i19 = 0;
                        while (i19 < i5) {
                            long j3 = jArr8[i19];
                            int i20 = i19;
                            while (true) {
                                long j4 = j3 >>> 4;
                                int i21 = iArr4[((int) j3) & 15];
                                int i22 = iArr4[((int) j4) & 15];
                                jArr = jArr8;
                                for (int i23 = 0; i23 < i10; i23++) {
                                    int i24 = i20 + i23;
                                    jArr9[i24] = jArr9[i24] ^ (jArr6[i21 + i23] ^ jArr7[i22 + i23]);
                                }
                                j3 = j4 >>> 4;
                                if (j3 == 0) {
                                    break;
                                }
                                i20 += i7;
                                jArr8 = jArr;
                            }
                            i19++;
                            jArr8 = jArr;
                        }
                        while (true) {
                            i18 -= i7;
                            if (i18 == 0) {
                                break;
                            }
                            e.a(jArr9, i18 - i7, jArr9, i18, i7, 8);
                        }
                        eVar2 = new e(jArr9, 0, e.b(jArr9, 0, i7, i3, iArr2));
                    }
                }
                eVar = eVar2;
            }
            return new C0101c(i3, iArr2, eVar);
        }
    }
}
