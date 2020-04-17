package k.a.a.a.b;

import e.a.a.a.a;

public class b extends c {

    /* renamed from: j  reason: collision with root package name */
    public static final byte[] f1536j = {13, 10};

    /* renamed from: k  reason: collision with root package name */
    public static final byte[] f1537k = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: l  reason: collision with root package name */
    public static final byte[] f1538l = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    public static final byte[] m = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f1539f;

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f1540g;

    /* renamed from: h  reason: collision with root package name */
    public final byte[] f1541h;

    /* renamed from: i  reason: collision with root package name */
    public final int f1542i;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(int i2, byte[] bArr, boolean z) {
        super(3, 4, i2, bArr == null ? 0 : bArr.length, (byte) 61);
        this.f1540g = m;
        if (bArr == null) {
            this.f1542i = 4;
            this.f1541h = null;
        } else if (a(bArr)) {
            throw new IllegalArgumentException(a.a("lineSeparator must not contain base64 characters: [", new String(bArr, k.a.a.a.a.a), "]"));
        } else if (i2 > 0) {
            this.f1542i = bArr.length + 4;
            byte[] bArr2 = new byte[bArr.length];
            this.f1541h = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } else {
            this.f1542i = 4;
            this.f1541h = null;
        }
        this.f1539f = z ? f1538l : f1537k;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v21, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v22, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(byte[] r10, int r11, int r12, k.a.a.a.b.c.a r13) {
        /*
            r9 = this;
            boolean r0 = r13.f1549f
            if (r0 == 0) goto L_0x0005
            return
        L_0x0005:
            r0 = 0
            r1 = 1
            if (r12 >= 0) goto L_0x00bc
            r13.f1549f = r1
            int r10 = r13.f1551h
            if (r10 != 0) goto L_0x0014
            int r10 = r9.f1544d
            if (r10 != 0) goto L_0x0014
            return
        L_0x0014:
            int r10 = r9.f1542i
            byte[] r10 = r9.a(r10, r13)
            int r11 = r13.f1547d
            int r12 = r13.f1551h
            if (r12 == 0) goto L_0x009d
            if (r12 == r1) goto L_0x006f
            r1 = 2
            if (r12 != r1) goto L_0x005a
            int r12 = r11 + 1
            r13.f1547d = r12
            byte[] r1 = r9.f1539f
            int r2 = r13.a
            int r3 = r2 >> 10
            r3 = r3 & 63
            byte r3 = r1[r3]
            r10[r11] = r3
            int r3 = r12 + 1
            r13.f1547d = r3
            int r4 = r2 >> 4
            r4 = r4 & 63
            byte r4 = r1[r4]
            r10[r12] = r4
            int r12 = r3 + 1
            r13.f1547d = r12
            int r2 = r2 << 2
            r2 = r2 & 63
            byte r2 = r1[r2]
            r10[r3] = r2
            byte[] r2 = f1537k
            if (r1 != r2) goto L_0x009d
            int r1 = r12 + 1
            r13.f1547d = r1
            byte r1 = r9.a
            r10[r12] = r1
            goto L_0x009d
        L_0x005a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "Impossible modulus "
            java.lang.StringBuilder r11 = e.a.a.a.a.a(r11)
            int r12 = r13.f1551h
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L_0x006f:
            int r12 = r11 + 1
            r13.f1547d = r12
            byte[] r1 = r9.f1539f
            int r2 = r13.a
            int r3 = r2 >> 2
            r3 = r3 & 63
            byte r3 = r1[r3]
            r10[r11] = r3
            int r3 = r12 + 1
            r13.f1547d = r3
            int r2 = r2 << 4
            r2 = r2 & 63
            byte r2 = r1[r2]
            r10[r12] = r2
            byte[] r12 = f1537k
            if (r1 != r12) goto L_0x009d
            int r12 = r3 + 1
            r13.f1547d = r12
            byte r1 = r9.a
            r10[r3] = r1
            int r2 = r12 + 1
            r13.f1547d = r2
            r10[r12] = r1
        L_0x009d:
            int r12 = r13.f1550g
            int r1 = r13.f1547d
            int r11 = r1 - r11
            int r11 = r11 + r12
            r13.f1550g = r11
            int r12 = r9.f1544d
            if (r12 <= 0) goto L_0x0131
            if (r11 <= 0) goto L_0x0131
            byte[] r11 = r9.f1541h
            int r12 = r11.length
            java.lang.System.arraycopy(r11, r0, r10, r1, r12)
            int r10 = r13.f1547d
            byte[] r11 = r9.f1541h
            int r11 = r11.length
            int r10 = r10 + r11
            r13.f1547d = r10
            goto L_0x0131
        L_0x00bc:
            r2 = 0
        L_0x00bd:
            if (r2 >= r12) goto L_0x0131
            int r3 = r9.f1542i
            byte[] r3 = r9.a(r3, r13)
            int r4 = r13.f1551h
            int r4 = r4 + r1
            int r4 = r4 % 3
            r13.f1551h = r4
            int r4 = r11 + 1
            byte r11 = r10[r11]
            if (r11 >= 0) goto L_0x00d4
            int r11 = r11 + 256
        L_0x00d4:
            int r5 = r13.a
            int r5 = r5 << 8
            int r5 = r5 + r11
            r13.a = r5
            int r11 = r13.f1551h
            if (r11 != 0) goto L_0x012d
            int r11 = r13.f1547d
            int r6 = r11 + 1
            r13.f1547d = r6
            byte[] r7 = r9.f1539f
            int r8 = r5 >> 18
            r8 = r8 & 63
            byte r8 = r7[r8]
            r3[r11] = r8
            int r11 = r6 + 1
            r13.f1547d = r11
            int r8 = r5 >> 12
            r8 = r8 & 63
            byte r8 = r7[r8]
            r3[r6] = r8
            int r6 = r11 + 1
            r13.f1547d = r6
            int r8 = r5 >> 6
            r8 = r8 & 63
            byte r8 = r7[r8]
            r3[r11] = r8
            int r11 = r6 + 1
            r13.f1547d = r11
            r5 = r5 & 63
            byte r5 = r7[r5]
            r3[r6] = r5
            int r5 = r13.f1550g
            int r5 = r5 + 4
            r13.f1550g = r5
            int r6 = r9.f1544d
            if (r6 <= 0) goto L_0x012d
            if (r6 > r5) goto L_0x012d
            byte[] r5 = r9.f1541h
            int r6 = r5.length
            java.lang.System.arraycopy(r5, r0, r3, r11, r6)
            int r11 = r13.f1547d
            byte[] r3 = r9.f1541h
            int r3 = r3.length
            int r11 = r11 + r3
            r13.f1547d = r11
            r13.f1550g = r0
        L_0x012d:
            int r2 = r2 + 1
            r11 = r4
            goto L_0x00bd
        L_0x0131:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.a.a.b.b.a(byte[], int, int, k.a.a.a.b.c$a):void");
    }

    public boolean a(byte b) {
        if (b >= 0) {
            byte[] bArr = this.f1540g;
            return b < bArr.length && bArr[b] != -1;
        }
    }
}
