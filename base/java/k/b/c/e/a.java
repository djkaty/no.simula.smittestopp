package k.b.c.e;

import com.microsoft.identity.common.internal.providers.microsoft.MicrosoftClientAssertion;
import com.microsoft.identity.common.internal.ui.browser.Browser;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.math.BigInteger;
import k.b.a.a1;
import k.b.a.i2.f;
import k.b.a.o;
import k.b.a.p;
import k.b.a.u;
import k.b.a.y0;
import k.b.c.c.d;
import k.b.c.c.g;
import k.b.i.a.h;
import k.b.i.a.i;
import k.b.i.a.j;
import k.b.i.a.k;
import k.b.i.a.l;
import k.b.i.a.m;
import k.b.i.a.n;
import k.b.i.b.e.c;
import k.b.i.b.g.g;
import k.b.i.b.g.i;
import k.b.i.b.g.o;
import k.b.i.b.g.r;
import k.b.i.b.g.s;
import k.b.i.b.g.t;
import k.b.i.b.g.w;
import k.b.i.b.g.x;
import k.b.i.b.g.y;
import k.b.i.b.g.z;
import k.b.i.d.a.b;
import k.b.i.d.a.e;

public final class a {
    public static int a(int i2, int i3) {
        if (i3 == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        while (b(i2) >= b(i3)) {
            i2 ^= i3 << (b(i2) - b(i3));
        }
        return i2;
    }

    public static int a(int i2, int i3, int i4) {
        int a = a(i2, i4);
        int a2 = a(i3, i4);
        int i5 = 0;
        if (a2 != 0) {
            int b = 1 << b(i4);
            while (a != 0) {
                if (((byte) (a & 1)) == 1) {
                    i5 ^= a2;
                }
                a >>>= 1;
                a2 <<= 1;
                if (a2 >= b) {
                    a2 ^= i4;
                }
            }
        }
        return i5;
    }

    public static int a(int i2, int[] iArr, int[] iArr2) {
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            long j3 = ((((long) iArr2[i3]) & 4294967295L) - (4294967295L & ((long) iArr[i3]))) + j2;
            iArr2[i3] = (int) j3;
            j2 = j3 >> 32;
        }
        return (int) j2;
    }

    public static int a(byte[] bArr, int i2) {
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        byte b = (bArr[i2] & 255) | ((bArr[i3] & 255) << 8);
        return ((bArr[i4 + 1] & 255) << 24) | b | ((bArr[i4] & 255) << 16);
    }

    public static long a(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            long j2 = 0;
            for (int i4 = i2; i4 < i2 + i3; i4++) {
                j2 = (j2 << 8) | ((long) (bArr[i4] & 255));
            }
            return j2;
        }
        throw new NullPointerException("in == null");
    }

    public static Object a(byte[] bArr, Class cls) {
        z zVar = new z(cls, new ByteArrayInputStream(bArr));
        Object readObject = zVar.readObject();
        if (zVar.available() != 0) {
            throw new IOException("unexpected data found at end of ObjectInputStream");
        } else if (cls.isInstance(readObject)) {
            return readObject;
        } else {
            throw new IOException("unexpected class found in ObjectInputStream");
        }
    }

    public static k.b.a.l2.a a(String str) {
        if (str.equals(MicrosoftClientAssertion.THUMBPRINT_ALGORITHM)) {
            return new k.b.a.l2.a(k.b.a.h2.a.a, y0.x);
        }
        if (str.equals("SHA-224")) {
            return new k.b.a.l2.a(k.b.a.g2.a.f1965f, y0.x);
        }
        if (str.equals("SHA-256")) {
            return new k.b.a.l2.a(k.b.a.g2.a.f1962c, y0.x);
        }
        if (str.equals("SHA-384")) {
            return new k.b.a.l2.a(k.b.a.g2.a.f1963d, y0.x);
        }
        if (str.equals(Browser.DIGEST_SHA_512)) {
            return new k.b.a.l2.a(k.b.a.g2.a.f1964e, y0.x);
        }
        throw new IllegalArgumentException(e.a.a.a.a.b("unrecognised digest algorithm: ", str));
    }

    public static k.b.i.d.a.a a(b bVar, e eVar) {
        b bVar2 = bVar;
        e eVar2 = eVar;
        Class<int> cls = int.class;
        int i2 = bVar2.a;
        int i3 = 1 << i2;
        int b = eVar.b();
        int[] iArr = new int[2];
        iArr[1] = i3;
        iArr[0] = b;
        int[][] iArr2 = (int[][]) Array.newInstance(cls, iArr);
        int[] iArr3 = new int[2];
        iArr3[1] = i3;
        iArr3[0] = b;
        int[][] iArr4 = (int[][]) Array.newInstance(cls, iArr3);
        for (int i4 = 0; i4 < i3; i4++) {
            int[] iArr5 = iArr4[0];
            int[] iArr6 = eVar2.f2180c;
            int i5 = eVar2.b;
            int i6 = iArr6[i5];
            while (true) {
                i5--;
                if (i5 < 0) {
                    break;
                }
                i6 = eVar2.a.a(i6, i4) ^ eVar2.f2180c[i5];
            }
            iArr5[i4] = bVar2.a(i6);
        }
        for (int i7 = 1; i7 < b; i7++) {
            for (int i8 = 0; i8 < i3; i8++) {
                iArr4[i7][i8] = bVar2.a(iArr4[i7 - 1][i8], i8);
            }
        }
        for (int i9 = 0; i9 < b; i9++) {
            for (int i10 = 0; i10 < i3; i10++) {
                for (int i11 = 0; i11 <= i9; i11++) {
                    iArr2[i9][i10] = bVar2.a(iArr4[i11][i10], eVar2.a((b + i11) - i9)) ^ iArr2[i9][i10];
                }
            }
        }
        int[] iArr7 = new int[2];
        iArr7[1] = (i3 + 31) >>> 5;
        iArr7[0] = b * i2;
        int[][] iArr8 = (int[][]) Array.newInstance(cls, iArr7);
        for (int i12 = 0; i12 < i3; i12++) {
            int i13 = i12 >>> 5;
            int i14 = 1 << (i12 & 31);
            for (int i15 = 0; i15 < b; i15++) {
                int i16 = iArr2[i15][i12];
                for (int i17 = 0; i17 < i2; i17++) {
                    if (((i16 >>> i17) & 1) != 0) {
                        int[] iArr9 = iArr8[(((i15 + 1) * i2) - i17) - 1];
                        iArr9[i13] = iArr9[i13] ^ i14;
                    }
                }
            }
        }
        return new k.b.i.d.a.a(i3, iArr8);
    }

    public static void a(int i2, byte[] bArr, int i3) {
        int i4 = i3 + 1;
        bArr[i3] = (byte) i2;
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        bArr[i5] = (byte) (i2 >>> 16);
        bArr[i5 + 1] = (byte) (i2 >>> 24);
    }

    public static void a(long j2, byte[] bArr, int i2) {
        b((int) (j2 >>> 32), bArr, i2);
        b((int) (j2 & 4294967295L), bArr, i2 + 4);
    }

    public static void a(byte[] bArr, byte[] bArr2, int i2) {
        if (bArr == null) {
            throw new NullPointerException("dst == null");
        } else if (bArr2 == null) {
            throw new NullPointerException("src == null");
        } else if (i2 < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        } else if (bArr2.length + i2 <= bArr.length) {
            for (int i3 = 0; i3 < bArr2.length; i3++) {
                bArr[i2 + i3] = bArr2[i3];
            }
        } else {
            throw new IllegalArgumentException("src length + offset must not be greater than size of destination");
        }
    }

    public static boolean a(int i2, long j2) {
        if (j2 >= 0) {
            return j2 < (1 << i2);
        }
        throw new IllegalStateException("index must not be negative");
    }

    public static boolean a(int i2, int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i3 = 1; i3 < i2; i3++) {
            if (iArr[i3] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(int[] iArr, int[] iArr2) {
        if (iArr.length != iArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = iArr.length - 1; length >= 0; length--) {
            z &= iArr[length] == iArr2[length];
        }
        return z;
    }

    public static boolean a(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z &= sArr[length] == sArr2[length];
        }
        return z;
    }

    public static boolean a(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z &= a(sArr[length], sArr2[length]);
        }
        return z;
    }

    public static boolean a(short[][][] sArr, short[][][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z &= a(sArr[length], sArr2[length]);
        }
        return z;
    }

    public static byte[] a(long j2, int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            bArr[i3] = (byte) ((int) j2);
            j2 >>>= 8;
        }
        return bArr;
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        Object clone;
        if (bArr == null) {
            clone = bArr2.clone();
        } else if (bArr2 == null) {
            clone = bArr.clone();
        } else {
            byte[] bArr3 = new byte[(bArr.length + bArr2.length)];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
            return bArr3;
        }
        return (byte[]) clone;
    }

    public static int[] a(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public static short[] a(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    public static byte[][] a(byte[][] bArr) {
        if (!c(bArr)) {
            byte[][] bArr2 = new byte[bArr.length][];
            for (int i2 = 0; i2 < bArr.length; i2++) {
                bArr2[i2] = new byte[bArr[i2].length];
                System.arraycopy(bArr[i2], 0, bArr2[i2], 0, bArr[i2].length);
            }
            return bArr2;
        }
        throw new NullPointerException("in has null pointers");
    }

    public static byte[][] a(short[][] sArr) {
        int length = sArr.length;
        int[] iArr = new int[2];
        iArr[1] = sArr[0].length;
        iArr[0] = length;
        byte[][] bArr = (byte[][]) Array.newInstance(byte.class, iArr);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr[0].length; i3++) {
                bArr[i2][i3] = (byte) sArr[i2][i3];
            }
        }
        return bArr;
    }

    public static byte[][][] a(short[][][] sArr) {
        int length = sArr.length;
        int length2 = sArr[0].length;
        int[] iArr = new int[3];
        iArr[2] = sArr[0][0].length;
        iArr[1] = length2;
        iArr[0] = length;
        byte[][][] bArr = (byte[][][]) Array.newInstance(byte.class, iArr);
        for (int i2 = 0; i2 < sArr.length; i2++) {
            for (int i3 = 0; i3 < sArr[0].length; i3++) {
                for (int i4 = 0; i4 < sArr[0][0].length; i4++) {
                    bArr[i2][i3][i4] = (byte) sArr[i2][i3][i4];
                }
            }
        }
        return bArr;
    }

    public static short[][][] a(byte[][][] bArr) {
        int length = bArr.length;
        int length2 = bArr[0].length;
        int[] iArr = new int[3];
        iArr[2] = bArr[0][0].length;
        iArr[1] = length2;
        iArr[0] = length;
        short[][][] sArr = (short[][][]) Array.newInstance(short.class, iArr);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            for (int i3 = 0; i3 < bArr[0].length; i3++) {
                for (int i4 = 0; i4 < bArr[0][0].length; i4++) {
                    sArr[i2][i3][i4] = (short) (bArr[i2][i3][i4] & 255);
                }
            }
        }
        return sArr;
    }

    public static int b(int i2) {
        int i3 = -1;
        while (i2 != 0) {
            i3++;
            i2 >>>= 1;
        }
        return i3;
    }

    public static int b(byte[] bArr, int i2) {
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        return (bArr[i4 + 1] & 255) | (bArr[i2] << 24) | ((bArr[i3] & 255) << 16) | ((bArr[i4] & 255) << 8);
    }

    public static int b(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int length = iArr.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 = (i2 * 257) ^ iArr[length];
        }
    }

    public static int b(short[][] sArr) {
        int i2 = 0;
        for (int i3 = 0; i3 != sArr.length; i3++) {
            i2 = (i2 * 257) + c(sArr[i3]);
        }
        return i2;
    }

    public static int b(short[][][] sArr) {
        int i2 = 0;
        for (int i3 = 0; i3 != sArr.length; i3++) {
            i2 = (i2 * 257) + b(sArr[i3]);
        }
        return i2;
    }

    public static void b(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) (i2 >>> 24);
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i2 >>> 16);
        int i5 = i4 + 1;
        bArr[i5] = (byte) (i2 >>> 8);
        bArr[i5 + 1] = (byte) i2;
    }

    public static byte[] b(byte[] bArr) {
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        throw new NullPointerException("in == null");
    }

    public static byte[] b(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            throw new NullPointerException("src == null");
        } else if (i2 < 0) {
            throw new IllegalArgumentException("offset hast to be >= 0");
        } else if (i3 < 0) {
            throw new IllegalArgumentException("length hast to be >= 0");
        } else if (i2 + i3 <= bArr.length) {
            byte[] bArr2 = new byte[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                bArr2[i4] = bArr[i2 + i4];
            }
            return bArr2;
        } else {
            throw new IllegalArgumentException("offset + length must not be greater then size of source array");
        }
    }

    public static byte[] b(short[] sArr) {
        byte[] bArr = new byte[sArr.length];
        for (int i2 = 0; i2 < sArr.length; i2++) {
            bArr[i2] = (byte) sArr[i2];
        }
        return bArr;
    }

    public static short[][] b(byte[][] bArr) {
        int length = bArr.length;
        int[] iArr = new int[2];
        iArr[1] = bArr[0].length;
        iArr[0] = length;
        short[][] sArr = (short[][]) Array.newInstance(short.class, iArr);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            for (int i3 = 0; i3 < bArr[0].length; i3++) {
                sArr[i2][i3] = (short) (bArr[i2][i3] & 255);
            }
        }
        return sArr;
    }

    public static int c(byte[] bArr, int i2) {
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        return (bArr[i4 + 1] << 24) | (bArr[i2] & 255) | ((bArr[i3] & 255) << 8) | ((bArr[i4] & 255) << 16);
    }

    public static int c(short[] sArr) {
        if (sArr == null) {
            return 0;
        }
        int length = sArr.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 = (i2 * 257) ^ (sArr[length] & 255);
        }
    }

    public static String c(int i2) {
        if (i2 == 5) {
            return "qTESLA-p-I";
        }
        if (i2 == 6) {
            return "qTESLA-p-III";
        }
        throw new IllegalArgumentException(e.a.a.a.a.a("unknown security category: ", i2));
    }

    public static void c(int i2, byte[] bArr, int i3) {
        bArr[i3] = (byte) i2;
        int i4 = i3 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        int i5 = i4 + 1;
        bArr[i5] = (byte) (i2 >>> 16);
        bArr[i5 + 1] = (byte) (i2 >>> 24);
    }

    public static boolean c(byte[][] bArr) {
        if (bArr == null) {
            return true;
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2 == null) {
                return true;
            }
        }
        return false;
    }

    public static short[] c(byte[] bArr) {
        short[] sArr = new short[bArr.length];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            sArr[i2] = (short) (bArr[i2] & 255);
        }
        return sArr;
    }

    public static int d(int i2) {
        int i3 = 0;
        while (true) {
            i2 >>= 1;
            if (i2 == 0) {
                return i3;
            }
            i3++;
        }
    }

    public static int d(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length;
        int i2 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            i2 = (i2 * 257) ^ bArr[length];
        }
    }

    public static long d(byte[] bArr, int i2) {
        return ((((long) c(bArr, i2 + 4)) & 4294967295L) << 32) | (((long) c(bArr, i2)) & 4294967295L);
    }

    public static k.b.c.d.a a(f fVar) {
        o oVar = fVar.y.x;
        o oVar2 = k.b.a.e2.a.D;
        String str = oVar.x;
        String str2 = oVar2.x;
        if (str.length() > str2.length() && str.charAt(str2.length()) == '.' && str.startsWith(str2)) {
            return new k.b.i.b.c.a(((Integer) k.b.i.b.f.b.f2102i.get(fVar.y.x)).intValue(), p.a((Object) fVar.f()).j());
        } else if (oVar.b(k.b.a.e2.a.f1955h)) {
            return new k.b.i.b.e.b(p.a((Object) fVar.f()).j(), k.b.i.b.f.b.a(h.a(fVar.y.y)));
        } else {
            if (oVar.b(k.b.a.e2.a.H)) {
                byte[] j2 = p.a((Object) fVar.f()).j();
                int length = j2.length / 2;
                short[] sArr = new short[length];
                for (int i2 = 0; i2 != length; i2++) {
                    int i3 = i2 * 2;
                    sArr[i2] = (short) (((j2[i3 + 1] & 255) << 8) | (j2[i3] & 255));
                }
                return new k.b.i.b.b.a(sArr);
            } else if (oVar.b(k.b.a.e2.a.f1959l)) {
                i a = i.a(fVar.y.y);
                o oVar3 = a.z.x;
                k.b.a.e f2 = fVar.f();
                m mVar = f2 instanceof m ? (m) f2 : f2 != null ? new m(u.a((Object) f2)) : null;
                try {
                    x.b bVar = new x.b(new w(a.y, k.b.i.b.f.b.a(oVar3)));
                    bVar.b = mVar.y;
                    bVar.f2167d = b(a(mVar.z));
                    bVar.f2168e = b(a(mVar.A));
                    bVar.f2169f = b(a(mVar.B));
                    bVar.f2170g = b(a(mVar.C));
                    if (mVar.x != 0) {
                        bVar.f2166c = mVar.D;
                    }
                    if (a(mVar.E) != null) {
                        k.b.i.b.g.a aVar = (k.b.i.b.g.a) a(a(mVar.E), k.b.i.b.g.a.class);
                        if (aVar != null) {
                            bVar.f2171h = new k.b.i.b.g.a(aVar, oVar3);
                        } else {
                            throw null;
                        }
                    }
                    return new x(bVar, (x.a) null);
                } catch (ClassNotFoundException e2) {
                    StringBuilder a2 = e.a.a.a.a.a("ClassNotFoundException processing BDS state: ");
                    a2.append(e2.getMessage());
                    throw new IOException(a2.toString());
                }
            } else if (oVar.b(k.b.i.a.e.f2077l)) {
                j a3 = j.a(fVar.y.y);
                o oVar4 = a3.A.x;
                try {
                    k.b.a.e f3 = fVar.f();
                    k kVar = f3 instanceof k ? (k) f3 : f3 != null ? new k(u.a((Object) f3)) : null;
                    s.b bVar2 = new s.b(new r(a3.y, a3.z, k.b.i.b.f.b.a(oVar4)));
                    bVar2.b = kVar.y;
                    bVar2.f2143d = b(a(kVar.A));
                    bVar2.f2144e = b(a(kVar.B));
                    bVar2.f2145f = b(a(kVar.C));
                    bVar2.f2146g = b(a(kVar.D));
                    if (kVar.x != 0) {
                        bVar2.f2142c = kVar.z;
                    }
                    if (a(kVar.E) != null) {
                        k.b.i.b.g.b a4 = ((k.b.i.b.g.b) a(a(kVar.E), k.b.i.b.g.b.class)).a(oVar4);
                        if (a4.y == 0) {
                            bVar2.f2147h = new k.b.i.b.g.b(a4, (1 << bVar2.a.f2134c) - 1);
                        } else {
                            bVar2.f2147h = a4;
                        }
                    }
                    return new s(bVar2, (s.a) null);
                } catch (ClassNotFoundException e3) {
                    StringBuilder a5 = e.a.a.a.a.a("ClassNotFoundException processing BDS state: ");
                    a5.append(e3.getMessage());
                    throw new IOException(a5.toString());
                }
            } else {
                throw new RuntimeException("algorithm identifier in private key not recognised");
            }
        }
    }

    public static f a(k.b.c.d.a aVar, k.b.a.x xVar) {
        k.b.c.d.a aVar2 = aVar;
        if (aVar2 instanceof k.b.i.b.c.a) {
            k.b.i.b.c.a aVar3 = (k.b.i.b.c.a) aVar2;
            return new f(k.b.i.b.f.b.a(aVar3.a), new a1(aVar3.a()), xVar, (byte[]) null);
        } else if (aVar2 instanceof k.b.i.b.e.b) {
            k.b.i.b.e.b bVar = (k.b.i.b.e.b) aVar2;
            return new f(new k.b.a.l2.a(k.b.i.a.e.f2070e, new h(k.b.i.b.f.b.a(bVar.a))), new a1(bVar.a()), (k.b.a.x) null, (byte[]) null);
        } else {
            if (aVar2 instanceof k.b.i.b.b.a) {
                k.b.a.l2.a aVar4 = new k.b.a.l2.a(k.b.i.a.e.f2071f);
                short[] a = ((k.b.i.b.b.a) aVar2).a();
                byte[] bArr = new byte[(a.length * 2)];
                for (int i2 = 0; i2 != a.length; i2++) {
                    short s = a[i2];
                    int i3 = i2 * 2;
                    bArr[i3] = (byte) s;
                    bArr[i3 + 1] = (byte) (s >>> 8);
                }
                return new f(aVar4, new a1(bArr), (k.b.a.x) null, (byte[]) null);
            } else if (aVar2 instanceof x) {
                x xVar2 = (x) aVar2;
                k.b.a.l2.a aVar5 = new k.b.a.l2.a(k.b.i.a.e.f2072g, new i(xVar2.b.b, k.b.i.b.f.b.b(xVar2.a)));
                byte[] a2 = xVar2.a();
                w wVar = xVar2.b;
                int i4 = wVar.f2159g;
                int i5 = wVar.b;
                int a3 = (int) a(a2, 0, 4);
                if (a(i5, (long) a3)) {
                    byte[] b = b(a2, 4, i4);
                    int i6 = i4 + 4;
                    byte[] b2 = b(a2, i6, i4);
                    int i7 = i6 + i4;
                    byte[] b3 = b(a2, i7, i4);
                    int i8 = i7 + i4;
                    byte[] b4 = b(a2, i8, i4);
                    int i9 = i8 + i4;
                    byte[] b5 = b(a2, i9, a2.length - i9);
                    try {
                        int i10 = ((k.b.i.b.g.a) a(b5, k.b.i.b.g.a.class)).I;
                        return new f(aVar5, i10 != (1 << i5) - 1 ? new m(a3, b, b2, b3, b4, b5, i10) : new m(a3, b, b2, b3, b4, b5), (k.b.a.x) null, (byte[]) null);
                    } catch (ClassNotFoundException e2) {
                        StringBuilder a4 = e.a.a.a.a.a("cannot parse BDS: ");
                        a4.append(e2.getMessage());
                        throw new IOException(a4.toString());
                    }
                } else {
                    throw new IllegalArgumentException("index out of bounds");
                }
            } else if (aVar2 instanceof s) {
                s sVar = (s) aVar2;
                o oVar = k.b.i.a.e.f2077l;
                r rVar = sVar.b;
                k.b.a.l2.a aVar6 = new k.b.a.l2.a(oVar, new j(rVar.f2134c, rVar.f2135d, k.b.i.b.f.b.b(sVar.a)));
                byte[] a5 = sVar.a();
                r rVar2 = sVar.b;
                int i11 = rVar2.b.f2159g;
                int i12 = rVar2.f2134c;
                int i13 = (i12 + 7) / 8;
                long a6 = (long) ((int) a(a5, 0, i13));
                if (a(i12, a6)) {
                    int i14 = i13 + 0;
                    byte[] b6 = b(a5, i14, i11);
                    int i15 = i14 + i11;
                    byte[] b7 = b(a5, i15, i11);
                    int i16 = i15 + i11;
                    byte[] b8 = b(a5, i16, i11);
                    int i17 = i16 + i11;
                    byte[] b9 = b(a5, i17, i11);
                    int i18 = i17 + i11;
                    byte[] b10 = b(a5, i18, a5.length - i18);
                    try {
                        long j2 = ((k.b.i.b.g.b) a(b10, k.b.i.b.g.b.class)).y;
                        byte[] bArr2 = b10;
                        if (j2 != (1 << i12) - 1) {
                            long j3 = j2;
                        } else {
                            k kVar = new k(a6, b6, b7, b8, b9, bArr2);
                        }
                        return new f(aVar6, kVar, (k.b.a.x) null, (byte[]) null);
                    } catch (ClassNotFoundException e3) {
                        StringBuilder a7 = e.a.a.a.a.a("cannot parse BDSStateMap: ");
                        a7.append(e3.getMessage());
                        throw new IOException(a7.toString());
                    }
                } else {
                    throw new IllegalArgumentException("index out of bounds");
                }
            } else {
                throw new IOException("key parameters not recognized");
            }
        }
    }

    public static k.b.a.l2.s a(k.b.c.d.a aVar) {
        if (aVar instanceof k.b.i.b.c.b) {
            k.b.i.b.c.b bVar = (k.b.i.b.c.b) aVar;
            return new k.b.a.l2.s(k.b.i.b.f.b.a(bVar.a), bVar.a());
        } else if (aVar instanceof c) {
            c cVar = (c) aVar;
            return new k.b.a.l2.s(new k.b.a.l2.a(k.b.i.a.e.f2070e, new h(k.b.i.b.f.b.a(cVar.a))), cVar.a());
        } else if (aVar instanceof k.b.i.b.b.b) {
            return new k.b.a.l2.s(new k.b.a.l2.a(k.b.i.a.e.f2071f), ((k.b.i.b.b.b) aVar).a());
        } else {
            if (aVar instanceof y) {
                y yVar = (y) aVar;
                return new k.b.a.l2.s(new k.b.a.l2.a(k.b.i.a.e.f2072g, new i(yVar.b.b, k.b.i.b.f.b.b(yVar.a))), (k.b.a.e) new n(b(yVar.f2175e), b(yVar.f2174d)));
            } else if (aVar instanceof t) {
                t tVar = (t) aVar;
                o oVar = k.b.i.a.e.f2077l;
                r rVar = tVar.b;
                return new k.b.a.l2.s(new k.b.a.l2.a(oVar, new j(rVar.f2134c, rVar.f2135d, k.b.i.b.f.b.b(tVar.a))), (k.b.a.e) new l(b(tVar.f2152e), b(tVar.f2151d)));
            } else {
                throw new IOException("key parameters not recognized");
            }
        }
    }

    public static int[] a(int i2, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i2) {
            throw new IllegalArgumentException();
        }
        int[] iArr = new int[((i2 + 31) >> 5)];
        int i3 = 0;
        while (bigInteger.signum() != 0) {
            iArr[i3] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i3++;
        }
        return iArr;
    }

    public static k.b.c.a a(k.b.a.l2.a aVar) {
        if (aVar.x.b(k.b.a.h2.a.a)) {
            return new k.b.c.c.c();
        }
        if (aVar.x.b(k.b.a.g2.a.f1965f)) {
            return new d();
        }
        if (aVar.x.b(k.b.a.g2.a.f1962c)) {
            return new k.b.c.c.e();
        }
        if (aVar.x.b(k.b.a.g2.a.f1963d)) {
            return new k.b.c.c.f();
        }
        if (aVar.x.b(k.b.a.g2.a.f1964e)) {
            return new g();
        }
        StringBuilder a = e.a.a.a.a.a("unrecognised OID in digest algorithm identifier: ");
        a.append(aVar.x);
        throw new IllegalArgumentException(a.toString());
    }

    public static void a(int[] iArr, int i2, int[] iArr2, int[] iArr3) {
        if (i2 < 0) {
            int length = iArr.length;
            long j2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                long j3 = (((long) iArr2[i3]) & 4294967295L) + (4294967295L & ((long) iArr[i3])) + j2;
                iArr3[i3] = (int) j3;
                j2 = j3 >>> 32;
            }
            return;
        }
        System.arraycopy(iArr2, 0, iArr3, 0, iArr.length);
    }

    public static int a(int[] iArr, int[] iArr2, int i2, int[] iArr3, int i3) {
        int length = iArr.length;
        int i4 = 0;
        while (iArr2[0] == 0) {
            int i5 = i2;
            int i6 = 0;
            while (true) {
                i5--;
                if (i5 < 0) {
                    break;
                }
                int i7 = iArr2[i5];
                iArr2[i5] = i6;
                i6 = i7;
            }
            i4 += 32;
        }
        int i8 = iArr2[0];
        int i9 = 0;
        while ((i8 & 1) == 0) {
            i8 >>>= 1;
            i9++;
        }
        if (i9 > 0) {
            int i10 = 0;
            while (true) {
                i2--;
                if (i2 < 0) {
                    break;
                }
                int i11 = iArr2[i2];
                iArr2[i2] = (i10 << (-i9)) | (i11 >>> i9);
                i10 = i11;
            }
            i4 += i9;
        }
        for (int i12 = 0; i12 < i4; i12++) {
            if ((iArr3[0] & 1) != 0) {
                if (i3 < 0) {
                    long j2 = 0;
                    for (int i13 = 0; i13 < length; i13++) {
                        long j3 = (((long) iArr[i13]) & 4294967295L) + (4294967295L & ((long) iArr3[i13])) + j2;
                        iArr3[i13] = (int) j3;
                        j2 = j3 >>> 32;
                    }
                    i3 += (int) j2;
                } else {
                    i3 = a(length, iArr, iArr3) + i3;
                }
            }
            int i14 = i3;
            int i15 = length;
            while (true) {
                i15--;
                if (i15 < 0) {
                    break;
                }
                int i16 = iArr3[i15];
                iArr3[i15] = (i14 << 31) | (i16 >>> 1);
                i14 = i16;
            }
        }
        return i3;
    }

    public static k.b.i.b.g.u a(k.b.i.b.g.k kVar, k.b.i.b.g.n nVar, k.b.i.b.g.i iVar) {
        double d2;
        if (nVar == null) {
            throw new NullPointerException("publicKey == null");
        } else if (iVar != null) {
            int i2 = kVar.a.f2126d;
            byte[][] a = a(nVar.a);
            k.b.i.b.g.u[] uVarArr = new k.b.i.b.g.u[a.length];
            for (int i3 = 0; i3 < a.length; i3++) {
                uVarArr[i3] = new k.b.i.b.g.u(0, a[i3]);
            }
            i.b bVar = (i.b) ((i.b) new i.b().b(iVar.a)).a(iVar.b);
            bVar.f2113e = iVar.f2110e;
            bVar.f2114f = 0;
            bVar.f2115g = iVar.f2112g;
            o.a a2 = bVar.a(iVar.f2131d);
            while (true) {
                k.b.i.b.g.i iVar2 = (k.b.i.b.g.i) ((i.b) a2).b();
                if (i2 <= 1) {
                    return uVarArr[0];
                }
                int i4 = 0;
                while (true) {
                    d2 = (double) (i2 / 2);
                    if (i4 >= ((int) Math.floor(d2))) {
                        break;
                    }
                    i.b bVar2 = (i.b) ((i.b) new i.b().b(iVar2.a)).a(iVar2.b);
                    bVar2.f2113e = iVar2.f2110e;
                    bVar2.f2114f = iVar2.f2111f;
                    bVar2.f2115g = i4;
                    iVar2 = (k.b.i.b.g.i) ((i.b) bVar2.a(iVar2.f2131d)).b();
                    int i5 = i4 * 2;
                    uVarArr[i4] = a(kVar, uVarArr[i5], uVarArr[i5 + 1], (k.b.i.b.g.o) iVar2);
                    i4++;
                }
                if (i2 % 2 == 1) {
                    uVarArr[(int) Math.floor(d2)] = uVarArr[i2 - 1];
                }
                i2 = (int) Math.ceil(((double) i2) / 2.0d);
                i.b bVar3 = (i.b) ((i.b) new i.b().b(iVar2.a)).a(iVar2.b);
                bVar3.f2113e = iVar2.f2110e;
                bVar3.f2114f = iVar2.f2111f + 1;
                bVar3.f2115g = iVar2.f2112g;
                a2 = bVar3.a(iVar2.f2131d);
            }
        } else {
            throw new NullPointerException("address == null");
        }
    }

    public static k.b.i.b.g.u a(k.b.i.b.g.k kVar, k.b.i.b.g.u uVar, k.b.i.b.g.u uVar2, k.b.i.b.g.o oVar) {
        if (uVar == null) {
            throw new NullPointerException("left == null");
        } else if (uVar2 == null) {
            throw new NullPointerException("right == null");
        } else if (uVar.x != uVar2.x) {
            throw new IllegalStateException("height of both nodes must be equal");
        } else if (oVar != null) {
            byte[] a = a(kVar.f2123d);
            if (oVar instanceof k.b.i.b.g.i) {
                k.b.i.b.g.i iVar = (k.b.i.b.g.i) oVar;
                i.b bVar = (i.b) ((i.b) new i.b().b(iVar.a)).a(iVar.b);
                bVar.f2113e = iVar.f2110e;
                bVar.f2114f = iVar.f2111f;
                bVar.f2115g = iVar.f2112g;
                oVar = (k.b.i.b.g.i) ((i.b) bVar.a(0)).b();
            } else if (oVar instanceof k.b.i.b.g.g) {
                k.b.i.b.g.g gVar = (k.b.i.b.g.g) oVar;
                g.b bVar2 = (g.b) ((g.b) new g.b().b(gVar.a)).a(gVar.b);
                bVar2.f2108e = gVar.f2106f;
                bVar2.f2109f = gVar.f2107g;
                oVar = (k.b.i.b.g.g) ((g.b) bVar2.a(0)).b();
            }
            byte[] a2 = kVar.b.a(a, oVar.a());
            if (oVar instanceof k.b.i.b.g.i) {
                k.b.i.b.g.i iVar2 = (k.b.i.b.g.i) oVar;
                i.b bVar3 = (i.b) ((i.b) new i.b().b(iVar2.a)).a(iVar2.b);
                bVar3.f2113e = iVar2.f2110e;
                bVar3.f2114f = iVar2.f2111f;
                bVar3.f2115g = iVar2.f2112g;
                oVar = (k.b.i.b.g.i) ((i.b) bVar3.a(1)).b();
            } else if (oVar instanceof k.b.i.b.g.g) {
                k.b.i.b.g.g gVar2 = (k.b.i.b.g.g) oVar;
                g.b bVar4 = (g.b) ((g.b) new g.b().b(gVar2.a)).a(gVar2.b);
                bVar4.f2108e = gVar2.f2106f;
                bVar4.f2109f = gVar2.f2107g;
                oVar = (k.b.i.b.g.g) ((g.b) bVar4.a(1)).b();
            }
            byte[] a3 = kVar.b.a(a, oVar.a());
            if (oVar instanceof k.b.i.b.g.i) {
                k.b.i.b.g.i iVar3 = (k.b.i.b.g.i) oVar;
                i.b bVar5 = (i.b) ((i.b) new i.b().b(iVar3.a)).a(iVar3.b);
                bVar5.f2113e = iVar3.f2110e;
                bVar5.f2114f = iVar3.f2111f;
                bVar5.f2115g = iVar3.f2112g;
                oVar = (k.b.i.b.g.i) ((i.b) bVar5.a(2)).b();
            } else if (oVar instanceof k.b.i.b.g.g) {
                k.b.i.b.g.g gVar3 = (k.b.i.b.g.g) oVar;
                g.b bVar6 = (g.b) ((g.b) new g.b().b(gVar3.a)).a(gVar3.b);
                bVar6.f2108e = gVar3.f2106f;
                bVar6.f2109f = gVar3.f2107g;
                oVar = (k.b.i.b.g.g) ((g.b) bVar6.a(2)).b();
            }
            byte[] a4 = kVar.b.a(a, oVar.a());
            int i2 = kVar.a.b;
            int i3 = i2 * 2;
            byte[] bArr = new byte[i3];
            for (int i4 = 0; i4 < i2; i4++) {
                bArr[i4] = (byte) (uVar.a()[i4] ^ a3[i4]);
            }
            for (int i5 = 0; i5 < i2; i5++) {
                bArr[i5 + i2] = (byte) (uVar2.a()[i5] ^ a4[i5]);
            }
            k.b.i.b.g.h hVar = kVar.b;
            if (hVar != null) {
                int length = a2.length;
                int i6 = hVar.b;
                if (length != i6) {
                    throw new IllegalArgumentException("wrong key length");
                } else if (i3 == i6 * 2) {
                    return new k.b.i.b.g.u(uVar.x, hVar.a(1, a2, bArr));
                } else {
                    throw new IllegalArgumentException("wrong in length");
                }
            } else {
                throw null;
            }
        } else {
            throw new NullPointerException("address == null");
        }
    }

    public static k.c.a.a.a.k a(int i2) {
        if (i2 == 4 || i2 == 5) {
            return new k.c.a.a.a.p(i2);
        }
        return new k.c.a.a.a.k(i2);
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static void a(String str, boolean z) {
        int i2;
        try {
            int length = str.getBytes("UTF-8").length;
            boolean z2 = false;
            if (length < 1 || length > 65535) {
                throw new IllegalArgumentException(String.format("Invalid topic length, should be in range[%d, %d]!", new Object[]{1, 65535}));
            } else if (z) {
                String[] strArr = {"#", "+"};
                boolean z3 = false;
                for (int i3 = 0; i3 < 2; i3++) {
                    z3 = z3 || strArr[i3].equals(str);
                }
                if (!z3) {
                    if (a((CharSequence) str) || a((CharSequence) "#")) {
                        i2 = 0;
                    } else {
                        int i4 = 0;
                        i2 = 0;
                        while (true) {
                            int indexOf = str.toString().indexOf("#".toString(), i4);
                            if (indexOf == -1) {
                                break;
                            }
                            i2++;
                            i4 = indexOf + "#".length();
                        }
                    }
                    if (i2 > 1 || (str.contains("#") && !str.endsWith("/#"))) {
                        throw new IllegalArgumentException("Invalid usage of multi-level wildcard in topic string: " + str);
                    }
                    char charAt = "+".charAt(0);
                    char charAt2 = "/".charAt(0);
                    char[] charArray = str.toCharArray();
                    int length2 = charArray.length;
                    int i5 = 0;
                    while (i5 < length2) {
                        int i6 = i5 - 1;
                        char c2 = i6 >= 0 ? charArray[i6] : 0;
                        int i7 = i5 + 1;
                        char c3 = i7 < length2 ? charArray[i7] : 0;
                        if (charArray[i5] != charAt || ((c2 == charAt2 || c2 == 0) && (c3 == charAt2 || c3 == 0))) {
                            i5 = i7;
                        } else {
                            throw new IllegalArgumentException(String.format("Invalid usage of single-level wildcard in topic string '%s'!", new Object[]{str}));
                        }
                    }
                }
            } else {
                char[] charArray2 = "#+".toCharArray();
                if (!a((CharSequence) str)) {
                    if (!(charArray2 == null || charArray2.length == 0)) {
                        int length3 = str.length();
                        int length4 = charArray2.length;
                        int i8 = length3 - 1;
                        int i9 = length4 - 1;
                        int i10 = 0;
                        loop3:
                        while (true) {
                            if (i10 >= length3) {
                                break;
                            }
                            char charAt3 = str.charAt(i10);
                            int i11 = 0;
                            while (i11 < length4) {
                                if (charArray2[i11] != charAt3 || (Character.isHighSurrogate(charAt3) && i11 != i9 && (i10 >= i8 || charArray2[i11 + 1] != str.charAt(i10 + 1)))) {
                                    i11++;
                                }
                            }
                            i10++;
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    throw new IllegalArgumentException("The topic name MUST NOT contain any wildcard characters (#+)");
                }
            }
        } catch (UnsupportedEncodingException e2) {
            throw new IllegalStateException(e2.getMessage());
        }
    }
}
