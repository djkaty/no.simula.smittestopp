package k.b.i.d.a;

import com.microsoft.identity.common.internal.eststelemetry.Schema;
import k.b.c.e.a;

public class e {
    public b a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f2180c;

    public e(b bVar, int i2) {
        this.a = bVar;
        this.b = i2;
        int[] iArr = new int[(i2 + 1)];
        this.f2180c = iArr;
        iArr[i2] = 1;
    }

    public e(b bVar, byte[] bArr) {
        this.a = bVar;
        int i2 = 8;
        int i3 = 1;
        while (bVar.a > i2) {
            i3++;
            i2 += 8;
        }
        if (bArr.length % i3 == 0) {
            this.f2180c = new int[(bArr.length / i3)];
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int[] iArr = this.f2180c;
                if (i4 < iArr.length) {
                    int i6 = 0;
                    while (i6 < i2) {
                        int[] iArr2 = this.f2180c;
                        iArr2[i4] = ((bArr[i5] & 255) << i6) ^ iArr2[i4];
                        i6 += 8;
                        i5++;
                    }
                    if (this.a.b(this.f2180c[i4])) {
                        i4++;
                    } else {
                        throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
                    }
                } else if (iArr.length == 1 || iArr[iArr.length - 1] != 0) {
                    a();
                    return;
                } else {
                    throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
                }
            }
        } else {
            throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
        }
    }

    public e(e eVar) {
        this.a = eVar.a;
        this.b = eVar.b;
        this.f2180c = a.a(eVar.f2180c);
    }

    public static int a(int[] iArr) {
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        return length;
    }

    public int a(int i2) {
        if (i2 < 0 || i2 > this.b) {
            return 0;
        }
        return this.f2180c[i2];
    }

    public final void a() {
        int length = this.f2180c.length;
        do {
            this.b = length - 1;
            length = this.b;
            if (length < 0 || this.f2180c[length] != 0) {
            }
            this.b = length - 1;
            length = this.b;
            return;
        } while (this.f2180c[length] != 0);
    }

    public final int[] a(int[] iArr, int[] iArr2) {
        int[] iArr3;
        if (iArr.length < iArr2.length) {
            iArr3 = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
        } else {
            iArr3 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            iArr = iArr2;
        }
        int length = iArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return iArr3;
            }
            b bVar = this.a;
            int i2 = iArr3[length];
            int i3 = iArr[length];
            if (bVar != null) {
                iArr3[length] = i2 ^ i3;
            } else {
                throw null;
            }
        }
    }

    public int b() {
        int[] iArr = this.f2180c;
        int length = iArr.length - 1;
        if (iArr[length] == 0) {
            return -1;
        }
        return length;
    }

    public void b(int i2) {
        if (this.a.b(i2)) {
            this.f2180c = a(this.f2180c, i2);
            a();
            return;
        }
        throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
    }

    public e c(int i2) {
        if (this.a.b(i2)) {
            return new e(this.a, a(this.f2180c, i2));
        }
        throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
    }

    public byte[] c() {
        int i2 = 8;
        int i3 = 1;
        while (this.a.a > i2) {
            i3++;
            i2 += 8;
        }
        byte[] bArr = new byte[(this.f2180c.length * i3)];
        int i4 = 0;
        for (int i5 = 0; i5 < this.f2180c.length; i5++) {
            int i6 = 0;
            while (i6 < i2) {
                bArr[i4] = (byte) (this.f2180c[i5] >>> i6);
                i6 += 8;
                i4++;
            }
        }
        return bArr;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x003b A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 == 0) goto L_0x003c
            boolean r1 = r8 instanceof k.b.i.d.a.e
            if (r1 != 0) goto L_0x0008
            goto L_0x003c
        L_0x0008:
            k.b.i.d.a.e r8 = (k.b.i.d.a.e) r8
            k.b.i.d.a.b r1 = r7.a
            k.b.i.d.a.b r2 = r8.a
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x003c
            int r1 = r7.b
            int r2 = r8.b
            if (r1 != r2) goto L_0x003c
            int[] r1 = r7.f2180c
            int[] r8 = r8.f2180c
            int r2 = a((int[]) r1)
            int r3 = a((int[]) r8)
            r4 = 1
            if (r2 == r3) goto L_0x002b
        L_0x0029:
            r8 = 0
            goto L_0x0039
        L_0x002b:
            r3 = 0
        L_0x002c:
            if (r3 > r2) goto L_0x0038
            r5 = r1[r3]
            r6 = r8[r3]
            if (r5 == r6) goto L_0x0035
            goto L_0x0029
        L_0x0035:
            int r3 = r3 + 1
            goto L_0x002c
        L_0x0038:
            r8 = 1
        L_0x0039:
            if (r8 == 0) goto L_0x003c
            return r4
        L_0x003c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.i.d.a.e.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i2 = this.a.b;
        int i3 = 0;
        while (true) {
            int[] iArr = this.f2180c;
            if (i3 >= iArr.length) {
                return i2;
            }
            i2 = (i2 * 31) + iArr[i3];
            i3++;
        }
    }

    public String toString() {
        String str;
        StringBuilder sb;
        StringBuilder a2 = e.a.a.a.a.a(" Polynomial over ");
        a2.append(this.a.toString());
        a2.append(": \n");
        String sb2 = a2.toString();
        for (int i2 = 0; i2 < this.f2180c.length; i2++) {
            StringBuilder a3 = e.a.a.a.a.a(sb2);
            b bVar = this.a;
            int i3 = this.f2180c[i2];
            String str2 = "";
            for (int i4 = 0; i4 < bVar.a; i4++) {
                if ((((byte) i3) & 1) == 0) {
                    sb = new StringBuilder();
                    str = Schema.Value.FALSE;
                } else {
                    sb = new StringBuilder();
                    str = "1";
                }
                str2 = e.a.a.a.a.a(sb, str, str2);
                i3 >>>= 1;
            }
            a3.append(str2);
            a3.append("Y^");
            a3.append(i2);
            a3.append("+");
            sb2 = a3.toString();
        }
        return e.a.a.a.a.b(sb2, ";");
    }

    public final int[] a(int[] iArr, int i2) {
        int a2 = a(iArr);
        if (a2 == -1 || i2 == 0) {
            return new int[1];
        }
        if (i2 == 1) {
            int[] iArr2 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            return iArr2;
        }
        int[] iArr3 = new int[(a2 + 1)];
        while (a2 >= 0) {
            iArr3[a2] = this.a.a(iArr[a2], i2);
            a2--;
        }
        return iArr3;
    }

    public e(b bVar, int[] iArr) {
        int[] iArr2;
        this.a = bVar;
        int a2 = a(iArr);
        if (a2 == -1) {
            iArr2 = new int[1];
        } else {
            int i2 = a2 + 1;
            if (iArr.length == i2) {
                iArr2 = new int[iArr.length];
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            } else {
                int[] iArr3 = new int[i2];
                System.arraycopy(iArr, 0, iArr3, 0, i2);
                iArr2 = iArr3;
            }
        }
        this.f2180c = iArr2;
        a();
    }
}
