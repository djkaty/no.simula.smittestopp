package e.b.a.a.q;

import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.b;
import e.b.a.a.p.a;
import e.b.a.a.r.a;
import e.b.a.a.s.c;
import e.b.a.a.s.g;
import java.io.IOException;
import java.io.InputStream;

public class h extends b {
    public static final int[] b0 = a.f1049d;
    public static final int[] c0 = a.f1048c;
    public static final int d0 = i.a.ALLOW_TRAILING_COMMA.getMask();
    public final e.b.a.a.r.a T;
    public int[] U = new int[16];
    public boolean V;
    public int W;
    public int X;
    public InputStream Y;
    public byte[] Z;
    public boolean a0;

    public h(e.b.a.a.p.b bVar, int i2, InputStream inputStream, e.b.a.a.r.a aVar, byte[] bArr, int i3, int i4, boolean z) {
        super(bVar, i2);
        this.Y = inputStream;
        this.T = aVar;
        this.Z = bArr;
        this.G = i3;
        this.H = i4;
        this.K = i3;
        this.I = (long) (-i3);
        this.a0 = z;
    }

    public static final int c(int i2, int i3) {
        return i3 == 4 ? i2 : i2 | (-1 << (i3 << 3));
    }

    public final void A() {
        int[] iArr = a.f1052g;
        while (true) {
            if (this.G < this.H || s()) {
                byte[] bArr = this.Z;
                int i2 = this.G;
                int i3 = i2 + 1;
                this.G = i3;
                byte b = bArr[i2] & 255;
                int i4 = iArr[b];
                if (i4 != 0) {
                    if (i4 == 2) {
                        B();
                    } else if (i4 == 3) {
                        C();
                    } else if (i4 == 4) {
                        D();
                    } else if (i4 == 10) {
                        this.J++;
                        this.K = i3;
                        return;
                    } else if (i4 == 13) {
                        y();
                        return;
                    } else if (i4 != 42 && i4 < 0) {
                        j(b);
                        throw null;
                    }
                }
            } else {
                return;
            }
        }
    }

    public final void B() {
        if (this.G >= this.H) {
            t();
        }
        byte[] bArr = this.Z;
        int i2 = this.G;
        int i3 = i2 + 1;
        this.G = i3;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            a((int) b & 255, i3);
            throw null;
        }
    }

    public final void C() {
        if (this.G >= this.H) {
            t();
        }
        byte[] bArr = this.Z;
        int i2 = this.G;
        int i3 = i2 + 1;
        this.G = i3;
        byte b = bArr[i2];
        if ((b & 192) == 128) {
            if (i3 >= this.H) {
                t();
            }
            byte[] bArr2 = this.Z;
            int i4 = this.G;
            int i5 = i4 + 1;
            this.G = i5;
            byte b2 = bArr2[i4];
            if ((b2 & 192) != 128) {
                a((int) b2 & 255, i5);
                throw null;
            }
            return;
        }
        a((int) b & 255, i3);
        throw null;
    }

    public final void D() {
        if (this.G >= this.H) {
            t();
        }
        byte[] bArr = this.Z;
        int i2 = this.G;
        int i3 = i2 + 1;
        this.G = i3;
        byte b = bArr[i2];
        if ((b & 192) == 128) {
            if (i3 >= this.H) {
                t();
            }
            byte[] bArr2 = this.Z;
            int i4 = this.G;
            int i5 = i4 + 1;
            this.G = i5;
            byte b2 = bArr2[i4];
            if ((b2 & 192) == 128) {
                if (i5 >= this.H) {
                    t();
                }
                byte[] bArr3 = this.Z;
                int i6 = this.G;
                int i7 = i6 + 1;
                this.G = i7;
                byte b3 = bArr3[i6];
                if ((b3 & 192) != 128) {
                    a((int) b3 & 255, i7);
                    throw null;
                }
                return;
            }
            a((int) b2 & 255, i5);
            throw null;
        }
        a((int) b & 255, i3);
        throw null;
    }

    public final int E() {
        byte b;
        while (true) {
            if (this.G < this.H || s()) {
                byte[] bArr = this.Z;
                int i2 = this.G;
                int i3 = i2 + 1;
                this.G = i3;
                b = bArr[i2] & 255;
                if (b > 32) {
                    if (b == 47) {
                        z();
                    } else if (b != 35 || !G()) {
                        return b;
                    }
                } else if (b == 32) {
                    continue;
                } else if (b == 10) {
                    this.J++;
                    this.K = i3;
                } else if (b == 13) {
                    y();
                } else if (b != 9) {
                    a((int) b);
                    throw null;
                }
            } else {
                StringBuilder a = e.a.a.a.a.a("Unexpected end-of-input within/between ");
                a.append(this.N.e());
                a.append(" entries");
                throw a(a.toString());
            }
        }
        return b;
    }

    public final int F() {
        byte b;
        while (true) {
            if (this.G < this.H || s()) {
                byte[] bArr = this.Z;
                int i2 = this.G;
                int i3 = i2 + 1;
                this.G = i3;
                b = bArr[i2] & 255;
                if (b > 32) {
                    if (b == 47) {
                        z();
                    } else if (b != 35 || !G()) {
                        return b;
                    }
                } else if (b == 32) {
                    continue;
                } else if (b == 10) {
                    this.J++;
                    this.K = i3;
                } else if (b == 13) {
                    y();
                } else if (b != 9) {
                    a((int) b);
                    throw null;
                }
            } else {
                l();
                return -1;
            }
        }
        return b;
    }

    public final boolean G() {
        if (!a(i.a.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        A();
        return true;
    }

    public final void H() {
        this.L = this.J;
        this.M = this.G - this.K;
    }

    public final int I() {
        byte b;
        if ((this.G >= this.H && !s()) || (b = this.Z[this.G] & 255) < 48 || b > 57) {
            return 48;
        }
        if (a(i.a.ALLOW_NUMERIC_LEADING_ZEROS)) {
            this.G++;
            if (b == 48) {
                do {
                    if (this.G >= this.H && !s()) {
                        break;
                    }
                    byte[] bArr = this.Z;
                    int i2 = this.G;
                    b = bArr[i2] & 255;
                    if (b < 48 || b > 57) {
                        return 48;
                    }
                    this.G = i2 + 1;
                } while (b == 48);
            }
            return b;
        }
        throw a("Invalid numeric value: " + "Leading zeroes not allowed");
    }

    public final int J() {
        if (this.G >= this.H) {
            t();
        }
        byte[] bArr = this.Z;
        int i2 = this.G;
        this.G = i2 + 1;
        return bArr[i2] & 255;
    }

    public byte[] a(e.b.a.a.a aVar) {
        l lVar = this.y;
        if (lVar == l.VALUE_STRING || (lVar == l.VALUE_EMBEDDED_OBJECT && this.S != null)) {
            if (this.V) {
                try {
                    this.S = b(aVar);
                    this.V = false;
                } catch (IllegalArgumentException e2) {
                    throw a("Failed to decode VALUE_STRING as base64 (" + aVar + "): " + e2.getMessage());
                }
            } else if (this.S == null) {
                c m = m();
                try {
                    aVar.a(i(), m);
                    this.S = m.c();
                } catch (IllegalArgumentException e3) {
                    throw a(e3.getMessage());
                }
            }
            return this.S;
        }
        StringBuilder a = e.a.a.a.a.a("Current token (");
        a.append(this.y);
        a.append(") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
        throw a(a.toString());
    }

    public String b(String str) {
        l lVar = this.y;
        if (lVar == l.VALUE_STRING) {
            if (!this.V) {
                return this.P.b();
            }
            this.V = false;
            return r();
        } else if (lVar == l.FIELD_NAME) {
            return c();
        } else {
            return super.b(str);
        }
    }

    public int c(int i2) {
        int i3;
        char c2;
        int i4 = i2 & 255;
        if (i4 <= 127) {
            return i4;
        }
        if ((i4 & 224) == 192) {
            i3 = i4 & 31;
            c2 = 1;
        } else if ((i4 & 240) == 224) {
            i3 = i4 & 15;
            c2 = 2;
        } else if ((i4 & 248) == 240) {
            i3 = i4 & 7;
            c2 = 3;
        } else {
            k(i4 & 255);
            throw null;
        }
        int J = J();
        if ((J & 192) == 128) {
            int i5 = (i3 << 6) | (J & 63);
            if (c2 <= 1) {
                return i5;
            }
            int J2 = J();
            if ((J2 & 192) == 128) {
                int i6 = (i5 << 6) | (J2 & 63);
                if (c2 <= 2) {
                    return i6;
                }
                int J3 = J();
                if ((J3 & 192) == 128) {
                    return (i6 << 6) | (J3 & 63);
                }
                l(J3 & 255);
                throw null;
            }
            l(J2 & 255);
            throw null;
        }
        l(J & 255);
        throw null;
    }

    public String d() {
        l lVar = this.y;
        if (lVar == l.VALUE_STRING) {
            if (!this.V) {
                return this.P.b();
            }
            this.V = false;
            return r();
        } else if (lVar == l.FIELD_NAME) {
            return c();
        } else {
            return super.b((String) null);
        }
    }

    public final int e(int i2) {
        if (this.G >= this.H) {
            t();
        }
        int i3 = i2 & 15;
        byte[] bArr = this.Z;
        int i4 = this.G;
        int i5 = i4 + 1;
        this.G = i5;
        byte b = bArr[i4];
        if ((b & 192) == 128) {
            byte b2 = (i3 << 6) | (b & 63);
            if (i5 >= this.H) {
                t();
            }
            byte[] bArr2 = this.Z;
            int i6 = this.G;
            int i7 = i6 + 1;
            this.G = i7;
            byte b3 = bArr2[i6];
            if ((b3 & 192) == 128) {
                return (b2 << 6) | (b3 & 63);
            }
            a((int) b3 & 255, i7);
            throw null;
        }
        a((int) b & 255, i5);
        throw null;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v8, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v40, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v2, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v4, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v4, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v125, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v210, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v211, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v212, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v213, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v214, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v215, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v216, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v217, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v218, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v219, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v220, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:341:0x06b7  */
    /* JADX WARNING: Removed duplicated region for block: B:342:0x06bd  */
    /* JADX WARNING: Removed duplicated region for block: B:384:0x0759  */
    /* JADX WARNING: Removed duplicated region for block: B:386:0x0762  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public e.b.a.a.l f() {
        /*
            r17 = this;
            r6 = r17
            e.b.a.a.l r0 = r6.y
            e.b.a.a.l r1 = e.b.a.a.l.FIELD_NAME
            r2 = 0
            if (r0 != r1) goto L_0x0031
            e.b.a.a.l r0 = r6.O
            r6.O = r2
            e.b.a.a.l r1 = e.b.a.a.l.START_ARRAY
            if (r0 != r1) goto L_0x001e
            e.b.a.a.q.d r1 = r6.N
            int r2 = r6.L
            int r3 = r6.M
            e.b.a.a.q.d r1 = r1.a(r2, r3)
            r6.N = r1
            goto L_0x002e
        L_0x001e:
            e.b.a.a.l r1 = e.b.a.a.l.START_OBJECT
            if (r0 != r1) goto L_0x002e
            e.b.a.a.q.d r1 = r6.N
            int r2 = r6.L
            int r3 = r6.M
            e.b.a.a.q.d r1 = r1.b(r2, r3)
            r6.N = r1
        L_0x002e:
            r6.y = r0
            return r0
        L_0x0031:
            boolean r0 = r6.V
            r7 = 34
            r8 = 32
            r1 = 4
            r3 = 3
            r4 = 2
            r5 = 0
            r9 = 1
            if (r0 == 0) goto L_0x008d
            r6.V = r5
            int[] r0 = b0
            byte[] r5 = r6.Z
        L_0x0044:
            int r10 = r6.G
            int r11 = r6.H
            if (r10 < r11) goto L_0x0051
            r17.t()
            int r10 = r6.G
            int r11 = r6.H
        L_0x0051:
            if (r10 >= r11) goto L_0x008a
            int r12 = r10 + 1
            byte r10 = r5[r10]
            r10 = r10 & 255(0xff, float:3.57E-43)
            r13 = r0[r10]
            if (r13 == 0) goto L_0x0088
            r6.G = r12
            if (r10 != r7) goto L_0x0062
            goto L_0x008d
        L_0x0062:
            r11 = r0[r10]
            if (r11 == r9) goto L_0x0084
            if (r11 == r4) goto L_0x0080
            if (r11 == r3) goto L_0x007c
            if (r11 == r1) goto L_0x0078
            if (r10 >= r8) goto L_0x0074
            java.lang.String r11 = "string value"
            r6.b(r10, r11)
            goto L_0x0044
        L_0x0074:
            r6.j(r10)
            throw r2
        L_0x0078:
            r17.D()
            goto L_0x0044
        L_0x007c:
            r17.C()
            goto L_0x0044
        L_0x0080:
            r17.B()
            goto L_0x0044
        L_0x0084:
            r17.k()
            goto L_0x0044
        L_0x0088:
            r10 = r12
            goto L_0x0051
        L_0x008a:
            r6.G = r10
            goto L_0x0044
        L_0x008d:
            int r0 = r6.G
            int r1 = r6.H
            r3 = 10
            r10 = 47
            r4 = 13
            r5 = 9
            r11 = 35
            if (r0 < r1) goto L_0x00a9
            boolean r0 = r17.s()
            if (r0 != 0) goto L_0x00a9
            r17.l()
            r0 = -1
            goto L_0x011d
        L_0x00a9:
            byte[] r0 = r6.Z
            int r1 = r6.G
            int r12 = r1 + 1
            r6.G = r12
            byte r0 = r0[r1]
            r0 = r0 & 255(0xff, float:3.57E-43)
            if (r0 <= r8) goto L_0x00c6
            if (r0 == r10) goto L_0x00bb
            if (r0 != r11) goto L_0x011d
        L_0x00bb:
            int r0 = r6.G
            int r0 = r0 + -1
            r6.G = r0
            int r0 = r17.F()
            goto L_0x011d
        L_0x00c6:
            if (r0 == r8) goto L_0x00df
            if (r0 != r3) goto L_0x00d2
            int r0 = r6.J
            int r0 = r0 + r9
            r6.J = r0
            r6.K = r12
            goto L_0x00df
        L_0x00d2:
            if (r0 != r4) goto L_0x00d8
            r17.y()
            goto L_0x00df
        L_0x00d8:
            if (r0 != r5) goto L_0x00db
            goto L_0x00df
        L_0x00db:
            r6.a((int) r0)
            throw r2
        L_0x00df:
            int r0 = r6.G
            int r1 = r6.H
            if (r0 >= r1) goto L_0x0119
            byte[] r1 = r6.Z
            int r12 = r0 + 1
            r6.G = r12
            byte r0 = r1[r0]
            r0 = r0 & 255(0xff, float:3.57E-43)
            if (r0 <= r8) goto L_0x0100
            if (r0 == r10) goto L_0x00f5
            if (r0 != r11) goto L_0x011d
        L_0x00f5:
            int r0 = r6.G
            int r0 = r0 + -1
            r6.G = r0
            int r0 = r17.F()
            goto L_0x011d
        L_0x0100:
            if (r0 == r8) goto L_0x00df
            if (r0 != r3) goto L_0x010c
            int r0 = r6.J
            int r0 = r0 + r9
            r6.J = r0
            r6.K = r12
            goto L_0x00df
        L_0x010c:
            if (r0 != r4) goto L_0x0112
            r17.y()
            goto L_0x00df
        L_0x0112:
            if (r0 != r5) goto L_0x0115
            goto L_0x00df
        L_0x0115:
            r6.a((int) r0)
            throw r2
        L_0x0119:
            int r0 = r17.F()
        L_0x011d:
            if (r0 >= 0) goto L_0x0125
            r17.close()
            r6.y = r2
            return r2
        L_0x0125:
            r6.S = r2
            r1 = 93
            if (r0 != r1) goto L_0x0133
            r17.p()
            e.b.a.a.l r0 = e.b.a.a.l.END_ARRAY
            r6.y = r0
            return r0
        L_0x0133:
            r12 = 125(0x7d, float:1.75E-43)
            if (r0 != r12) goto L_0x013f
            r17.q()
            e.b.a.a.l r0 = e.b.a.a.l.END_OBJECT
            r6.y = r0
            return r0
        L_0x013f:
            e.b.a.a.q.d r13 = r6.N
            int r14 = r13.b
            int r14 = r14 + r9
            r13.b = r14
            int r13 = r13.a
            if (r13 == 0) goto L_0x014e
            if (r14 <= 0) goto L_0x014e
            r13 = 1
            goto L_0x014f
        L_0x014e:
            r13 = 0
        L_0x014f:
            if (r13 == 0) goto L_0x01cc
            r13 = 44
            if (r0 != r13) goto L_0x01b0
        L_0x0155:
            int r0 = r6.G
            int r13 = r6.H
            if (r0 >= r13) goto L_0x018f
            byte[] r13 = r6.Z
            int r14 = r0 + 1
            r6.G = r14
            byte r0 = r13[r0]
            r0 = r0 & 255(0xff, float:3.57E-43)
            if (r0 <= r8) goto L_0x0176
            if (r0 == r10) goto L_0x016b
            if (r0 != r11) goto L_0x0193
        L_0x016b:
            int r0 = r6.G
            int r0 = r0 + -1
            r6.G = r0
            int r0 = r17.E()
            goto L_0x0193
        L_0x0176:
            if (r0 == r8) goto L_0x0155
            if (r0 != r3) goto L_0x0182
            int r0 = r6.J
            int r0 = r0 + r9
            r6.J = r0
            r6.K = r14
            goto L_0x0155
        L_0x0182:
            if (r0 != r4) goto L_0x0188
            r17.y()
            goto L_0x0155
        L_0x0188:
            if (r0 != r5) goto L_0x018b
            goto L_0x0155
        L_0x018b:
            r6.a((int) r0)
            throw r2
        L_0x018f:
            int r0 = r17.E()
        L_0x0193:
            int r3 = r6.x
            int r4 = d0
            r3 = r3 & r4
            if (r3 == 0) goto L_0x01cc
            if (r0 == r1) goto L_0x019e
            if (r0 != r12) goto L_0x01cc
        L_0x019e:
            if (r0 != r12) goto L_0x01a8
            r17.q()
            e.b.a.a.l r0 = e.b.a.a.l.END_OBJECT
            r6.y = r0
            goto L_0x01af
        L_0x01a8:
            r17.p()
            e.b.a.a.l r0 = e.b.a.a.l.END_ARRAY
            r6.y = r0
        L_0x01af:
            return r0
        L_0x01b0:
            java.lang.String r1 = "was expecting comma to separate "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            e.b.a.a.q.d r3 = r6.N
            java.lang.String r3 = r3.e()
            r1.append(r3)
            java.lang.String r3 = " entries"
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r6.a((int) r0, (java.lang.String) r1)
            throw r2
        L_0x01cc:
            e.b.a.a.q.d r1 = r6.N
            boolean r1 = r1.c()
            r3 = 123(0x7b, float:1.72E-43)
            r4 = 116(0x74, float:1.63E-43)
            r5 = 110(0x6e, float:1.54E-43)
            r12 = 102(0x66, float:1.43E-43)
            r13 = 91
            r14 = 45
            if (r1 != 0) goto L_0x024a
            r17.H()
            if (r0 != r7) goto L_0x01ec
            r6.V = r9
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_STRING
            r6.y = r0
            goto L_0x0249
        L_0x01ec:
            if (r0 == r14) goto L_0x0243
            if (r0 == r13) goto L_0x0232
            if (r0 == r12) goto L_0x022a
            if (r0 == r5) goto L_0x0222
            if (r0 == r4) goto L_0x021a
            if (r0 == r3) goto L_0x0209
            switch(r0) {
                case 48: goto L_0x0202;
                case 49: goto L_0x0202;
                case 50: goto L_0x0202;
                case 51: goto L_0x0202;
                case 52: goto L_0x0202;
                case 53: goto L_0x0202;
                case 54: goto L_0x0202;
                case 55: goto L_0x0202;
                case 56: goto L_0x0202;
                case 57: goto L_0x0202;
                default: goto L_0x01fb;
            }
        L_0x01fb:
            e.b.a.a.l r0 = r6.h(r0)
            r6.y = r0
            goto L_0x0249
        L_0x0202:
            e.b.a.a.l r0 = r6.i(r0)
            r6.y = r0
            goto L_0x0249
        L_0x0209:
            e.b.a.a.q.d r0 = r6.N
            int r1 = r6.L
            int r2 = r6.M
            e.b.a.a.q.d r0 = r0.b(r1, r2)
            r6.N = r0
            e.b.a.a.l r0 = e.b.a.a.l.START_OBJECT
            r6.y = r0
            goto L_0x0249
        L_0x021a:
            r17.w()
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_TRUE
            r6.y = r0
            goto L_0x0249
        L_0x0222:
            r17.v()
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_NULL
            r6.y = r0
            goto L_0x0249
        L_0x022a:
            r17.u()
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_FALSE
            r6.y = r0
            goto L_0x0249
        L_0x0232:
            e.b.a.a.q.d r0 = r6.N
            int r1 = r6.L
            int r2 = r6.M
            e.b.a.a.q.d r0 = r0.a(r1, r2)
            r6.N = r0
            e.b.a.a.l r0 = e.b.a.a.l.START_ARRAY
            r6.y = r0
            goto L_0x0249
        L_0x0243:
            e.b.a.a.l r0 = r17.x()
            r6.y = r0
        L_0x0249:
            return r0
        L_0x024a:
            int r1 = r6.G
            r6.X = r1
            if (r0 == r7) goto L_0x03dd
            java.lang.String r1 = " in field name"
            r3 = 39
            if (r0 != r3) goto L_0x0354
            e.b.a.a.i$a r4 = e.b.a.a.i.a.ALLOW_SINGLE_QUOTES
            boolean r4 = r6.a((e.b.a.a.i.a) r4)
            if (r4 == 0) goto L_0x0354
            int r0 = r6.G
            int r4 = r6.H
            if (r0 < r4) goto L_0x0273
            boolean r0 = r17.s()
            if (r0 == 0) goto L_0x026b
            goto L_0x0273
        L_0x026b:
            e.b.a.a.l r0 = e.b.a.a.l.FIELD_NAME
            java.lang.String r1 = ": was expecting closing ''' for field name"
            r6.a((java.lang.String) r1, (e.b.a.a.l) r0)
            throw r2
        L_0x0273:
            byte[] r0 = r6.Z
            int r4 = r6.G
            int r5 = r4 + 1
            r6.G = r5
            byte r0 = r0[r4]
            r0 = r0 & 255(0xff, float:3.57E-43)
            if (r0 != r3) goto L_0x0283
            goto L_0x0402
        L_0x0283:
            int[] r4 = r6.U
            int[] r5 = c0
            r12 = 0
            r13 = 0
            r14 = 0
        L_0x028a:
            if (r0 != r3) goto L_0x02b0
            if (r12 <= 0) goto L_0x02a2
            int r0 = r4.length
            if (r13 < r0) goto L_0x0299
            int r0 = r4.length
            int[] r0 = e.b.a.a.o.b.a((int[]) r4, (int) r0)
            r6.U = r0
            r4 = r0
        L_0x0299:
            int r0 = r13 + 1
            int r1 = c(r14, r12)
            r4[r13] = r1
            r13 = r0
        L_0x02a2:
            e.b.a.a.r.a r0 = r6.T
            java.lang.String r0 = r0.b((int[]) r4, (int) r13)
            if (r0 != 0) goto L_0x03c0
            java.lang.String r0 = r6.a((int[]) r4, (int) r13, (int) r12)
            goto L_0x069f
        L_0x02b0:
            r3 = r5[r0]
            if (r3 == 0) goto L_0x0316
            if (r0 == r7) goto L_0x0316
            r3 = 92
            if (r0 == r3) goto L_0x02c0
            java.lang.String r3 = "name"
            r6.b(r0, r3)
            goto L_0x02c4
        L_0x02c0:
            char r0 = r17.k()
        L_0x02c4:
            r3 = 127(0x7f, float:1.78E-43)
            if (r0 <= r3) goto L_0x0316
            r3 = 4
            if (r12 < r3) goto L_0x02dc
            int r3 = r4.length
            if (r13 < r3) goto L_0x02d5
            int r3 = r4.length
            int[] r4 = e.b.a.a.o.b.a((int[]) r4, (int) r3)
            r6.U = r4
        L_0x02d5:
            int r3 = r13 + 1
            r4[r13] = r14
            r12 = 0
            r14 = 0
            r13 = r3
        L_0x02dc:
            r3 = 2048(0x800, float:2.87E-42)
            int r14 = r14 << 8
            if (r0 >= r3) goto L_0x02eb
            int r3 = r0 >> 6
            r3 = r3 | 192(0xc0, float:2.69E-43)
            r3 = r3 | r14
            int r12 = r12 + 1
        L_0x02e9:
            r14 = r3
            goto L_0x0312
        L_0x02eb:
            int r3 = r0 >> 12
            r3 = r3 | 224(0xe0, float:3.14E-43)
            r3 = r3 | r14
            int r12 = r12 + 1
            r14 = 4
            if (r12 < r14) goto L_0x0307
            int r12 = r4.length
            if (r13 < r12) goto L_0x02ff
            int r12 = r4.length
            int[] r4 = e.b.a.a.o.b.a((int[]) r4, (int) r12)
            r6.U = r4
        L_0x02ff:
            int r12 = r13 + 1
            r4[r13] = r3
            r3 = 0
            r13 = 0
            r13 = r12
            r12 = 0
        L_0x0307:
            int r3 = r3 << 8
            int r14 = r0 >> 6
            r14 = r14 & 63
            r14 = r14 | 128(0x80, float:1.794E-43)
            r3 = r3 | r14
            int r12 = r12 + r9
            goto L_0x02e9
        L_0x0312:
            r0 = r0 & 63
            r0 = r0 | 128(0x80, float:1.794E-43)
        L_0x0316:
            r3 = 4
            if (r12 >= r3) goto L_0x0320
            int r12 = r12 + 1
            int r3 = r14 << 8
            r0 = r0 | r3
            r14 = r0
            goto L_0x0331
        L_0x0320:
            int r3 = r4.length
            if (r13 < r3) goto L_0x032a
            int r3 = r4.length
            int[] r4 = e.b.a.a.o.b.a((int[]) r4, (int) r3)
            r6.U = r4
        L_0x032a:
            int r3 = r13 + 1
            r4[r13] = r14
            r12 = 1
            r14 = r0
            r13 = r3
        L_0x0331:
            int r0 = r6.G
            int r3 = r6.H
            if (r0 < r3) goto L_0x0344
            boolean r0 = r17.s()
            if (r0 == 0) goto L_0x033e
            goto L_0x0344
        L_0x033e:
            e.b.a.a.l r0 = e.b.a.a.l.FIELD_NAME
            r6.a((java.lang.String) r1, (e.b.a.a.l) r0)
            throw r2
        L_0x0344:
            byte[] r0 = r6.Z
            int r3 = r6.G
            int r15 = r3 + 1
            r6.G = r15
            byte r0 = r0[r3]
            r0 = r0 & 255(0xff, float:3.57E-43)
            r3 = 39
            goto L_0x028a
        L_0x0354:
            e.b.a.a.i$a r3 = e.b.a.a.i.a.ALLOW_UNQUOTED_FIELD_NAMES
            boolean r3 = r6.a((e.b.a.a.i.a) r3)
            if (r3 == 0) goto L_0x03d2
            int[] r3 = e.b.a.a.p.a.f1051f
            r4 = r3[r0]
            if (r4 != 0) goto L_0x03cc
            int[] r4 = r6.U
            r5 = 0
            r12 = 0
            r13 = 0
        L_0x0367:
            r14 = 4
            if (r5 >= r14) goto L_0x0371
            int r5 = r5 + 1
            int r13 = r13 << 8
            r0 = r0 | r13
            r13 = r0
            goto L_0x0383
        L_0x0371:
            int r5 = r4.length
            if (r12 < r5) goto L_0x037b
            int r5 = r4.length
            int[] r4 = e.b.a.a.o.b.a((int[]) r4, (int) r5)
            r6.U = r4
        L_0x037b:
            int r5 = r12 + 1
            r4[r12] = r13
            r12 = 1
            r13 = r0
            r12 = r5
            r5 = 1
        L_0x0383:
            int r0 = r6.G
            int r14 = r6.H
            if (r0 < r14) goto L_0x0396
            boolean r0 = r17.s()
            if (r0 == 0) goto L_0x0390
            goto L_0x0396
        L_0x0390:
            e.b.a.a.l r0 = e.b.a.a.l.FIELD_NAME
            r6.a((java.lang.String) r1, (e.b.a.a.l) r0)
            throw r2
        L_0x0396:
            byte[] r0 = r6.Z
            int r14 = r6.G
            byte r0 = r0[r14]
            r0 = r0 & 255(0xff, float:3.57E-43)
            r15 = r3[r0]
            if (r15 == 0) goto L_0x03c7
            if (r5 <= 0) goto L_0x03b4
            int r0 = r4.length
            if (r12 < r0) goto L_0x03af
            int r0 = r4.length
            int[] r0 = e.b.a.a.o.b.a((int[]) r4, (int) r0)
            r6.U = r0
            r4 = r0
        L_0x03af:
            int r0 = r12 + 1
            r4[r12] = r13
            r12 = r0
        L_0x03b4:
            e.b.a.a.r.a r0 = r6.T
            java.lang.String r0 = r0.b((int[]) r4, (int) r12)
            if (r0 != 0) goto L_0x03c0
            java.lang.String r0 = r6.a((int[]) r4, (int) r12, (int) r5)
        L_0x03c0:
            r1 = 45
            r2 = 91
            r3 = 102(0x66, float:1.43E-43)
            goto L_0x0415
        L_0x03c7:
            int r14 = r14 + 1
            r6.G = r14
            goto L_0x0367
        L_0x03cc:
            java.lang.String r1 = "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"
            r6.a((int) r0, (java.lang.String) r1)
            throw r2
        L_0x03d2:
            int r0 = r6.c((int) r0)
            char r0 = (char) r0
            java.lang.String r1 = "was expecting double-quote to start field name"
            r6.a((int) r0, (java.lang.String) r1)
            throw r2
        L_0x03dd:
            int r0 = r1 + 13
            int r3 = r6.H
            if (r0 <= r3) goto L_0x041d
            if (r1 < r3) goto L_0x03f4
            boolean r0 = r17.s()
            if (r0 == 0) goto L_0x03ec
            goto L_0x03f4
        L_0x03ec:
            e.b.a.a.l r0 = e.b.a.a.l.FIELD_NAME
            java.lang.String r1 = ": was expecting closing '\"' for name"
            r6.a((java.lang.String) r1, (e.b.a.a.l) r0)
            throw r2
        L_0x03f4:
            byte[] r0 = r6.Z
            int r1 = r6.G
            int r2 = r1 + 1
            r6.G = r2
            byte r0 = r0[r1]
            r4 = r0 & 255(0xff, float:3.57E-43)
            if (r4 != r7) goto L_0x0404
        L_0x0402:
            goto L_0x068b
        L_0x0404:
            int[] r1 = r6.U
            r2 = 0
            r3 = 0
            r5 = 0
            r12 = 45
            r13 = 91
            r14 = 102(0x66, float:1.43E-43)
            r0 = r17
            java.lang.String r0 = r0.a((int[]) r1, (int) r2, (int) r3, (int) r4, (int) r5)
        L_0x0415:
            r2 = 45
            r3 = 91
            r4 = 102(0x66, float:1.43E-43)
            goto L_0x0697
        L_0x041d:
            r12 = 45
            r13 = 91
            r14 = 102(0x66, float:1.43E-43)
            byte[] r0 = r6.Z
            int[] r2 = c0
            int r3 = r1 + 1
            r6.G = r3
            byte r1 = r0[r1]
            r1 = r1 & 255(0xff, float:3.57E-43)
            r4 = r2[r1]
            if (r4 != 0) goto L_0x0689
            int r4 = r3 + 1
            r6.G = r4
            byte r3 = r0[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r5 = r2[r3]
            if (r5 != 0) goto L_0x067b
            int r1 = r1 << 8
            r1 = r1 | r3
            int r3 = r4 + 1
            r6.G = r3
            byte r4 = r0[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r5 = r2[r4]
            if (r5 != 0) goto L_0x066b
            int r1 = r1 << 8
            r1 = r1 | r4
            int r4 = r3 + 1
            r6.G = r4
            byte r3 = r0[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r5 = r2[r3]
            if (r5 != 0) goto L_0x065b
            int r1 = r1 << 8
            r1 = r1 | r3
            int r3 = r4 + 1
            r6.G = r3
            byte r4 = r0[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r5 = r2[r4]
            if (r5 != 0) goto L_0x064b
            r6.W = r1
            int r5 = r3 + 1
            r6.G = r5
            byte r3 = r0[r3]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r15 = r2[r3]
            if (r15 == 0) goto L_0x0486
            if (r3 != r7) goto L_0x0481
            java.lang.String r0 = r6.a((int) r1, (int) r4, (int) r9)
            goto L_0x0415
        L_0x0481:
            java.lang.String r0 = r6.b(r1, r4, r3, r9)
            goto L_0x0415
        L_0x0486:
            int r4 = r4 << 8
            r3 = r3 | r4
            int r4 = r5 + 1
            r6.G = r4
            byte r5 = r0[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r15 = r2[r5]
            if (r15 == 0) goto L_0x04a5
            if (r5 != r7) goto L_0x049e
            r0 = 2
            java.lang.String r0 = r6.a((int) r1, (int) r3, (int) r0)
            goto L_0x0415
        L_0x049e:
            r0 = 2
            java.lang.String r0 = r6.b(r1, r3, r5, r0)
            goto L_0x0415
        L_0x04a5:
            int r3 = r3 << 8
            r3 = r3 | r5
            int r5 = r4 + 1
            r6.G = r5
            byte r4 = r0[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r15 = r2[r4]
            if (r15 == 0) goto L_0x04c4
            if (r4 != r7) goto L_0x04bd
            r0 = 3
            java.lang.String r0 = r6.a((int) r1, (int) r3, (int) r0)
            goto L_0x0415
        L_0x04bd:
            r0 = 3
            java.lang.String r0 = r6.b(r1, r3, r4, r0)
            goto L_0x0415
        L_0x04c4:
            int r3 = r3 << 8
            r3 = r3 | r4
            int r4 = r5 + 1
            r6.G = r4
            byte r5 = r0[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r15 = r2[r5]
            if (r15 == 0) goto L_0x04e3
            if (r5 != r7) goto L_0x04dc
            r0 = 4
            java.lang.String r0 = r6.a((int) r1, (int) r3, (int) r0)
            goto L_0x0415
        L_0x04dc:
            r0 = 4
            java.lang.String r0 = r6.b(r1, r3, r5, r0)
            goto L_0x0415
        L_0x04e3:
            int r15 = r4 + 1
            r6.G = r15
            byte r4 = r0[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            r16 = r2[r4]
            if (r16 == 0) goto L_0x0503
            if (r4 != r7) goto L_0x04f7
            java.lang.String r0 = r6.a((int) r1, (int) r3, (int) r5, (int) r9)
            goto L_0x0415
        L_0x04f7:
            r15 = 1
            r0 = r17
            r2 = r3
            r3 = r5
            r5 = r15
            java.lang.String r0 = r0.a((int) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x0415
        L_0x0503:
            int r5 = r5 << 8
            r4 = r4 | r5
            int r5 = r15 + 1
            r6.G = r5
            byte r15 = r0[r15]
            r15 = r15 & 255(0xff, float:3.57E-43)
            r16 = r2[r15]
            if (r16 == 0) goto L_0x0527
            if (r15 != r7) goto L_0x051b
            r0 = 2
            java.lang.String r0 = r6.a((int) r1, (int) r3, (int) r4, (int) r0)
            goto L_0x0415
        L_0x051b:
            r5 = 2
            r0 = r17
            r2 = r3
            r3 = r4
            r4 = r15
            java.lang.String r0 = r0.a((int) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x0415
        L_0x0527:
            int r4 = r4 << 8
            r4 = r4 | r15
            int r15 = r5 + 1
            r6.G = r15
            byte r5 = r0[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r16 = r2[r5]
            if (r16 == 0) goto L_0x054c
            if (r5 != r7) goto L_0x053f
            r0 = 3
            java.lang.String r0 = r6.a((int) r1, (int) r3, (int) r4, (int) r0)
            goto L_0x0415
        L_0x053f:
            r15 = 3
            r0 = r17
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r15
            java.lang.String r0 = r0.a((int) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x0415
        L_0x054c:
            int r4 = r4 << 8
            r4 = r4 | r5
            int r5 = r15 + 1
            r6.G = r5
            byte r5 = r0[r15]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r15 = r2[r5]
            if (r15 == 0) goto L_0x0571
            if (r5 != r7) goto L_0x0564
            r0 = 4
            java.lang.String r0 = r6.a((int) r1, (int) r3, (int) r4, (int) r0)
            goto L_0x0415
        L_0x0564:
            r15 = 4
            r0 = r17
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r15
            java.lang.String r0 = r0.a((int) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x0415
        L_0x0571:
            int[] r15 = r6.U
            r16 = 0
            r15[r16] = r1
            r15[r9] = r3
            r1 = 2
            r15[r1] = r4
            r1 = 3
            r4 = r5
            r3 = 3
        L_0x057f:
            int r1 = r6.G
            int r5 = r1 + 4
            int r15 = r6.H
            if (r5 > r15) goto L_0x063c
            int r5 = r1 + 1
            r6.G = r5
            byte r1 = r0[r1]
            r15 = r1 & 255(0xff, float:3.57E-43)
            r1 = r2[r15]
            if (r1 == 0) goto L_0x05ab
            if (r15 != r7) goto L_0x059d
            int[] r0 = r6.U
            java.lang.String r0 = r6.a((int[]) r0, (int) r3, (int) r4, (int) r9)
            goto L_0x0415
        L_0x059d:
            int[] r1 = r6.U
            r5 = 1
            r0 = r17
            r2 = r3
            r3 = r4
            r4 = r15
            java.lang.String r0 = r0.a((int[]) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x0415
        L_0x05ab:
            int r1 = r4 << 8
            r4 = r15 | r1
            int r1 = r5 + 1
            r6.G = r1
            byte r5 = r0[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r15 = r2[r5]
            if (r15 == 0) goto L_0x05d5
            if (r5 != r7) goto L_0x05c6
            int[] r0 = r6.U
            r1 = 2
            java.lang.String r0 = r6.a((int[]) r0, (int) r3, (int) r4, (int) r1)
            goto L_0x0415
        L_0x05c6:
            int[] r1 = r6.U
            r15 = 2
            r0 = r17
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r15
            java.lang.String r0 = r0.a((int[]) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x0415
        L_0x05d5:
            int r4 = r4 << 8
            r4 = r4 | r5
            int r5 = r1 + 1
            r6.G = r5
            byte r1 = r0[r1]
            r15 = r1 & 255(0xff, float:3.57E-43)
            r1 = r2[r15]
            if (r1 == 0) goto L_0x05fd
            if (r15 != r7) goto L_0x05ef
            int[] r0 = r6.U
            r1 = 3
            java.lang.String r0 = r6.a((int[]) r0, (int) r3, (int) r4, (int) r1)
            goto L_0x0415
        L_0x05ef:
            int[] r1 = r6.U
            r5 = 3
            r0 = r17
            r2 = r3
            r3 = r4
            r4 = r15
            java.lang.String r0 = r0.a((int[]) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x0415
        L_0x05fd:
            int r1 = r4 << 8
            r4 = r1 | r15
            int r1 = r5 + 1
            r6.G = r1
            byte r1 = r0[r5]
            r5 = r1 & 255(0xff, float:3.57E-43)
            r1 = r2[r5]
            if (r1 == 0) goto L_0x0627
            if (r5 != r7) goto L_0x0618
            int[] r0 = r6.U
            r1 = 4
            java.lang.String r0 = r6.a((int[]) r0, (int) r3, (int) r4, (int) r1)
            goto L_0x0415
        L_0x0618:
            int[] r1 = r6.U
            r15 = 4
            r0 = r17
            r2 = r3
            r3 = r4
            r4 = r5
            r5 = r15
            java.lang.String r0 = r0.a((int[]) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x0415
        L_0x0627:
            int[] r1 = r6.U
            int r15 = r1.length
            if (r3 < r15) goto L_0x0632
            int[] r1 = e.b.a.a.o.b.a((int[]) r1, (int) r3)
            r6.U = r1
        L_0x0632:
            int[] r1 = r6.U
            int r15 = r3 + 1
            r1[r3] = r4
            r4 = r5
            r3 = r15
            goto L_0x057f
        L_0x063c:
            int[] r1 = r6.U
            r5 = 0
            r15 = 0
            r0 = r17
            r2 = r3
            r3 = r5
            r5 = r15
            java.lang.String r0 = r0.a((int[]) r1, (int) r2, (int) r3, (int) r4, (int) r5)
            goto L_0x0415
        L_0x064b:
            if (r4 != r7) goto L_0x0654
            r0 = 4
            java.lang.String r0 = r6.b((int) r1, (int) r0)
            goto L_0x0415
        L_0x0654:
            r0 = 4
            java.lang.String r0 = r6.b(r1, r4, r0)
            goto L_0x0415
        L_0x065b:
            if (r3 != r7) goto L_0x0664
            r0 = 3
            java.lang.String r0 = r6.b((int) r1, (int) r0)
            goto L_0x0415
        L_0x0664:
            r0 = 3
            java.lang.String r0 = r6.b(r1, r3, r0)
            goto L_0x0415
        L_0x066b:
            if (r4 != r7) goto L_0x0674
            r0 = 2
            java.lang.String r0 = r6.b((int) r1, (int) r0)
            goto L_0x0415
        L_0x0674:
            r0 = 2
            java.lang.String r0 = r6.b(r1, r4, r0)
            goto L_0x0415
        L_0x067b:
            if (r3 != r7) goto L_0x0683
            java.lang.String r0 = r6.b((int) r1, (int) r9)
            goto L_0x0415
        L_0x0683:
            java.lang.String r0 = r6.b(r1, r3, r9)
            goto L_0x0415
        L_0x0689:
            if (r1 != r7) goto L_0x0699
        L_0x068b:
            r0 = 45
            r1 = 91
            r2 = 102(0x66, float:1.43E-43)
            java.lang.String r3 = ""
            r4 = r2
            r2 = r0
            r0 = r3
            r3 = r1
        L_0x0697:
            r1 = 0
            goto L_0x06a6
        L_0x0699:
            r0 = 0
            java.lang.String r1 = r6.b(r0, r1, r0)
            r0 = r1
        L_0x069f:
            r1 = 0
            r2 = 45
            r3 = 91
            r4 = 102(0x66, float:1.43E-43)
        L_0x06a6:
            e.b.a.a.q.d r5 = r6.N
            r5.a(r0)
            e.b.a.a.l r0 = e.b.a.a.l.FIELD_NAME
            r6.y = r0
            int r0 = r6.G
            int r5 = r0 + 4
            int r12 = r6.H
            if (r5 < r12) goto L_0x06bd
            int r0 = r6.a((boolean) r1)
            goto L_0x0754
        L_0x06bd:
            byte[] r1 = r6.Z
            byte r5 = r1[r0]
            r12 = 58
            if (r5 != r12) goto L_0x0701
            int r0 = r0 + r9
            r6.G = r0
            byte r1 = r1[r0]
            if (r1 <= r8) goto L_0x06dd
            if (r1 == r10) goto L_0x06d7
            if (r1 != r11) goto L_0x06d1
            goto L_0x06d7
        L_0x06d1:
            int r0 = r0 + r9
            r6.G = r0
            r0 = r1
            goto L_0x0754
        L_0x06d7:
            int r0 = r6.a((boolean) r9)
            goto L_0x0754
        L_0x06dd:
            if (r1 == r8) goto L_0x06e3
            r0 = 9
            if (r1 != r0) goto L_0x06fc
        L_0x06e3:
            byte[] r0 = r6.Z
            int r1 = r6.G
            int r1 = r1 + r9
            r6.G = r1
            byte r0 = r0[r1]
            if (r0 <= r8) goto L_0x06fc
            if (r0 == r10) goto L_0x06f7
            if (r0 != r11) goto L_0x06f3
            goto L_0x06f7
        L_0x06f3:
            int r1 = r1 + r9
            r6.G = r1
            goto L_0x0754
        L_0x06f7:
            int r0 = r6.a((boolean) r9)
            goto L_0x0754
        L_0x06fc:
            int r0 = r6.a((boolean) r9)
            goto L_0x0754
        L_0x0701:
            if (r5 == r8) goto L_0x0707
            r0 = 9
            if (r5 != r0) goto L_0x0710
        L_0x0707:
            byte[] r0 = r6.Z
            int r1 = r6.G
            int r1 = r1 + r9
            r6.G = r1
            byte r5 = r0[r1]
        L_0x0710:
            if (r5 != r12) goto L_0x074f
            byte[] r0 = r6.Z
            int r1 = r6.G
            int r1 = r1 + r9
            r6.G = r1
            byte r0 = r0[r1]
            if (r0 <= r8) goto L_0x072b
            if (r0 == r10) goto L_0x0726
            if (r0 != r11) goto L_0x0722
            goto L_0x0726
        L_0x0722:
            int r1 = r1 + r9
            r6.G = r1
            goto L_0x0754
        L_0x0726:
            int r0 = r6.a((boolean) r9)
            goto L_0x0754
        L_0x072b:
            if (r0 == r8) goto L_0x0731
            r1 = 9
            if (r0 != r1) goto L_0x074a
        L_0x0731:
            byte[] r0 = r6.Z
            int r1 = r6.G
            int r1 = r1 + r9
            r6.G = r1
            byte r0 = r0[r1]
            if (r0 <= r8) goto L_0x074a
            if (r0 == r10) goto L_0x0745
            if (r0 != r11) goto L_0x0741
            goto L_0x0745
        L_0x0741:
            int r1 = r1 + r9
            r6.G = r1
            goto L_0x0754
        L_0x0745:
            int r0 = r6.a((boolean) r9)
            goto L_0x0754
        L_0x074a:
            int r0 = r6.a((boolean) r9)
            goto L_0x0754
        L_0x074f:
            r0 = 0
            int r0 = r6.a((boolean) r0)
        L_0x0754:
            r17.H()
            if (r0 != r7) goto L_0x0762
            r6.V = r9
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_STRING
            r6.O = r0
            e.b.a.a.l r0 = r6.y
            return r0
        L_0x0762:
            if (r0 == r2) goto L_0x0799
            if (r0 == r3) goto L_0x0796
            if (r0 == r4) goto L_0x0790
            r1 = 110(0x6e, float:1.54E-43)
            if (r0 == r1) goto L_0x078a
            r1 = 116(0x74, float:1.63E-43)
            if (r0 == r1) goto L_0x0784
            r1 = 123(0x7b, float:1.72E-43)
            if (r0 == r1) goto L_0x0781
            switch(r0) {
                case 48: goto L_0x077c;
                case 49: goto L_0x077c;
                case 50: goto L_0x077c;
                case 51: goto L_0x077c;
                case 52: goto L_0x077c;
                case 53: goto L_0x077c;
                case 54: goto L_0x077c;
                case 55: goto L_0x077c;
                case 56: goto L_0x077c;
                case 57: goto L_0x077c;
                default: goto L_0x0777;
            }
        L_0x0777:
            e.b.a.a.l r0 = r6.h(r0)
            goto L_0x079d
        L_0x077c:
            e.b.a.a.l r0 = r6.i(r0)
            goto L_0x079d
        L_0x0781:
            e.b.a.a.l r0 = e.b.a.a.l.START_OBJECT
            goto L_0x079d
        L_0x0784:
            r17.w()
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_TRUE
            goto L_0x079d
        L_0x078a:
            r17.v()
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_NULL
            goto L_0x079d
        L_0x0790:
            r17.u()
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_FALSE
            goto L_0x079d
        L_0x0796:
            e.b.a.a.l r0 = e.b.a.a.l.START_ARRAY
            goto L_0x079d
        L_0x0799:
            e.b.a.a.l r0 = r17.x()
        L_0x079d:
            r6.O = r0
            e.b.a.a.l r0 = r6.y
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.q.h.f():e.b.a.a.l");
    }

    public final int g(int i2) {
        if (this.G >= this.H) {
            t();
        }
        byte[] bArr = this.Z;
        int i3 = this.G;
        int i4 = i3 + 1;
        this.G = i4;
        byte b = bArr[i3];
        if ((b & 192) == 128) {
            byte b2 = ((i2 & 7) << 6) | (b & 63);
            if (i4 >= this.H) {
                t();
            }
            byte[] bArr2 = this.Z;
            int i5 = this.G;
            int i6 = i5 + 1;
            this.G = i6;
            byte b3 = bArr2[i5];
            if ((b3 & 192) == 128) {
                byte b4 = (b2 << 6) | (b3 & 63);
                if (i6 >= this.H) {
                    t();
                }
                byte[] bArr3 = this.Z;
                int i7 = this.G;
                int i8 = i7 + 1;
                this.G = i8;
                byte b5 = bArr3[i7];
                if ((b5 & 192) == 128) {
                    return ((b4 << 6) | (b5 & 63)) - 65536;
                }
                a((int) b5 & 255, i8);
                throw null;
            }
            a((int) b3 & 255, i6);
            throw null;
        }
        a((int) b & 255, i4);
        throw null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x001d, code lost:
        if (r11 != 44) goto L_0x0156;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x004b, code lost:
        if (r10.N.b() == false) goto L_0x0156;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public e.b.a.a.l h(int r11) {
        /*
            r10 = this;
            r0 = 39
            r1 = 0
            r2 = 0
            r3 = 1
            if (r11 == r0) goto L_0x009b
            r0 = 73
            if (r11 == r0) goto L_0x0080
            r0 = 78
            if (r11 == r0) goto L_0x0065
            r0 = 93
            if (r11 == r0) goto L_0x0045
            r0 = 125(0x7d, float:1.75E-43)
            if (r11 == r0) goto L_0x005f
            r0 = 43
            if (r11 == r0) goto L_0x0021
            r0 = 44
            if (r11 == r0) goto L_0x004f
            goto L_0x0156
        L_0x0021:
            int r11 = r10.G
            int r0 = r10.H
            if (r11 < r0) goto L_0x0034
            boolean r11 = r10.s()
            if (r11 == 0) goto L_0x002e
            goto L_0x0034
        L_0x002e:
            e.b.a.a.l r11 = e.b.a.a.l.VALUE_NUMBER_INT
            r10.a((e.b.a.a.l) r11)
            throw r2
        L_0x0034:
            byte[] r11 = r10.Z
            int r0 = r10.G
            int r2 = r0 + 1
            r10.G = r2
            byte r11 = r11[r0]
            r11 = r11 & 255(0xff, float:3.57E-43)
            e.b.a.a.l r11 = r10.a((int) r11, (boolean) r1)
            return r11
        L_0x0045:
            e.b.a.a.q.d r0 = r10.N
            boolean r0 = r0.b()
            if (r0 != 0) goto L_0x004f
            goto L_0x0156
        L_0x004f:
            e.b.a.a.i$a r0 = e.b.a.a.i.a.ALLOW_MISSING_VALUES
            boolean r0 = r10.a((e.b.a.a.i.a) r0)
            if (r0 == 0) goto L_0x005f
            int r11 = r10.G
            int r11 = r11 - r3
            r10.G = r11
            e.b.a.a.l r11 = e.b.a.a.l.VALUE_NULL
            return r11
        L_0x005f:
            java.lang.String r0 = "expected a value"
            r10.a((int) r11, (java.lang.String) r0)
            throw r2
        L_0x0065:
            java.lang.String r11 = "NaN"
            r10.a((java.lang.String) r11, (int) r3)
            e.b.a.a.i$a r0 = e.b.a.a.i.a.ALLOW_NON_NUMERIC_NUMBERS
            boolean r0 = r10.a((e.b.a.a.i.a) r0)
            if (r0 == 0) goto L_0x0079
            r0 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            e.b.a.a.l r11 = r10.a((java.lang.String) r11, (double) r0)
            return r11
        L_0x0079:
            java.lang.String r11 = "Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            e.b.a.a.h r11 = r10.a((java.lang.String) r11)
            throw r11
        L_0x0080:
            java.lang.String r11 = "Infinity"
            r10.a((java.lang.String) r11, (int) r3)
            e.b.a.a.i$a r0 = e.b.a.a.i.a.ALLOW_NON_NUMERIC_NUMBERS
            boolean r0 = r10.a((e.b.a.a.i.a) r0)
            if (r0 == 0) goto L_0x0094
            r0 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            e.b.a.a.l r11 = r10.a((java.lang.String) r11, (double) r0)
            return r11
        L_0x0094:
            java.lang.String r11 = "Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            e.b.a.a.h r11 = r10.a((java.lang.String) r11)
            throw r11
        L_0x009b:
            e.b.a.a.i$a r1 = e.b.a.a.i.a.ALLOW_SINGLE_QUOTES
            boolean r1 = r10.a((e.b.a.a.i.a) r1)
            if (r1 == 0) goto L_0x0156
            e.b.a.a.s.g r11 = r10.P
            char[] r11 = r11.c()
            int[] r1 = b0
            byte[] r4 = r10.Z
            r5 = 0
        L_0x00ae:
            int r6 = r10.G
            int r7 = r10.H
            if (r6 < r7) goto L_0x00b7
            r10.t()
        L_0x00b7:
            int r6 = r11.length
            if (r5 < r6) goto L_0x00c1
            e.b.a.a.s.g r11 = r10.P
            char[] r11 = r11.f()
            r5 = 0
        L_0x00c1:
            int r6 = r10.H
            int r7 = r10.G
            int r8 = r11.length
            int r8 = r8 - r5
            int r8 = r8 + r7
            if (r8 >= r6) goto L_0x00cb
            r6 = r8
        L_0x00cb:
            int r7 = r10.G
            if (r7 >= r6) goto L_0x00ae
            int r8 = r7 + 1
            r10.G = r8
            byte r7 = r4[r7]
            r7 = r7 & 255(0xff, float:3.57E-43)
            if (r7 == r0) goto L_0x00e5
            r8 = r1[r7]
            if (r8 == 0) goto L_0x00de
            goto L_0x00e5
        L_0x00de:
            int r8 = r5 + 1
            char r7 = (char) r7
            r11[r5] = r7
            r5 = r8
            goto L_0x00cb
        L_0x00e5:
            if (r7 != r0) goto L_0x00ee
            e.b.a.a.s.g r11 = r10.P
            r11.f1118i = r5
            e.b.a.a.l r11 = e.b.a.a.l.VALUE_STRING
            return r11
        L_0x00ee:
            r6 = r1[r7]
            if (r6 == r3) goto L_0x0140
            r8 = 2
            if (r6 == r8) goto L_0x013b
            r9 = 3
            if (r6 == r9) goto L_0x012a
            r8 = 4
            if (r6 == r8) goto L_0x0108
            r11 = 32
            if (r7 >= r11) goto L_0x0104
            java.lang.String r11 = "string value"
            r10.b(r7, r11)
        L_0x0104:
            r10.j(r7)
            throw r2
        L_0x0108:
            int r6 = r10.g(r7)
            int r7 = r5 + 1
            r8 = 55296(0xd800, float:7.7486E-41)
            int r9 = r6 >> 10
            r8 = r8 | r9
            char r8 = (char) r8
            r11[r5] = r8
            int r5 = r11.length
            if (r7 < r5) goto L_0x0122
            e.b.a.a.s.g r11 = r10.P
            char[] r11 = r11.f()
            r5 = 0
            goto L_0x0123
        L_0x0122:
            r5 = r7
        L_0x0123:
            r7 = 56320(0xdc00, float:7.8921E-41)
            r6 = r6 & 1023(0x3ff, float:1.434E-42)
            r6 = r6 | r7
            goto L_0x0144
        L_0x012a:
            int r6 = r10.H
            int r9 = r10.G
            int r6 = r6 - r9
            if (r6 < r8) goto L_0x0136
            int r6 = r10.f(r7)
            goto L_0x0144
        L_0x0136:
            int r6 = r10.e(r7)
            goto L_0x0144
        L_0x013b:
            int r6 = r10.d(r7)
            goto L_0x0144
        L_0x0140:
            char r6 = r10.k()
        L_0x0144:
            int r7 = r11.length
            if (r5 < r7) goto L_0x014e
            e.b.a.a.s.g r11 = r10.P
            char[] r11 = r11.f()
            r5 = 0
        L_0x014e:
            int r7 = r5 + 1
            char r6 = (char) r6
            r11[r5] = r6
            r5 = r7
            goto L_0x00ae
        L_0x0156:
            boolean r0 = java.lang.Character.isJavaIdentifierStart(r11)
            if (r0 == 0) goto L_0x0170
            java.lang.String r0 = ""
            java.lang.StringBuilder r0 = e.a.a.a.a.a(r0)
            char r11 = (char) r11
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            java.lang.String r0 = "('true', 'false' or 'null')"
            r10.a((java.lang.String) r11, (java.lang.String) r0)
            throw r2
        L_0x0170:
            java.lang.String r0 = "expected a valid value (number, String, array, object, 'true', 'false' or 'null')"
            r10.a((int) r11, (java.lang.String) r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.q.h.h(int):e.b.a.a.l");
    }

    public String i() {
        l lVar = this.y;
        if (lVar == l.VALUE_STRING) {
            if (!this.V) {
                return this.P.b();
            }
            this.V = false;
            return r();
        } else if (lVar == null) {
            return null;
        } else {
            int id = lVar.id();
            if (id == 5) {
                return this.N.f1073f;
            }
            if (id == 6 || id == 7 || id == 8) {
                return this.P.b();
            }
            return lVar.asString();
        }
    }

    public void j() {
        if (this.Y != null) {
            if (this.E.f1055c || a(i.a.AUTO_CLOSE_SOURCE)) {
                this.Y.close();
            }
            this.Y = null;
        }
    }

    public char k() {
        int i2;
        if (this.G < this.H || s()) {
            byte[] bArr = this.Z;
            int i3 = this.G;
            this.G = i3 + 1;
            byte b = bArr[i3];
            if (b == 34 || b == 47 || b == 92) {
                return (char) b;
            }
            if (b == 98) {
                return 8;
            }
            if (b == 102) {
                return 12;
            }
            if (b == 110) {
                return 10;
            }
            if (b == 114) {
                return 13;
            }
            if (b == 116) {
                return 9;
            }
            if (b != 117) {
                char c2 = (char) c((int) b);
                a(c2);
                return c2;
            }
            int i4 = 0;
            int i5 = 0;
            while (i4 < 4) {
                if (this.G < this.H || s()) {
                    byte[] bArr2 = this.Z;
                    int i6 = this.G;
                    this.G = i6 + 1;
                    byte b2 = bArr2[i6];
                    if (b2 > Byte.MAX_VALUE) {
                        i2 = -1;
                    } else {
                        i2 = a.f1054i[b2];
                    }
                    if (i2 >= 0) {
                        i5 = (i5 << 4) | i2;
                        i4++;
                    } else {
                        a((int) b2, "expected a hex-digit for character escape sequence");
                        throw null;
                    }
                } else {
                    a(" in character escape sequence", l.VALUE_STRING);
                    throw null;
                }
            }
            return (char) i5;
        }
        a(" in character escape sequence", l.VALUE_STRING);
        throw null;
    }

    public void l(int i2) {
        StringBuilder a = e.a.a.a.a.a("Invalid UTF-8 middle byte 0x");
        a.append(Integer.toHexString(i2));
        throw a(a.toString());
    }

    public final void m(int i2) {
        int i3 = this.G + 1;
        this.G = i3;
        if (i2 == 9) {
            return;
        }
        if (i2 == 10) {
            this.J++;
            this.K = i3;
        } else if (i2 == 13) {
            y();
        } else if (i2 != 32) {
            a(i2, "Expected space separating root-level values");
            throw null;
        }
    }

    public void o() {
        byte[] bArr;
        super.o();
        e.b.a.a.r.a aVar = this.T;
        e.b.a.a.r.a aVar2 = aVar.a;
        if (aVar2 != null && (!aVar.p)) {
            a.C0057a aVar3 = new a.C0057a(aVar);
            int i2 = aVar3.b;
            a.C0057a aVar4 = aVar2.b.get();
            if (i2 != aVar4.b) {
                if (i2 > 6000) {
                    aVar3 = a.C0057a.a(64);
                }
                aVar2.b.compareAndSet(aVar4, aVar3);
            }
            aVar.p = true;
        }
        if (this.a0 && (bArr = this.Z) != null) {
            this.Z = e.b.a.a.o.c.z;
            this.E.a(bArr);
        }
    }

    public final void p() {
        H();
        if (this.N.b()) {
            this.N = this.N.f1070c;
        } else {
            a(93, '}');
            throw null;
        }
    }

    public final void q() {
        H();
        if (this.N.c()) {
            this.N = this.N.f1070c;
        } else {
            a(125, ']');
            throw null;
        }
    }

    public String r() {
        int i2;
        String str;
        int i3 = this.G;
        if (i3 >= this.H) {
            t();
            i3 = this.G;
        }
        char[] c2 = this.P.c();
        int[] iArr = b0;
        int min = Math.min(this.H, c2.length + i3);
        byte[] bArr = this.Z;
        int i4 = 0;
        while (true) {
            if (i3 >= min) {
                break;
            }
            byte b = bArr[i3] & 255;
            if (iArr[b] == 0) {
                i3++;
                c2[i2] = (char) b;
                i4 = i2 + 1;
            } else if (b == 34) {
                this.G = i3 + 1;
                g gVar = this.P;
                gVar.f1118i = i2;
                if (gVar.f1116g > 0) {
                    return gVar.b();
                }
                if (i2 == 0) {
                    str = "";
                } else {
                    str = new String(gVar.f1117h, 0, i2);
                }
                gVar.f1119j = str;
                return str;
            }
        }
        this.G = i3;
        int[] iArr2 = b0;
        byte[] bArr2 = this.Z;
        while (true) {
            int i5 = this.G;
            if (i5 >= this.H) {
                t();
                i5 = this.G;
            }
            if (i2 >= c2.length) {
                c2 = this.P.f();
                i2 = 0;
            }
            int min2 = Math.min(this.H, (c2.length - i2) + i5);
            while (true) {
                if (i5 >= min2) {
                    this.G = i5;
                    break;
                }
                int i6 = i5 + 1;
                int i7 = bArr2[i5] & 255;
                if (iArr2[i7] != 0) {
                    this.G = i6;
                    if (i7 == 34) {
                        g gVar2 = this.P;
                        gVar2.f1118i = i2;
                        return gVar2.b();
                    }
                    int i8 = iArr2[i7];
                    if (i8 == 1) {
                        i7 = k();
                    } else if (i8 == 2) {
                        i7 = d(i7);
                    } else if (i8 != 3) {
                        if (i8 == 4) {
                            int g2 = g(i7);
                            int i9 = i2 + 1;
                            c2[i2] = (char) (55296 | (g2 >> 10));
                            if (i9 >= c2.length) {
                                c2 = this.P.f();
                                i2 = 0;
                            } else {
                                i2 = i9;
                            }
                            i7 = (g2 & 1023) | 56320;
                        } else if (i7 < 32) {
                            b(i7, "string value");
                        } else {
                            j(i7);
                            throw null;
                        }
                    } else if (this.H - i6 >= 2) {
                        i7 = f(i7);
                    } else {
                        i7 = e(i7);
                    }
                    if (i2 >= c2.length) {
                        c2 = this.P.f();
                        i2 = 0;
                    }
                    c2[i2] = (char) i7;
                    i2++;
                } else {
                    c2[i2] = (char) i7;
                    i5 = i6;
                    i2++;
                }
            }
        }
    }

    public final boolean s() {
        byte[] bArr;
        int length;
        int i2 = this.H;
        this.I += (long) i2;
        this.K -= i2;
        this.X -= i2;
        InputStream inputStream = this.Y;
        if (inputStream == null || (length = bArr.length) == 0) {
            return false;
        }
        int read = inputStream.read((bArr = this.Z), 0, length);
        if (read > 0) {
            this.G = 0;
            this.H = read;
            return true;
        }
        j();
        if (read == 0) {
            throw new IOException(e.a.a.a.a.a(e.a.a.a.a.a("InputStream.read() returned 0 characters when trying to read "), this.Z.length, " bytes"));
        }
        return false;
    }

    public void t() {
        if (!s()) {
            h();
            throw null;
        }
    }

    public final void u() {
        byte b;
        int i2 = this.G;
        if (i2 + 4 < this.H) {
            byte[] bArr = this.Z;
            int i3 = i2 + 1;
            if (bArr[i2] == 97) {
                int i4 = i3 + 1;
                if (bArr[i3] == 108) {
                    int i5 = i4 + 1;
                    if (bArr[i4] == 115) {
                        int i6 = i5 + 1;
                        if (bArr[i5] == 101 && ((b = bArr[i6] & 255) < 48 || b == 93 || b == 125)) {
                            this.G = i6;
                            return;
                        }
                    }
                }
            }
        }
        b("false", 1);
    }

    public final void v() {
        byte b;
        int i2 = this.G;
        if (i2 + 3 < this.H) {
            byte[] bArr = this.Z;
            int i3 = i2 + 1;
            if (bArr[i2] == 117) {
                int i4 = i3 + 1;
                if (bArr[i3] == 108) {
                    int i5 = i4 + 1;
                    if (bArr[i4] == 108 && ((b = bArr[i5] & 255) < 48 || b == 93 || b == 125)) {
                        this.G = i5;
                        return;
                    }
                }
            }
        }
        b("null", 1);
    }

    public final void w() {
        byte b;
        int i2 = this.G;
        if (i2 + 3 < this.H) {
            byte[] bArr = this.Z;
            int i3 = i2 + 1;
            if (bArr[i2] == 114) {
                int i4 = i3 + 1;
                if (bArr[i3] == 117) {
                    int i5 = i4 + 1;
                    if (bArr[i4] == 101 && ((b = bArr[i5] & 255) < 48 || b == 93 || b == 125)) {
                        this.G = i5;
                        return;
                    }
                }
            }
        }
        b("true", 1);
    }

    public l x() {
        byte b;
        char[] c2 = this.P.c();
        c2[0] = '-';
        if (this.G >= this.H) {
            t();
        }
        byte[] bArr = this.Z;
        int i2 = this.G;
        this.G = i2 + 1;
        int i3 = bArr[i2] & 255;
        if (i3 <= 48) {
            if (i3 != 48) {
                return a(i3, true);
            }
            i3 = I();
        } else if (i3 > 57) {
            return a(i3, true);
        }
        int i4 = 2;
        c2[1] = (char) i3;
        int min = Math.min(this.H, (this.G + c2.length) - 2);
        int i5 = 1;
        while (true) {
            int i6 = this.G;
            if (i6 >= min) {
                return a(c2, i4, true, i5);
            }
            byte[] bArr2 = this.Z;
            this.G = i6 + 1;
            b = bArr2[i6] & 255;
            if (b >= 48 && b <= 57) {
                i5++;
                c2[i4] = (char) b;
                i4++;
            }
        }
        if (b == 46 || b == 101 || b == 69) {
            return a(c2, i4, (int) b, true, i5);
        }
        this.G--;
        this.P.f1118i = i4;
        if (this.N.d()) {
            m(b);
        }
        return l.VALUE_NUMBER_INT;
    }

    public final void y() {
        if (this.G < this.H || s()) {
            byte[] bArr = this.Z;
            int i2 = this.G;
            if (bArr[i2] == 10) {
                this.G = i2 + 1;
            }
        }
        this.J++;
        this.K = this.G;
    }

    public final void z() {
        if (!a(i.a.ALLOW_COMMENTS)) {
            a(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
            throw null;
        } else if (this.G < this.H || s()) {
            byte[] bArr = this.Z;
            int i2 = this.G;
            this.G = i2 + 1;
            byte b = bArr[i2] & 255;
            if (b == 47) {
                A();
            } else if (b == 42) {
                int[] iArr = e.b.a.a.p.a.f1052g;
                while (true) {
                    if (this.G >= this.H && !s()) {
                        break;
                    }
                    byte[] bArr2 = this.Z;
                    int i3 = this.G;
                    int i4 = i3 + 1;
                    this.G = i4;
                    byte b2 = bArr2[i3] & 255;
                    int i5 = iArr[b2];
                    if (i5 != 0) {
                        if (i5 == 2) {
                            B();
                        } else if (i5 == 3) {
                            C();
                        } else if (i5 == 4) {
                            D();
                        } else if (i5 == 10) {
                            this.J++;
                            this.K = i4;
                        } else if (i5 == 13) {
                            y();
                        } else if (i5 == 42) {
                            if (i4 >= this.H && !s()) {
                                break;
                            }
                            byte[] bArr3 = this.Z;
                            int i6 = this.G;
                            if (bArr3[i6] == 47) {
                                this.G = i6 + 1;
                                return;
                            }
                        } else {
                            j(b2);
                            throw null;
                        }
                    }
                }
                a(" in a comment", (l) null);
                throw null;
            } else {
                a((int) b, "was expecting either '*' or '/' for a comment");
                throw null;
            }
        } else {
            a(" in a comment", (l) null);
            throw null;
        }
    }

    public void j(int i2) {
        if (i2 < 32) {
            a(i2);
            throw null;
        } else {
            k(i2);
            throw null;
        }
    }

    public void c(String str) {
        a(str, "'null', 'true', 'false' or NaN");
        throw null;
    }

    public final String b(int i2, int i3, int i4) {
        return a(this.U, 0, i2, i3, i4);
    }

    public final int d(int i2) {
        if (this.G >= this.H) {
            t();
        }
        byte[] bArr = this.Z;
        int i3 = this.G;
        int i4 = i3 + 1;
        this.G = i4;
        byte b = bArr[i3];
        if ((b & 192) == 128) {
            return ((i2 & 31) << 6) | (b & 63);
        }
        a((int) b & 255, i4);
        throw null;
    }

    public final String b(int i2, int i3, int i4, int i5) {
        int[] iArr = this.U;
        iArr[0] = i2;
        return a(iArr, 1, i3, i4, i5);
    }

    public l i(int i2) {
        byte b;
        char[] c2 = this.P.c();
        if (i2 == 48) {
            i2 = I();
        }
        c2[0] = (char) i2;
        int min = Math.min(this.H, (this.G + c2.length) - 1);
        int i3 = 1;
        int i4 = 1;
        while (true) {
            int i5 = this.G;
            if (i5 >= min) {
                return a(c2, i3, false, i4);
            }
            byte[] bArr = this.Z;
            this.G = i5 + 1;
            b = bArr[i5] & 255;
            if (b >= 48 && b <= 57) {
                i4++;
                c2[i3] = (char) b;
                i3++;
            }
        }
        if (b == 46 || b == 101 || b == 69) {
            return a(c2, i3, (int) b, false, i4);
        }
        this.G--;
        this.P.f1118i = i3;
        if (this.N.d()) {
            m(b);
        }
        return l.VALUE_NUMBER_INT;
    }

    public final String b(int i2, int i3) {
        int c2 = c(i2, i3);
        String c3 = this.T.c(c2);
        if (c3 != null) {
            return c3;
        }
        int[] iArr = this.U;
        iArr[0] = c2;
        return a(iArr, 1, i3);
    }

    public void k(int i2) {
        StringBuilder a = e.a.a.a.a.a("Invalid UTF-8 start byte 0x");
        a.append(Integer.toHexString(i2));
        throw a(a.toString());
    }

    public final l a(char[] cArr, int i2, boolean z, int i3) {
        byte b;
        char[] cArr2 = cArr;
        int i4 = i2;
        int i5 = i3;
        while (true) {
            if (this.G < this.H || s()) {
                byte[] bArr = this.Z;
                int i6 = this.G;
                this.G = i6 + 1;
                b = bArr[i6] & 255;
                if (b <= 57 && b >= 48) {
                    if (i4 >= cArr2.length) {
                        i4 = 0;
                        cArr2 = this.P.f();
                    }
                    cArr2[i4] = (char) b;
                    i5++;
                    i4++;
                }
            } else {
                this.P.f1118i = i4;
                return l.VALUE_NUMBER_INT;
            }
        }
        if (b == 46 || b == 101 || b == 69) {
            return a(cArr2, i4, (int) b, z, i5);
        }
        this.G--;
        this.P.f1118i = i4;
        if (this.N.d()) {
            byte[] bArr2 = this.Z;
            int i7 = this.G;
            this.G = i7 + 1;
            m(bArr2[i7] & 255);
        }
        return l.VALUE_NUMBER_INT;
    }

    public final void b(String str, int i2) {
        int i3;
        byte b;
        int length = str.length();
        do {
            if ((this.G < this.H || s()) && this.Z[this.G] == str.charAt(i2)) {
                i3 = this.G + 1;
                this.G = i3;
                i2++;
            } else {
                c(str.substring(0, i2));
                throw null;
            }
        } while (i2 < length);
        if ((i3 < this.H || s()) && (b = this.Z[this.G] & 255) >= 48 && b != 93 && b != 125) {
            a(str, i2, (int) b);
        }
    }

    public final byte[] b(e.b.a.a.a aVar) {
        c m = m();
        while (true) {
            if (this.G >= this.H) {
                t();
            }
            byte[] bArr = this.Z;
            int i2 = this.G;
            this.G = i2 + 1;
            byte b = bArr[i2] & 255;
            if (b > 32) {
                int a = aVar.a((int) b);
                boolean z = false;
                if (a < 0) {
                    if (b == 34) {
                        return m.c();
                    }
                    a = a(aVar, (int) b, 0);
                    if (a < 0) {
                        continue;
                    }
                }
                if (this.G >= this.H) {
                    t();
                }
                byte[] bArr2 = this.Z;
                int i3 = this.G;
                this.G = i3 + 1;
                byte b2 = bArr2[i3] & 255;
                int a2 = aVar.a((int) b2);
                if (a2 < 0) {
                    a2 = a(aVar, (int) b2, 1);
                }
                int i4 = (a << 6) | a2;
                if (this.G >= this.H) {
                    t();
                }
                byte[] bArr3 = this.Z;
                int i5 = this.G;
                this.G = i5 + 1;
                byte b3 = bArr3[i5] & 255;
                int a3 = aVar.a((int) b3);
                if (a3 < 0) {
                    if (a3 != -2) {
                        if (b3 != 34 || aVar.B) {
                            a3 = a(aVar, (int) b3, 2);
                        } else {
                            m.a(i4 >> 4);
                            return m.c();
                        }
                    }
                    if (a3 == -2) {
                        if (this.G >= this.H) {
                            t();
                        }
                        byte[] bArr4 = this.Z;
                        int i6 = this.G;
                        this.G = i6 + 1;
                        char c2 = bArr4[i6] & 255;
                        if (c2 == aVar.C) {
                            z = true;
                        }
                        if (z) {
                            m.a(i4 >> 4);
                        } else {
                            StringBuilder a4 = e.a.a.a.a.a("expected padding character '");
                            a4.append(aVar.C);
                            a4.append("'");
                            throw a(aVar, c2, 3, a4.toString());
                        }
                    }
                }
                int i7 = (i4 << 6) | a3;
                if (this.G >= this.H) {
                    t();
                }
                byte[] bArr5 = this.Z;
                int i8 = this.G;
                this.G = i8 + 1;
                byte b4 = bArr5[i8] & 255;
                int a5 = aVar.a((int) b4);
                if (a5 < 0) {
                    if (a5 != -2) {
                        if (b4 != 34 || aVar.B) {
                            a5 = a(aVar, (int) b4, 3);
                        } else {
                            m.c(i7 >> 2);
                            return m.c();
                        }
                    }
                    if (a5 == -2) {
                        m.c(i7 >> 2);
                    }
                }
                m.b((i7 << 6) | a5);
            }
        }
    }

    public final l a(char[] cArr, int i2, int i3, boolean z, int i4) {
        boolean z2;
        if (i3 == 46) {
            if (i2 >= cArr.length) {
                cArr = this.P.f();
                i2 = 0;
            }
            cArr[i2] = (char) i3;
            i2++;
            int i5 = 0;
            while (true) {
                if (this.G >= this.H && !s()) {
                    z2 = true;
                    break;
                }
                byte[] bArr = this.Z;
                int i6 = this.G;
                this.G = i6 + 1;
                i3 = bArr[i6] & 255;
                if (i3 < 48 || i3 > 57) {
                    z2 = false;
                } else {
                    i5++;
                    if (i2 >= cArr.length) {
                        cArr = this.P.f();
                        i2 = 0;
                    }
                    cArr[i2] = (char) i3;
                    i2++;
                }
            }
            z2 = false;
            if (i5 == 0) {
                c(i3, "Decimal point not followed by a digit");
                throw null;
            }
        } else {
            z2 = false;
        }
        if (r10 == 101 || r10 == 69) {
            if (i2 >= cArr.length) {
                cArr = this.P.f();
                i2 = 0;
            }
            int i7 = i2 + 1;
            cArr[i2] = (char) r10;
            if (this.G >= this.H) {
                t();
            }
            byte[] bArr2 = this.Z;
            int i8 = this.G;
            this.G = i8 + 1;
            byte b = bArr2[i8] & 255;
            if (b == 45 || b == 43) {
                if (i7 >= cArr.length) {
                    cArr = this.P.f();
                    i7 = 0;
                }
                int i9 = i7 + 1;
                cArr[i7] = (char) b;
                if (this.G >= this.H) {
                    t();
                }
                byte[] bArr3 = this.Z;
                int i10 = this.G;
                this.G = i10 + 1;
                b = bArr3[i10] & 255;
                i7 = i9;
            }
            r10 = b;
            int i11 = 0;
            while (true) {
                if (r10 < 48 || r10 > 57) {
                    break;
                }
                i11++;
                if (i7 >= cArr.length) {
                    cArr = this.P.f();
                    i7 = 0;
                }
                int i12 = i7 + 1;
                cArr[i7] = (char) r10;
                if (this.G >= this.H && !s()) {
                    i7 = i12;
                    z2 = true;
                    break;
                }
                byte[] bArr4 = this.Z;
                int i13 = this.G;
                this.G = i13 + 1;
                r10 = bArr4[i13] & 255;
                i7 = i12;
            }
            if (i11 != 0) {
                i2 = i7;
            } else {
                c(r10, "Exponent indicator not followed by a digit");
                throw null;
            }
        }
        if (!z2) {
            this.G--;
            if (this.N.d()) {
                m(r10);
            }
        }
        this.P.f1118i = i2;
        return l.VALUE_NUMBER_FLOAT;
    }

    public e.b.a.a.g b() {
        return new e.b.a.a.g(n(), this.I + ((long) this.G), -1, this.J, (this.G - this.K) + 1);
    }

    public final String a(int i2, int i3, int i4, int i5, int i6) {
        int[] iArr = this.U;
        iArr[0] = i2;
        iArr[1] = i3;
        return a(iArr, 2, i4, i5, i6);
    }

    public final String a(int[] iArr, int i2, int i3, int i4, int i5) {
        int[] iArr2 = c0;
        while (true) {
            if (iArr2[i4] != 0) {
                if (i4 == 34) {
                    if (r10 > 0) {
                        if (i2 >= iArr.length) {
                            iArr = b.a(iArr, iArr.length);
                            this.U = iArr;
                        }
                        iArr[i2] = c(r8, r10);
                        i2++;
                    }
                    String b = this.T.b(iArr, i2);
                    return b == null ? a(iArr, i2, r10) : b;
                }
                if (i4 != 92) {
                    b(i4, "name");
                } else {
                    i4 = k();
                }
                if (i4 > 127) {
                    int i6 = 0;
                    if (r10 >= 4) {
                        if (i2 >= iArr.length) {
                            iArr = b.a(iArr, iArr.length);
                            this.U = iArr;
                        }
                        iArr[i2] = r8;
                        i2++;
                        r8 = 0;
                        r10 = 0;
                    }
                    if (i4 < 2048) {
                        r8 = (r8 << 8) | (i4 >> 6) | 192;
                        r10++;
                    } else {
                        int i7 = (r8 << 8) | (i4 >> 12) | 224;
                        int i8 = r10 + 1;
                        if (i8 >= 4) {
                            if (i2 >= iArr.length) {
                                iArr = b.a(iArr, iArr.length);
                                this.U = iArr;
                            }
                            iArr[i2] = i7;
                            i2++;
                            i8 = 0;
                        } else {
                            i6 = i7;
                        }
                        r8 = (i6 << 8) | ((i4 >> 6) & 63) | 128;
                        r10 = i8 + 1;
                    }
                    i4 = (i4 & 63) | 128;
                }
            }
            if (r10 < 4) {
                i5 = r10 + 1;
                i3 = (r8 << 8) | i4;
            } else {
                if (i2 >= iArr.length) {
                    iArr = b.a(iArr, iArr.length);
                    this.U = iArr;
                }
                iArr[i2] = r8;
                i3 = i4;
                i2++;
                i5 = 1;
            }
            if (this.G < this.H || s()) {
                byte[] bArr = this.Z;
                int i9 = this.G;
                this.G = i9 + 1;
                i4 = bArr[i9] & 255;
            } else {
                a(" in field name", l.FIELD_NAME);
                throw null;
            }
        }
    }

    public final String a(int i2, int i3, int i4) {
        int c2 = c(i3, i4);
        String b = this.T.b(i2, c2);
        if (b != null) {
            return b;
        }
        int[] iArr = this.U;
        iArr[0] = i2;
        iArr[1] = c2;
        return a(iArr, 2, i4);
    }

    public final String a(int i2, int i3, int i4, int i5) {
        int c2 = c(i4, i5);
        String b = this.T.b(i2, i3, c2);
        if (b != null) {
            return b;
        }
        int[] iArr = this.U;
        iArr[0] = i2;
        iArr[1] = i3;
        iArr[2] = c(c2, i5);
        return a(iArr, 3, i5);
    }

    public final String a(int[] iArr, int i2, int i3, int i4) {
        if (i2 >= iArr.length) {
            iArr = b.a(iArr, iArr.length);
            this.U = iArr;
        }
        int i5 = i2 + 1;
        iArr[i2] = c(i3, i4);
        String b = this.T.b(iArr, i5);
        return b == null ? a(iArr, i5, i4) : b;
    }

    public final String a(int[] iArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int[] iArr2 = iArr;
        int i7 = i2;
        int i8 = i3;
        int i9 = ((i7 << 2) - 4) + i8;
        if (i8 < 4) {
            int i10 = i7 - 1;
            i4 = iArr2[i10];
            iArr2[i10] = i4 << ((4 - i8) << 3);
        } else {
            i4 = 0;
        }
        char[] c2 = this.P.c();
        int i11 = 0;
        int i12 = 0;
        while (i11 < i9) {
            int i13 = (iArr2[i11 >> 2] >> ((3 - (i11 & 3)) << 3)) & 255;
            i11++;
            if (i13 > 127) {
                if ((i13 & 224) == 192) {
                    i6 = i13 & 31;
                    i5 = 1;
                } else if ((i13 & 240) == 224) {
                    i6 = i13 & 15;
                    i5 = 2;
                } else if ((i13 & 248) == 240) {
                    i6 = i13 & 7;
                    i5 = 3;
                } else {
                    k(i13);
                    throw null;
                }
                if (i11 + i5 <= i9) {
                    int i14 = iArr2[i11 >> 2] >> ((3 - (i11 & 3)) << 3);
                    i11++;
                    if ((i14 & 192) == 128) {
                        i13 = (i6 << 6) | (i14 & 63);
                        if (i5 > 1) {
                            int i15 = iArr2[i11 >> 2] >> ((3 - (i11 & 3)) << 3);
                            i11++;
                            if ((i15 & 192) == 128) {
                                int i16 = (i15 & 63) | (i13 << 6);
                                if (i5 > 2) {
                                    int i17 = iArr2[i11 >> 2] >> ((3 - (i11 & 3)) << 3);
                                    i11++;
                                    if ((i17 & 192) == 128) {
                                        i13 = (i16 << 6) | (i17 & 63);
                                    } else {
                                        l(i17 & 255);
                                        throw null;
                                    }
                                } else {
                                    i13 = i16;
                                }
                            } else {
                                l(i15);
                                throw null;
                            }
                        }
                        if (i5 > 2) {
                            int i18 = i13 - 65536;
                            if (i12 >= c2.length) {
                                c2 = this.P.e();
                            }
                            c2[i12] = (char) ((i18 >> 10) + 55296);
                            i13 = (i18 & 1023) | 56320;
                            i12++;
                        }
                    } else {
                        l(i14);
                        throw null;
                    }
                } else {
                    a(" in field name", l.FIELD_NAME);
                    throw null;
                }
            }
            if (i12 >= c2.length) {
                c2 = this.P.e();
            }
            c2[i12] = (char) i13;
            i12++;
        }
        String str = new String(c2, 0, i12);
        if (i8 < 4) {
            iArr2[i7 - 1] = i4;
        }
        return this.T.a(str, iArr2, i7);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, byte], vars: [r4v0 ?, r4v1 ?, r4v4 ?]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:102)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:78)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:69)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:32)
        */
    public e.b.a.a.l a(
/*
Method generation error in method: e.b.a.a.q.h.a(int, boolean):e.b.a.a.l, dex: classes.dex
    jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r4v0 ?
    	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:189)
    	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:157)
    	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:129)
    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:313)
    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
    	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
    	at java.util.ArrayList.forEach(ArrayList.java:1257)
    	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:390)
    	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
    	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:482)
    	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:471)
    	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:151)
    	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:174)
    	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
    	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:418)
    	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
    	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:112)
    	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:78)
    	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
    	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
    	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
    	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
    	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
    
*/

    public final void a(String str, int i2) {
        int length = str.length();
        if (this.G + length >= this.H) {
            b(str, i2);
            return;
        }
        while (this.Z[this.G] == str.charAt(i2)) {
            int i3 = this.G + 1;
            this.G = i3;
            i2++;
            if (i2 >= length) {
                byte b = this.Z[i3] & 255;
                if (b >= 48 && b != 93 && b != 125) {
                    a(str, i2, (int) b);
                    return;
                }
                return;
            }
        }
        c(str.substring(0, i2));
        throw null;
    }

    public final void a(String str, int i2, int i3) {
        if (Character.isJavaIdentifierPart((char) c(i3))) {
            c(str.substring(0, i2));
            throw null;
        }
    }

    public final int a(boolean z) {
        while (true) {
            if (this.G < this.H || s()) {
                byte[] bArr = this.Z;
                int i2 = this.G;
                int i3 = i2 + 1;
                this.G = i3;
                byte b = bArr[i2] & 255;
                if (b > 32) {
                    if (b == 47) {
                        z();
                    } else if (b != 35 || !G()) {
                        if (z) {
                            return b;
                        }
                        if (b == 58) {
                            z = true;
                        } else {
                            a((int) b, "was expecting a colon to separate field name and value");
                            throw null;
                        }
                    }
                } else if (b == 32) {
                    continue;
                } else if (b == 10) {
                    this.J++;
                    this.K = i3;
                } else if (b == 13) {
                    y();
                } else if (b != 9) {
                    a((int) b);
                    throw null;
                }
            } else {
                StringBuilder a = e.a.a.a.a.a(" within/between ");
                a.append(this.N.e());
                a.append(" entries");
                a(a.toString(), (l) null);
                throw null;
            }
        }
    }

    public void a(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.G >= this.H && !s()) {
                break;
            }
            byte[] bArr = this.Z;
            int i2 = this.G;
            this.G = i2 + 1;
            char c2 = (char) c((int) bArr[i2]);
            if (!Character.isJavaIdentifierPart(c2)) {
                break;
            }
            sb.append(c2);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        a("Unrecognized token '%s': was expecting %s", sb, str2);
        throw null;
    }

    public void a(int i2, int i3) {
        this.G = i3;
        l(i2);
        throw null;
    }

    public final int f(int i2) {
        int i3 = i2 & 15;
        byte[] bArr = this.Z;
        int i4 = this.G;
        int i5 = i4 + 1;
        this.G = i5;
        byte b = bArr[i4];
        if ((b & 192) == 128) {
            byte b2 = (i3 << 6) | (b & 63);
            int i6 = i5 + 1;
            this.G = i6;
            byte b3 = bArr[i5];
            if ((b3 & 192) == 128) {
                return (b2 << 6) | (b3 & 63);
            }
            a((int) b3 & 255, i6);
            throw null;
        }
        a((int) b & 255, i5);
        throw null;
    }
}
