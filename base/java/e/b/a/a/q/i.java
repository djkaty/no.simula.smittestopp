package e.b.a.a.q;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.b.a.a.e;
import e.b.a.a.f;
import e.b.a.a.n;
import e.b.a.a.p.a;
import e.b.a.a.p.b;
import e.b.a.a.p.g;
import java.io.Writer;

public class i extends c {
    public static final char[] P = ((char[]) a.a.clone());
    public final Writer G;
    public char H = '\"';
    public char[] I;
    public int J;
    public int K;
    public int L;
    public char[] M;
    public n N;
    public char[] O;

    public i(b bVar, int i2, Writer writer) {
        super(bVar, i2);
        this.G = writer;
        bVar.a((Object) bVar.f1060h);
        char[] a = bVar.f1056d.a(1, 0);
        bVar.f1060h = a;
        this.I = a;
        this.L = a.length;
    }

    public void a(String str) {
        int a = this.z.a(str);
        if (a != 4) {
            boolean z = a == 1;
            if (this.K + 1 >= this.L) {
                e();
            }
            if (z) {
                char[] cArr = this.I;
                int i2 = this.K;
                this.K = i2 + 1;
                cArr[i2] = WWWAuthenticateHeader.COMMA;
            }
            if (this.E) {
                e(str);
                return;
            }
            char[] cArr2 = this.I;
            int i3 = this.K;
            this.K = i3 + 1;
            cArr2[i3] = this.H;
            e(str);
            if (this.K >= this.L) {
                e();
            }
            char[] cArr3 = this.I;
            int i4 = this.K;
            this.K = i4 + 1;
            cArr3[i4] = this.H;
            return;
        }
        throw new e("Can not write a field name, expecting a value", this);
    }

    public void b(String str) {
        d("write a string");
        if (str == null) {
            f();
            return;
        }
        if (this.K >= this.L) {
            e();
        }
        char[] cArr = this.I;
        int i2 = this.K;
        this.K = i2 + 1;
        cArr[i2] = this.H;
        e(str);
        if (this.K >= this.L) {
            e();
        }
        char[] cArr2 = this.I;
        int i3 = this.K;
        this.K = i3 + 1;
        cArr2[i3] = this.H;
    }

    public void c() {
        d("start an object");
        this.z = this.z.f();
        if (this.K >= this.L) {
            e();
        }
        char[] cArr = this.I;
        int i2 = this.K;
        this.K = i2 + 1;
        cArr[i2] = '{';
    }

    public void close() {
        if (this.I != null && a(f.a.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                e eVar = this.z;
                if (!eVar.b()) {
                    if (!eVar.c()) {
                        break;
                    }
                    a();
                } else if (this.z.b()) {
                    if (this.K >= this.L) {
                        e();
                    }
                    char[] cArr = this.I;
                    int i2 = this.K;
                    this.K = i2 + 1;
                    cArr[i2] = ']';
                    this.z = this.z.f1076c;
                } else {
                    StringBuilder a = e.a.a.a.a.a("Current context not Array but ");
                    a.append(this.z.e());
                    throw new e(a.toString(), this);
                }
            }
        }
        e();
        this.J = 0;
        this.K = 0;
        if (this.G != null) {
            if (this.A.f1055c || a(f.a.AUTO_CLOSE_TARGET)) {
                this.G.close();
            } else if (a(f.a.FLUSH_PASSED_TO_STREAM)) {
                this.G.flush();
            }
        }
        char[] cArr2 = this.I;
        if (cArr2 != null) {
            this.I = null;
            b bVar = this.A;
            if (bVar != null) {
                bVar.a(cArr2, bVar.f1060h);
                bVar.f1060h = null;
                bVar.f1056d.b[1] = cArr2;
            } else {
                throw null;
            }
        }
        char[] cArr3 = this.O;
        if (cArr3 != null) {
            this.O = null;
            b bVar2 = this.A;
            if (bVar2 != null) {
                bVar2.a(cArr3, bVar2.f1061i);
                bVar2.f1061i = null;
                bVar2.f1056d.b[3] = cArr3;
                return;
            }
            throw null;
        }
    }

    public final void d(String str) {
        char c2;
        int g2 = this.z.g();
        if (g2 == 1) {
            c2 = WWWAuthenticateHeader.COMMA;
        } else if (g2 == 2) {
            c2 = ':';
        } else if (g2 == 3) {
            n nVar = this.D;
            if (nVar != null) {
                f(((g) nVar).x);
                return;
            }
            return;
        } else if (g2 == 5) {
            c(str);
            throw null;
        } else {
            return;
        }
        if (this.K >= this.L) {
            e();
        }
        char[] cArr = this.I;
        int i2 = this.K;
        this.K = i2 + 1;
        cArr[i2] = c2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0114, code lost:
        r5 = r6.J;
        r4 = r4 - r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x0117, code lost:
        if (r4 <= 0) goto L_0x011e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0119, code lost:
        r6.G.write(r3, r5, r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x011e, code lost:
        r3 = r6.I;
        r4 = r6.K;
        r6.K = r4 + 1;
        r3 = r3[r4];
        a(r3, r0[r3]);
     */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x0136 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void e(java.lang.String r19) {
        /*
            r18 = this;
            r6 = r18
            r7 = r19
            int r0 = r19.length()
            int r1 = r6.L
            r8 = -1
            r9 = 0
            if (r0 <= r1) goto L_0x00aa
            r18.e()
            int r10 = r19.length()
            r0 = 0
        L_0x0016:
            int r1 = r6.L
            int r2 = r0 + r1
            if (r2 <= r10) goto L_0x001e
            int r1 = r10 - r0
        L_0x001e:
            r11 = r1
            int r12 = r0 + r11
            char[] r1 = r6.I
            r7.getChars(r0, r12, r1, r9)
            int r13 = r6.C
            if (r13 == 0) goto L_0x0070
            int[] r14 = r6.B
            int r0 = r14.length
            int r1 = r13 + 1
            int r15 = java.lang.Math.min(r0, r1)
            r0 = 0
            r1 = 0
            r2 = 0
        L_0x0036:
            if (r0 >= r11) goto L_0x00a4
        L_0x0038:
            char[] r3 = r6.I
            char r4 = r3[r0]
            if (r4 >= r15) goto L_0x0043
            r1 = r14[r4]
            if (r1 == 0) goto L_0x0048
            goto L_0x004c
        L_0x0043:
            if (r4 <= r13) goto L_0x0048
            r16 = -1
            goto L_0x004e
        L_0x0048:
            int r0 = r0 + 1
            if (r0 < r11) goto L_0x0038
        L_0x004c:
            r16 = r1
        L_0x004e:
            int r1 = r0 - r2
            if (r1 <= 0) goto L_0x005c
            java.io.Writer r3 = r6.G
            char[] r5 = r6.I
            r3.write(r5, r2, r1)
            if (r0 < r11) goto L_0x005c
            goto L_0x00a4
        L_0x005c:
            int r17 = r0 + 1
            char[] r1 = r6.I
            r0 = r18
            r2 = r17
            r3 = r11
            r5 = r16
            int r2 = r0.a(r1, r2, r3, r4, r5)
            r1 = r16
            r0 = r17
            goto L_0x0036
        L_0x0070:
            int[] r13 = r6.B
            int r14 = r13.length
            r0 = 0
            r1 = 0
        L_0x0075:
            if (r0 >= r11) goto L_0x00a4
        L_0x0077:
            char[] r2 = r6.I
            char r4 = r2[r0]
            if (r4 >= r14) goto L_0x0082
            r2 = r13[r4]
            if (r2 == 0) goto L_0x0082
            goto L_0x0086
        L_0x0082:
            int r0 = r0 + 1
            if (r0 < r11) goto L_0x0077
        L_0x0086:
            int r2 = r0 - r1
            if (r2 <= 0) goto L_0x0094
            java.io.Writer r3 = r6.G
            char[] r5 = r6.I
            r3.write(r5, r1, r2)
            if (r0 < r11) goto L_0x0094
            goto L_0x00a4
        L_0x0094:
            int r15 = r0 + 1
            char[] r1 = r6.I
            r5 = r13[r4]
            r0 = r18
            r2 = r15
            r3 = r11
            int r1 = r0.a(r1, r2, r3, r4, r5)
            r0 = r15
            goto L_0x0075
        L_0x00a4:
            if (r12 < r10) goto L_0x00a7
            return
        L_0x00a7:
            r0 = r12
            goto L_0x0016
        L_0x00aa:
            int r2 = r6.K
            int r2 = r2 + r0
            if (r2 <= r1) goto L_0x00b2
            r18.e()
        L_0x00b2:
            char[] r1 = r6.I
            int r2 = r6.K
            r7.getChars(r9, r0, r1, r2)
            int r1 = r6.C
            if (r1 == 0) goto L_0x00fe
            int r2 = r6.K
            int r2 = r2 + r0
            int[] r0 = r6.B
            int r3 = r0.length
            int r4 = r1 + 1
            int r3 = java.lang.Math.min(r3, r4)
        L_0x00c9:
            int r4 = r6.K
            if (r4 >= r2) goto L_0x0136
        L_0x00cd:
            char[] r4 = r6.I
            int r5 = r6.K
            char r4 = r4[r5]
            if (r4 >= r3) goto L_0x00da
            r5 = r0[r4]
            if (r5 == 0) goto L_0x00f5
            goto L_0x00dd
        L_0x00da:
            if (r4 <= r1) goto L_0x00f5
            r5 = -1
        L_0x00dd:
            int r7 = r6.K
            int r9 = r6.J
            int r7 = r7 - r9
            if (r7 <= 0) goto L_0x00eb
            java.io.Writer r10 = r6.G
            char[] r11 = r6.I
            r10.write(r11, r9, r7)
        L_0x00eb:
            int r7 = r6.K
            int r7 = r7 + 1
            r6.K = r7
            r6.a(r4, r5)
            goto L_0x00c9
        L_0x00f5:
            int r4 = r6.K
            int r4 = r4 + 1
            r6.K = r4
            if (r4 < r2) goto L_0x00cd
            goto L_0x0136
        L_0x00fe:
            int r1 = r6.K
            int r1 = r1 + r0
            int[] r0 = r6.B
            int r2 = r0.length
        L_0x0104:
            int r3 = r6.K
            if (r3 >= r1) goto L_0x0136
        L_0x0108:
            char[] r3 = r6.I
            int r4 = r6.K
            char r5 = r3[r4]
            if (r5 >= r2) goto L_0x012e
            r5 = r0[r5]
            if (r5 == 0) goto L_0x012e
            int r5 = r6.J
            int r4 = r4 - r5
            if (r4 <= 0) goto L_0x011e
            java.io.Writer r7 = r6.G
            r7.write(r3, r5, r4)
        L_0x011e:
            char[] r3 = r6.I
            int r4 = r6.K
            int r5 = r4 + 1
            r6.K = r5
            char r3 = r3[r4]
            r4 = r0[r3]
            r6.a(r3, r4)
            goto L_0x0104
        L_0x012e:
            int r3 = r6.K
            int r3 = r3 + 1
            r6.K = r3
            if (r3 < r1) goto L_0x0108
        L_0x0136:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.q.i.e(java.lang.String):void");
    }

    public void f(String str) {
        int length = str.length();
        int i2 = this.L - this.K;
        if (i2 == 0) {
            e();
            i2 = this.L - this.K;
        }
        if (i2 >= length) {
            str.getChars(0, length, this.I, this.K);
            this.K += length;
            return;
        }
        int i3 = this.L;
        int i4 = this.K;
        int i5 = i3 - i4;
        str.getChars(0, i5, this.I, i4);
        this.K += i5;
        e();
        int length2 = str.length() - i5;
        while (true) {
            int i6 = this.L;
            if (length2 > i6) {
                int i7 = i5 + i6;
                str.getChars(i5, i7, this.I, 0);
                this.J = 0;
                this.K = i6;
                e();
                length2 -= i6;
                i5 = i7;
            } else {
                str.getChars(i5, i5 + length2, this.I, 0);
                this.J = 0;
                this.K = length2;
                return;
            }
        }
    }

    public void flush() {
        e();
        if (this.G != null && a(f.a.FLUSH_PASSED_TO_STREAM)) {
            this.G.flush();
        }
    }

    public void b() {
        d("write a null");
        f();
    }

    public final char[] d() {
        char[] cArr = new char[14];
        cArr[0] = '\\';
        cArr[2] = '\\';
        cArr[3] = 'u';
        cArr[4] = '0';
        cArr[5] = '0';
        cArr[8] = '\\';
        cArr[9] = 'u';
        this.M = cArr;
        return cArr;
    }

    public void a() {
        if (this.z.c()) {
            if (this.K >= this.L) {
                e();
            }
            char[] cArr = this.I;
            int i2 = this.K;
            this.K = i2 + 1;
            cArr[i2] = '}';
            this.z = this.z.f1076c;
            return;
        }
        StringBuilder a = e.a.a.a.a.a("Current context not Object but ");
        a.append(this.z.e());
        throw new e(a.toString(), this);
    }

    public final void f() {
        if (this.K + 4 >= this.L) {
            e();
        }
        int i2 = this.K;
        char[] cArr = this.I;
        cArr[i2] = 'n';
        int i3 = i2 + 1;
        cArr[i3] = 'u';
        int i4 = i3 + 1;
        cArr[i4] = 'l';
        int i5 = i4 + 1;
        cArr[i5] = 'l';
        this.K = i5 + 1;
    }

    public void a(e.b.a.a.a aVar, byte[] bArr, int i2, int i3) {
        d("write a binary value");
        if (this.K >= this.L) {
            e();
        }
        char[] cArr = this.I;
        int i4 = this.K;
        this.K = i4 + 1;
        cArr[i4] = this.H;
        int i5 = i3 + i2;
        int i6 = i5 - 3;
        int i7 = this.L - 6;
        int i8 = aVar.D >> 2;
        while (i2 <= i6) {
            if (this.K > i7) {
                e();
            }
            int i9 = i2 + 1;
            int i10 = i9 + 1;
            int i11 = i10 + 1;
            byte b = (((bArr[i2] << 8) | (bArr[i9] & 255)) << 8) | (bArr[i10] & 255);
            char[] cArr2 = this.I;
            int i12 = this.K;
            int i13 = i12 + 1;
            char[] cArr3 = aVar.y;
            cArr2[i12] = cArr3[(b >> 18) & 63];
            int i14 = i13 + 1;
            cArr2[i13] = cArr3[(b >> 12) & 63];
            int i15 = i14 + 1;
            cArr2[i14] = cArr3[(b >> 6) & 63];
            int i16 = i15 + 1;
            cArr2[i15] = cArr3[b & 63];
            this.K = i16;
            i8--;
            if (i8 <= 0) {
                int i17 = i16 + 1;
                this.K = i17;
                cArr2[i16] = '\\';
                this.K = i17 + 1;
                cArr2[i17] = 'n';
                i8 = aVar.D >> 2;
            }
            i2 = i11;
        }
        int i18 = i5 - i2;
        if (i18 > 0) {
            if (this.K > i7) {
                e();
            }
            int i19 = i2 + 1;
            int i20 = bArr[i2] << 16;
            if (i18 == 2) {
                i20 |= (bArr[i19] & 255) << 8;
            }
            char[] cArr4 = this.I;
            int i21 = this.K;
            int i22 = i21 + 1;
            char[] cArr5 = aVar.y;
            cArr4[i21] = cArr5[(i20 >> 18) & 63];
            int i23 = i22 + 1;
            cArr4[i22] = cArr5[(i20 >> 12) & 63];
            if (aVar.B) {
                int i24 = i23 + 1;
                cArr4[i23] = i18 == 2 ? cArr5[(i20 >> 6) & 63] : aVar.C;
                i23 = i24 + 1;
                cArr4[i24] = aVar.C;
            } else if (i18 == 2) {
                cArr4[i23] = cArr5[(i20 >> 6) & 63];
                i23++;
            }
            this.K = i23;
        }
        if (this.K >= this.L) {
            e();
        }
        char[] cArr6 = this.I;
        int i25 = this.K;
        this.K = i25 + 1;
        cArr6[i25] = this.H;
    }

    public void e() {
        int i2 = this.K;
        int i3 = this.J;
        int i4 = i2 - i3;
        if (i4 > 0) {
            this.J = 0;
            this.K = 0;
            this.G.write(this.I, i3, i4);
        }
    }

    public void a(int i2) {
        d("write a number");
        if (this.y) {
            if (this.K + 13 >= this.L) {
                e();
            }
            char[] cArr = this.I;
            int i3 = this.K;
            int i4 = i3 + 1;
            this.K = i4;
            cArr[i3] = this.H;
            int c2 = e.b.a.a.p.f.c(i2, cArr, i4);
            this.K = c2;
            char[] cArr2 = this.I;
            this.K = c2 + 1;
            cArr2[c2] = this.H;
            return;
        }
        if (this.K + 11 >= this.L) {
            e();
        }
        this.K = e.b.a.a.p.f.c(i2, this.I, this.K);
    }

    public void a(double d2) {
        if (this.y || (a(f.a.QUOTE_NON_NUMERIC_NUMBERS) && (Double.isNaN(d2) || Double.isInfinite(d2)))) {
            b(String.valueOf(d2));
            return;
        }
        d("write a number");
        f(String.valueOf(d2));
    }

    public void a(boolean z) {
        int i2;
        d("write a boolean value");
        if (this.K + 5 >= this.L) {
            e();
        }
        int i3 = this.K;
        char[] cArr = this.I;
        if (z) {
            cArr[i3] = 't';
            int i4 = i3 + 1;
            cArr[i4] = 'r';
            int i5 = i4 + 1;
            cArr[i5] = 'u';
            i2 = i5 + 1;
            cArr[i2] = 'e';
        } else {
            cArr[i3] = 'f';
            int i6 = i3 + 1;
            cArr[i6] = 'a';
            int i7 = i6 + 1;
            cArr[i7] = 'l';
            int i8 = i7 + 1;
            cArr[i8] = 's';
            i2 = i8 + 1;
            cArr[i2] = 'e';
        }
        this.K = i2 + 1;
    }

    public final void a(char c2, int i2) {
        int i3;
        if (i2 >= 0) {
            int i4 = this.K;
            if (i4 >= 2) {
                int i5 = i4 - 2;
                this.J = i5;
                char[] cArr = this.I;
                cArr[i5] = '\\';
                cArr[i5 + 1] = (char) i2;
                return;
            }
            char[] cArr2 = this.M;
            if (cArr2 == null) {
                cArr2 = d();
            }
            this.J = this.K;
            cArr2[1] = (char) i2;
            this.G.write(cArr2, 0, 2);
        } else if (i2 != -2) {
            int i6 = this.K;
            if (i6 >= 6) {
                char[] cArr3 = this.I;
                int i7 = i6 - 6;
                this.J = i7;
                cArr3[i7] = '\\';
                int i8 = i7 + 1;
                cArr3[i8] = 'u';
                if (c2 > 255) {
                    int i9 = (c2 >> 8) & 255;
                    int i10 = i8 + 1;
                    char[] cArr4 = P;
                    cArr3[i10] = cArr4[i9 >> 4];
                    i3 = i10 + 1;
                    cArr3[i3] = cArr4[i9 & 15];
                    c2 = (char) (c2 & 255);
                } else {
                    int i11 = i8 + 1;
                    cArr3[i11] = '0';
                    i3 = i11 + 1;
                    cArr3[i3] = '0';
                }
                int i12 = i3 + 1;
                char[] cArr5 = P;
                cArr3[i12] = cArr5[c2 >> 4];
                cArr3[i12 + 1] = cArr5[c2 & 15];
                return;
            }
            char[] cArr6 = this.M;
            if (cArr6 == null) {
                cArr6 = d();
            }
            this.J = this.K;
            if (c2 > 255) {
                int i13 = (c2 >> 8) & 255;
                char c3 = c2 & 255;
                char[] cArr7 = P;
                cArr6[10] = cArr7[i13 >> 4];
                cArr6[11] = cArr7[i13 & 15];
                cArr6[12] = cArr7[c3 >> 4];
                cArr6[13] = cArr7[c3 & 15];
                this.G.write(cArr6, 8, 6);
                return;
            }
            char[] cArr8 = P;
            cArr6[6] = cArr8[c2 >> 4];
            cArr6[7] = cArr8[c2 & 15];
            this.G.write(cArr6, 2, 6);
        } else {
            n nVar = this.N;
            if (nVar != null) {
                String str = ((g) nVar).x;
                this.N = null;
                int length = str.length();
                int i14 = this.K;
                if (i14 >= length) {
                    int i15 = i14 - length;
                    this.J = i15;
                    str.getChars(0, length, this.I, i15);
                    return;
                }
                this.J = i14;
                this.G.write(str);
                return;
            }
            throw null;
        }
    }

    public final int a(char[] cArr, int i2, int i3, char c2, int i4) {
        int i5;
        if (i4 >= 0) {
            if (i2 <= 1 || i2 >= i3) {
                char[] cArr2 = this.M;
                if (cArr2 == null) {
                    cArr2 = d();
                }
                cArr2[1] = (char) i4;
                this.G.write(cArr2, 0, 2);
                return i2;
            }
            int i6 = i2 - 2;
            cArr[i6] = '\\';
            cArr[i6 + 1] = (char) i4;
            return i6;
        } else if (i4 == -2) {
            n nVar = this.N;
            if (nVar != null) {
                String str = ((g) nVar).x;
                this.N = null;
                int length = str.length();
                if (i2 < length || i2 >= i3) {
                    this.G.write(str);
                    return i2;
                }
                int i7 = i2 - length;
                str.getChars(0, length, cArr, i7);
                return i7;
            }
            throw null;
        } else if (i2 <= 5 || i2 >= i3) {
            char[] cArr3 = this.M;
            if (cArr3 == null) {
                cArr3 = d();
            }
            this.J = this.K;
            if (c2 > 255) {
                int i8 = (c2 >> 8) & 255;
                char c3 = c2 & 255;
                char[] cArr4 = P;
                cArr3[10] = cArr4[i8 >> 4];
                cArr3[11] = cArr4[i8 & 15];
                cArr3[12] = cArr4[c3 >> 4];
                cArr3[13] = cArr4[c3 & 15];
                this.G.write(cArr3, 8, 6);
                return i2;
            }
            char[] cArr5 = P;
            cArr3[6] = cArr5[c2 >> 4];
            cArr3[7] = cArr5[c2 & 15];
            this.G.write(cArr3, 2, 6);
            return i2;
        } else {
            int i9 = i2 - 6;
            int i10 = i9 + 1;
            cArr[i9] = '\\';
            int i11 = i10 + 1;
            cArr[i10] = 'u';
            if (c2 > 255) {
                int i12 = (c2 >> 8) & 255;
                int i13 = i11 + 1;
                char[] cArr6 = P;
                cArr[i11] = cArr6[i12 >> 4];
                i5 = i13 + 1;
                cArr[i13] = cArr6[i12 & 15];
                c2 = (char) (c2 & 255);
            } else {
                int i14 = i11 + 1;
                cArr[i11] = '0';
                i5 = i14 + 1;
                cArr[i14] = '0';
            }
            int i15 = i5 + 1;
            char[] cArr7 = P;
            cArr[i5] = cArr7[c2 >> 4];
            cArr[i15] = cArr7[c2 & 15];
            return i15 - 5;
        }
    }
}
