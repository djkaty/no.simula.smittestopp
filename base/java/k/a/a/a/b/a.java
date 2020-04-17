package k.a.a.a.b;

public class a extends c {

    /* renamed from: j  reason: collision with root package name */
    public static final byte[] f1529j = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25};

    /* renamed from: k  reason: collision with root package name */
    public static final byte[] f1530k = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 54, 55};

    /* renamed from: l  reason: collision with root package name */
    public static final byte[] f1531l = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32};
    public static final byte[] m = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86};

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f1532f = f1529j;

    /* renamed from: g  reason: collision with root package name */
    public final int f1533g = 8;

    /* renamed from: h  reason: collision with root package name */
    public final byte[] f1534h = f1530k;

    /* renamed from: i  reason: collision with root package name */
    public final byte[] f1535i = null;

    public a() {
        super(5, 8, 0, 0, (byte) 61);
        if (a((byte) 61)) {
            throw new IllegalArgumentException("pad must not be in alphabet or whitespace");
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v3, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v23, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r12v24, resolved type: byte} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(byte[] r11, int r12, int r13, k.a.a.a.b.c.a r14) {
        /*
            r10 = this;
            boolean r0 = r14.f1549f
            if (r0 == 0) goto L_0x0005
            return
        L_0x0005:
            r0 = 0
            r1 = 1
            if (r13 >= 0) goto L_0x01cc
            r14.f1549f = r1
            int r11 = r14.f1551h
            if (r11 != 0) goto L_0x0014
            int r11 = r10.f1544d
            if (r11 != 0) goto L_0x0014
            return
        L_0x0014:
            int r11 = r10.f1533g
            byte[] r11 = r10.a(r11, r14)
            int r12 = r14.f1547d
            int r13 = r14.f1551h
            if (r13 == 0) goto L_0x01ad
            r2 = 3
            r3 = 2
            if (r13 == r1) goto L_0x0169
            r4 = 4
            if (r13 == r3) goto L_0x0113
            if (r13 == r2) goto L_0x00b2
            if (r13 != r4) goto L_0x009d
            int r13 = r12 + 1
            r14.f1547d = r13
            byte[] r1 = r10.f1534h
            long r4 = r14.b
            r6 = 27
            long r6 = r4 >> r6
            int r7 = (int) r6
            r6 = r7 & 31
            byte r6 = r1[r6]
            r11[r12] = r6
            int r6 = r13 + 1
            r14.f1547d = r6
            r7 = 22
            long r7 = r4 >> r7
            int r8 = (int) r7
            r7 = r8 & 31
            byte r7 = r1[r7]
            r11[r13] = r7
            int r13 = r6 + 1
            r14.f1547d = r13
            r7 = 17
            long r7 = r4 >> r7
            int r8 = (int) r7
            r7 = r8 & 31
            byte r7 = r1[r7]
            r11[r6] = r7
            int r6 = r13 + 1
            r14.f1547d = r6
            r7 = 12
            long r7 = r4 >> r7
            int r8 = (int) r7
            r7 = r8 & 31
            byte r7 = r1[r7]
            r11[r13] = r7
            int r13 = r6 + 1
            r14.f1547d = r13
            r7 = 7
            long r7 = r4 >> r7
            int r8 = (int) r7
            r7 = r8 & 31
            byte r7 = r1[r7]
            r11[r6] = r7
            int r6 = r13 + 1
            r14.f1547d = r6
            long r7 = r4 >> r3
            int r3 = (int) r7
            r3 = r3 & 31
            byte r3 = r1[r3]
            r11[r13] = r3
            int r13 = r6 + 1
            r14.f1547d = r13
            long r2 = r4 << r2
            int r3 = (int) r2
            r2 = r3 & 31
            byte r1 = r1[r2]
            r11[r6] = r1
            int r1 = r13 + 1
            r14.f1547d = r1
            byte r1 = r10.a
            r11[r13] = r1
            goto L_0x01ad
        L_0x009d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "Impossible modulus "
            java.lang.StringBuilder r12 = e.a.a.a.a.a(r12)
            int r13 = r14.f1551h
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        L_0x00b2:
            int r13 = r12 + 1
            r14.f1547d = r13
            byte[] r2 = r10.f1534h
            long r5 = r14.b
            r3 = 19
            long r7 = r5 >> r3
            int r3 = (int) r7
            r3 = r3 & 31
            byte r3 = r2[r3]
            r11[r12] = r3
            int r3 = r13 + 1
            r14.f1547d = r3
            r7 = 14
            long r7 = r5 >> r7
            int r8 = (int) r7
            r7 = r8 & 31
            byte r7 = r2[r7]
            r11[r13] = r7
            int r13 = r3 + 1
            r14.f1547d = r13
            r7 = 9
            long r7 = r5 >> r7
            int r8 = (int) r7
            r7 = r8 & 31
            byte r7 = r2[r7]
            r11[r3] = r7
            int r3 = r13 + 1
            r14.f1547d = r3
            long r7 = r5 >> r4
            int r4 = (int) r7
            r4 = r4 & 31
            byte r4 = r2[r4]
            r11[r13] = r4
            int r13 = r3 + 1
            r14.f1547d = r13
            long r4 = r5 << r1
            int r1 = (int) r4
            r1 = r1 & 31
            byte r1 = r2[r1]
            r11[r3] = r1
            int r1 = r13 + 1
            r14.f1547d = r1
            byte r2 = r10.a
            r11[r13] = r2
            int r13 = r1 + 1
            r14.f1547d = r13
            r11[r1] = r2
            int r1 = r13 + 1
            r14.f1547d = r1
            r11[r13] = r2
            goto L_0x01ad
        L_0x0113:
            int r13 = r12 + 1
            r14.f1547d = r13
            byte[] r2 = r10.f1534h
            long r5 = r14.b
            r3 = 11
            long r7 = r5 >> r3
            int r3 = (int) r7
            r3 = r3 & 31
            byte r3 = r2[r3]
            r11[r12] = r3
            int r3 = r13 + 1
            r14.f1547d = r3
            r7 = 6
            long r7 = r5 >> r7
            int r8 = (int) r7
            r7 = r8 & 31
            byte r7 = r2[r7]
            r11[r13] = r7
            int r13 = r3 + 1
            r14.f1547d = r13
            long r7 = r5 >> r1
            int r1 = (int) r7
            r1 = r1 & 31
            byte r1 = r2[r1]
            r11[r3] = r1
            int r1 = r13 + 1
            r14.f1547d = r1
            long r3 = r5 << r4
            int r4 = (int) r3
            r3 = r4 & 31
            byte r2 = r2[r3]
            r11[r13] = r2
            int r13 = r1 + 1
            r14.f1547d = r13
            byte r2 = r10.a
            r11[r1] = r2
            int r1 = r13 + 1
            r14.f1547d = r1
            r11[r13] = r2
            int r13 = r1 + 1
            r14.f1547d = r13
            r11[r1] = r2
            int r1 = r13 + 1
            r14.f1547d = r1
            r11[r13] = r2
            goto L_0x01ad
        L_0x0169:
            int r13 = r12 + 1
            r14.f1547d = r13
            byte[] r1 = r10.f1534h
            long r4 = r14.b
            long r6 = r4 >> r2
            int r2 = (int) r6
            r2 = r2 & 31
            byte r2 = r1[r2]
            r11[r12] = r2
            int r2 = r13 + 1
            r14.f1547d = r2
            long r3 = r4 << r3
            int r4 = (int) r3
            r3 = r4 & 31
            byte r1 = r1[r3]
            r11[r13] = r1
            int r13 = r2 + 1
            r14.f1547d = r13
            byte r1 = r10.a
            r11[r2] = r1
            int r2 = r13 + 1
            r14.f1547d = r2
            r11[r13] = r1
            int r13 = r2 + 1
            r14.f1547d = r13
            r11[r2] = r1
            int r2 = r13 + 1
            r14.f1547d = r2
            r11[r13] = r1
            int r13 = r2 + 1
            r14.f1547d = r13
            r11[r2] = r1
            int r2 = r13 + 1
            r14.f1547d = r2
            r11[r13] = r1
        L_0x01ad:
            int r13 = r14.f1550g
            int r1 = r14.f1547d
            int r12 = r1 - r12
            int r12 = r12 + r13
            r14.f1550g = r12
            int r13 = r10.f1544d
            if (r13 <= 0) goto L_0x028a
            if (r12 <= 0) goto L_0x028a
            byte[] r12 = r10.f1535i
            int r13 = r12.length
            java.lang.System.arraycopy(r12, r0, r11, r1, r13)
            int r11 = r14.f1547d
            byte[] r12 = r10.f1535i
            int r12 = r12.length
            int r11 = r11 + r12
            r14.f1547d = r11
            goto L_0x028a
        L_0x01cc:
            r0 = 0
        L_0x01cd:
            if (r0 >= r13) goto L_0x028a
            int r2 = r10.f1533g
            byte[] r2 = r10.a(r2, r14)
            int r3 = r14.f1551h
            int r3 = r3 + r1
            r1 = 5
            int r3 = r3 % r1
            r14.f1551h = r3
            int r3 = r12 + 1
            byte r12 = r11[r12]
            if (r12 >= 0) goto L_0x01e4
            int r12 = r12 + 256
        L_0x01e4:
            long r4 = r14.b
            r6 = 8
            long r4 = r4 << r6
            long r6 = (long) r12
            long r4 = r4 + r6
            r14.b = r4
            int r12 = r14.f1551h
            if (r12 != 0) goto L_0x0284
            int r12 = r14.f1547d
            int r6 = r12 + 1
            r14.f1547d = r6
            byte[] r7 = r10.f1534h
            r8 = 35
            long r8 = r4 >> r8
            int r9 = (int) r8
            r8 = r9 & 31
            byte r8 = r7[r8]
            r2[r12] = r8
            int r12 = r6 + 1
            r14.f1547d = r12
            r8 = 30
            long r8 = r4 >> r8
            int r9 = (int) r8
            r8 = r9 & 31
            byte r8 = r7[r8]
            r2[r6] = r8
            int r6 = r12 + 1
            r14.f1547d = r6
            r8 = 25
            long r8 = r4 >> r8
            int r9 = (int) r8
            r8 = r9 & 31
            byte r8 = r7[r8]
            r2[r12] = r8
            int r12 = r6 + 1
            r14.f1547d = r12
            r8 = 20
            long r8 = r4 >> r8
            int r9 = (int) r8
            r8 = r9 & 31
            byte r8 = r7[r8]
            r2[r6] = r8
            int r6 = r12 + 1
            r14.f1547d = r6
            r8 = 15
            long r8 = r4 >> r8
            int r9 = (int) r8
            r8 = r9 & 31
            byte r8 = r7[r8]
            r2[r12] = r8
            int r12 = r6 + 1
            r14.f1547d = r12
            r8 = 10
            long r8 = r4 >> r8
            int r9 = (int) r8
            r8 = r9 & 31
            byte r8 = r7[r8]
            r2[r6] = r8
            int r6 = r12 + 1
            r14.f1547d = r6
            long r8 = r4 >> r1
            int r1 = (int) r8
            r1 = r1 & 31
            byte r1 = r7[r1]
            r2[r12] = r1
            int r12 = r6 + 1
            r14.f1547d = r12
            int r1 = (int) r4
            r1 = r1 & 31
            byte r1 = r7[r1]
            r2[r6] = r1
            int r1 = r14.f1550g
            int r1 = r1 + 8
            r14.f1550g = r1
            int r4 = r10.f1544d
            if (r4 <= 0) goto L_0x0284
            if (r4 > r1) goto L_0x0284
            byte[] r1 = r10.f1535i
            int r4 = r1.length
            r5 = 0
            java.lang.System.arraycopy(r1, r5, r2, r12, r4)
            int r12 = r14.f1547d
            byte[] r1 = r10.f1535i
            int r1 = r1.length
            int r12 = r12 + r1
            r14.f1547d = r12
            r14.f1550g = r5
        L_0x0284:
            int r0 = r0 + 1
            r1 = 1
            r12 = r3
            goto L_0x01cd
        L_0x028a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.a.a.b.a.a(byte[], int, int, k.a.a.a.b.c$a):void");
    }

    public boolean a(byte b) {
        if (b >= 0) {
            byte[] bArr = this.f1532f;
            return b < bArr.length && bArr[b] != -1;
        }
    }
}
