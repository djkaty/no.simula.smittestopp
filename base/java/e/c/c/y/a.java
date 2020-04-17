package e.c.c.y;

import com.microsoft.azure.sdk.iot.device.transport.mqtt.Mqtt;
import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import e.c.c.w.p;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class a implements Closeable {
    public static final char[] M = ")]}'\n".toCharArray();
    public int A = 0;
    public int B = 0;
    public int C = 0;
    public int D = 0;
    public int E = 0;
    public long F;
    public int G;
    public String H;
    public int[] I;
    public int J;
    public String[] K;
    public int[] L;
    public final Reader x;
    public boolean y = false;
    public final char[] z = new char[1024];

    /* renamed from: e.c.c.y.a$a  reason: collision with other inner class name */
    public static class C0076a extends p {
    }

    static {
        p.a = new C0076a();
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.I = iArr;
        this.J = 0;
        this.J = 0 + 1;
        iArr[0] = 6;
        this.K = new String[32];
        this.L = new int[32];
        if (reader != null) {
            this.x = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    public void a() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 3) {
            b(1);
            this.L[this.J - 1] = 0;
            this.E = 0;
            return;
        }
        StringBuilder a = e.a.a.a.a.a("Expected BEGIN_ARRAY but was ");
        a.append(r());
        a.append(i());
        throw new IllegalStateException(a.toString());
    }

    public void b() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 1) {
            b(3);
            this.E = 0;
            return;
        }
        StringBuilder a = e.a.a.a.a.a("Expected BEGIN_OBJECT but was ");
        a.append(r());
        a.append(i());
        throw new IllegalStateException(a.toString());
    }

    public final void c(char c2) {
        char[] cArr = this.z;
        do {
            int i2 = this.A;
            int i3 = this.B;
            while (i2 < i3) {
                int i4 = i2 + 1;
                char c3 = cArr[i2];
                if (c3 == c2) {
                    this.A = i4;
                    return;
                } else if (c3 == '\\') {
                    this.A = i4;
                    s();
                    i2 = this.A;
                    i3 = this.B;
                } else {
                    if (c3 == 10) {
                        this.C++;
                        this.D = i4;
                    }
                    i2 = i4;
                }
            }
            this.A = i2;
        } while (a(1));
        a("Unterminated string");
        throw null;
    }

    public void close() {
        this.E = 0;
        this.I[0] = 8;
        this.J = 1;
        this.x.close();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:144:0x0203, code lost:
        if (a(r6) != false) goto L_0x018a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x0205, code lost:
        if (r13 != 2) goto L_0x0229;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:146:0x0207, code lost:
        if (r15 == false) goto L_0x0229;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:148:0x020d, code lost:
        if (r10 != Long.MIN_VALUE) goto L_0x0211;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:0x020f, code lost:
        if (r16 == false) goto L_0x0229;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:151:0x0215, code lost:
        if (r10 != 0) goto L_0x0219;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:152:0x0217, code lost:
        if (r16 != false) goto L_0x0229;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:153:0x0219, code lost:
        if (r16 == false) goto L_0x021c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:154:0x021c, code lost:
        r10 = -r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:155:0x021d, code lost:
        r0.F = r10;
        r0.A += r9;
        r6 = 15;
        r0.E = 15;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:156:0x0229, code lost:
        if (r13 == 2) goto L_0x0231;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x022c, code lost:
        if (r13 == 4) goto L_0x0231;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x022f, code lost:
        if (r13 != 7) goto L_0x018a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:0x0231, code lost:
        r0.G = r9;
        r6 = 16;
        r0.E = 16;
     */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x0174 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x0175  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int d() {
        /*
            r19 = this;
            r0 = r19
            int[] r1 = r0.I
            int r2 = r0.J
            int r3 = r2 + -1
            r3 = r1[r3]
            r7 = 93
            r8 = 59
            r9 = 44
            r10 = 6
            r11 = 3
            r12 = 7
            r13 = 0
            r14 = 5
            r15 = 4
            r5 = 2
            r6 = 0
            r4 = 1
            if (r3 != r4) goto L_0x0020
            int r2 = r2 - r4
            r1[r2] = r5
            goto L_0x00d1
        L_0x0020:
            if (r3 != r5) goto L_0x003a
            int r1 = r0.a((boolean) r4)
            if (r1 == r9) goto L_0x00d1
            if (r1 == r8) goto L_0x0035
            if (r1 != r7) goto L_0x002f
            r0.E = r15
            return r15
        L_0x002f:
            java.lang.String r1 = "Unterminated array"
            r0.a((java.lang.String) r1)
            throw r13
        L_0x0035:
            r19.c()
            goto L_0x00d1
        L_0x003a:
            if (r3 == r11) goto L_0x02ba
            if (r3 != r14) goto L_0x0040
            goto L_0x02ba
        L_0x0040:
            if (r3 != r15) goto L_0x0074
            int r2 = r2 - r4
            r1[r2] = r14
            int r1 = r0.a((boolean) r4)
            r2 = 58
            if (r1 == r2) goto L_0x00d1
            r2 = 61
            if (r1 != r2) goto L_0x006e
            r19.c()
            int r1 = r0.A
            int r2 = r0.B
            if (r1 < r2) goto L_0x0060
            boolean r1 = r0.a((int) r4)
            if (r1 == 0) goto L_0x00d1
        L_0x0060:
            char[] r1 = r0.z
            int r2 = r0.A
            char r1 = r1[r2]
            r15 = 62
            if (r1 != r15) goto L_0x00d1
            int r2 = r2 + r4
            r0.A = r2
            goto L_0x00d1
        L_0x006e:
            java.lang.String r1 = "Expected ':'"
            r0.a((java.lang.String) r1)
            throw r13
        L_0x0074:
            if (r3 != r10) goto L_0x00b6
            boolean r1 = r0.y
            if (r1 == 0) goto L_0x00ae
            r0.a((boolean) r4)
            int r1 = r0.A
            int r1 = r1 - r4
            r0.A = r1
            char[] r2 = M
            int r15 = r2.length
            int r1 = r1 + r15
            int r15 = r0.B
            if (r1 <= r15) goto L_0x0092
            int r1 = r2.length
            boolean r1 = r0.a((int) r1)
            if (r1 != 0) goto L_0x0092
            goto L_0x00ae
        L_0x0092:
            r1 = 0
        L_0x0093:
            char[] r2 = M
            int r15 = r2.length
            if (r1 >= r15) goto L_0x00a8
            char[] r15 = r0.z
            int r13 = r0.A
            int r13 = r13 + r1
            char r13 = r15[r13]
            char r2 = r2[r1]
            if (r13 == r2) goto L_0x00a4
            goto L_0x00ae
        L_0x00a4:
            int r1 = r1 + 1
            r13 = 0
            goto L_0x0093
        L_0x00a8:
            int r1 = r0.A
            int r2 = r2.length
            int r1 = r1 + r2
            r0.A = r1
        L_0x00ae:
            int[] r1 = r0.I
            int r2 = r0.J
            int r2 = r2 - r4
            r1[r2] = r12
            goto L_0x00d1
        L_0x00b6:
            if (r3 != r12) goto L_0x00cd
            int r1 = r0.a((boolean) r6)
            r2 = -1
            if (r1 != r2) goto L_0x00c4
            r1 = 17
            r0.E = r1
            return r1
        L_0x00c4:
            r19.c()
            int r1 = r0.A
            int r1 = r1 - r4
            r0.A = r1
            goto L_0x00d1
        L_0x00cd:
            r1 = 8
            if (r3 == r1) goto L_0x02b2
        L_0x00d1:
            int r1 = r0.a((boolean) r4)
            r2 = 34
            if (r1 == r2) goto L_0x02ad
            r2 = 39
            if (r1 == r2) goto L_0x02a5
            if (r1 == r9) goto L_0x028d
            if (r1 == r8) goto L_0x028d
            r2 = 91
            if (r1 == r2) goto L_0x0289
            if (r1 == r7) goto L_0x0283
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L_0x0280
            int r1 = r0.A
            int r1 = r1 - r4
            r0.A = r1
            char[] r2 = r0.z
            char r1 = r2[r1]
            r2 = 116(0x74, float:1.63E-43)
            if (r1 == r2) goto L_0x011a
            r2 = 84
            if (r1 != r2) goto L_0x00fd
            goto L_0x011a
        L_0x00fd:
            r2 = 102(0x66, float:1.43E-43)
            if (r1 == r2) goto L_0x0114
            r2 = 70
            if (r1 != r2) goto L_0x0106
            goto L_0x0114
        L_0x0106:
            r2 = 110(0x6e, float:1.54E-43)
            if (r1 == r2) goto L_0x010e
            r2 = 78
            if (r1 != r2) goto L_0x0169
        L_0x010e:
            java.lang.String r1 = "null"
            java.lang.String r2 = "NULL"
            r3 = 7
            goto L_0x011f
        L_0x0114:
            java.lang.String r1 = "false"
            java.lang.String r2 = "FALSE"
            r3 = 6
            goto L_0x011f
        L_0x011a:
            java.lang.String r1 = "true"
            java.lang.String r2 = "TRUE"
            r3 = 5
        L_0x011f:
            int r7 = r1.length()
            r8 = 1
        L_0x0124:
            if (r8 >= r7) goto L_0x014d
            int r9 = r0.A
            int r9 = r9 + r8
            int r13 = r0.B
            if (r9 < r13) goto L_0x0136
            int r9 = r8 + 1
            boolean r9 = r0.a((int) r9)
            if (r9 != 0) goto L_0x0136
            goto L_0x0169
        L_0x0136:
            char[] r9 = r0.z
            int r13 = r0.A
            int r13 = r13 + r8
            char r9 = r9[r13]
            char r13 = r1.charAt(r8)
            if (r9 == r13) goto L_0x014a
            char r13 = r2.charAt(r8)
            if (r9 == r13) goto L_0x014a
            goto L_0x0169
        L_0x014a:
            int r8 = r8 + 1
            goto L_0x0124
        L_0x014d:
            int r1 = r0.A
            int r1 = r1 + r7
            int r2 = r0.B
            if (r1 < r2) goto L_0x015c
            int r1 = r7 + 1
            boolean r1 = r0.a((int) r1)
            if (r1 == 0) goto L_0x016b
        L_0x015c:
            char[] r1 = r0.z
            int r2 = r0.A
            int r2 = r2 + r7
            char r1 = r1[r2]
            boolean r1 = r0.a((char) r1)
            if (r1 == 0) goto L_0x016b
        L_0x0169:
            r3 = 0
            goto L_0x0172
        L_0x016b:
            int r1 = r0.A
            int r1 = r1 + r7
            r0.A = r1
            r0.E = r3
        L_0x0172:
            if (r3 == 0) goto L_0x0175
            return r3
        L_0x0175:
            char[] r1 = r0.z
            int r2 = r0.A
            int r3 = r0.B
            r7 = 0
            r10 = r7
            r9 = 0
            r13 = 0
            r15 = 1
            r16 = 0
        L_0x0183:
            int r6 = r2 + r9
            if (r6 != r3) goto L_0x019b
            int r2 = r1.length
            if (r9 != r2) goto L_0x018d
        L_0x018a:
            r6 = 0
            goto L_0x0262
        L_0x018d:
            int r2 = r9 + 1
            boolean r2 = r0.a((int) r2)
            if (r2 != 0) goto L_0x0197
            goto L_0x0205
        L_0x0197:
            int r2 = r0.A
            int r3 = r0.B
        L_0x019b:
            int r6 = r2 + r9
            char r6 = r1[r6]
            r12 = 43
            if (r6 == r12) goto L_0x0255
            r12 = 69
            if (r6 == r12) goto L_0x024b
            r12 = 101(0x65, float:1.42E-43)
            if (r6 == r12) goto L_0x024b
            r12 = 45
            if (r6 == r12) goto L_0x023f
            r12 = 46
            if (r6 == r12) goto L_0x0238
            r12 = 48
            if (r6 < r12) goto L_0x01ff
            r12 = 57
            if (r6 <= r12) goto L_0x01bc
            goto L_0x01ff
        L_0x01bc:
            if (r13 == r4) goto L_0x01f5
            if (r13 != 0) goto L_0x01c1
            goto L_0x01f5
        L_0x01c1:
            if (r13 != r5) goto L_0x01e9
            int r12 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r12 != 0) goto L_0x01c8
            goto L_0x018a
        L_0x01c8:
            r17 = 10
            long r17 = r17 * r10
            int r6 = r6 + -48
            long r7 = (long) r6
            long r17 = r17 - r7
            r6 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r8 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r8 > 0) goto L_0x01e3
            if (r8 != 0) goto L_0x01e1
            int r6 = (r17 > r10 ? 1 : (r17 == r10 ? 0 : -1))
            if (r6 >= 0) goto L_0x01e1
            goto L_0x01e3
        L_0x01e1:
            r6 = 0
            goto L_0x01e4
        L_0x01e3:
            r6 = 1
        L_0x01e4:
            r15 = r15 & r6
            r10 = r17
            r7 = 6
            goto L_0x01fb
        L_0x01e9:
            r6 = 3
            r7 = 6
            if (r13 != r6) goto L_0x01ef
            r13 = 4
            goto L_0x01fb
        L_0x01ef:
            if (r13 == r14) goto L_0x01f3
            if (r13 != r7) goto L_0x01fb
        L_0x01f3:
            r13 = 7
            goto L_0x01fb
        L_0x01f5:
            r7 = 6
            int r6 = r6 + -48
            int r6 = -r6
            long r10 = (long) r6
            r13 = 2
        L_0x01fb:
            r17 = 0
            goto L_0x025b
        L_0x01ff:
            boolean r1 = r0.a((char) r6)
            if (r1 != 0) goto L_0x018a
        L_0x0205:
            if (r13 != r5) goto L_0x0229
            if (r15 == 0) goto L_0x0229
            r1 = -9223372036854775808
            int r3 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r3 != 0) goto L_0x0211
            if (r16 == 0) goto L_0x0229
        L_0x0211:
            r17 = 0
            int r1 = (r10 > r17 ? 1 : (r10 == r17 ? 0 : -1))
            if (r1 != 0) goto L_0x0219
            if (r16 != 0) goto L_0x0229
        L_0x0219:
            if (r16 == 0) goto L_0x021c
            goto L_0x021d
        L_0x021c:
            long r10 = -r10
        L_0x021d:
            r0.F = r10
            int r1 = r0.A
            int r1 = r1 + r9
            r0.A = r1
            r6 = 15
            r0.E = r6
            goto L_0x0262
        L_0x0229:
            if (r13 == r5) goto L_0x0231
            r1 = 4
            if (r13 == r1) goto L_0x0231
            r1 = 7
            if (r13 != r1) goto L_0x018a
        L_0x0231:
            r0.G = r9
            r6 = 16
            r0.E = r6
            goto L_0x0262
        L_0x0238:
            r17 = r7
            r7 = 6
            if (r13 != r5) goto L_0x018a
            r13 = 3
            goto L_0x025b
        L_0x023f:
            r17 = r7
            r7 = 6
            if (r13 != 0) goto L_0x0248
            r13 = 1
            r16 = 1
            goto L_0x025b
        L_0x0248:
            if (r13 != r14) goto L_0x018a
            goto L_0x025a
        L_0x024b:
            r17 = r7
            r7 = 6
            if (r13 == r5) goto L_0x0253
            r6 = 4
            if (r13 != r6) goto L_0x018a
        L_0x0253:
            r13 = 5
            goto L_0x025b
        L_0x0255:
            r17 = r7
            r7 = 6
            if (r13 != r14) goto L_0x018a
        L_0x025a:
            r13 = 6
        L_0x025b:
            int r9 = r9 + 1
            r7 = r17
            r12 = 7
            goto L_0x0183
        L_0x0262:
            if (r6 == 0) goto L_0x0265
            return r6
        L_0x0265:
            char[] r1 = r0.z
            int r2 = r0.A
            char r1 = r1[r2]
            boolean r1 = r0.a((char) r1)
            if (r1 == 0) goto L_0x0279
            r19.c()
            r1 = 10
            r0.E = r1
            return r1
        L_0x0279:
            java.lang.String r1 = "Expected value"
            r0.a((java.lang.String) r1)
            r1 = 0
            throw r1
        L_0x0280:
            r0.E = r4
            return r4
        L_0x0283:
            if (r3 != r4) goto L_0x028d
            r1 = 4
            r0.E = r1
            return r1
        L_0x0289:
            r1 = 3
            r0.E = r1
            return r1
        L_0x028d:
            if (r3 == r4) goto L_0x0299
            if (r3 != r5) goto L_0x0292
            goto L_0x0299
        L_0x0292:
            java.lang.String r1 = "Unexpected value"
            r0.a((java.lang.String) r1)
            r1 = 0
            throw r1
        L_0x0299:
            r19.c()
            int r1 = r0.A
            int r1 = r1 - r4
            r0.A = r1
            r1 = 7
            r0.E = r1
            return r1
        L_0x02a5:
            r19.c()
            r1 = 8
            r0.E = r1
            return r1
        L_0x02ad:
            r1 = 9
            r0.E = r1
            return r1
        L_0x02b2:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "JsonReader is closed"
            r1.<init>(r2)
            throw r1
        L_0x02ba:
            int[] r1 = r0.I
            int r2 = r0.J
            int r2 = r2 - r4
            r6 = 4
            r1[r2] = r6
            r1 = 125(0x7d, float:1.75E-43)
            if (r3 != r14) goto L_0x02dd
            int r2 = r0.a((boolean) r4)
            if (r2 == r9) goto L_0x02dd
            if (r2 == r8) goto L_0x02da
            if (r2 != r1) goto L_0x02d3
            r0.E = r5
            return r5
        L_0x02d3:
            java.lang.String r1 = "Unterminated object"
            r0.a((java.lang.String) r1)
            r1 = 0
            throw r1
        L_0x02da:
            r19.c()
        L_0x02dd:
            int r2 = r0.a((boolean) r4)
            r6 = 34
            if (r2 == r6) goto L_0x0318
            r6 = 39
            if (r2 == r6) goto L_0x0310
            java.lang.String r6 = "Expected name"
            if (r2 == r1) goto L_0x0306
            r19.c()
            int r1 = r0.A
            int r1 = r1 - r4
            r0.A = r1
            char r1 = (char) r2
            boolean r1 = r0.a((char) r1)
            if (r1 == 0) goto L_0x0301
            r1 = 14
            r0.E = r1
            return r1
        L_0x0301:
            r0.a((java.lang.String) r6)
            r1 = 0
            throw r1
        L_0x0306:
            r1 = 0
            if (r3 == r14) goto L_0x030c
            r0.E = r5
            return r5
        L_0x030c:
            r0.a((java.lang.String) r6)
            throw r1
        L_0x0310:
            r19.c()
            r1 = 12
            r0.E = r1
            return r1
        L_0x0318:
            r1 = 13
            r0.E = r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.c.y.a.d():int");
    }

    public void e() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 4) {
            int i3 = this.J - 1;
            this.J = i3;
            int[] iArr = this.L;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.E = 0;
            return;
        }
        StringBuilder a = e.a.a.a.a.a("Expected END_ARRAY but was ");
        a.append(r());
        a.append(i());
        throw new IllegalStateException(a.toString());
    }

    public void f() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 2) {
            int i3 = this.J - 1;
            this.J = i3;
            this.K[i3] = null;
            int[] iArr = this.L;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.E = 0;
            return;
        }
        StringBuilder a = e.a.a.a.a.a("Expected END_OBJECT but was ");
        a.append(r());
        a.append(i());
        throw new IllegalStateException(a.toString());
    }

    public String g() {
        StringBuilder sb = new StringBuilder();
        sb.append(Mqtt.MESSAGE_SYSTEM_PROPERTY_IDENTIFIER_DECODED);
        int i2 = this.J;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.I[i3];
            if (i4 == 1 || i4 == 2) {
                sb.append('[');
                sb.append(this.L[i3]);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append('.');
                String[] strArr = this.K;
                if (strArr[i3] != null) {
                    sb.append(strArr[i3]);
                }
            }
        }
        return sb.toString();
    }

    public boolean h() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    public String i() {
        return " at line " + (this.C + 1) + " column " + ((this.A - this.D) + 1) + " path " + g();
    }

    public boolean j() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 5) {
            this.E = 0;
            int[] iArr = this.L;
            int i3 = this.J - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.E = 0;
            int[] iArr2 = this.L;
            int i4 = this.J - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            StringBuilder a = e.a.a.a.a.a("Expected a boolean but was ");
            a.append(r());
            a.append(i());
            throw new IllegalStateException(a.toString());
        }
    }

    public double k() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 15) {
            this.E = 0;
            int[] iArr = this.L;
            int i3 = this.J - 1;
            iArr[i3] = iArr[i3] + 1;
            return (double) this.F;
        }
        if (i2 == 16) {
            this.H = new String(this.z, this.A, this.G);
            this.A += this.G;
        } else if (i2 == 8 || i2 == 9) {
            this.H = b(i2 == 8 ? WWWAuthenticateHeader.SINGLE_QUOTE : '\"');
        } else if (i2 == 10) {
            this.H = q();
        } else if (i2 != 11) {
            StringBuilder a = e.a.a.a.a.a("Expected a double but was ");
            a.append(r());
            a.append(i());
            throw new IllegalStateException(a.toString());
        }
        this.E = 11;
        double parseDouble = Double.parseDouble(this.H);
        if (this.y || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
            this.H = null;
            this.E = 0;
            int[] iArr2 = this.L;
            int i4 = this.J - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        }
        throw new d("JSON forbids NaN and infinities: " + parseDouble + i());
    }

    public int l() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 15) {
            long j2 = this.F;
            int i3 = (int) j2;
            if (j2 == ((long) i3)) {
                this.E = 0;
                int[] iArr = this.L;
                int i4 = this.J - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            StringBuilder a = e.a.a.a.a.a("Expected an int but was ");
            a.append(this.F);
            a.append(i());
            throw new NumberFormatException(a.toString());
        }
        if (i2 == 16) {
            this.H = new String(this.z, this.A, this.G);
            this.A += this.G;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.H = q();
            } else {
                this.H = b(i2 == 8 ? WWWAuthenticateHeader.SINGLE_QUOTE : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.H);
                this.E = 0;
                int[] iArr2 = this.L;
                int i5 = this.J - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else {
            StringBuilder a2 = e.a.a.a.a.a("Expected an int but was ");
            a2.append(r());
            a2.append(i());
            throw new IllegalStateException(a2.toString());
        }
        this.E = 11;
        double parseDouble = Double.parseDouble(this.H);
        int i6 = (int) parseDouble;
        if (((double) i6) == parseDouble) {
            this.H = null;
            this.E = 0;
            int[] iArr3 = this.L;
            int i7 = this.J - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        StringBuilder a3 = e.a.a.a.a.a("Expected an int but was ");
        a3.append(this.H);
        a3.append(i());
        throw new NumberFormatException(a3.toString());
    }

    public long m() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 15) {
            this.E = 0;
            int[] iArr = this.L;
            int i3 = this.J - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.F;
        }
        if (i2 == 16) {
            this.H = new String(this.z, this.A, this.G);
            this.A += this.G;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.H = q();
            } else {
                this.H = b(i2 == 8 ? WWWAuthenticateHeader.SINGLE_QUOTE : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.H);
                this.E = 0;
                int[] iArr2 = this.L;
                int i4 = this.J - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        } else {
            StringBuilder a = e.a.a.a.a.a("Expected a long but was ");
            a.append(r());
            a.append(i());
            throw new IllegalStateException(a.toString());
        }
        this.E = 11;
        double parseDouble = Double.parseDouble(this.H);
        long j2 = (long) parseDouble;
        if (((double) j2) == parseDouble) {
            this.H = null;
            this.E = 0;
            int[] iArr3 = this.L;
            int i5 = this.J - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j2;
        }
        StringBuilder a2 = e.a.a.a.a.a("Expected a long but was ");
        a2.append(this.H);
        a2.append(i());
        throw new NumberFormatException(a2.toString());
    }

    public String n() {
        String str;
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 14) {
            str = q();
        } else if (i2 == 12) {
            str = b((char) WWWAuthenticateHeader.SINGLE_QUOTE);
        } else if (i2 == 13) {
            str = b('\"');
        } else {
            StringBuilder a = e.a.a.a.a.a("Expected a name but was ");
            a.append(r());
            a.append(i());
            throw new IllegalStateException(a.toString());
        }
        this.E = 0;
        this.K[this.J - 1] = str;
        return str;
    }

    public void o() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 7) {
            this.E = 0;
            int[] iArr = this.L;
            int i3 = this.J - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        StringBuilder a = e.a.a.a.a.a("Expected null but was ");
        a.append(r());
        a.append(i());
        throw new IllegalStateException(a.toString());
    }

    public String p() {
        String str;
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        if (i2 == 10) {
            str = q();
        } else if (i2 == 8) {
            str = b((char) WWWAuthenticateHeader.SINGLE_QUOTE);
        } else if (i2 == 9) {
            str = b('\"');
        } else if (i2 == 11) {
            str = this.H;
            this.H = null;
        } else if (i2 == 15) {
            str = Long.toString(this.F);
        } else if (i2 == 16) {
            str = new String(this.z, this.A, this.G);
            this.A += this.G;
        } else {
            StringBuilder a = e.a.a.a.a.a("Expected a string but was ");
            a.append(r());
            a.append(i());
            throw new IllegalStateException(a.toString());
        }
        this.E = 0;
        int[] iArr = this.L;
        int i3 = this.J - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x004a, code lost:
        c();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String q() {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L_0x0002:
            r2 = 0
        L_0x0003:
            int r3 = r6.A
            int r4 = r3 + r2
            int r5 = r6.B
            if (r4 >= r5) goto L_0x004e
            char[] r4 = r6.z
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L_0x005c
            r4 = 10
            if (r3 == r4) goto L_0x005c
            r4 = 12
            if (r3 == r4) goto L_0x005c
            r4 = 13
            if (r3 == r4) goto L_0x005c
            r4 = 32
            if (r3 == r4) goto L_0x005c
            r4 = 35
            if (r3 == r4) goto L_0x004a
            r4 = 44
            if (r3 == r4) goto L_0x005c
            r4 = 47
            if (r3 == r4) goto L_0x004a
            r4 = 61
            if (r3 == r4) goto L_0x004a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L_0x005c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L_0x005c
            r4 = 58
            if (r3 == r4) goto L_0x005c
            r4 = 59
            if (r3 == r4) goto L_0x004a
            switch(r3) {
                case 91: goto L_0x005c;
                case 92: goto L_0x004a;
                case 93: goto L_0x005c;
                default: goto L_0x0047;
            }
        L_0x0047:
            int r2 = r2 + 1
            goto L_0x0003
        L_0x004a:
            r6.c()
            goto L_0x005c
        L_0x004e:
            char[] r3 = r6.z
            int r3 = r3.length
            if (r2 >= r3) goto L_0x005e
            int r3 = r2 + 1
            boolean r3 = r6.a((int) r3)
            if (r3 == 0) goto L_0x005c
            goto L_0x0003
        L_0x005c:
            r0 = r2
            goto L_0x007e
        L_0x005e:
            if (r1 != 0) goto L_0x006b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r1.<init>(r3)
        L_0x006b:
            char[] r3 = r6.z
            int r4 = r6.A
            r1.append(r3, r4, r2)
            int r3 = r6.A
            int r3 = r3 + r2
            r6.A = r3
            r2 = 1
            boolean r2 = r6.a((int) r2)
            if (r2 != 0) goto L_0x0002
        L_0x007e:
            if (r1 != 0) goto L_0x008a
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.z
            int r3 = r6.A
            r1.<init>(r2, r3, r0)
            goto L_0x0095
        L_0x008a:
            char[] r2 = r6.z
            int r3 = r6.A
            r1.append(r2, r3, r0)
            java.lang.String r1 = r1.toString()
        L_0x0095:
            int r2 = r6.A
            int r2 = r2 + r0
            r6.A = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.c.y.a.q():java.lang.String");
    }

    public b r() {
        int i2 = this.E;
        if (i2 == 0) {
            i2 = d();
        }
        switch (i2) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final char s() {
        int i2;
        int i3;
        if (this.A != this.B || a(1)) {
            char[] cArr = this.z;
            int i4 = this.A;
            int i5 = i4 + 1;
            this.A = i5;
            char c2 = cArr[i4];
            if (c2 == 10) {
                this.C++;
                this.D = i5;
            } else if (!(c2 == '\"' || c2 == '\'' || c2 == '/' || c2 == '\\')) {
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
                    a("Invalid escape sequence");
                    throw null;
                } else if (i5 + 4 <= this.B || a(4)) {
                    char c3 = 0;
                    int i6 = this.A;
                    int i7 = i6 + 4;
                    while (i6 < i7) {
                        char c4 = this.z[i6];
                        char c5 = (char) (c3 << 4);
                        if (c4 < '0' || c4 > '9') {
                            if (c4 >= 'a' && c4 <= 'f') {
                                i3 = c4 - 'a';
                            } else if (c4 < 'A' || c4 > 'F') {
                                StringBuilder a = e.a.a.a.a.a("\\u");
                                a.append(new String(this.z, this.A, 4));
                                throw new NumberFormatException(a.toString());
                            } else {
                                i3 = c4 - 'A';
                            }
                            i2 = i3 + 10;
                        } else {
                            i2 = c4 - '0';
                        }
                        c3 = (char) (i2 + c5);
                        i6++;
                    }
                    this.A += 4;
                    return c3;
                } else {
                    a("Unterminated escape sequence");
                    throw null;
                }
            }
            return c2;
        }
        a("Unterminated escape sequence");
        throw null;
    }

    public final void t() {
        char c2;
        do {
            if (this.A < this.B || a(1)) {
                char[] cArr = this.z;
                int i2 = this.A;
                int i3 = i2 + 1;
                this.A = i3;
                c2 = cArr[i2];
                if (c2 == 10) {
                    this.C++;
                    this.D = i3;
                    return;
                }
            } else {
                return;
            }
        } while (c2 != 13);
    }

    public String toString() {
        return getClass().getSimpleName() + i();
    }

    public void u() {
        int i2;
        int i3 = 0;
        do {
            int i4 = this.E;
            if (i4 == 0) {
                i4 = d();
            }
            if (i4 == 3) {
                b(1);
            } else if (i4 == 1) {
                b(3);
            } else {
                if (i4 == 4) {
                    this.J--;
                } else if (i4 == 2) {
                    this.J--;
                } else if (i4 == 14 || i4 == 10) {
                    while (true) {
                        i2 = 0;
                        while (true) {
                            int i5 = this.A + i2;
                            if (i5 < this.B) {
                                char c2 = this.z[i5];
                                if (!(c2 == 9 || c2 == 10 || c2 == 12 || c2 == 13 || c2 == ' ')) {
                                    if (c2 != '#') {
                                        if (c2 != ',') {
                                            if (!(c2 == '/' || c2 == '=')) {
                                                if (!(c2 == '{' || c2 == '}' || c2 == ':')) {
                                                    if (c2 != ';') {
                                                        switch (c2) {
                                                            case '[':
                                                            case ']':
                                                                break;
                                                            case '\\':
                                                                break;
                                                            default:
                                                                i2++;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                this.A = i5;
                                if (!a(1)) {
                                }
                            }
                        }
                    }
                    c();
                    this.A += i2;
                    this.E = 0;
                } else if (i4 == 8 || i4 == 12) {
                    c(WWWAuthenticateHeader.SINGLE_QUOTE);
                    this.E = 0;
                } else if (i4 == 9 || i4 == 13) {
                    c('\"');
                    this.E = 0;
                } else {
                    if (i4 == 16) {
                        this.A += this.G;
                    }
                    this.E = 0;
                }
                i3--;
                this.E = 0;
            }
            i3++;
            this.E = 0;
        } while (i3 != 0);
        int[] iArr = this.L;
        int i6 = this.J;
        int i7 = i6 - 1;
        iArr[i7] = iArr[i7] + 1;
        this.K[i6 - 1] = "null";
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x005d, code lost:
        if (r2 != null) goto L_0x006d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x005f, code lost:
        r2 = new java.lang.StringBuilder(java.lang.Math.max((r3 - r4) * 2, 16));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006d, code lost:
        r2.append(r0, r4, r3 - r4);
        r10.A = r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String b(char r11) {
        /*
            r10 = this;
            char[] r0 = r10.z
            r1 = 0
            r2 = r1
        L_0x0004:
            int r3 = r10.A
            int r4 = r10.B
        L_0x0008:
            r5 = r4
            r4 = r3
        L_0x000a:
            r6 = 16
            r7 = 1
            if (r3 >= r5) goto L_0x005d
            int r8 = r3 + 1
            char r3 = r0[r3]
            if (r3 != r11) goto L_0x0029
            r10.A = r8
            int r8 = r8 - r4
            int r8 = r8 - r7
            if (r2 != 0) goto L_0x0021
            java.lang.String r11 = new java.lang.String
            r11.<init>(r0, r4, r8)
            return r11
        L_0x0021:
            r2.append(r0, r4, r8)
            java.lang.String r11 = r2.toString()
            return r11
        L_0x0029:
            r9 = 92
            if (r3 != r9) goto L_0x0050
            r10.A = r8
            int r8 = r8 - r4
            int r8 = r8 - r7
            if (r2 != 0) goto L_0x0041
            int r2 = r8 + 1
            int r2 = r2 * 2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r3.<init>(r2)
            r2 = r3
        L_0x0041:
            r2.append(r0, r4, r8)
            char r3 = r10.s()
            r2.append(r3)
            int r3 = r10.A
            int r4 = r10.B
            goto L_0x0008
        L_0x0050:
            r6 = 10
            if (r3 != r6) goto L_0x005b
            int r3 = r10.C
            int r3 = r3 + r7
            r10.C = r3
            r10.D = r8
        L_0x005b:
            r3 = r8
            goto L_0x000a
        L_0x005d:
            if (r2 != 0) goto L_0x006d
            int r2 = r3 - r4
            int r2 = r2 * 2
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r5.<init>(r2)
            r2 = r5
        L_0x006d:
            int r5 = r3 - r4
            r2.append(r0, r4, r5)
            r10.A = r3
            boolean r3 = r10.a((int) r7)
            if (r3 == 0) goto L_0x007b
            goto L_0x0004
        L_0x007b:
            java.lang.String r11 = "Unterminated string"
            r10.a((java.lang.String) r11)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.c.y.a.b(char):java.lang.String");
    }

    public final boolean a(char c2) {
        if (c2 == 9 || c2 == 10 || c2 == 12 || c2 == 13 || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (!(c2 == '/' || c2 == '=')) {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        c();
        return false;
    }

    public final boolean a(int i2) {
        int i3;
        char[] cArr = this.z;
        int i4 = this.D;
        int i5 = this.A;
        this.D = i4 - i5;
        int i6 = this.B;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.B = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.B = 0;
        }
        this.A = 0;
        do {
            Reader reader = this.x;
            int i8 = this.B;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            int i9 = this.B + read;
            this.B = i9;
            if (this.C == 0 && (i3 = this.D) == 0 && i9 > 0 && cArr[0] == 65279) {
                this.A++;
                this.D = i3 + 1;
                i2++;
            }
        } while (this.B < i2);
        return true;
    }

    public final void c() {
        if (!this.y) {
            a("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw null;
        }
    }

    public final int a(boolean z2) {
        char[] cArr = this.z;
        int i2 = this.A;
        int i3 = this.B;
        while (true) {
            boolean z3 = true;
            if (i2 == i3) {
                this.A = i2;
                if (a(1)) {
                    i2 = this.A;
                    i3 = this.B;
                } else if (!z2) {
                    return -1;
                } else {
                    StringBuilder a = e.a.a.a.a.a("End of input");
                    a.append(i());
                    throw new EOFException(a.toString());
                }
            }
            int i4 = i2 + 1;
            char c2 = cArr[i2];
            if (c2 == 10) {
                this.C++;
                this.D = i4;
            } else if (!(c2 == ' ' || c2 == 13 || c2 == 9)) {
                if (c2 == '/') {
                    this.A = i4;
                    if (i4 == i3) {
                        this.A = i4 - 1;
                        boolean a2 = a(2);
                        this.A++;
                        if (!a2) {
                            return c2;
                        }
                    }
                    c();
                    int i5 = this.A;
                    char c3 = cArr[i5];
                    if (c3 == '*') {
                        this.A = i5 + 1;
                        while (true) {
                            int i6 = 0;
                            if (this.A + 2 > this.B && !a(2)) {
                                z3 = false;
                                break;
                            }
                            char[] cArr2 = this.z;
                            int i7 = this.A;
                            if (cArr2[i7] != 10) {
                                while (i6 < 2) {
                                    if (this.z[this.A + i6] == "*/".charAt(i6)) {
                                        i6++;
                                    }
                                }
                                break;
                            }
                            this.C++;
                            this.D = i7 + 1;
                            this.A++;
                        }
                        if (z3) {
                            i2 = this.A + 2;
                            i3 = this.B;
                        } else {
                            a("Unterminated comment");
                            throw null;
                        }
                    } else if (c3 != '/') {
                        return c2;
                    } else {
                        this.A = i5 + 1;
                        t();
                        i2 = this.A;
                        i3 = this.B;
                    }
                } else if (c2 == '#') {
                    this.A = i4;
                    c();
                    t();
                    i2 = this.A;
                    i3 = this.B;
                } else {
                    this.A = i4;
                    return c2;
                }
            }
            i2 = i4;
        }
    }

    public final void b(int i2) {
        int i3 = this.J;
        int[] iArr = this.I;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[(i3 * 2)];
            int[] iArr3 = new int[(i3 * 2)];
            String[] strArr = new String[(i3 * 2)];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            System.arraycopy(this.L, 0, iArr3, 0, this.J);
            System.arraycopy(this.K, 0, strArr, 0, this.J);
            this.I = iArr2;
            this.L = iArr3;
            this.K = strArr;
        }
        int[] iArr4 = this.I;
        int i4 = this.J;
        this.J = i4 + 1;
        iArr4[i4] = i2;
    }

    public final IOException a(String str) {
        StringBuilder a = e.a.a.a.a.a(str);
        a.append(i());
        throw new d(a.toString());
    }
}
