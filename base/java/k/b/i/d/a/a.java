package k.b.i.d.a;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.lang.reflect.Array;

public class a {
    public int a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int[][] f2178c;

    /* renamed from: d  reason: collision with root package name */
    public int f2179d;

    public a(int i2, int[][] iArr) {
        if (iArr[0].length == ((i2 + 31) >> 5)) {
            this.b = i2;
            this.a = iArr.length;
            this.f2179d = iArr[0].length;
            int i3 = i2 & 31;
            int i4 = i3 == 0 ? -1 : (1 << i3) - 1;
            for (int i5 = 0; i5 < this.a; i5++) {
                int[] iArr2 = iArr[i5];
                int i6 = this.f2179d - 1;
                iArr2[i6] = iArr2[i6] & i4;
            }
            this.f2178c = iArr;
            return;
        }
        throw new ArithmeticException("Int array does not match given number of columns.");
    }

    public byte[] a() {
        int i2 = this.a;
        int i3 = 8;
        byte[] bArr = new byte[((((this.b + 7) >>> 3) * i2) + 8)];
        k.b.c.e.a.a(i2, bArr, 0);
        k.b.c.e.a.a(this.b, bArr, 4);
        int i4 = this.b;
        int i5 = i4 >>> 5;
        int i6 = i4 & 31;
        for (int i7 = 0; i7 < this.a; i7++) {
            int i8 = 0;
            while (i8 < i5) {
                k.b.c.e.a.a(this.f2178c[i7][i8], bArr, i3);
                i8++;
                i3 += 4;
            }
            int i9 = 0;
            while (i9 < i6) {
                bArr[i3] = (byte) ((this.f2178c[i7][i5] >>> i9) & 255);
                i9 += 8;
                i3++;
            }
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.a != aVar.a || this.b != aVar.b || this.f2179d != aVar.f2179d) {
            return false;
        }
        for (int i2 = 0; i2 < this.a; i2++) {
            if (!k.b.c.e.a.a(this.f2178c[i2], aVar.f2178c[i2])) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i2 = (((this.a * 31) + this.b) * 31) + this.f2179d;
        for (int i3 = 0; i3 < this.a; i3++) {
            i2 = (i2 * 31) + k.b.c.e.a.b(this.f2178c[i3]);
        }
        return i2;
    }

    public String toString() {
        int i2 = this.b & 31;
        int i3 = this.f2179d;
        if (i2 != 0) {
            i3--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < this.a; i4++) {
            stringBuffer.append(i4 + ": ");
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = this.f2178c[i4][i5];
                for (int i7 = 0; i7 < 32; i7++) {
                    if (((i6 >>> i7) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(WWWAuthenticateHeader.SPACE);
            }
            int i8 = this.f2178c[i4][this.f2179d - 1];
            for (int i9 = 0; i9 < i2; i9++) {
                if (((i8 >>> i9) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append(10);
        }
        return stringBuffer.toString();
    }

    public a(a aVar) {
        this.b = aVar.b;
        this.a = aVar.a;
        this.f2179d = aVar.f2179d;
        this.f2178c = new int[aVar.f2178c.length][];
        int i2 = 0;
        while (true) {
            int[][] iArr = this.f2178c;
            if (i2 < iArr.length) {
                iArr[i2] = k.b.c.e.a.a(aVar.f2178c[i2]);
                i2++;
            } else {
                return;
            }
        }
    }

    public a(byte[] bArr) {
        if (bArr.length >= 9) {
            this.a = k.b.c.e.a.a(bArr, 0);
            int a2 = k.b.c.e.a.a(bArr, 4);
            this.b = a2;
            int i2 = this.a;
            int i3 = ((a2 + 7) >>> 3) * i2;
            if (i2 > 0) {
                int i4 = 8;
                if (i3 == bArr.length - 8) {
                    int i5 = (a2 + 31) >>> 5;
                    this.f2179d = i5;
                    int[] iArr = new int[2];
                    iArr[1] = i5;
                    iArr[0] = i2;
                    this.f2178c = (int[][]) Array.newInstance(int.class, iArr);
                    int i6 = this.b;
                    int i7 = i6 >> 5;
                    int i8 = i6 & 31;
                    for (int i9 = 0; i9 < this.a; i9++) {
                        int i10 = 0;
                        while (i10 < i7) {
                            this.f2178c[i9][i10] = k.b.c.e.a.a(bArr, i4);
                            i10++;
                            i4 += 4;
                        }
                        int i11 = 0;
                        while (i11 < i8) {
                            int[] iArr2 = this.f2178c[i9];
                            iArr2[i7] = ((bArr[i4] & 255) << i11) ^ iArr2[i7];
                            i11 += 8;
                            i4++;
                        }
                    }
                    return;
                }
            }
            throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
        }
        throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
    }
}
