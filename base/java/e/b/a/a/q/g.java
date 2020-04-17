package e.b.a.a.q;

import e.b.a.a.e;
import e.b.a.a.f;
import e.b.a.a.n;
import e.b.a.a.p.a;
import e.b.a.a.p.b;
import java.io.OutputStream;

public class g extends c {
    public static final byte[] P = ((byte[]) a.b.clone());
    public static final byte[] Q = {110, 117, 108, 108};
    public static final byte[] R = {116, 114, 117, 101};
    public static final byte[] S = {102, 97, 108, 115, 101};
    public final OutputStream G;
    public byte H = 34;
    public byte[] I;
    public int J;
    public final int K;
    public final int L;
    public char[] M;
    public final int N;
    public boolean O;

    public g(b bVar, int i2, OutputStream outputStream) {
        super(bVar, i2);
        this.G = outputStream;
        this.O = true;
        bVar.a((Object) bVar.f1058f);
        byte[] a = bVar.f1056d.a(1);
        bVar.f1058f = a;
        this.I = a;
        int length = a.length;
        this.K = length;
        this.L = length >> 3;
        bVar.a((Object) bVar.f1060h);
        char[] a2 = bVar.f1056d.a(1, 0);
        bVar.f1060h = a2;
        this.M = a2;
        this.N = a2.length;
        if (a(f.a.ESCAPE_NON_ASCII)) {
            this.C = 127;
        }
    }

    public void a(String str) {
        int a = this.z.a(str);
        if (a != 4) {
            if (a == 1) {
                if (this.J >= this.K) {
                    d();
                }
                byte[] bArr = this.I;
                int i2 = this.J;
                this.J = i2 + 1;
                bArr[i2] = 44;
            }
            int i3 = 0;
            if (this.E) {
                a(str, false);
                return;
            }
            int length = str.length();
            if (length > this.N) {
                a(str, true);
                return;
            }
            if (this.J >= this.K) {
                d();
            }
            byte[] bArr2 = this.I;
            int i4 = this.J;
            int i5 = i4 + 1;
            this.J = i5;
            bArr2[i4] = this.H;
            if (length <= this.L) {
                if (i5 + length > this.K) {
                    d();
                }
                a(str, 0, length);
            } else {
                do {
                    int min = Math.min(this.L, length);
                    if (this.J + min > this.K) {
                        d();
                    }
                    a(str, i3, min);
                    i3 += min;
                    length -= min;
                } while (length > 0);
            }
            if (this.J >= this.K) {
                d();
            }
            byte[] bArr3 = this.I;
            int i6 = this.J;
            this.J = i6 + 1;
            bArr3[i6] = this.H;
            return;
        }
        throw new e("Can not write a field name, expecting a value", this);
    }

    public void b(String str) {
        d("write a string");
        if (str == null) {
            e();
            return;
        }
        int length = str.length();
        if (length > this.L) {
            a(str, true);
            return;
        }
        if (this.J + length >= this.K) {
            d();
        }
        byte[] bArr = this.I;
        int i2 = this.J;
        this.J = i2 + 1;
        bArr[i2] = this.H;
        a(str, 0, length);
        if (this.J >= this.K) {
            d();
        }
        byte[] bArr2 = this.I;
        int i3 = this.J;
        this.J = i3 + 1;
        bArr2[i3] = this.H;
    }

    public final void c() {
        d("start an object");
        this.z = this.z.f();
        if (this.J >= this.K) {
            d();
        }
        byte[] bArr = this.I;
        int i2 = this.J;
        this.J = i2 + 1;
        bArr[i2] = 123;
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
                    if (this.J >= this.K) {
                        d();
                    }
                    byte[] bArr = this.I;
                    int i2 = this.J;
                    this.J = i2 + 1;
                    bArr[i2] = 93;
                    this.z = this.z.f1076c;
                } else {
                    StringBuilder a = e.a.a.a.a.a("Current context not Array but ");
                    a.append(this.z.e());
                    throw new e(a.toString(), this);
                }
            }
        }
        d();
        this.J = 0;
        if (this.G != null) {
            if (this.A.f1055c || a(f.a.AUTO_CLOSE_TARGET)) {
                this.G.close();
            } else if (a(f.a.FLUSH_PASSED_TO_STREAM)) {
                this.G.flush();
            }
        }
        byte[] bArr2 = this.I;
        if (bArr2 != null && this.O) {
            this.I = null;
            this.A.b(bArr2);
        }
        char[] cArr = this.M;
        if (cArr != null) {
            this.M = null;
            b bVar = this.A;
            if (bVar != null) {
                bVar.a(cArr, bVar.f1060h);
                bVar.f1060h = null;
                bVar.f1056d.b[1] = cArr;
                return;
            }
            throw null;
        }
    }

    public final void d(String str) {
        byte b;
        int g2 = this.z.g();
        if (g2 == 1) {
            b = 44;
        } else if (g2 == 2) {
            b = 58;
        } else if (g2 == 3) {
            n nVar = this.D;
            if (nVar != null) {
                byte[] a = ((e.b.a.a.p.g) nVar).a();
                if (a.length > 0) {
                    int length = a.length;
                    if (this.J + length > this.K) {
                        d();
                        if (length > 512) {
                            this.G.write(a, 0, length);
                            return;
                        }
                    }
                    System.arraycopy(a, 0, this.I, this.J, length);
                    this.J += length;
                    return;
                }
                return;
            }
            return;
        } else if (g2 == 5) {
            c(str);
            throw null;
        } else {
            return;
        }
        if (this.J >= this.K) {
            d();
        }
        byte[] bArr = this.I;
        int i2 = this.J;
        this.J = i2 + 1;
        bArr[i2] = b;
    }

    public final void e() {
        if (this.J + 4 >= this.K) {
            d();
        }
        System.arraycopy(Q, 0, this.I, this.J, 4);
        this.J += 4;
    }

    public void flush() {
        d();
        if (this.G != null && a(f.a.FLUSH_PASSED_TO_STREAM)) {
            this.G.flush();
        }
    }

    public void b() {
        d("write a null");
        e();
    }

    public final int b(int i2, int i3) {
        int i4;
        byte[] bArr = this.I;
        int i5 = i3 + 1;
        bArr[i3] = 92;
        int i6 = i5 + 1;
        bArr[i5] = 117;
        if (i2 > 255) {
            int i7 = 255 & (i2 >> 8);
            int i8 = i6 + 1;
            byte[] bArr2 = P;
            bArr[i6] = bArr2[i7 >> 4];
            i4 = i8 + 1;
            bArr[i8] = bArr2[i7 & 15];
            i2 &= 255;
        } else {
            int i9 = i6 + 1;
            bArr[i6] = 48;
            i4 = i9 + 1;
            bArr[i9] = 48;
        }
        int i10 = i4 + 1;
        byte[] bArr3 = P;
        bArr[i4] = bArr3[i2 >> 4];
        int i11 = i10 + 1;
        bArr[i10] = bArr3[i2 & 15];
        return i11;
    }

    public final void d() {
        int i2 = this.J;
        if (i2 > 0) {
            this.J = 0;
            this.G.write(this.I, 0, i2);
        }
    }

    public final void a() {
        if (this.z.c()) {
            if (this.J >= this.K) {
                d();
            }
            byte[] bArr = this.I;
            int i2 = this.J;
            this.J = i2 + 1;
            bArr[i2] = 125;
            this.z = this.z.f1076c;
            return;
        }
        StringBuilder a = e.a.a.a.a.a("Current context not Object but ");
        a.append(this.z.e());
        throw new e(a.toString(), this);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0024, code lost:
        r1 = r10 + 1;
        r10 = r9[r10];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r10 >= 2048) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002a, code lost:
        r5 = r8.J;
        r6 = r5 + 1;
        r8.J = r6;
        r0[r5] = (byte) ((r10 >> 6) | 192);
        r8.J = r6 + 1;
        r0[r6] = (byte) ((r10 & '?') | 128);
        r10 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0043, code lost:
        r10 = a((int) r10, r9, r1, r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0069, code lost:
        r0 = r10 + 1;
        r10 = r9[r10];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006d, code lost:
        if (r10 >= 2048) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x006f, code lost:
        r1 = r8.I;
        r2 = r8.J;
        r5 = r2 + 1;
        r8.J = r5;
        r1[r2] = (byte) ((r10 >> 6) | 192);
        r8.J = r5 + 1;
        r1[r5] = (byte) ((r10 & '?') | 128);
        r10 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x008a, code lost:
        r10 = a((int) r10, r9, r0, r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001f, code lost:
        if ((r8.J + 3) < r8.K) goto L_0x0024;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0021, code lost:
        d();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(char[] r9, int r10, int r11) {
        /*
            r8 = this;
            int r0 = r11 + r11
            int r0 = r0 + r11
            int r1 = r8.J
            int r1 = r1 + r0
            int r2 = r8.K
            r3 = 2048(0x800, float:2.87E-42)
            r4 = 128(0x80, float:1.794E-43)
            if (r1 <= r2) goto L_0x0060
            if (r2 >= r0) goto L_0x005d
            byte[] r0 = r8.I
            int r11 = r11 + r10
        L_0x0013:
            if (r10 >= r11) goto L_0x005c
        L_0x0015:
            char r1 = r9[r10]
            if (r1 < r4) goto L_0x0048
            int r1 = r8.J
            int r1 = r1 + 3
            int r5 = r8.K
            if (r1 < r5) goto L_0x0024
            r8.d()
        L_0x0024:
            int r1 = r10 + 1
            char r10 = r9[r10]
            if (r10 >= r3) goto L_0x0043
            int r5 = r8.J
            int r6 = r5 + 1
            r8.J = r6
            int r7 = r10 >> 6
            r7 = r7 | 192(0xc0, float:2.69E-43)
            byte r7 = (byte) r7
            r0[r5] = r7
            int r5 = r6 + 1
            r8.J = r5
            r10 = r10 & 63
            r10 = r10 | r4
            byte r10 = (byte) r10
            r0[r6] = r10
            r10 = r1
            goto L_0x0013
        L_0x0043:
            int r10 = r8.a((int) r10, (char[]) r9, (int) r1, (int) r11)
            goto L_0x0013
        L_0x0048:
            int r5 = r8.J
            if (r5 < r2) goto L_0x004f
            r8.d()
        L_0x004f:
            int r5 = r8.J
            int r6 = r5 + 1
            r8.J = r6
            byte r1 = (byte) r1
            r0[r5] = r1
            int r10 = r10 + 1
            if (r10 < r11) goto L_0x0015
        L_0x005c:
            return
        L_0x005d:
            r8.d()
        L_0x0060:
            int r11 = r11 + r10
        L_0x0061:
            if (r10 >= r11) goto L_0x009e
        L_0x0063:
            char r0 = r9[r10]
            r1 = 127(0x7f, float:1.78E-43)
            if (r0 <= r1) goto L_0x008f
            int r0 = r10 + 1
            char r10 = r9[r10]
            if (r10 >= r3) goto L_0x008a
            byte[] r1 = r8.I
            int r2 = r8.J
            int r5 = r2 + 1
            r8.J = r5
            int r6 = r10 >> 6
            r6 = r6 | 192(0xc0, float:2.69E-43)
            byte r6 = (byte) r6
            r1[r2] = r6
            int r2 = r5 + 1
            r8.J = r2
            r10 = r10 & 63
            r10 = r10 | r4
            byte r10 = (byte) r10
            r1[r5] = r10
            r10 = r0
            goto L_0x0061
        L_0x008a:
            int r10 = r8.a((int) r10, (char[]) r9, (int) r0, (int) r11)
            goto L_0x0061
        L_0x008f:
            byte[] r1 = r8.I
            int r2 = r8.J
            int r5 = r2 + 1
            r8.J = r5
            byte r0 = (byte) r0
            r1[r2] = r0
            int r10 = r10 + 1
            if (r10 < r11) goto L_0x0063
        L_0x009e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.q.g.a(char[], int, int):void");
    }

    public void a(e.b.a.a.a aVar, byte[] bArr, int i2, int i3) {
        d("write a binary value");
        if (this.J >= this.K) {
            d();
        }
        byte[] bArr2 = this.I;
        int i4 = this.J;
        this.J = i4 + 1;
        bArr2[i4] = this.H;
        int i5 = i3 + i2;
        int i6 = i5 - 3;
        int i7 = this.K - 6;
        int i8 = aVar.D >> 2;
        while (i2 <= i6) {
            if (this.J > i7) {
                d();
            }
            int i9 = i2 + 1;
            int i10 = i9 + 1;
            int i11 = i10 + 1;
            byte b = (((bArr[i2] << 8) | (bArr[i9] & 255)) << 8) | (bArr[i10] & 255);
            byte[] bArr3 = this.I;
            int i12 = this.J;
            int i13 = i12 + 1;
            byte[] bArr4 = aVar.z;
            bArr3[i12] = bArr4[(b >> 18) & 63];
            int i14 = i13 + 1;
            bArr3[i13] = bArr4[(b >> 12) & 63];
            int i15 = i14 + 1;
            bArr3[i14] = bArr4[(b >> 6) & 63];
            int i16 = i15 + 1;
            bArr3[i15] = bArr4[b & 63];
            this.J = i16;
            i8--;
            if (i8 <= 0) {
                int i17 = i16 + 1;
                this.J = i17;
                bArr3[i16] = 92;
                this.J = i17 + 1;
                bArr3[i17] = 110;
                i8 = aVar.D >> 2;
            }
            i2 = i11;
        }
        int i18 = i5 - i2;
        if (i18 > 0) {
            if (this.J > i7) {
                d();
            }
            int i19 = i2 + 1;
            int i20 = bArr[i2] << 16;
            if (i18 == 2) {
                i20 |= (bArr[i19] & 255) << 8;
            }
            byte[] bArr5 = this.I;
            int i21 = this.J;
            int i22 = i21 + 1;
            byte[] bArr6 = aVar.z;
            bArr5[i21] = bArr6[(i20 >> 18) & 63];
            int i23 = i22 + 1;
            bArr5[i22] = bArr6[(i20 >> 12) & 63];
            if (aVar.B) {
                byte b2 = (byte) aVar.C;
                int i24 = i23 + 1;
                bArr5[i23] = i18 == 2 ? bArr6[(i20 >> 6) & 63] : b2;
                i23 = i24 + 1;
                bArr5[i24] = b2;
            } else if (i18 == 2) {
                bArr5[i23] = bArr6[(i20 >> 6) & 63];
                i23++;
            }
            this.J = i23;
        }
        if (this.J >= this.K) {
            d();
        }
        byte[] bArr7 = this.I;
        int i25 = this.J;
        this.J = i25 + 1;
        bArr7[i25] = this.H;
    }

    public void a(int i2) {
        d("write a number");
        if (this.J + 11 >= this.K) {
            d();
        }
        if (this.y) {
            if (this.J + 13 >= this.K) {
                d();
            }
            byte[] bArr = this.I;
            int i3 = this.J;
            int i4 = i3 + 1;
            this.J = i4;
            bArr[i3] = this.H;
            int c2 = e.b.a.a.p.f.c(i2, bArr, i4);
            this.J = c2;
            byte[] bArr2 = this.I;
            this.J = c2 + 1;
            bArr2[c2] = this.H;
            return;
        }
        this.J = e.b.a.a.p.f.c(i2, this.I, this.J);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x006a, code lost:
        r6 = r5 - 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(double r13) {
        /*
            r12 = this;
            boolean r0 = r12.y
            if (r0 != 0) goto L_0x00be
            boolean r0 = java.lang.Double.isNaN(r13)
            if (r0 != 0) goto L_0x0010
            boolean r0 = java.lang.Double.isInfinite(r13)
            if (r0 == 0) goto L_0x001c
        L_0x0010:
            e.b.a.a.f$a r0 = e.b.a.a.f.a.QUOTE_NON_NUMERIC_NUMBERS
            int r1 = r12.x
            boolean r0 = r0.enabledIn(r1)
            if (r0 == 0) goto L_0x001c
            goto L_0x00be
        L_0x001c:
            java.lang.String r0 = "write a number"
            r12.d(r0)
            java.lang.String r13 = java.lang.String.valueOf(r13)
            int r14 = r13.length()
            char[] r0 = r12.M
            int r1 = r0.length
            r2 = 0
            if (r14 > r1) goto L_0x0037
            r13.getChars(r2, r14, r0, r2)
            r12.a((char[]) r0, (int) r2, (int) r14)
            goto L_0x00bd
        L_0x0037:
            int r1 = r0.length
            if (r14 > r1) goto L_0x0044
            int r1 = r14 + 0
            r13.getChars(r2, r1, r0, r2)
            r12.a((char[]) r0, (int) r2, (int) r14)
            goto L_0x00bd
        L_0x0044:
            int r3 = r12.K
            int r4 = r3 >> 2
            int r3 = r3 >> 4
            int r4 = r4 + r3
            int r1 = java.lang.Math.min(r1, r4)
            int r3 = r1 * 3
            r4 = 0
        L_0x0052:
            if (r14 <= 0) goto L_0x00bd
            int r5 = java.lang.Math.min(r1, r14)
            int r6 = r4 + r5
            r13.getChars(r4, r6, r0, r2)
            int r6 = r12.J
            int r6 = r6 + r3
            int r7 = r12.K
            if (r6 <= r7) goto L_0x0067
            r12.d()
        L_0x0067:
            r6 = 1
            if (r5 <= r6) goto L_0x0079
            int r6 = r5 + -1
            char r7 = r0[r6]
            r8 = 55296(0xd800, float:7.7486E-41)
            if (r7 < r8) goto L_0x0079
            r8 = 56319(0xdbff, float:7.892E-41)
            if (r7 > r8) goto L_0x0079
            r5 = r6
        L_0x0079:
            r6 = 0
        L_0x007a:
            if (r6 >= r5) goto L_0x00ba
        L_0x007c:
            char r7 = r0[r6]
            r8 = 127(0x7f, float:1.78E-43)
            if (r7 <= r8) goto L_0x00ab
            int r7 = r6 + 1
            char r6 = r0[r6]
            r8 = 2048(0x800, float:2.87E-42)
            if (r6 >= r8) goto L_0x00a6
            byte[] r8 = r12.I
            int r9 = r12.J
            int r10 = r9 + 1
            r12.J = r10
            int r11 = r6 >> 6
            r11 = r11 | 192(0xc0, float:2.69E-43)
            byte r11 = (byte) r11
            r8[r9] = r11
            int r9 = r10 + 1
            r12.J = r9
            r6 = r6 & 63
            r6 = r6 | 128(0x80, float:1.794E-43)
            byte r6 = (byte) r6
            r8[r10] = r6
            r6 = r7
            goto L_0x007a
        L_0x00a6:
            int r6 = r12.a((int) r6, (char[]) r0, (int) r7, (int) r5)
            goto L_0x007a
        L_0x00ab:
            byte[] r8 = r12.I
            int r9 = r12.J
            int r10 = r9 + 1
            r12.J = r10
            byte r7 = (byte) r7
            r8[r9] = r7
            int r6 = r6 + 1
            if (r6 < r5) goto L_0x007c
        L_0x00ba:
            int r4 = r4 + r5
            int r14 = r14 - r5
            goto L_0x0052
        L_0x00bd:
            return
        L_0x00be:
            java.lang.String r13 = java.lang.String.valueOf(r13)
            r12.b(r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.q.g.a(double):void");
    }

    public void a(boolean z) {
        d("write a boolean value");
        if (this.J + 5 >= this.K) {
            d();
        }
        byte[] bArr = z ? R : S;
        int length = bArr.length;
        System.arraycopy(bArr, 0, this.I, this.J, length);
        this.J += length;
    }

    public final void a(String str, boolean z) {
        if (z) {
            if (this.J >= this.K) {
                d();
            }
            byte[] bArr = this.I;
            int i2 = this.J;
            this.J = i2 + 1;
            bArr[i2] = this.H;
        }
        int length = str.length();
        int i3 = 0;
        while (length > 0) {
            int min = Math.min(this.L, length);
            if (this.J + min > this.K) {
                d();
            }
            a(str, i3, min);
            i3 += min;
            length -= min;
        }
        if (z) {
            if (this.J >= this.K) {
                d();
            }
            byte[] bArr2 = this.I;
            int i4 = this.J;
            this.J = i4 + 1;
            bArr2[i4] = this.H;
        }
    }

    public final void a(String str, int i2, int i3) {
        int i4;
        int i5;
        char charAt;
        int i6 = i3 + i2;
        int i7 = this.J;
        byte[] bArr = this.I;
        int[] iArr = this.B;
        while (r12 < i6 && (charAt = str.charAt(r12)) <= 127 && iArr[charAt] == 0) {
            bArr[i7] = (byte) charAt;
            i2 = r12 + 1;
            i7++;
        }
        this.J = i7;
        if (r12 >= i6) {
            return;
        }
        if (this.C == 0) {
            if (((i6 - r12) * 6) + i7 > this.K) {
                d();
            }
            int i8 = this.J;
            byte[] bArr2 = this.I;
            int[] iArr2 = this.B;
            while (r12 < i6) {
                int i9 = r12 + 1;
                char charAt2 = str.charAt(r12);
                if (charAt2 <= 127) {
                    if (iArr2[charAt2] == 0) {
                        bArr2[i8] = (byte) charAt2;
                        r12 = i9;
                        i8++;
                    } else {
                        int i10 = iArr2[charAt2];
                        if (i10 > 0) {
                            int i11 = i8 + 1;
                            bArr2[i8] = 92;
                            i8 = i11 + 1;
                            bArr2[i11] = (byte) i10;
                            r12 = i9;
                        } else {
                            i5 = b(charAt2, i8);
                        }
                    }
                } else if (charAt2 <= 2047) {
                    int i12 = i8 + 1;
                    bArr2[i8] = (byte) ((charAt2 >> 6) | 192);
                    i8 = i12 + 1;
                    bArr2[i12] = (byte) ((charAt2 & '?') | 128);
                    r12 = i9;
                } else {
                    i5 = a((int) charAt2, i8);
                }
                i8 = i5;
                r12 = i9;
            }
            this.J = i8;
            return;
        }
        if (((i6 - r12) * 6) + i7 > this.K) {
            d();
        }
        int i13 = this.J;
        byte[] bArr3 = this.I;
        int[] iArr3 = this.B;
        int i14 = this.C;
        while (r12 < i6) {
            int i15 = r12 + 1;
            char charAt3 = str.charAt(r12);
            if (charAt3 <= 127) {
                if (iArr3[charAt3] == 0) {
                    bArr3[i13] = (byte) charAt3;
                    r12 = i15;
                    i13++;
                } else {
                    int i16 = iArr3[charAt3];
                    if (i16 > 0) {
                        int i17 = i13 + 1;
                        bArr3[i13] = 92;
                        i13 = i17 + 1;
                        bArr3[i17] = (byte) i16;
                        r12 = i15;
                    } else {
                        i4 = b(charAt3, i13);
                    }
                }
            } else if (charAt3 > i14) {
                i4 = b(charAt3, i13);
            } else if (charAt3 <= 2047) {
                int i18 = i13 + 1;
                bArr3[i13] = (byte) ((charAt3 >> 6) | 192);
                i13 = i18 + 1;
                bArr3[i18] = (byte) ((charAt3 & '?') | 128);
                r12 = i15;
            } else {
                i4 = a((int) charAt3, i13);
            }
            i13 = i4;
            r12 = i15;
        }
        this.J = i13;
    }

    public final int a(int i2, char[] cArr, int i3, int i4) {
        if (i2 < 55296 || i2 > 57343) {
            byte[] bArr = this.I;
            int i5 = this.J;
            int i6 = i5 + 1;
            this.J = i6;
            bArr[i5] = (byte) ((i2 >> 12) | 224);
            int i7 = i6 + 1;
            this.J = i7;
            bArr[i6] = (byte) (((i2 >> 6) & 63) | 128);
            this.J = i7 + 1;
            bArr[i7] = (byte) ((i2 & 63) | 128);
            return i3;
        } else if (i3 >= i4 || cArr == null) {
            throw new e(String.format("Split surrogate on writeRaw() input (last character): first character 0x%4x", new Object[]{Integer.valueOf(i2)}), this);
        } else {
            char c2 = cArr[i3];
            if (c2 < 56320 || c2 > 57343) {
                StringBuilder a = e.a.a.a.a.a("Incomplete surrogate pair: first char 0x");
                a.append(Integer.toHexString(i2));
                a.append(", second 0x");
                a.append(Integer.toHexString(c2));
                throw new e(a.toString(), this);
            }
            int i8 = (c2 - 56320) + ((i2 - 55296) << 10) + 65536;
            if (this.J + 4 > this.K) {
                d();
            }
            byte[] bArr2 = this.I;
            int i9 = this.J;
            int i10 = i9 + 1;
            this.J = i10;
            bArr2[i9] = (byte) ((i8 >> 18) | 240);
            int i11 = i10 + 1;
            this.J = i11;
            bArr2[i10] = (byte) (((i8 >> 12) & 63) | 128);
            int i12 = i11 + 1;
            this.J = i12;
            bArr2[i11] = (byte) (((i8 >> 6) & 63) | 128);
            this.J = i12 + 1;
            bArr2[i12] = (byte) ((i8 & 63) | 128);
            return i3 + 1;
        }
    }

    public final int a(int i2, int i3) {
        byte[] bArr = this.I;
        if (i2 < 55296 || i2 > 57343) {
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((i2 >> 12) | 224);
            int i5 = i4 + 1;
            bArr[i4] = (byte) (((i2 >> 6) & 63) | 128);
            bArr[i5] = (byte) ((i2 & 63) | 128);
            return i5 + 1;
        }
        int i6 = i3 + 1;
        bArr[i3] = 92;
        int i7 = i6 + 1;
        bArr[i6] = 117;
        int i8 = i7 + 1;
        byte[] bArr2 = P;
        bArr[i7] = bArr2[(i2 >> 12) & 15];
        int i9 = i8 + 1;
        bArr[i8] = bArr2[(i2 >> 8) & 15];
        int i10 = i9 + 1;
        bArr[i9] = bArr2[(i2 >> 4) & 15];
        int i11 = i10 + 1;
        bArr[i10] = bArr2[i2 & 15];
        return i11;
    }
}
