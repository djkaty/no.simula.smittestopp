package e.b.a.a.q;

import e.b.a.a.i;
import e.b.a.a.l;
import e.b.a.a.o.b;
import e.b.a.a.p.a;
import e.b.a.a.r.b;
import e.b.a.a.s.c;
import e.b.a.a.s.g;
import java.io.IOException;
import java.io.Reader;

public class f extends b {
    public static final int a0 = i.a.ALLOW_TRAILING_COMMA.getMask();
    public static final int[] b0 = a.f1048c;
    public Reader T;
    public char[] U;
    public boolean V;
    public final e.b.a.a.r.b W;
    public final int X;
    public boolean Y;
    public long Z;

    public f(e.b.a.a.p.b bVar, int i2, Reader reader, e.b.a.a.r.b bVar2, char[] cArr, int i3, int i4, boolean z) {
        super(bVar, i2);
        this.T = reader;
        this.U = cArr;
        this.G = i3;
        this.H = i4;
        this.W = bVar2;
        this.X = bVar2.f1096c;
        this.V = z;
    }

    public byte[] a(e.b.a.a.a aVar) {
        byte[] bArr;
        if (this.y == l.VALUE_EMBEDDED_OBJECT && (bArr = this.S) != null) {
            return bArr;
        }
        if (this.y == l.VALUE_STRING) {
            if (this.Y) {
                try {
                    this.S = b(aVar);
                    this.Y = false;
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

    public char b(String str, l lVar) {
        if (this.G < this.H || q()) {
            char[] cArr = this.U;
            int i2 = this.G;
            this.G = i2 + 1;
            return cArr[i2];
        }
        a(str, lVar);
        throw null;
    }

    public void c(String str) {
        a(str, "'null', 'true', 'false' or NaN");
        throw null;
    }

    public final String d() {
        l lVar = this.y;
        if (lVar == l.VALUE_STRING) {
            if (this.Y) {
                this.Y = false;
                p();
            }
            return this.P.b();
        } else if (lVar == l.FIELD_NAME) {
            return c();
        } else {
            return super.b((String) null);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v150, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v189, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v192, resolved type: char} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v193, resolved type: char} */
    /* JADX WARNING: Code restructure failed: missing block: B:251:0x0402, code lost:
        if (r0 != 44) goto L_0x0533;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:279:0x048a, code lost:
        if (r6.N.b() == false) goto L_0x0533;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00aa, code lost:
        if (r0 == '#') goto L_0x00ac;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00ac, code lost:
        r6.G--;
        r0 = w();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00e2, code lost:
        if (r0 == '#') goto L_0x00e4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00e4, code lost:
        r6.G--;
        r0 = w();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0148, code lost:
        if (r0 == '#') goto L_0x014a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:84:0x014a, code lost:
        r6.G--;
        r0 = s();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x017d, code lost:
        if (r0 == 125) goto L_0x017f;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final e.b.a.a.l f() {
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
            boolean r0 = r6.Y
            java.lang.String r1 = "string value"
            java.lang.String r3 = ": was expecting closing quote for a string value"
            r4 = 32
            r5 = 92
            r7 = 34
            r8 = 0
            if (r0 == 0) goto L_0x007f
            r6.Y = r8
            int r0 = r6.G
            int r8 = r6.H
            char[] r9 = r6.U
        L_0x0048:
            if (r0 < r8) goto L_0x005d
            r6.G = r0
            boolean r0 = r17.q()
            if (r0 == 0) goto L_0x0057
            int r0 = r6.G
            int r8 = r6.H
            goto L_0x005d
        L_0x0057:
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_STRING
            r6.a((java.lang.String) r3, (e.b.a.a.l) r0)
            throw r2
        L_0x005d:
            int r10 = r0 + 1
            char r0 = r9[r0]
            if (r0 > r5) goto L_0x007d
            if (r0 != r5) goto L_0x006f
            r6.G = r10
            r17.k()
            int r0 = r6.G
            int r8 = r6.H
            goto L_0x0048
        L_0x006f:
            if (r0 > r7) goto L_0x007d
            if (r0 != r7) goto L_0x0076
            r6.G = r10
            goto L_0x007f
        L_0x0076:
            if (r0 >= r4) goto L_0x007d
            r6.G = r10
            r6.b(r0, r1)
        L_0x007d:
            r0 = r10
            goto L_0x0048
        L_0x007f:
            int r0 = r6.G
            int r5 = r6.H
            r7 = 10
            r8 = 13
            r9 = 47
            r10 = 35
            r11 = 9
            r12 = 1
            if (r0 < r5) goto L_0x009c
            boolean r0 = r17.q()
            if (r0 != 0) goto L_0x009c
            r17.l()
            r0 = -1
            goto L_0x010c
        L_0x009c:
            char[] r0 = r6.U
            int r5 = r6.G
            int r13 = r5 + 1
            r6.G = r13
            char r0 = r0[r5]
            if (r0 <= r4) goto L_0x00b7
            if (r0 == r9) goto L_0x00ac
            if (r0 != r10) goto L_0x010c
        L_0x00ac:
            int r0 = r6.G
            int r0 = r0 + -1
            r6.G = r0
            int r0 = r17.w()
            goto L_0x010c
        L_0x00b7:
            if (r0 == r4) goto L_0x00d0
            if (r0 != r7) goto L_0x00c3
            int r0 = r6.J
            int r0 = r0 + r12
            r6.J = r0
            r6.K = r13
            goto L_0x00d0
        L_0x00c3:
            if (r0 != r8) goto L_0x00c9
            r17.t()
            goto L_0x00d0
        L_0x00c9:
            if (r0 != r11) goto L_0x00cc
            goto L_0x00d0
        L_0x00cc:
            r6.a((int) r0)
            throw r2
        L_0x00d0:
            int r0 = r6.G
            int r5 = r6.H
            if (r0 >= r5) goto L_0x0108
            char[] r5 = r6.U
            int r13 = r0 + 1
            r6.G = r13
            char r0 = r5[r0]
            if (r0 <= r4) goto L_0x00ef
            if (r0 == r9) goto L_0x00e4
            if (r0 != r10) goto L_0x010c
        L_0x00e4:
            int r0 = r6.G
            int r0 = r0 + -1
            r6.G = r0
            int r0 = r17.w()
            goto L_0x010c
        L_0x00ef:
            if (r0 == r4) goto L_0x00d0
            if (r0 != r7) goto L_0x00fb
            int r0 = r6.J
            int r0 = r0 + r12
            r6.J = r0
            r6.K = r13
            goto L_0x00d0
        L_0x00fb:
            if (r0 != r8) goto L_0x0101
            r17.t()
            goto L_0x00d0
        L_0x0101:
            if (r0 != r11) goto L_0x0104
            goto L_0x00d0
        L_0x0104:
            r6.a((int) r0)
            throw r2
        L_0x0108:
            int r0 = r17.w()
        L_0x010c:
            if (r0 >= 0) goto L_0x0114
            r17.close()
            r6.y = r2
            return r2
        L_0x0114:
            r6.S = r2
            r5 = 93
            if (r0 == r5) goto L_0x0698
            r13 = 125(0x7d, float:1.75E-43)
            if (r0 != r13) goto L_0x0120
            goto L_0x0698
        L_0x0120:
            e.b.a.a.q.d r13 = r6.N
            int r14 = r13.b
            int r14 = r14 + r12
            r13.b = r14
            int r13 = r13.a
            if (r13 == 0) goto L_0x012f
            if (r14 <= 0) goto L_0x012f
            r13 = 1
            goto L_0x0130
        L_0x012f:
            r13 = 0
        L_0x0130:
            r14 = 44
            if (r13 == 0) goto L_0x01a1
            if (r0 != r14) goto L_0x0185
        L_0x0136:
            int r0 = r6.G
            int r13 = r6.H
            if (r0 >= r13) goto L_0x016e
            char[] r13 = r6.U
            int r14 = r0 + 1
            r6.G = r14
            char r0 = r13[r0]
            if (r0 <= r4) goto L_0x0155
            if (r0 == r9) goto L_0x014a
            if (r0 != r10) goto L_0x0172
        L_0x014a:
            int r0 = r6.G
            int r0 = r0 + -1
            r6.G = r0
            int r0 = r17.s()
            goto L_0x0172
        L_0x0155:
            if (r0 >= r4) goto L_0x0136
            if (r0 != r7) goto L_0x0161
            int r0 = r6.J
            int r0 = r0 + r12
            r6.J = r0
            r6.K = r14
            goto L_0x0136
        L_0x0161:
            if (r0 != r8) goto L_0x0167
            r17.t()
            goto L_0x0136
        L_0x0167:
            if (r0 != r11) goto L_0x016a
            goto L_0x0136
        L_0x016a:
            r6.a((int) r0)
            throw r2
        L_0x016e:
            int r0 = r17.s()
        L_0x0172:
            int r2 = r6.x
            int r7 = a0
            r2 = r2 & r7
            if (r2 == 0) goto L_0x01a1
            if (r0 == r5) goto L_0x017f
            r2 = 125(0x7d, float:1.75E-43)
            if (r0 != r2) goto L_0x01a1
        L_0x017f:
            r6.c((int) r0)
            e.b.a.a.l r0 = r6.y
            return r0
        L_0x0185:
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
        L_0x01a1:
            e.b.a.a.q.d r2 = r6.N
            boolean r7 = r2.c()
            r2 = 39
            if (r7 == 0) goto L_0x03ba
            int r5 = r6.G
            long r13 = (long) r5
            r6.Z = r13
            r8 = 34
            if (r0 != r8) goto L_0x01ec
            int r0 = r6.X
            int[] r8 = b0
        L_0x01b8:
            int r13 = r6.H
            if (r5 >= r13) goto L_0x01e0
            char[] r13 = r6.U
            char r14 = r13[r5]
            int r15 = r8.length
            if (r14 >= r15) goto L_0x01da
            r15 = r8[r14]
            if (r15 == 0) goto L_0x01da
            r8 = 34
            if (r14 != r8) goto L_0x01e0
            int r8 = r6.G
            int r14 = r5 + 1
            r6.G = r14
            e.b.a.a.r.b r14 = r6.W
            int r5 = r5 - r8
            java.lang.String r0 = r14.a(r13, r8, r5, r0)
            goto L_0x02db
        L_0x01da:
            int r0 = r0 * 33
            int r0 = r0 + r14
            int r5 = r5 + 1
            goto L_0x01b8
        L_0x01e0:
            int r8 = r6.G
            r6.G = r5
            r5 = 34
            java.lang.String r0 = r6.a((int) r8, (int) r0, (int) r5)
            goto L_0x02db
        L_0x01ec:
            if (r0 != r2) goto L_0x0232
            e.b.a.a.i$a r5 = e.b.a.a.i.a.ALLOW_SINGLE_QUOTES
            boolean r5 = r6.a((e.b.a.a.i.a) r5)
            if (r5 == 0) goto L_0x0232
            int r0 = r6.G
            int r5 = r6.X
            int r8 = r6.H
            if (r0 >= r8) goto L_0x0228
            int[] r13 = b0
            int r14 = r13.length
        L_0x0201:
            char[] r15 = r6.U
            char r11 = r15[r0]
            if (r11 != r2) goto L_0x0216
            int r8 = r6.G
            int r11 = r0 + 1
            r6.G = r11
            e.b.a.a.r.b r11 = r6.W
            int r0 = r0 - r8
            java.lang.String r0 = r11.a(r15, r8, r0, r5)
            goto L_0x02db
        L_0x0216:
            if (r11 >= r14) goto L_0x021d
            r15 = r13[r11]
            if (r15 == 0) goto L_0x021d
            goto L_0x0228
        L_0x021d:
            int r5 = r5 * 33
            int r5 = r5 + r11
            int r0 = r0 + 1
            if (r0 < r8) goto L_0x0225
            goto L_0x0228
        L_0x0225:
            r11 = 9
            goto L_0x0201
        L_0x0228:
            int r8 = r6.G
            r6.G = r0
            java.lang.String r0 = r6.a((int) r8, (int) r5, (int) r2)
            goto L_0x02db
        L_0x0232:
            e.b.a.a.i$a r5 = e.b.a.a.i.a.ALLOW_UNQUOTED_FIELD_NAMES
            boolean r5 = r6.a((e.b.a.a.i.a) r5)
            if (r5 == 0) goto L_0x03b3
            int[] r5 = e.b.a.a.p.a.f1050e
            int r8 = r5.length
            if (r0 >= r8) goto L_0x0247
            r11 = r5[r0]
            if (r11 != 0) goto L_0x0245
            r11 = 1
            goto L_0x024c
        L_0x0245:
            r11 = 0
            goto L_0x024c
        L_0x0247:
            char r11 = (char) r0
            boolean r11 = java.lang.Character.isJavaIdentifierPart(r11)
        L_0x024c:
            if (r11 == 0) goto L_0x03ac
            int r0 = r6.G
            int r11 = r6.X
            int r13 = r6.H
            if (r0 >= r13) goto L_0x028b
        L_0x0256:
            char[] r14 = r6.U
            char r15 = r14[r0]
            if (r15 >= r8) goto L_0x026e
            r16 = r5[r15]
            if (r16 == 0) goto L_0x0284
            int r5 = r6.G
            int r5 = r5 - r12
            r6.G = r0
            e.b.a.a.r.b r8 = r6.W
            int r0 = r0 - r5
            java.lang.String r0 = r8.a(r14, r5, r0, r11)
            goto L_0x02db
        L_0x026e:
            char r14 = (char) r15
            boolean r14 = java.lang.Character.isJavaIdentifierPart(r14)
            if (r14 != 0) goto L_0x0284
            int r5 = r6.G
            int r5 = r5 - r12
            r6.G = r0
            e.b.a.a.r.b r8 = r6.W
            char[] r13 = r6.U
            int r0 = r0 - r5
            java.lang.String r0 = r8.a(r13, r5, r0, r11)
            goto L_0x02db
        L_0x0284:
            int r11 = r11 * 33
            int r11 = r11 + r15
            int r0 = r0 + 1
            if (r0 < r13) goto L_0x0256
        L_0x028b:
            int r8 = r6.G
            int r8 = r8 - r12
            r6.G = r0
            e.b.a.a.s.g r13 = r6.P
            char[] r14 = r6.U
            int r0 = r0 - r8
            r13.a(r14, r8, r0)
            e.b.a.a.s.g r0 = r6.P
            char[] r0 = r0.g()
            e.b.a.a.s.g r8 = r6.P
            int r8 = r8.f1118i
            int r13 = r5.length
        L_0x02a3:
            int r14 = r6.G
            int r15 = r6.H
            if (r14 < r15) goto L_0x02b0
            boolean r14 = r17.q()
            if (r14 != 0) goto L_0x02b0
            goto L_0x02c3
        L_0x02b0:
            char[] r14 = r6.U
            int r15 = r6.G
            char r14 = r14[r15]
            if (r14 > r13) goto L_0x02bd
            r15 = r5[r14]
            if (r15 == 0) goto L_0x038e
            goto L_0x02c3
        L_0x02bd:
            boolean r15 = java.lang.Character.isJavaIdentifierPart(r14)
            if (r15 != 0) goto L_0x038e
        L_0x02c3:
            e.b.a.a.s.g r0 = r6.P
            r0.f1118i = r8
            char[] r5 = r0.h()
            int r8 = r0.f1112c
            if (r8 < 0) goto L_0x02d0
            goto L_0x02d1
        L_0x02d0:
            r8 = 0
        L_0x02d1:
            int r0 = r0.j()
            e.b.a.a.r.b r13 = r6.W
            java.lang.String r0 = r13.a(r5, r8, r0, r11)
        L_0x02db:
            e.b.a.a.q.d r5 = r6.N
            r5.a(r0)
            e.b.a.a.l r0 = e.b.a.a.l.FIELD_NAME
            r6.y = r0
            int r0 = r6.G
            int r5 = r0 + 4
            int r8 = r6.H
            if (r5 < r8) goto L_0x02f3
            r0 = 0
            int r0 = r6.a((boolean) r0)
            goto L_0x03ba
        L_0x02f3:
            char[] r5 = r6.U
            char r8 = r5[r0]
            r11 = 58
            if (r8 != r11) goto L_0x033a
            int r0 = r0 + r12
            r6.G = r0
            char r5 = r5[r0]
            if (r5 <= r4) goto L_0x0313
            if (r5 == r9) goto L_0x030d
            if (r5 != r10) goto L_0x0307
            goto L_0x030d
        L_0x0307:
            int r0 = r0 + r12
            r6.G = r0
            r0 = r5
            goto L_0x03ba
        L_0x030d:
            int r0 = r6.a((boolean) r12)
            goto L_0x03ba
        L_0x0313:
            if (r5 == r4) goto L_0x0319
            r0 = 9
            if (r5 != r0) goto L_0x0334
        L_0x0319:
            char[] r0 = r6.U
            int r5 = r6.G
            int r5 = r5 + r12
            r6.G = r5
            char r0 = r0[r5]
            if (r0 <= r4) goto L_0x0334
            if (r0 == r9) goto L_0x032e
            if (r0 != r10) goto L_0x0329
            goto L_0x032e
        L_0x0329:
            int r5 = r5 + r12
            r6.G = r5
            goto L_0x03ba
        L_0x032e:
            int r0 = r6.a((boolean) r12)
            goto L_0x03ba
        L_0x0334:
            int r0 = r6.a((boolean) r12)
            goto L_0x03ba
        L_0x033a:
            if (r8 == r4) goto L_0x0340
            r0 = 9
            if (r8 != r0) goto L_0x0349
        L_0x0340:
            char[] r0 = r6.U
            int r5 = r6.G
            int r5 = r5 + r12
            r6.G = r5
            char r8 = r0[r5]
        L_0x0349:
            if (r8 != r11) goto L_0x0388
            char[] r0 = r6.U
            int r5 = r6.G
            int r5 = r5 + r12
            r6.G = r5
            char r0 = r0[r5]
            if (r0 <= r4) goto L_0x0364
            if (r0 == r9) goto L_0x035f
            if (r0 != r10) goto L_0x035b
            goto L_0x035f
        L_0x035b:
            int r5 = r5 + r12
            r6.G = r5
            goto L_0x03ba
        L_0x035f:
            int r0 = r6.a((boolean) r12)
            goto L_0x03ba
        L_0x0364:
            if (r0 == r4) goto L_0x036a
            r15 = 9
            if (r0 != r15) goto L_0x0383
        L_0x036a:
            char[] r0 = r6.U
            int r5 = r6.G
            int r5 = r5 + r12
            r6.G = r5
            char r0 = r0[r5]
            if (r0 <= r4) goto L_0x0383
            if (r0 == r9) goto L_0x037e
            if (r0 != r10) goto L_0x037a
            goto L_0x037e
        L_0x037a:
            int r5 = r5 + r12
            r6.G = r5
            goto L_0x03ba
        L_0x037e:
            int r0 = r6.a((boolean) r12)
            goto L_0x03ba
        L_0x0383:
            int r0 = r6.a((boolean) r12)
            goto L_0x03ba
        L_0x0388:
            r0 = 0
            int r0 = r6.a((boolean) r0)
            goto L_0x03ba
        L_0x038e:
            r15 = 9
            int r9 = r6.G
            int r9 = r9 + r12
            r6.G = r9
            int r11 = r11 * 33
            int r11 = r11 + r14
            int r9 = r8 + 1
            r0[r8] = r14
            int r8 = r0.length
            if (r9 < r8) goto L_0x03a7
            e.b.a.a.s.g r0 = r6.P
            char[] r0 = r0.f()
            r8 = 0
            goto L_0x03a8
        L_0x03a7:
            r8 = r9
        L_0x03a8:
            r9 = 47
            goto L_0x02a3
        L_0x03ac:
            java.lang.String r1 = "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"
            r6.a((int) r0, (java.lang.String) r1)
            r0 = 0
            throw r0
        L_0x03b3:
            r1 = 0
            java.lang.String r2 = "was expecting double-quote to start field name"
            r6.a((int) r0, (java.lang.String) r2)
            throw r1
        L_0x03ba:
            r17.y()
            r5 = 34
            if (r0 == r5) goto L_0x068a
            r5 = 45
            r8 = 101(0x65, float:1.42E-43)
            r9 = 48
            r10 = 69
            r11 = 46
            r13 = 57
            if (r0 == r5) goto L_0x061e
            r5 = 91
            if (r0 == r5) goto L_0x060c
            r5 = 102(0x66, float:1.43E-43)
            r14 = 108(0x6c, float:1.51E-43)
            if (r0 == r5) goto L_0x05d2
            r5 = 110(0x6e, float:1.54E-43)
            r15 = 117(0x75, float:1.64E-43)
            if (r0 == r5) goto L_0x05a1
            r5 = 116(0x74, float:1.63E-43)
            if (r0 == r5) goto L_0x056e
            r5 = 123(0x7b, float:1.72E-43)
            if (r0 == r5) goto L_0x055c
            r5 = 125(0x7d, float:1.75E-43)
            if (r0 == r5) goto L_0x0555
            switch(r0) {
                case 48: goto L_0x0406;
                case 49: goto L_0x0406;
                case 50: goto L_0x0406;
                case 51: goto L_0x0406;
                case 52: goto L_0x0406;
                case 53: goto L_0x0406;
                case 54: goto L_0x0406;
                case 55: goto L_0x0406;
                case 56: goto L_0x0406;
                case 57: goto L_0x0406;
                default: goto L_0x03ee;
            }
        L_0x03ee:
            if (r0 == r2) goto L_0x04d7
            r1 = 73
            if (r0 == r1) goto L_0x04bb
            r1 = 78
            if (r0 == r1) goto L_0x049f
            r1 = 93
            if (r0 == r1) goto L_0x0484
            r1 = 43
            if (r0 == r1) goto L_0x045f
            r1 = 44
            if (r0 == r1) goto L_0x048e
            goto L_0x0533
        L_0x0406:
            int r1 = r6.G
            int r2 = r1 + -1
            int r3 = r6.H
            if (r0 != r9) goto L_0x0415
            r0 = 0
            e.b.a.a.l r0 = r6.a((boolean) r0, (int) r2)
            goto L_0x068e
        L_0x0415:
            r5 = 1
        L_0x0416:
            r0 = 0
            if (r1 < r3) goto L_0x0421
            r6.G = r2
            e.b.a.a.l r0 = r6.a((boolean) r0, (int) r2)
            goto L_0x068e
        L_0x0421:
            char[] r0 = r6.U
            int r4 = r1 + 1
            char r1 = r0[r1]
            if (r1 < r9) goto L_0x0430
            if (r1 <= r13) goto L_0x042c
            goto L_0x0430
        L_0x042c:
            int r5 = r5 + 1
            r1 = r4
            goto L_0x0416
        L_0x0430:
            if (r1 == r11) goto L_0x0452
            if (r1 == r8) goto L_0x0452
            if (r1 != r10) goto L_0x0437
            goto L_0x0452
        L_0x0437:
            int r4 = r4 + -1
            r6.G = r4
            e.b.a.a.q.d r0 = r6.N
            boolean r0 = r0.d()
            if (r0 == 0) goto L_0x0446
            r6.d(r1)
        L_0x0446:
            int r4 = r4 - r2
            e.b.a.a.s.g r0 = r6.P
            char[] r1 = r6.U
            r0.a(r1, r2, r4)
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_NUMBER_INT
            goto L_0x068e
        L_0x0452:
            r6.G = r4
            r8 = 0
            r0 = r17
            r3 = r4
            r4 = r8
            e.b.a.a.l r0 = r0.a(r1, r2, r3, r4, r5)
            goto L_0x068e
        L_0x045f:
            int r0 = r6.G
            int r1 = r6.H
            if (r0 < r1) goto L_0x0473
            boolean r0 = r17.q()
            if (r0 == 0) goto L_0x046c
            goto L_0x0473
        L_0x046c:
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_NUMBER_INT
            r6.a((e.b.a.a.l) r0)
            r0 = 0
            throw r0
        L_0x0473:
            char[] r0 = r6.U
            int r1 = r6.G
            int r2 = r1 + 1
            r6.G = r2
            char r0 = r0[r1]
            r1 = 0
            e.b.a.a.l r0 = r6.a((int) r0, (boolean) r1)
            goto L_0x068e
        L_0x0484:
            e.b.a.a.q.d r1 = r6.N
            boolean r1 = r1.b()
            if (r1 != 0) goto L_0x048e
            goto L_0x0533
        L_0x048e:
            e.b.a.a.i$a r1 = e.b.a.a.i.a.ALLOW_MISSING_VALUES
            boolean r1 = r6.a((e.b.a.a.i.a) r1)
            if (r1 == 0) goto L_0x0533
            int r0 = r6.G
            int r0 = r0 - r12
            r6.G = r0
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_NULL
            goto L_0x068e
        L_0x049f:
            java.lang.String r0 = "NaN"
            r6.a((java.lang.String) r0, (int) r12)
            e.b.a.a.i$a r1 = e.b.a.a.i.a.ALLOW_NON_NUMERIC_NUMBERS
            boolean r1 = r6.a((e.b.a.a.i.a) r1)
            if (r1 == 0) goto L_0x04b4
            r1 = 9221120237041090560(0x7ff8000000000000, double:NaN)
            e.b.a.a.l r0 = r6.a((java.lang.String) r0, (double) r1)
            goto L_0x068e
        L_0x04b4:
            java.lang.String r0 = "Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            e.b.a.a.h r0 = r6.a((java.lang.String) r0)
            throw r0
        L_0x04bb:
            java.lang.String r0 = "Infinity"
            r6.a((java.lang.String) r0, (int) r12)
            e.b.a.a.i$a r1 = e.b.a.a.i.a.ALLOW_NON_NUMERIC_NUMBERS
            boolean r1 = r6.a((e.b.a.a.i.a) r1)
            if (r1 == 0) goto L_0x04d0
            r1 = 9218868437227405312(0x7ff0000000000000, double:Infinity)
            e.b.a.a.l r0 = r6.a((java.lang.String) r0, (double) r1)
            goto L_0x068e
        L_0x04d0:
            java.lang.String r0 = "Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"
            e.b.a.a.h r0 = r6.a((java.lang.String) r0)
            throw r0
        L_0x04d7:
            e.b.a.a.i$a r5 = e.b.a.a.i.a.ALLOW_SINGLE_QUOTES
            boolean r5 = r6.a((e.b.a.a.i.a) r5)
            if (r5 == 0) goto L_0x0533
            e.b.a.a.s.g r0 = r6.P
            char[] r0 = r0.c()
            e.b.a.a.s.g r5 = r6.P
            int r5 = r5.f1118i
        L_0x04e9:
            int r8 = r6.G
            int r9 = r6.H
            if (r8 < r9) goto L_0x04fd
            boolean r8 = r17.q()
            if (r8 == 0) goto L_0x04f6
            goto L_0x04fd
        L_0x04f6:
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_STRING
            r6.a((java.lang.String) r3, (e.b.a.a.l) r0)
            r0 = 0
            throw r0
        L_0x04fd:
            char[] r8 = r6.U
            int r9 = r6.G
            int r10 = r9 + 1
            r6.G = r10
            char r8 = r8[r9]
            r9 = 92
            if (r8 > r9) goto L_0x0523
            if (r8 != r9) goto L_0x0512
            char r8 = r17.k()
            goto L_0x0523
        L_0x0512:
            if (r8 > r2) goto L_0x0523
            if (r8 != r2) goto L_0x051e
            e.b.a.a.s.g r0 = r6.P
            r0.f1118i = r5
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_STRING
            goto L_0x068e
        L_0x051e:
            if (r8 >= r4) goto L_0x0523
            r6.b(r8, r1)
        L_0x0523:
            int r9 = r0.length
            if (r5 < r9) goto L_0x052d
            e.b.a.a.s.g r0 = r6.P
            char[] r0 = r0.f()
            r5 = 0
        L_0x052d:
            int r9 = r5 + 1
            r0[r5] = r8
            r5 = r9
            goto L_0x04e9
        L_0x0533:
            boolean r1 = java.lang.Character.isJavaIdentifierStart(r0)
            if (r1 == 0) goto L_0x054e
            java.lang.String r1 = ""
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            char r0 = (char) r0
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.String r1 = "('true', 'false' or 'null')"
            r6.a((java.lang.String) r0, (java.lang.String) r1)
            r0 = 0
            throw r0
        L_0x054e:
            r1 = 0
            java.lang.String r2 = "expected a valid value (number, String, array, object, 'true', 'false' or 'null')"
            r6.a((int) r0, (java.lang.String) r2)
            throw r1
        L_0x0555:
            r1 = 0
            java.lang.String r2 = "expected a value"
            r6.a((int) r0, (java.lang.String) r2)
            throw r1
        L_0x055c:
            if (r7 != 0) goto L_0x056a
            e.b.a.a.q.d r0 = r6.N
            int r1 = r6.L
            int r2 = r6.M
            e.b.a.a.q.d r0 = r0.b(r1, r2)
            r6.N = r0
        L_0x056a:
            e.b.a.a.l r0 = e.b.a.a.l.START_OBJECT
            goto L_0x068e
        L_0x056e:
            int r0 = r6.G
            int r1 = r0 + 3
            int r2 = r6.H
            if (r1 >= r2) goto L_0x0598
            char[] r1 = r6.U
            char r2 = r1[r0]
            r3 = 114(0x72, float:1.6E-43)
            if (r2 != r3) goto L_0x0598
            int r0 = r0 + r12
            char r2 = r1[r0]
            if (r2 != r15) goto L_0x0598
            int r0 = r0 + r12
            char r2 = r1[r0]
            if (r2 != r8) goto L_0x0598
            int r0 = r0 + r12
            char r1 = r1[r0]
            if (r1 < r9) goto L_0x0595
            r2 = 93
            if (r1 == r2) goto L_0x0595
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 != r2) goto L_0x0598
        L_0x0595:
            r6.G = r0
            goto L_0x059d
        L_0x0598:
            java.lang.String r0 = "true"
            r6.a((java.lang.String) r0, (int) r12)
        L_0x059d:
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_TRUE
            goto L_0x068e
        L_0x05a1:
            int r0 = r6.G
            int r1 = r0 + 3
            int r2 = r6.H
            if (r1 >= r2) goto L_0x05c9
            char[] r1 = r6.U
            char r2 = r1[r0]
            if (r2 != r15) goto L_0x05c9
            int r0 = r0 + r12
            char r2 = r1[r0]
            if (r2 != r14) goto L_0x05c9
            int r0 = r0 + r12
            char r2 = r1[r0]
            if (r2 != r14) goto L_0x05c9
            int r0 = r0 + r12
            char r1 = r1[r0]
            if (r1 < r9) goto L_0x05c6
            r2 = 93
            if (r1 == r2) goto L_0x05c6
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 != r2) goto L_0x05c9
        L_0x05c6:
            r6.G = r0
            goto L_0x05ce
        L_0x05c9:
            java.lang.String r0 = "null"
            r6.a((java.lang.String) r0, (int) r12)
        L_0x05ce:
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_NULL
            goto L_0x068e
        L_0x05d2:
            int r0 = r6.G
            int r1 = r0 + 4
            int r2 = r6.H
            if (r1 >= r2) goto L_0x0603
            char[] r1 = r6.U
            char r2 = r1[r0]
            r3 = 97
            if (r2 != r3) goto L_0x0603
            int r0 = r0 + r12
            char r2 = r1[r0]
            if (r2 != r14) goto L_0x0603
            int r0 = r0 + r12
            char r2 = r1[r0]
            r3 = 115(0x73, float:1.61E-43)
            if (r2 != r3) goto L_0x0603
            int r0 = r0 + r12
            char r2 = r1[r0]
            if (r2 != r8) goto L_0x0603
            int r0 = r0 + r12
            char r1 = r1[r0]
            if (r1 < r9) goto L_0x0600
            r2 = 93
            if (r1 == r2) goto L_0x0600
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 != r2) goto L_0x0603
        L_0x0600:
            r6.G = r0
            goto L_0x0608
        L_0x0603:
            java.lang.String r0 = "false"
            r6.a((java.lang.String) r0, (int) r12)
        L_0x0608:
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_FALSE
            goto L_0x068e
        L_0x060c:
            if (r7 != 0) goto L_0x061a
            e.b.a.a.q.d r0 = r6.N
            int r1 = r6.L
            int r2 = r6.M
            e.b.a.a.q.d r0 = r0.a(r1, r2)
            r6.N = r0
        L_0x061a:
            e.b.a.a.l r0 = e.b.a.a.l.START_ARRAY
            goto L_0x068e
        L_0x061e:
            int r0 = r6.G
            int r2 = r0 + -1
            int r1 = r6.H
            if (r0 < r1) goto L_0x062c
            e.b.a.a.l r0 = r6.a((boolean) r12, (int) r2)
            goto L_0x068e
        L_0x062c:
            char[] r3 = r6.U
            int r4 = r0 + 1
            char r0 = r3[r0]
            if (r0 > r13) goto L_0x0683
            if (r0 >= r9) goto L_0x0637
            goto L_0x0683
        L_0x0637:
            if (r0 != r9) goto L_0x063e
            e.b.a.a.l r0 = r6.a((boolean) r12, (int) r2)
            goto L_0x068e
        L_0x063e:
            r0 = 1
            r5 = 1
        L_0x0640:
            if (r4 < r1) goto L_0x0647
            e.b.a.a.l r0 = r6.a((boolean) r12, (int) r2)
            goto L_0x068e
        L_0x0647:
            char[] r0 = r6.U
            int r3 = r4 + 1
            char r4 = r0[r4]
            if (r4 < r9) goto L_0x0656
            if (r4 <= r13) goto L_0x0652
            goto L_0x0656
        L_0x0652:
            int r5 = r5 + 1
            r4 = r3
            goto L_0x0640
        L_0x0656:
            if (r4 == r11) goto L_0x0677
            if (r4 == r8) goto L_0x0677
            if (r4 != r10) goto L_0x065d
            goto L_0x0677
        L_0x065d:
            int r3 = r3 + -1
            r6.G = r3
            e.b.a.a.q.d r0 = r6.N
            boolean r0 = r0.d()
            if (r0 == 0) goto L_0x066c
            r6.d(r4)
        L_0x066c:
            int r3 = r3 - r2
            e.b.a.a.s.g r0 = r6.P
            char[] r1 = r6.U
            r0.a(r1, r2, r3)
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_NUMBER_INT
            goto L_0x068e
        L_0x0677:
            r6.G = r3
            r8 = 1
            r0 = r17
            r1 = r4
            r4 = r8
            e.b.a.a.l r0 = r0.a(r1, r2, r3, r4, r5)
            goto L_0x068e
        L_0x0683:
            r6.G = r4
            e.b.a.a.l r0 = r6.a((int) r0, (boolean) r12)
            goto L_0x068e
        L_0x068a:
            r6.Y = r12
            e.b.a.a.l r0 = e.b.a.a.l.VALUE_STRING
        L_0x068e:
            if (r7 == 0) goto L_0x0695
            r6.O = r0
            e.b.a.a.l r0 = r6.y
            return r0
        L_0x0695:
            r6.y = r0
            return r0
        L_0x0698:
            r6.c((int) r0)
            e.b.a.a.l r0 = r6.y
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.q.f.f():e.b.a.a.l");
    }

    public final String i() {
        l lVar = this.y;
        if (lVar == l.VALUE_STRING) {
            if (this.Y) {
                this.Y = false;
                p();
            }
            return this.P.b();
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
        if (this.T != null) {
            if (this.E.f1055c || a(i.a.AUTO_CLOSE_SOURCE)) {
                this.T.close();
            }
            this.T = null;
        }
    }

    public char k() {
        int i2;
        if (this.G < this.H || q()) {
            char[] cArr = this.U;
            int i3 = this.G;
            this.G = i3 + 1;
            char c2 = cArr[i3];
            if (c2 == '\"' || c2 == '/' || c2 == '\\') {
                return c2;
            }
            if (c2 == 'b') {
                return 8;
            }
            if (c2 == 'f') {
                return 12;
            }
            if (c2 == 'n') {
                return 10;
            }
            if (c2 == 'r') {
                return 13;
            }
            if (c2 == 't') {
                return 9;
            }
            if (c2 != 'u') {
                a(c2);
                return c2;
            }
            int i4 = 0;
            int i5 = 0;
            while (i4 < 4) {
                if (this.G < this.H || q()) {
                    char[] cArr2 = this.U;
                    int i6 = this.G;
                    this.G = i6 + 1;
                    char c3 = cArr2[i6];
                    if (c3 > 127) {
                        i2 = -1;
                    } else {
                        i2 = a.f1054i[c3];
                    }
                    if (i2 >= 0) {
                        i5 = (i5 << 4) | i2;
                        i4++;
                    } else {
                        a((int) c3, "expected a hex-digit for character escape sequence");
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

    public void o() {
        char[] cArr;
        e.b.a.a.r.b bVar;
        super.o();
        e.b.a.a.r.b bVar2 = this.W;
        if ((!bVar2.f1105l) && (bVar = bVar2.a) != null && bVar2.f1098e) {
            b.C0058b bVar3 = new b.C0058b(bVar2);
            int i2 = bVar3.a;
            b.C0058b bVar4 = bVar.b.get();
            if (i2 != bVar4.a) {
                if (i2 > 12000) {
                    bVar3 = new b.C0058b(0, 0, new String[64], new b.a[32]);
                }
                bVar.b.compareAndSet(bVar4, bVar3);
            }
            bVar2.f1105l = true;
        }
        if (this.V && (cArr = this.U) != null) {
            this.U = null;
            e.b.a.a.p.b bVar5 = this.E;
            if (bVar5 != null) {
                bVar5.a(cArr, bVar5.f1059g);
                bVar5.f1059g = null;
                bVar5.f1056d.b[0] = cArr;
                return;
            }
            throw null;
        }
    }

    public final void p() {
        int i2 = this.G;
        int i3 = this.H;
        if (i2 < i3) {
            int[] iArr = b0;
            int length = iArr.length;
            while (true) {
                char[] cArr = this.U;
                char c2 = cArr[i2];
                if (c2 >= length || iArr[c2] == 0) {
                    i2++;
                    if (i2 >= i3) {
                        break;
                    }
                } else if (c2 == '\"') {
                    g gVar = this.P;
                    int i4 = this.G;
                    gVar.a(cArr, i4, i2 - i4);
                    this.G = i2 + 1;
                    return;
                }
            }
        }
        g gVar2 = this.P;
        char[] cArr2 = this.U;
        int i5 = this.G;
        int i6 = i2 - i5;
        gVar2.b = null;
        gVar2.f1112c = -1;
        gVar2.f1113d = 0;
        gVar2.f1119j = null;
        gVar2.f1120k = null;
        if (gVar2.f1115f) {
            gVar2.a();
        } else if (gVar2.f1117h == null) {
            gVar2.f1117h = gVar2.a(i6);
        }
        gVar2.f1116g = 0;
        gVar2.f1118i = 0;
        if (gVar2.f1112c >= 0) {
            gVar2.b(i6);
        }
        gVar2.f1119j = null;
        gVar2.f1120k = null;
        char[] cArr3 = gVar2.f1117h;
        int length2 = cArr3.length;
        int i7 = gVar2.f1118i;
        int i8 = length2 - i7;
        if (i8 >= i6) {
            System.arraycopy(cArr2, i5, cArr3, i7, i6);
            gVar2.f1118i += i6;
        } else {
            if (i8 > 0) {
                System.arraycopy(cArr2, i5, cArr3, i7, i8);
                i5 += i8;
                i6 -= i8;
            }
            do {
                gVar2.d();
                int min = Math.min(gVar2.f1117h.length, i6);
                System.arraycopy(cArr2, i5, gVar2.f1117h, 0, min);
                gVar2.f1118i += min;
                i5 += min;
                i6 -= min;
            } while (i6 > 0);
        }
        this.G = i2;
        char[] g2 = this.P.g();
        int i9 = this.P.f1118i;
        int[] iArr2 = b0;
        int length3 = iArr2.length;
        while (true) {
            if (this.G < this.H || q()) {
                char[] cArr4 = this.U;
                int i10 = this.G;
                this.G = i10 + 1;
                char c3 = cArr4[i10];
                if (c3 < length3 && iArr2[c3] != 0) {
                    if (c3 == '\"') {
                        this.P.f1118i = i9;
                        return;
                    } else if (c3 == '\\') {
                        c3 = k();
                    } else if (c3 < ' ') {
                        b(c3, "string value");
                    }
                }
                if (i9 >= g2.length) {
                    g2 = this.P.f();
                    i9 = 0;
                }
                g2[i9] = c3;
                i9++;
            } else {
                a(": was expecting closing quote for a string value", l.VALUE_STRING);
                throw null;
            }
        }
    }

    public boolean q() {
        int i2 = this.H;
        long j2 = (long) i2;
        this.I += j2;
        this.K -= i2;
        this.Z -= j2;
        Reader reader = this.T;
        if (reader != null) {
            char[] cArr = this.U;
            int read = reader.read(cArr, 0, cArr.length);
            if (read > 0) {
                this.G = 0;
                this.H = read;
                return true;
            }
            j();
            if (read == 0) {
                StringBuilder a = e.a.a.a.a.a("Reader returned 0 characters when trying to read ");
                a.append(this.H);
                throw new IOException(a.toString());
            }
        }
        return false;
    }

    public void r() {
        if (!q()) {
            h();
            throw null;
        }
    }

    public final int s() {
        char c2;
        while (true) {
            if (this.G < this.H || q()) {
                char[] cArr = this.U;
                int i2 = this.G;
                int i3 = i2 + 1;
                this.G = i3;
                c2 = cArr[i2];
                if (c2 > ' ') {
                    if (c2 == '/') {
                        u();
                    } else if (c2 != '#' || !x()) {
                        return c2;
                    }
                } else if (c2 >= ' ') {
                    continue;
                } else if (c2 == 10) {
                    this.J++;
                    this.K = i3;
                } else if (c2 == 13) {
                    t();
                } else if (c2 != 9) {
                    a((int) c2);
                    throw null;
                }
            } else {
                StringBuilder a = e.a.a.a.a.a("Unexpected end-of-input within/between ");
                a.append(this.N.e());
                a.append(" entries");
                throw a(a.toString());
            }
        }
        return c2;
    }

    public final void t() {
        if (this.G < this.H || q()) {
            char[] cArr = this.U;
            int i2 = this.G;
            if (cArr[i2] == 10) {
                this.G = i2 + 1;
            }
        }
        this.J++;
        this.K = this.G;
    }

    public final void u() {
        if (!a(i.a.ALLOW_COMMENTS)) {
            a(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
            throw null;
        } else if (this.G < this.H || q()) {
            char[] cArr = this.U;
            int i2 = this.G;
            this.G = i2 + 1;
            char c2 = cArr[i2];
            if (c2 == '/') {
                v();
            } else if (c2 == '*') {
                while (true) {
                    if (this.G >= this.H && !q()) {
                        break;
                    }
                    char[] cArr2 = this.U;
                    int i3 = this.G;
                    int i4 = i3 + 1;
                    this.G = i4;
                    char c3 = cArr2[i3];
                    if (c3 <= '*') {
                        if (c3 == '*') {
                            if (i4 >= this.H && !q()) {
                                break;
                            }
                            char[] cArr3 = this.U;
                            int i5 = this.G;
                            if (cArr3[i5] == '/') {
                                this.G = i5 + 1;
                                return;
                            }
                        } else if (c3 >= ' ') {
                            continue;
                        } else if (c3 == 10) {
                            this.J++;
                            this.K = i4;
                        } else if (c3 == 13) {
                            t();
                        } else if (c3 != 9) {
                            a((int) c3);
                            throw null;
                        }
                    }
                }
                a(" in a comment", (l) null);
                throw null;
            } else {
                a((int) c2, "was expecting either '*' or '/' for a comment");
                throw null;
            }
        } else {
            a(" in a comment", (l) null);
            throw null;
        }
    }

    public final void v() {
        while (true) {
            if (this.G < this.H || q()) {
                char[] cArr = this.U;
                int i2 = this.G;
                int i3 = i2 + 1;
                this.G = i3;
                char c2 = cArr[i2];
                if (c2 < ' ') {
                    if (c2 == 10) {
                        this.J++;
                        this.K = i3;
                        return;
                    } else if (c2 == 13) {
                        t();
                        return;
                    } else if (c2 != 9) {
                        a((int) c2);
                        throw null;
                    }
                }
            } else {
                return;
            }
        }
    }

    public final int w() {
        char c2;
        while (true) {
            if (this.G < this.H || q()) {
                char[] cArr = this.U;
                int i2 = this.G;
                int i3 = i2 + 1;
                this.G = i3;
                c2 = cArr[i2];
                if (c2 > ' ') {
                    if (c2 == '/') {
                        u();
                    } else if (c2 != '#' || !x()) {
                        return c2;
                    }
                } else if (c2 == ' ') {
                    continue;
                } else if (c2 == 10) {
                    this.J++;
                    this.K = i3;
                } else if (c2 == 13) {
                    t();
                } else if (c2 != 9) {
                    a((int) c2);
                    throw null;
                }
            } else {
                l();
                return -1;
            }
        }
        return c2;
    }

    public final boolean x() {
        if (!a(i.a.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        v();
        return true;
    }

    public final void y() {
        int i2 = this.G;
        this.L = this.J;
        this.M = i2 - this.K;
    }

    public final void c(int i2) {
        if (i2 == 93) {
            y();
            if (this.N.b()) {
                this.N = this.N.f1070c;
                this.y = l.END_ARRAY;
            } else {
                a(i2, '}');
                throw null;
            }
        }
        if (i2 == 125) {
            y();
            if (this.N.c()) {
                this.N = this.N.f1070c;
                this.y = l.END_OBJECT;
                return;
            }
            a(i2, ']');
            throw null;
        }
    }

    public final String b(String str) {
        l lVar = this.y;
        if (lVar == l.VALUE_STRING) {
            if (this.Y) {
                this.Y = false;
                p();
            }
            return this.P.b();
        } else if (lVar == l.FIELD_NAME) {
            return c();
        } else {
            return super.b(str);
        }
    }

    public final void d(int i2) {
        int i3 = this.G + 1;
        this.G = i3;
        if (i2 == 9) {
            return;
        }
        if (i2 == 10) {
            this.J++;
            this.K = i3;
        } else if (i2 == 13) {
            t();
        } else if (i2 != 32) {
            a(i2, "Expected space separating root-level values");
            throw null;
        }
    }

    public f(e.b.a.a.p.b bVar, int i2, Reader reader, e.b.a.a.r.b bVar2) {
        super(bVar, i2);
        this.T = reader;
        bVar.a((Object) bVar.f1059g);
        char[] a = bVar.f1056d.a(0, 0);
        bVar.f1059g = a;
        this.U = a;
        this.G = 0;
        this.H = 0;
        this.W = bVar2;
        this.X = bVar2.f1096c;
        this.V = true;
    }

    public byte[] b(e.b.a.a.a aVar) {
        c m = m();
        while (true) {
            if (this.G >= this.H) {
                r();
            }
            char[] cArr = this.U;
            int i2 = this.G;
            this.G = i2 + 1;
            char c2 = cArr[i2];
            if (c2 > ' ') {
                int a = aVar.a(c2);
                if (a < 0) {
                    if (c2 == '\"') {
                        return m.c();
                    }
                    a = a(aVar, c2, 0);
                    if (a < 0) {
                        continue;
                    }
                }
                if (this.G >= this.H) {
                    r();
                }
                char[] cArr2 = this.U;
                int i3 = this.G;
                this.G = i3 + 1;
                char c3 = cArr2[i3];
                int a2 = aVar.a(c3);
                if (a2 < 0) {
                    a2 = a(aVar, c3, 1);
                }
                int i4 = (a << 6) | a2;
                if (this.G >= this.H) {
                    r();
                }
                char[] cArr3 = this.U;
                int i5 = this.G;
                this.G = i5 + 1;
                char c4 = cArr3[i5];
                int a3 = aVar.a(c4);
                if (a3 < 0) {
                    if (a3 != -2) {
                        if (c4 != '\"' || aVar.B) {
                            a3 = a(aVar, c4, 2);
                        } else {
                            m.a(i4 >> 4);
                            return m.c();
                        }
                    }
                    if (a3 == -2) {
                        if (this.G >= this.H) {
                            r();
                        }
                        char[] cArr4 = this.U;
                        int i6 = this.G;
                        this.G = i6 + 1;
                        char c5 = cArr4[i6];
                        if (aVar.b(c5)) {
                            m.a(i4 >> 4);
                        } else {
                            StringBuilder a4 = e.a.a.a.a.a("expected padding character '");
                            a4.append(aVar.C);
                            a4.append("'");
                            throw a(aVar, c5, 3, a4.toString());
                        }
                    }
                }
                int i7 = (i4 << 6) | a3;
                if (this.G >= this.H) {
                    r();
                }
                char[] cArr5 = this.U;
                int i8 = this.G;
                this.G = i8 + 1;
                char c6 = cArr5[i8];
                int a5 = aVar.a(c6);
                if (a5 < 0) {
                    if (a5 != -2) {
                        if (c6 != '\"' || aVar.B) {
                            a5 = a(aVar, c6, 3);
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

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0034, code lost:
        if (r7 == 'E') goto L_0x0036;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x004b, code lost:
        if (r7 == '+') goto L_0x0050;
     */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0083  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0091  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final e.b.a.a.l a(int r7, int r8, int r9, boolean r10, int r11) {
        /*
            r6 = this;
            int r11 = r6.H
            r0 = 0
            r1 = 57
            r2 = 48
            r3 = 0
            r4 = 46
            if (r7 != r4) goto L_0x002e
            r7 = 0
        L_0x000d:
            if (r9 < r11) goto L_0x0014
            e.b.a.a.l r7 = r6.a((boolean) r10, (int) r8)
            return r7
        L_0x0014:
            char[] r4 = r6.U
            int r5 = r9 + 1
            char r9 = r4[r9]
            if (r9 < r2) goto L_0x0023
            if (r9 <= r1) goto L_0x001f
            goto L_0x0023
        L_0x001f:
            int r7 = r7 + 1
            r9 = r5
            goto L_0x000d
        L_0x0023:
            if (r7 == 0) goto L_0x0028
            r7 = r9
            r9 = r5
            goto L_0x002e
        L_0x0028:
            java.lang.String r7 = "Decimal point not followed by a digit"
            r6.c(r9, r7)
            throw r0
        L_0x002e:
            r4 = 101(0x65, float:1.42E-43)
            if (r7 == r4) goto L_0x0036
            r4 = 69
            if (r7 != r4) goto L_0x0077
        L_0x0036:
            if (r9 < r11) goto L_0x003f
            r6.G = r8
            e.b.a.a.l r7 = r6.a((boolean) r10, (int) r8)
            return r7
        L_0x003f:
            char[] r7 = r6.U
            int r4 = r9 + 1
            char r7 = r7[r9]
            r9 = 45
            if (r7 == r9) goto L_0x0050
            r9 = 43
            if (r7 != r9) goto L_0x004e
            goto L_0x0050
        L_0x004e:
            r9 = r4
            goto L_0x005f
        L_0x0050:
            if (r4 < r11) goto L_0x0059
            r6.G = r8
            e.b.a.a.l r7 = r6.a((boolean) r10, (int) r8)
            return r7
        L_0x0059:
            char[] r7 = r6.U
            int r9 = r4 + 1
            char r7 = r7[r4]
        L_0x005f:
            if (r7 > r1) goto L_0x0075
            if (r7 < r2) goto L_0x0075
            int r3 = r3 + 1
            if (r9 < r11) goto L_0x006e
            r6.G = r8
            e.b.a.a.l r7 = r6.a((boolean) r10, (int) r8)
            return r7
        L_0x006e:
            char[] r7 = r6.U
            int r4 = r9 + 1
            char r7 = r7[r9]
            goto L_0x004e
        L_0x0075:
            if (r3 == 0) goto L_0x0091
        L_0x0077:
            int r9 = r9 + -1
            r6.G = r9
            e.b.a.a.q.d r10 = r6.N
            boolean r10 = r10.d()
            if (r10 == 0) goto L_0x0086
            r6.d(r7)
        L_0x0086:
            int r9 = r9 - r8
            e.b.a.a.s.g r7 = r6.P
            char[] r10 = r6.U
            r7.a(r10, r8, r9)
            e.b.a.a.l r7 = e.b.a.a.l.VALUE_NUMBER_FLOAT
            return r7
        L_0x0091:
            java.lang.String r8 = "Exponent indicator not followed by a digit"
            r6.c(r7, r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.a.a.q.f.a(int, int, int, boolean, int):e.b.a.a.l");
    }

    public final l a(boolean z, int i2) {
        int i3;
        char c2;
        boolean z2;
        int i4;
        char c3;
        int i5;
        char b;
        char c4;
        if (z) {
            i2++;
        }
        this.G = i2;
        char[] c5 = this.P.c();
        int i6 = 0;
        if (z) {
            c5[0] = '-';
            i3 = 1;
        } else {
            i3 = 0;
        }
        int i7 = this.G;
        if (i7 < this.H) {
            char[] cArr = this.U;
            this.G = i7 + 1;
            c2 = cArr[i7];
        } else {
            c2 = b("No digit following minus sign", l.VALUE_NUMBER_INT);
        }
        if (c2 == '0') {
            int i8 = this.G;
            if ((i8 >= this.H || ((c4 = this.U[i8]) >= '0' && c4 <= '9')) && ((this.G < this.H || q()) && (c2 = this.U[this.G]) >= '0' && c2 <= '9')) {
                if (a(i.a.ALLOW_NUMERIC_LEADING_ZEROS)) {
                    this.G++;
                    if (c2 == '0') {
                        while (true) {
                            if (this.G >= this.H && !q()) {
                                break;
                            }
                            char[] cArr2 = this.U;
                            int i9 = this.G;
                            c2 = cArr2[i9];
                            if (c2 < '0' || c2 > '9') {
                                break;
                            }
                            this.G = i9 + 1;
                            if (c2 != '0') {
                                break;
                            }
                        }
                    }
                } else {
                    throw a("Invalid numeric value: " + "Leading zeroes not allowed");
                }
            }
            c2 = '0';
        }
        int i10 = 0;
        while (true) {
            if (c2 >= '0' && c2 <= '9') {
                i10++;
                if (i3 >= c5.length) {
                    c5 = this.P.f();
                    i3 = 0;
                }
                int i11 = i3 + 1;
                c5[i3] = c2;
                if (this.G >= this.H && !q()) {
                    i3 = i11;
                    c2 = 0;
                    z2 = true;
                    break;
                }
                char[] cArr3 = this.U;
                int i12 = this.G;
                this.G = i12 + 1;
                c2 = cArr3[i12];
                i3 = i11;
            } else {
                z2 = false;
            }
        }
        z2 = false;
        if (i10 == 0) {
            return a((int) c2, z);
        }
        if (c2 == '.') {
            if (i3 >= c5.length) {
                c5 = this.P.f();
                i3 = 0;
            }
            c5[i3] = c2;
            int i13 = i3 + 1;
            i4 = 0;
            while (true) {
                if (this.G >= this.H && !q()) {
                    z2 = true;
                    break;
                }
                char[] cArr4 = this.U;
                int i14 = this.G;
                this.G = i14 + 1;
                c2 = cArr4[i14];
                if (c2 < '0' || c2 > '9') {
                    break;
                }
                i4++;
                if (i3 >= c5.length) {
                    c5 = this.P.f();
                    i3 = 0;
                }
                c5[i3] = c2;
                i13 = i3 + 1;
            }
            if (i4 == 0) {
                c(c2, "Decimal point not followed by a digit");
                throw null;
            }
        } else {
            i4 = 0;
        }
        if (c2 == 'e' || c2 == 'E') {
            if (i3 >= c5.length) {
                c5 = this.P.f();
                i3 = 0;
            }
            int i15 = i3 + 1;
            c5[i3] = c2;
            int i16 = this.G;
            if (i16 < this.H) {
                char[] cArr5 = this.U;
                this.G = i16 + 1;
                c3 = cArr5[i16];
            } else {
                c3 = b("expected a digit for number exponent", (l) null);
            }
            if (c3 == '-' || c3 == '+') {
                if (i15 >= c5.length) {
                    c5 = this.P.f();
                    i15 = 0;
                }
                int i17 = i15 + 1;
                c5[i15] = c3;
                int i18 = this.G;
                if (i18 < this.H) {
                    char[] cArr6 = this.U;
                    this.G = i18 + 1;
                    b = cArr6[i18];
                } else {
                    b = b("expected a digit for number exponent", (l) null);
                }
                i15 = i17;
            }
            char c6 = c3;
            int i19 = 0;
            while (true) {
                if (c2 <= '9' && c2 >= '0') {
                    i19++;
                    if (i15 >= c5.length) {
                        c5 = this.P.f();
                        i15 = 0;
                    }
                    i5 = i15 + 1;
                    c5[i15] = c2;
                    if (this.G >= this.H && !q()) {
                        i6 = i19;
                        z2 = true;
                        break;
                    }
                    char[] cArr7 = this.U;
                    int i20 = this.G;
                    this.G = i20 + 1;
                    c6 = cArr7[i20];
                    i15 = i5;
                } else {
                    i6 = i19;
                    i5 = i15;
                }
            }
            i6 = i19;
            i5 = i15;
            if (i6 == 0) {
                c(c2, "Exponent indicator not followed by a digit");
                throw null;
            }
        }
        if (!z2) {
            this.G--;
            if (this.N.d()) {
                d(c2);
            }
        }
        this.P.f1118i = i3;
        if (i4 >= 1 || i6 >= 1) {
            return l.VALUE_NUMBER_FLOAT;
        }
        return l.VALUE_NUMBER_INT;
    }

    public e.b.a.a.g b() {
        return new e.b.a.a.g(n(), -1, ((long) this.G) + this.I, this.J, (this.G - this.K) + 1);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r10v0 ?, r10v1 ?, r10v4 ?]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:102)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:78)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:69)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:32)
        */
    public e.b.a.a.l a(
/*
Method generation error in method: e.b.a.a.q.f.a(int, boolean):e.b.a.a.l, dex: classes.dex
    jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r10v0 ?
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

    public final String a(int i2, int i3, int i4) {
        this.P.a(this.U, i2, this.G - i2);
        char[] g2 = this.P.g();
        int i5 = this.P.f1118i;
        int i6 = 0;
        while (true) {
            if (this.G < this.H || q()) {
                char[] cArr = this.U;
                int i7 = this.G;
                this.G = i7 + 1;
                char c2 = cArr[i7];
                if (c2 <= '\\') {
                    if (c2 == '\\') {
                        c2 = k();
                    } else if (c2 <= i4) {
                        if (c2 == i4) {
                            g gVar = this.P;
                            gVar.f1118i = i5;
                            char[] h2 = gVar.h();
                            int i8 = gVar.f1112c;
                            if (i8 >= 0) {
                                i6 = i8;
                            }
                            return this.W.a(h2, i6, gVar.j(), i3);
                        } else if (c2 < ' ') {
                            b(c2, "name");
                        }
                    }
                }
                i3 = (i3 * 33) + c2;
                int i9 = i5 + 1;
                g2[i5] = c2;
                if (i9 >= g2.length) {
                    g2 = this.P.f();
                    i5 = 0;
                } else {
                    i5 = i9;
                }
            } else {
                a(" in field name", l.FIELD_NAME);
                throw null;
            }
        }
    }

    public final int a(boolean z) {
        while (true) {
            if (this.G < this.H || q()) {
                char[] cArr = this.U;
                int i2 = this.G;
                int i3 = i2 + 1;
                this.G = i3;
                char c2 = cArr[i2];
                if (c2 > ' ') {
                    if (c2 == '/') {
                        u();
                    } else if (c2 != '#' || !x()) {
                        if (z) {
                            return c2;
                        }
                        if (c2 == ':') {
                            z = true;
                        } else {
                            a((int) c2, "was expecting a colon to separate field name and value");
                            throw null;
                        }
                    }
                } else if (c2 >= ' ') {
                    continue;
                } else if (c2 == 10) {
                    this.J++;
                    this.K = i3;
                } else if (c2 == 13) {
                    t();
                } else if (c2 != 9) {
                    a((int) c2);
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

    public final void a(String str, int i2) {
        int i3;
        char c2;
        int length = str.length();
        if (this.G + length >= this.H) {
            int length2 = str.length();
            do {
                if ((this.G < this.H || q()) && this.U[this.G] == str.charAt(i2)) {
                    i3 = this.G + 1;
                    this.G = i3;
                    i2++;
                } else {
                    c(str.substring(0, i2));
                    throw null;
                }
            } while (i2 < length2);
            if ((i3 < this.H || q()) && (c2 = this.U[this.G]) >= '0' && c2 != ']' && c2 != '}') {
                a(str, i2, (int) c2);
                return;
            }
            return;
        }
        while (this.U[this.G] == str.charAt(i2)) {
            int i4 = this.G + 1;
            this.G = i4;
            i2++;
            if (i2 >= length) {
                char c3 = this.U[i4];
                if (c3 >= '0' && c3 != ']' && c3 != '}') {
                    a(str, i2, (int) c3);
                    return;
                }
                return;
            }
        }
        c(str.substring(0, i2));
        throw null;
    }

    public final void a(String str, int i2, int i3) {
        if (Character.isJavaIdentifierPart((char) i3)) {
            c(str.substring(0, i2));
            throw null;
        }
    }

    public void a(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.G >= this.H && !q()) {
                break;
            }
            char c2 = this.U[this.G];
            if (!Character.isJavaIdentifierPart(c2)) {
                break;
            }
            this.G++;
            sb.append(c2);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        a("Unrecognized token '%s': was expecting %s", sb, str2);
        throw null;
    }
}
