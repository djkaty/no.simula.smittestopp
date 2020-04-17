package k.e.a;

public class d {
    public final byte[] a;
    public final int[] b;

    /* renamed from: c  reason: collision with root package name */
    public final String[] f2334c;

    /* renamed from: d  reason: collision with root package name */
    public final h[] f2335d;

    /* renamed from: e  reason: collision with root package name */
    public final int[] f2336e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2337f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2338g;

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0055, code lost:
        r4 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005e, code lost:
        r1 = 5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0069, code lost:
        r1 = r5;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public d(byte[] r10, int r11, boolean r12) {
        /*
            r9 = this;
            r9.<init>()
            r9.a = r10
            if (r12 == 0) goto L_0x0029
            int r12 = r11 + 6
            short r0 = r9.d(r12)
            r1 = 57
            if (r0 > r1) goto L_0x0012
            goto L_0x0029
        L_0x0012:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "Unsupported class file major version "
            java.lang.StringBuilder r11 = e.a.a.a.a.a(r11)
            short r12 = r9.d(r12)
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L_0x0029:
            int r12 = r11 + 8
            int r12 = r9.e(r12)
            int[] r0 = new int[r12]
            r9.b = r0
            java.lang.String[] r0 = new java.lang.String[r12]
            r9.f2334c = r0
            int r11 = r11 + 10
            r0 = 0
            r1 = 1
            r2 = 0
            r3 = 0
            r4 = 0
        L_0x003e:
            r5 = 4
            if (r1 >= r12) goto L_0x006d
            int[] r6 = r9.b
            int r7 = r1 + 1
            int r8 = r11 + 1
            r6[r1] = r8
            byte r1 = r10[r11]
            switch(r1) {
                case 1: goto L_0x0060;
                case 2: goto L_0x004e;
                case 3: goto L_0x005e;
                case 4: goto L_0x005e;
                case 5: goto L_0x0059;
                case 6: goto L_0x0059;
                case 7: goto L_0x0057;
                case 8: goto L_0x0057;
                case 9: goto L_0x005e;
                case 10: goto L_0x005e;
                case 11: goto L_0x005e;
                case 12: goto L_0x005e;
                case 13: goto L_0x004e;
                case 14: goto L_0x004e;
                case 15: goto L_0x0069;
                case 16: goto L_0x0057;
                case 17: goto L_0x0054;
                case 18: goto L_0x0055;
                case 19: goto L_0x0057;
                case 20: goto L_0x0057;
                default: goto L_0x004e;
            }
        L_0x004e:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            r10.<init>()
            throw r10
        L_0x0054:
            r3 = 1
        L_0x0055:
            r4 = 1
            goto L_0x005e
        L_0x0057:
            r1 = 3
            goto L_0x006a
        L_0x0059:
            r5 = 9
            int r7 = r7 + 1
            goto L_0x0069
        L_0x005e:
            r1 = 5
            goto L_0x006a
        L_0x0060:
            int r1 = r9.e(r8)
            int r5 = r1 + 3
            if (r5 <= r2) goto L_0x0069
            r2 = r5
        L_0x0069:
            r1 = r5
        L_0x006a:
            int r11 = r11 + r1
            r1 = r7
            goto L_0x003e
        L_0x006d:
            r9.f2337f = r2
            r9.f2338g = r11
            r10 = 0
            if (r3 == 0) goto L_0x0077
            k.e.a.h[] r11 = new k.e.a.h[r12]
            goto L_0x0078
        L_0x0077:
            r11 = r10
        L_0x0078:
            r9.f2335d = r11
            if (r4 == 0) goto L_0x00c3
            char[] r10 = new char[r2]
            int r11 = r9.a()
            int r12 = r11 + -2
            int r12 = r9.e(r12)
        L_0x0088:
            if (r12 <= 0) goto L_0x00bd
            java.lang.String r1 = r9.e(r11, r10)
            int r2 = r11 + 2
            int r2 = r9.b(r2)
            int r11 = r11 + 6
            java.lang.String r3 = "BootstrapMethods"
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L_0x00b9
            int r10 = r9.e(r11)
            int[] r12 = new int[r10]
            int r11 = r11 + 2
        L_0x00a6:
            if (r0 >= r10) goto L_0x00b7
            r12[r0] = r11
            int r1 = r11 + 2
            int r1 = r9.e(r1)
            int r1 = r1 * 2
            int r1 = r1 + r5
            int r11 = r11 + r1
            int r0 = r0 + 1
            goto L_0x00a6
        L_0x00b7:
            r10 = r12
            goto L_0x00c3
        L_0x00b9:
            int r11 = r11 + r2
            int r12 = r12 + -1
            goto L_0x0088
        L_0x00bd:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            r10.<init>()
            throw r10
        L_0x00c3:
            r9.f2336e = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.d.<init>(byte[], int, boolean):void");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r33v0, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r36v0, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r36v1, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v1, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r43v0, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r43v1, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v3, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r23v2, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v3, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v4, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v14, resolved type: int[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r33v2, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v6, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v16, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v17, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v18, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v22, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v23, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v24, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v30, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v41, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v42, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v40, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v122, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v94, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v96, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v98, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v101, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v145, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r15v22, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v146, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v130, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v148, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v133, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v135, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r23v3, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r23v5, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r43v2, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r33v38, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v79, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r43v3, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v80, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v81, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v82, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r43v4, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r36v3, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r33v40, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v1, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r36v4, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r43v5, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v2, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v3, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v4, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v5, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v6, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r43v6, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r43v7, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v22, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v7, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v23, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v8, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v9, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v10, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v11, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v25, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r40v12, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v146, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v149, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v150, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v154, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v155, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v242, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v156, resolved type: int} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r15v30, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r15v31, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r15v32, resolved type: byte} */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0073, code lost:
        r0 = r0 + 5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00ce, code lost:
        r0 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:309:0x079c, code lost:
        r33 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00dc, code lost:
        r0 = r0 + 3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:325:0x084c, code lost:
        r2 = r11;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:326:0x084d, code lost:
        r0 = r2;
        r39 = r15;
        r4 = r22;
        r5 = r25;
        r11 = r46;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:356:0x09e8, code lost:
        r3 = r32 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:359:0x0a1c, code lost:
        r3 = r32 + 3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:360:0x0a1e, code lost:
        r4 = r22;
        r5 = r25;
        r0 = r34;
        r11 = r46;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:365:0x0a73, code lost:
        r3 = r32 + 2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:367:0x0a89, code lost:
        r4 = r22;
        r5 = r25;
        r0 = r34;
        r11 = r46;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:368:0x0a91, code lost:
        if (r11 == null) goto L_0x0abb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:370:0x0a94, code lost:
        if (r5 >= r11.length) goto L_0x0abb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:371:0x0a96, code lost:
        if (r4 > r7) goto L_0x0abb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:372:0x0a98, code lost:
        if (r4 != r7) goto L_0x0ab2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:373:0x0a9a, code lost:
        r4 = a(r10, r11[r5]);
        a(r9.a(r10.f2356h, r10.f2357i, e(r4, r13), true), r4 + 2, true, r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:374:0x0ab2, code lost:
        r5 = r5 + 1;
        r4 = a(r11, r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:375:0x0abb, code lost:
        r1 = r26;
        r2 = r27;
        r15 = r45;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:376:0x0ac1, code lost:
        if (r15 == null) goto L_0x0b00;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:378:0x0ac4, code lost:
        if (r1 >= r15.length) goto L_0x0b00;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:379:0x0ac6, code lost:
        if (r2 > r7) goto L_0x0b00;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:380:0x0ac8, code lost:
        if (r2 != r7) goto L_0x0aec;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:381:0x0aca, code lost:
        r2 = a(r10, r15[r1]);
        r50 = r0;
        r22 = r3;
        r25 = r7;
        a(r9.a(r10.f2356h, r10.f2357i, e(r2, r13), false), r2 + 2, true, r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:382:0x0aec, code lost:
        r50 = r0;
        r22 = r3;
        r25 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:383:0x0af3, code lost:
        r1 = r1 + 1;
        r2 = a(r15, r1);
        r0 = r50;
        r3 = r22;
        r7 = r25;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:212:0x04d6  */
    /* JADX WARNING: Removed duplicated region for block: B:268:0x067f  */
    /* JADX WARNING: Removed duplicated region for block: B:272:0x0693  */
    /* JADX WARNING: Removed duplicated region for block: B:277:0x06a5  */
    /* JADX WARNING: Removed duplicated region for block: B:279:0x06c7  */
    /* JADX WARNING: Removed duplicated region for block: B:293:0x0707  */
    /* JADX WARNING: Removed duplicated region for block: B:294:0x071b  */
    /* JADX WARNING: Removed duplicated region for block: B:303:0x0766  */
    /* JADX WARNING: Removed duplicated region for block: B:308:0x078f  */
    /* JADX WARNING: Removed duplicated region for block: B:310:0x07a0  */
    /* JADX WARNING: Removed duplicated region for block: B:327:0x0858  */
    /* JADX WARNING: Removed duplicated region for block: B:340:0x08b1  */
    /* JADX WARNING: Removed duplicated region for block: B:348:0x0942  */
    /* JADX WARNING: Removed duplicated region for block: B:352:0x0985  */
    /* JADX WARNING: Removed duplicated region for block: B:353:0x099f  */
    /* JADX WARNING: Removed duplicated region for block: B:354:0x09b9  */
    /* JADX WARNING: Removed duplicated region for block: B:355:0x09d1  */
    /* JADX WARNING: Removed duplicated region for block: B:357:0x09eb  */
    /* JADX WARNING: Removed duplicated region for block: B:358:0x0a04  */
    /* JADX WARNING: Removed duplicated region for block: B:362:0x0a2a  */
    /* JADX WARNING: Removed duplicated region for block: B:363:0x0a44  */
    /* JADX WARNING: Removed duplicated region for block: B:364:0x0a5e  */
    /* JADX WARNING: Removed duplicated region for block: B:366:0x0a76  */
    /* JADX WARNING: Removed duplicated region for block: B:478:0x069f A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(k.e.a.s r48, k.e.a.i r49, int r50) {
        /*
            r47 = this;
            r8 = r47
            r9 = r48
            r10 = r49
            r11 = r50
            byte[] r12 = r8.a
            char[] r13 = r10.f2351c
            int r14 = r8.e(r11)
            int r0 = r11 + 2
            int r15 = r8.e(r0)
            int r0 = r11 + 4
            int r7 = r8.b(r0)
            int r16 = r11 + 8
            int r6 = r16 + r7
            int r0 = r7 + 1
            k.e.a.q[] r5 = new k.e.a.q[r0]
            r10.f2355g = r5
            r0 = r16
        L_0x0028:
            r4 = 132(0x84, float:1.85E-43)
            r3 = 255(0xff, float:3.57E-43)
            r1 = 4
            if (r0 >= r6) goto L_0x00e8
            int r18 = r0 - r16
            byte r2 = r12[r0]
            r2 = r2 & r3
            switch(r2) {
                case 0: goto L_0x00e4;
                case 1: goto L_0x00e4;
                case 2: goto L_0x00e4;
                case 3: goto L_0x00e4;
                case 4: goto L_0x00e4;
                case 5: goto L_0x00e4;
                case 6: goto L_0x00e4;
                case 7: goto L_0x00e4;
                case 8: goto L_0x00e4;
                case 9: goto L_0x00e4;
                case 10: goto L_0x00e4;
                case 11: goto L_0x00e4;
                case 12: goto L_0x00e4;
                case 13: goto L_0x00e4;
                case 14: goto L_0x00e4;
                case 15: goto L_0x00e4;
                case 16: goto L_0x00e0;
                case 17: goto L_0x00dc;
                case 18: goto L_0x00e0;
                case 19: goto L_0x00dc;
                case 20: goto L_0x00dc;
                case 21: goto L_0x00e0;
                case 22: goto L_0x00e0;
                case 23: goto L_0x00e0;
                case 24: goto L_0x00e0;
                case 25: goto L_0x00e0;
                case 26: goto L_0x00e4;
                case 27: goto L_0x00e4;
                case 28: goto L_0x00e4;
                case 29: goto L_0x00e4;
                case 30: goto L_0x00e4;
                case 31: goto L_0x00e4;
                case 32: goto L_0x00e4;
                case 33: goto L_0x00e4;
                case 34: goto L_0x00e4;
                case 35: goto L_0x00e4;
                case 36: goto L_0x00e4;
                case 37: goto L_0x00e4;
                case 38: goto L_0x00e4;
                case 39: goto L_0x00e4;
                case 40: goto L_0x00e4;
                case 41: goto L_0x00e4;
                case 42: goto L_0x00e4;
                case 43: goto L_0x00e4;
                case 44: goto L_0x00e4;
                case 45: goto L_0x00e4;
                case 46: goto L_0x00e4;
                case 47: goto L_0x00e4;
                case 48: goto L_0x00e4;
                case 49: goto L_0x00e4;
                case 50: goto L_0x00e4;
                case 51: goto L_0x00e4;
                case 52: goto L_0x00e4;
                case 53: goto L_0x00e4;
                case 54: goto L_0x00e0;
                case 55: goto L_0x00e0;
                case 56: goto L_0x00e0;
                case 57: goto L_0x00e0;
                case 58: goto L_0x00e0;
                case 59: goto L_0x00e4;
                case 60: goto L_0x00e4;
                case 61: goto L_0x00e4;
                case 62: goto L_0x00e4;
                case 63: goto L_0x00e4;
                case 64: goto L_0x00e4;
                case 65: goto L_0x00e4;
                case 66: goto L_0x00e4;
                case 67: goto L_0x00e4;
                case 68: goto L_0x00e4;
                case 69: goto L_0x00e4;
                case 70: goto L_0x00e4;
                case 71: goto L_0x00e4;
                case 72: goto L_0x00e4;
                case 73: goto L_0x00e4;
                case 74: goto L_0x00e4;
                case 75: goto L_0x00e4;
                case 76: goto L_0x00e4;
                case 77: goto L_0x00e4;
                case 78: goto L_0x00e4;
                case 79: goto L_0x00e4;
                case 80: goto L_0x00e4;
                case 81: goto L_0x00e4;
                case 82: goto L_0x00e4;
                case 83: goto L_0x00e4;
                case 84: goto L_0x00e4;
                case 85: goto L_0x00e4;
                case 86: goto L_0x00e4;
                case 87: goto L_0x00e4;
                case 88: goto L_0x00e4;
                case 89: goto L_0x00e4;
                case 90: goto L_0x00e4;
                case 91: goto L_0x00e4;
                case 92: goto L_0x00e4;
                case 93: goto L_0x00e4;
                case 94: goto L_0x00e4;
                case 95: goto L_0x00e4;
                case 96: goto L_0x00e4;
                case 97: goto L_0x00e4;
                case 98: goto L_0x00e4;
                case 99: goto L_0x00e4;
                case 100: goto L_0x00e4;
                case 101: goto L_0x00e4;
                case 102: goto L_0x00e4;
                case 103: goto L_0x00e4;
                case 104: goto L_0x00e4;
                case 105: goto L_0x00e4;
                case 106: goto L_0x00e4;
                case 107: goto L_0x00e4;
                case 108: goto L_0x00e4;
                case 109: goto L_0x00e4;
                case 110: goto L_0x00e4;
                case 111: goto L_0x00e4;
                case 112: goto L_0x00e4;
                case 113: goto L_0x00e4;
                case 114: goto L_0x00e4;
                case 115: goto L_0x00e4;
                case 116: goto L_0x00e4;
                case 117: goto L_0x00e4;
                case 118: goto L_0x00e4;
                case 119: goto L_0x00e4;
                case 120: goto L_0x00e4;
                case 121: goto L_0x00e4;
                case 122: goto L_0x00e4;
                case 123: goto L_0x00e4;
                case 124: goto L_0x00e4;
                case 125: goto L_0x00e4;
                case 126: goto L_0x00e4;
                case 127: goto L_0x00e4;
                case 128: goto L_0x00e4;
                case 129: goto L_0x00e4;
                case 130: goto L_0x00e4;
                case 131: goto L_0x00e4;
                case 132: goto L_0x00dc;
                case 133: goto L_0x00e4;
                case 134: goto L_0x00e4;
                case 135: goto L_0x00e4;
                case 136: goto L_0x00e4;
                case 137: goto L_0x00e4;
                case 138: goto L_0x00e4;
                case 139: goto L_0x00e4;
                case 140: goto L_0x00e4;
                case 141: goto L_0x00e4;
                case 142: goto L_0x00e4;
                case 143: goto L_0x00e4;
                case 144: goto L_0x00e4;
                case 145: goto L_0x00e4;
                case 146: goto L_0x00e4;
                case 147: goto L_0x00e4;
                case 148: goto L_0x00e4;
                case 149: goto L_0x00e4;
                case 150: goto L_0x00e4;
                case 151: goto L_0x00e4;
                case 152: goto L_0x00e4;
                case 153: goto L_0x00d1;
                case 154: goto L_0x00d1;
                case 155: goto L_0x00d1;
                case 156: goto L_0x00d1;
                case 157: goto L_0x00d1;
                case 158: goto L_0x00d1;
                case 159: goto L_0x00d1;
                case 160: goto L_0x00d1;
                case 161: goto L_0x00d1;
                case 162: goto L_0x00d1;
                case 163: goto L_0x00d1;
                case 164: goto L_0x00d1;
                case 165: goto L_0x00d1;
                case 166: goto L_0x00d1;
                case 167: goto L_0x00d1;
                case 168: goto L_0x00d1;
                case 169: goto L_0x00e0;
                case 170: goto L_0x009f;
                case 171: goto L_0x0076;
                case 172: goto L_0x00e4;
                case 173: goto L_0x00e4;
                case 174: goto L_0x00e4;
                case 175: goto L_0x00e4;
                case 176: goto L_0x00e4;
                case 177: goto L_0x00e4;
                case 178: goto L_0x00dc;
                case 179: goto L_0x00dc;
                case 180: goto L_0x00dc;
                case 181: goto L_0x00dc;
                case 182: goto L_0x00dc;
                case 183: goto L_0x00dc;
                case 184: goto L_0x00dc;
                case 185: goto L_0x0073;
                case 186: goto L_0x0073;
                case 187: goto L_0x00dc;
                case 188: goto L_0x00e0;
                case 189: goto L_0x00dc;
                case 190: goto L_0x00e4;
                case 191: goto L_0x00e4;
                case 192: goto L_0x00dc;
                case 193: goto L_0x00dc;
                case 194: goto L_0x00e4;
                case 195: goto L_0x00e4;
                case 196: goto L_0x0056;
                case 197: goto L_0x006d;
                case 198: goto L_0x00d1;
                case 199: goto L_0x00d1;
                case 200: goto L_0x004a;
                case 201: goto L_0x004a;
                case 202: goto L_0x003d;
                case 203: goto L_0x003d;
                case 204: goto L_0x003d;
                case 205: goto L_0x003d;
                case 206: goto L_0x003d;
                case 207: goto L_0x003d;
                case 208: goto L_0x003d;
                case 209: goto L_0x003d;
                case 210: goto L_0x003d;
                case 211: goto L_0x003d;
                case 212: goto L_0x003d;
                case 213: goto L_0x003d;
                case 214: goto L_0x003d;
                case 215: goto L_0x003d;
                case 216: goto L_0x003d;
                case 217: goto L_0x003d;
                case 218: goto L_0x003d;
                case 219: goto L_0x003d;
                case 220: goto L_0x004a;
                default: goto L_0x0037;
            }
        L_0x0037:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>()
            throw r0
        L_0x003d:
            int r1 = r0 + 1
            int r1 = r8.e(r1)
            int r1 = r1 + r18
            r8.b((int) r1, (k.e.a.q[]) r5)
            goto L_0x00dc
        L_0x004a:
            int r1 = r0 + 1
            int r1 = r8.b(r1)
            int r1 = r1 + r18
            r8.b((int) r1, (k.e.a.q[]) r5)
            goto L_0x0073
        L_0x0056:
            int r1 = r0 + 1
            byte r1 = r12[r1]
            r1 = r1 & r3
            if (r1 == r4) goto L_0x0070
            r2 = 169(0xa9, float:2.37E-43)
            if (r1 == r2) goto L_0x006d
            switch(r1) {
                case 21: goto L_0x006d;
                case 22: goto L_0x006d;
                case 23: goto L_0x006d;
                case 24: goto L_0x006d;
                case 25: goto L_0x006d;
                default: goto L_0x0064;
            }
        L_0x0064:
            switch(r1) {
                case 54: goto L_0x006d;
                case 55: goto L_0x006d;
                case 56: goto L_0x006d;
                case 57: goto L_0x006d;
                case 58: goto L_0x006d;
                default: goto L_0x0067;
            }
        L_0x0067:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>()
            throw r0
        L_0x006d:
            int r0 = r0 + 4
            goto L_0x0028
        L_0x0070:
            int r0 = r0 + 6
            goto L_0x0028
        L_0x0073:
            int r0 = r0 + 5
            goto L_0x0028
        L_0x0076:
            r2 = r18 & 3
            int r1 = r1 - r2
            int r1 = r1 + r0
            int r0 = r8.b(r1)
            int r0 = r0 + r18
            r8.b((int) r0, (k.e.a.q[]) r5)
            int r0 = r1 + 4
            int r0 = r8.b(r0)
            r2 = 8
            int r1 = r1 + r2
        L_0x008c:
            int r2 = r0 + -1
            if (r0 <= 0) goto L_0x00ce
            int r0 = r1 + 4
            int r0 = r8.b(r0)
            int r0 = r0 + r18
            r8.b((int) r0, (k.e.a.q[]) r5)
            int r1 = r1 + 8
            r0 = r2
            goto L_0x008c
        L_0x009f:
            r2 = r18 & 3
            int r1 = r1 - r2
            int r1 = r1 + r0
            int r0 = r8.b(r1)
            int r0 = r0 + r18
            r8.b((int) r0, (k.e.a.q[]) r5)
            int r0 = r1 + 8
            int r0 = r8.b(r0)
            int r2 = r1 + 4
            int r2 = r8.b(r2)
            int r0 = r0 - r2
            r2 = 1
            int r0 = r0 + r2
            int r1 = r1 + 12
        L_0x00bd:
            int r2 = r0 + -1
            if (r0 <= 0) goto L_0x00ce
            int r0 = r8.b(r1)
            int r0 = r0 + r18
            r8.b((int) r0, (k.e.a.q[]) r5)
            int r1 = r1 + 4
            r0 = r2
            goto L_0x00bd
        L_0x00ce:
            r0 = r1
            goto L_0x0028
        L_0x00d1:
            int r1 = r0 + 1
            short r1 = r8.d(r1)
            int r1 = r1 + r18
            r8.b((int) r1, (k.e.a.q[]) r5)
        L_0x00dc:
            int r0 = r0 + 3
            goto L_0x0028
        L_0x00e0:
            int r0 = r0 + 2
            goto L_0x0028
        L_0x00e4:
            int r0 = r0 + 1
            goto L_0x0028
        L_0x00e8:
            r2 = 8
            int r17 = r8.e(r0)
            r1 = 2
            int r0 = r0 + r1
        L_0x00f0:
            int r20 = r17 + -1
            if (r17 <= 0) goto L_0x015d
            int r2 = r8.e(r0)
            k.e.a.q r25 = r8.b((int) r2, (k.e.a.q[]) r5)
            int r2 = r0 + 2
            int r2 = r8.e(r2)
            k.e.a.q r26 = r8.b((int) r2, (k.e.a.q[]) r5)
            int r2 = r0 + 4
            int r2 = r8.e(r2)
            k.e.a.q r27 = r8.b((int) r2, (k.e.a.q[]) r5)
            int[] r2 = r8.b
            int r3 = r0 + 6
            int r3 = r8.e(r3)
            r2 = r2[r3]
            java.lang.String r2 = r8.e(r2, r13)
            int r0 = r0 + 8
            r3 = r9
            k.e.a.t r3 = (k.e.a.t) r3
            if (r3 == 0) goto L_0x015b
            k.e.a.p r4 = new k.e.a.p
            if (r2 == 0) goto L_0x0137
            k.e.a.x r1 = r3.f2396c
            r23 = r6
            r6 = 7
            k.e.a.w r1 = r1.a((int) r6, (java.lang.String) r2)
            int r1 = r1.a
            r28 = r1
            goto L_0x013b
        L_0x0137:
            r23 = r6
            r28 = 0
        L_0x013b:
            r24 = r4
            r29 = r2
            r24.<init>(r25, r26, r27, r28, r29)
            k.e.a.p r1 = r3.f2405l
            if (r1 != 0) goto L_0x0149
            r3.f2405l = r4
            goto L_0x014d
        L_0x0149:
            k.e.a.p r1 = r3.m
            r1.f2385f = r4
        L_0x014d:
            r3.m = r4
            r17 = r20
            r6 = r23
            r1 = 2
            r2 = 8
            r3 = 255(0xff, float:3.57E-43)
            r4 = 132(0x84, float:1.85E-43)
            goto L_0x00f0
        L_0x015b:
            r2 = 0
            throw r2
        L_0x015d:
            r23 = r6
            r2 = 0
            r6 = 7
            int r3 = r8.e(r0)
            r4 = 2
            int r0 = r0 + r4
            r4 = r2
            r32 = r4
            r34 = r32
            r20 = 1
            r22 = 0
            r33 = 0
            r35 = 0
            r36 = 0
        L_0x0176:
            int r24 = r3 + -1
            if (r3 <= 0) goto L_0x0307
            java.lang.String r3 = r8.e(r0, r13)
            int r2 = r0 + 2
            int r26 = r8.b(r2)
            int r2 = r0 + 6
            java.lang.String r0 = "LocalVariableTable"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x01c0
            int r0 = r10.b
            r3 = 2
            r0 = r0 & r3
            if (r0 != 0) goto L_0x01b8
            int r0 = r8.e(r2)
            int r3 = r2 + 2
        L_0x019a:
            int r27 = r0 + -1
            if (r0 <= 0) goto L_0x01b5
            int r0 = r8.e(r3)
            r8.a((int) r0, (k.e.a.q[]) r5)
            int r6 = r3 + 2
            int r6 = r8.e(r6)
            int r6 = r6 + r0
            r8.a((int) r6, (k.e.a.q[]) r5)
            int r3 = r3 + 10
            r0 = r27
            r6 = 7
            goto L_0x019a
        L_0x01b5:
            r35 = r2
            goto L_0x01ca
        L_0x01b8:
            r38 = r4
            r39 = r5
            r40 = r7
            goto L_0x0253
        L_0x01c0:
            java.lang.String r0 = "LocalVariableTypeTable"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x01d4
            r36 = r2
        L_0x01ca:
            r0 = r4
            r39 = r5
            r40 = r7
            r1 = 0
            r4 = 1
        L_0x01d1:
            r5 = 4
            goto L_0x02be
        L_0x01d4:
            java.lang.String r0 = "LineNumberTable"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x0258
            int r0 = r10.b
            r6 = 2
            r0 = r0 & r6
            if (r0 != 0) goto L_0x01b8
            int r0 = r8.e(r2)
            int r3 = r2 + 2
        L_0x01e8:
            int r21 = r0 + -1
            if (r0 <= 0) goto L_0x01b8
            int r0 = r8.e(r3)
            int r6 = r3 + 2
            int r6 = r8.e(r6)
            r1 = 4
            int r3 = r3 + r1
            r8.a((int) r0, (k.e.a.q[]) r5)
            r0 = r5[r0]
            short r1 = r0.b
            if (r1 != 0) goto L_0x020d
            short r1 = (short) r6
            r0.b = r1
            r37 = r3
            r38 = r4
            r39 = r5
            r40 = r7
            goto L_0x0247
        L_0x020d:
            int[] r1 = r0.f2386c
            if (r1 != 0) goto L_0x0219
            r37 = r3
            r1 = 4
            int[] r3 = new int[r1]
            r0.f2386c = r3
            goto L_0x021c
        L_0x0219:
            r37 = r3
            r1 = 4
        L_0x021c:
            int[] r3 = r0.f2386c
            r1 = 0
            r29 = r3[r1]
            r38 = r4
            r19 = 1
            int r4 = r29 + 1
            r3[r1] = r4
            int r1 = r3.length
            if (r4 < r1) goto L_0x023f
            int r1 = r3.length
            r18 = 4
            int r1 = r1 + 4
            int[] r1 = new int[r1]
            r39 = r5
            int r5 = r3.length
            r40 = r7
            r7 = 0
            java.lang.System.arraycopy(r3, r7, r1, r7, r5)
            r0.f2386c = r1
            goto L_0x0243
        L_0x023f:
            r39 = r5
            r40 = r7
        L_0x0243:
            int[] r0 = r0.f2386c
            r0[r4] = r6
        L_0x0247:
            r0 = r21
            r3 = r37
            r4 = r38
            r5 = r39
            r7 = r40
            r6 = 2
            goto L_0x01e8
        L_0x0253:
            r1 = 0
            r4 = 1
        L_0x0255:
            r5 = 4
            goto L_0x02bc
        L_0x0258:
            r38 = r4
            r39 = r5
            r40 = r7
            java.lang.String r0 = "RuntimeVisibleTypeAnnotations"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x026e
            r4 = 1
            int[] r0 = r8.b(r9, r10, r2, r4)
            r1 = 0
            goto L_0x01d1
        L_0x026e:
            r4 = 1
            java.lang.String r0 = "RuntimeInvisibleTypeAnnotations"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x027f
            r1 = 0
            int[] r0 = r8.b(r9, r10, r2, r1)
            r34 = r0
            goto L_0x0255
        L_0x027f:
            r1 = 0
            java.lang.String r0 = "StackMapTable"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x0297
            int r0 = r10.b
            r5 = 4
            r0 = r0 & r5
            if (r0 != 0) goto L_0x02bc
            int r0 = r2 + 2
            int r3 = r2 + r26
            r22 = r0
            r33 = r3
            goto L_0x02bc
        L_0x0297:
            r5 = 4
            java.lang.String r0 = "StackMap"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x02ca
            int r0 = r10.b
            r0 = r0 & r5
            if (r0 != 0) goto L_0x02bc
            int r0 = r2 + 2
            int r3 = r2 + r26
            r22 = r0
            r17 = r2
            r33 = r3
            r42 = r23
            r4 = r38
            r19 = r39
            r43 = r40
            r11 = 8
            r20 = 0
            goto L_0x02f7
        L_0x02bc:
            r0 = r38
        L_0x02be:
            r4 = r0
            r17 = r2
            r42 = r23
            r19 = r39
            r43 = r40
            r11 = 8
            goto L_0x02f7
        L_0x02ca:
            k.e.a.b[] r6 = r10.a
            r0 = r47
            r5 = 0
            r7 = 0
            r11 = 2
            r1 = r6
            r17 = r2
            r4 = 8
            r6 = 1
            r2 = r3
            r3 = r17
            r41 = r38
            r11 = 8
            r4 = r26
            r19 = r39
            r5 = r13
            r42 = r23
            r6 = r50
            r43 = r40
            r7 = r19
            k.e.a.b r0 = r0.a(r1, r2, r3, r4, r5, r6, r7)
            r7 = r32
            r0.f2333c = r7
            r32 = r0
            r4 = r41
        L_0x02f7:
            int r0 = r17 + r26
            r11 = r50
            r5 = r19
            r3 = r24
            r23 = r42
            r7 = r43
            r2 = 0
            r6 = 7
            goto L_0x0176
        L_0x0307:
            r41 = r4
            r19 = r5
            r43 = r7
            r42 = r23
            r7 = r32
            r11 = 8
            int r0 = r10.b
            r0 = r0 & r11
            if (r0 == 0) goto L_0x031a
            r6 = 1
            goto L_0x031b
        L_0x031a:
            r6 = 0
        L_0x031b:
            r5 = -1
            if (r22 == 0) goto L_0x042b
            r10.m = r5
            r4 = 0
            r10.n = r4
            r10.o = r4
            r10.p = r4
            java.lang.Object[] r0 = new java.lang.Object[r15]
            r10.q = r0
            r10.r = r4
            java.lang.Object[] r1 = new java.lang.Object[r14]
            r10.s = r1
            if (r6 == 0) goto L_0x03e8
            java.lang.String r1 = r10.f2354f
            int r2 = r10.f2352d
            r2 = r2 & r11
            if (r2 != 0) goto L_0x0357
            java.lang.String r2 = r10.f2353e
            java.lang.String r3 = "<init>"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x0349
            java.lang.Integer r2 = k.e.a.v.f2420g
            r0[r4] = r2
            goto L_0x0355
        L_0x0349:
            int r2 = r8.f2338g
            r3 = 2
            int r2 = r2 + r3
            char[] r3 = r10.f2351c
            java.lang.String r2 = r8.a((int) r2, (char[]) r3)
            r0[r4] = r2
        L_0x0355:
            r2 = 1
            goto L_0x0358
        L_0x0357:
            r2 = 0
        L_0x0358:
            r3 = r2
            r2 = 1
        L_0x035a:
            int r4 = r2 + 1
            char r5 = r1.charAt(r2)
            r11 = 70
            if (r5 == r11) goto L_0x03da
            r11 = 76
            if (r5 == r11) goto L_0x03c1
            r11 = 83
            if (r5 == r11) goto L_0x03ba
            r11 = 73
            if (r5 == r11) goto L_0x03ba
            r11 = 74
            if (r5 == r11) goto L_0x03b3
            r11 = 90
            if (r5 == r11) goto L_0x03ba
            r11 = 91
            if (r5 == r11) goto L_0x038a
            switch(r5) {
                case 66: goto L_0x03ba;
                case 67: goto L_0x03ba;
                case 68: goto L_0x0383;
                default: goto L_0x037f;
            }
        L_0x037f:
            r10.o = r3
            goto L_0x03e8
        L_0x0383:
            int r2 = r3 + 1
            java.lang.Integer r5 = k.e.a.v.f2417d
            r0[r3] = r5
            goto L_0x03e0
        L_0x038a:
            char r5 = r1.charAt(r4)
            if (r5 != r11) goto L_0x0393
            int r4 = r4 + 1
            goto L_0x038a
        L_0x0393:
            char r5 = r1.charAt(r4)
            r11 = 76
            if (r5 != r11) goto L_0x03a6
        L_0x039b:
            r11 = 1
            int r4 = r4 + r11
            char r5 = r1.charAt(r4)
            r11 = 59
            if (r5 == r11) goto L_0x03a6
            goto L_0x039b
        L_0x03a6:
            int r5 = r3 + 1
            r11 = 1
            int r4 = r4 + r11
            java.lang.String r2 = r1.substring(r2, r4)
            r0[r3] = r2
            r2 = r4
            r3 = r5
            goto L_0x03e2
        L_0x03b3:
            int r2 = r3 + 1
            java.lang.Integer r5 = k.e.a.v.f2418e
            r0[r3] = r5
            goto L_0x03e0
        L_0x03ba:
            int r2 = r3 + 1
            java.lang.Integer r5 = k.e.a.v.b
            r0[r3] = r5
            goto L_0x03e0
        L_0x03c1:
            r2 = r4
        L_0x03c2:
            char r5 = r1.charAt(r2)
            r11 = 59
            if (r5 == r11) goto L_0x03cd
            int r2 = r2 + 1
            goto L_0x03c2
        L_0x03cd:
            int r5 = r3 + 1
            int r11 = r2 + 1
            java.lang.String r2 = r1.substring(r4, r2)
            r0[r3] = r2
            r3 = r5
            r2 = r11
            goto L_0x03e2
        L_0x03da:
            int r2 = r3 + 1
            java.lang.Integer r5 = k.e.a.v.f2416c
            r0[r3] = r5
        L_0x03e0:
            r3 = r2
            r2 = r4
        L_0x03e2:
            r4 = 0
            r5 = -1
            r11 = 8
            goto L_0x035a
        L_0x03e8:
            r0 = r22
        L_0x03ea:
            r11 = r33
            int r1 = r11 + -2
            if (r0 >= r1) goto L_0x0428
            byte r1 = r12[r0]
            r2 = 8
            if (r1 != r2) goto L_0x0419
            int r1 = r0 + 1
            int r1 = r8.e(r1)
            if (r1 < 0) goto L_0x0419
            r5 = r43
            if (r1 >= r5) goto L_0x0416
            int r2 = r16 + r1
            byte r2 = r12[r2]
            r4 = 255(0xff, float:3.57E-43)
            r2 = r2 & r4
            r3 = 187(0xbb, float:2.62E-43)
            if (r2 != r3) goto L_0x0413
            r3 = r19
            r8.b((int) r1, (k.e.a.q[]) r3)
            goto L_0x041f
        L_0x0413:
            r3 = r19
            goto L_0x041f
        L_0x0416:
            r3 = r19
            goto L_0x041d
        L_0x0419:
            r3 = r19
            r5 = r43
        L_0x041d:
            r4 = 255(0xff, float:3.57E-43)
        L_0x041f:
            int r0 = r0 + 1
            r19 = r3
            r43 = r5
            r33 = r11
            goto L_0x03ea
        L_0x0428:
            r3 = r19
            goto L_0x042f
        L_0x042b:
            r3 = r19
            r11 = r33
        L_0x042f:
            r5 = r43
            r4 = 255(0xff, float:3.57E-43)
            if (r6 == 0) goto L_0x0456
            int r0 = r10.b
            r0 = r0 & 256(0x100, float:3.59E-43)
            if (r0 == 0) goto L_0x0456
            r1 = -1
            r19 = 0
            r23 = 0
            r24 = 0
            r0 = r48
            r2 = r15
            r44 = r3
            r3 = r19
            r19 = r7
            r7 = 0
            r4 = r23
            r23 = r5
            r5 = r24
            r0.a((int) r1, (int) r2, (java.lang.Object[]) r3, (int) r4, (java.lang.Object[]) r5)
            goto L_0x045d
        L_0x0456:
            r44 = r3
            r23 = r5
            r19 = r7
            r7 = 0
        L_0x045d:
            r5 = r41
            int r0 = r8.a((int[]) r5, (int) r7)
            r4 = r34
            int r1 = r8.a((int[]) r4, (int) r7)
            int r2 = r10.b
            r2 = r2 & 256(0x100, float:3.59E-43)
            if (r2 != 0) goto L_0x0474
            r2 = 33
            r24 = 33
            goto L_0x0476
        L_0x0474:
            r24 = 0
        L_0x0476:
            r27 = r1
            r3 = r16
            r1 = r22
            r25 = 0
            r26 = 0
            r22 = r0
            r0 = 0
        L_0x0483:
            r7 = r42
            if (r3 >= r7) goto L_0x0b21
            r42 = r7
            int r7 = r3 - r16
            r30 = r14
            r14 = r44
            r2 = r14[r7]
            r32 = r0
            if (r2 == 0) goto L_0x04cc
            int r0 = r10.b
            r21 = 2
            r0 = r0 & 2
            if (r0 != 0) goto L_0x049f
            r0 = 1
            goto L_0x04a0
        L_0x049f:
            r0 = 0
        L_0x04a0:
            r9.a((k.e.a.q) r2)
            if (r0 == 0) goto L_0x04cc
            short r0 = r2.b
            if (r0 == 0) goto L_0x04cc
            r33 = 65535(0xffff, float:9.1834E-41)
            r0 = r0 & r33
            r9.b((int) r0, (k.e.a.q) r2)
            int[] r0 = r2.f2386c
            if (r0 == 0) goto L_0x04cc
            r33 = r1
            r0 = 1
        L_0x04b8:
            int[] r1 = r2.f2386c
            r34 = r3
            r29 = 0
            r3 = r1[r29]
            if (r0 > r3) goto L_0x04d0
            r1 = r1[r0]
            r9.b((int) r1, (k.e.a.q) r2)
            int r0 = r0 + 1
            r3 = r34
            goto L_0x04b8
        L_0x04cc:
            r33 = r1
            r34 = r3
        L_0x04d0:
            r1 = r32
            r3 = r33
        L_0x04d4:
            if (r3 == 0) goto L_0x0672
            int r0 = r10.m
            r2 = -1
            if (r0 == r7) goto L_0x04dd
            if (r0 != r2) goto L_0x0672
        L_0x04dd:
            int r0 = r10.m
            if (r0 == r2) goto L_0x0525
            if (r20 == 0) goto L_0x050b
            if (r6 == 0) goto L_0x04e6
            goto L_0x050b
        L_0x04e6:
            int r1 = r10.n
            int r0 = r10.p
            r32 = r3
            java.lang.Object[] r3 = r10.q
            r33 = r4
            int r4 = r10.r
            r41 = r5
            java.lang.Object[] r5 = r10.s
            r37 = r0
            r0 = r48
            r38 = r15
            r15 = -1
            r2 = r37
            r15 = r32
            r32 = r34
            r45 = r33
            r46 = r41
            r0.a((int) r1, (int) r2, (java.lang.Object[]) r3, (int) r4, (java.lang.Object[]) r5)
            goto L_0x0522
        L_0x050b:
            r45 = r4
            r46 = r5
            r38 = r15
            r32 = r34
            r15 = r3
            r1 = -1
            int r2 = r10.o
            java.lang.Object[] r3 = r10.q
            int r4 = r10.r
            java.lang.Object[] r5 = r10.s
            r0 = r48
            r0.a((int) r1, (int) r2, (java.lang.Object[]) r3, (int) r4, (java.lang.Object[]) r5)
        L_0x0522:
            r33 = 0
            goto L_0x0530
        L_0x0525:
            r45 = r4
            r46 = r5
            r38 = r15
            r32 = r34
            r15 = r3
            r33 = r1
        L_0x0530:
            if (r15 >= r11) goto L_0x0665
            char[] r5 = r10.f2351c
            k.e.a.q[] r4 = r10.f2355g
            if (r20 == 0) goto L_0x0545
            byte[] r0 = r8.a
            int r3 = r15 + 1
            byte r0 = r0[r15]
            r2 = 255(0xff, float:3.57E-43)
            r0 = r0 & r2
            r1 = r3
            r3 = r0
            r0 = 0
            goto L_0x054e
        L_0x0545:
            r0 = -1
            r2 = 255(0xff, float:3.57E-43)
            r10.m = r0
            r1 = r15
            r0 = 0
            r3 = 255(0xff, float:3.57E-43)
        L_0x054e:
            r10.p = r0
            r15 = 64
            if (r3 >= r15) goto L_0x0560
            r15 = 3
            r10.n = r15
            r10.r = r0
            r0 = r1
            r34 = r4
            r37 = r11
            goto L_0x0644
        L_0x0560:
            r0 = 128(0x80, float:1.794E-43)
            if (r3 >= r0) goto L_0x0585
            int r15 = r3 + -64
            java.lang.Object[] r3 = r10.s
            r34 = 0
            r0 = r47
            r37 = r11
            r11 = 255(0xff, float:3.57E-43)
            r2 = r3
            r3 = r34
            r34 = r4
            r4 = r5
            r5 = r34
            int r0 = r0.a(r1, r2, r3, r4, r5)
            r1 = 4
            r10.n = r1
            r1 = 1
            r10.r = r1
        L_0x0582:
            r3 = r15
            goto L_0x0644
        L_0x0585:
            r34 = r4
            r37 = r11
            r11 = 255(0xff, float:3.57E-43)
            r0 = 247(0xf7, float:3.46E-43)
            if (r3 < r0) goto L_0x065f
            int r15 = r8.e(r1)
            int r1 = r1 + 2
            if (r3 != r0) goto L_0x05aa
            java.lang.Object[] r2 = r10.s
            r3 = 0
            r0 = r47
            r4 = r5
            r5 = r34
            int r0 = r0.a(r1, r2, r3, r4, r5)
            r1 = 4
            r10.n = r1
            r1 = 1
            r10.r = r1
            goto L_0x0582
        L_0x05aa:
            r0 = 248(0xf8, float:3.48E-43)
            r2 = 251(0xfb, float:3.52E-43)
            if (r3 < r0) goto L_0x05c1
            if (r3 >= r2) goto L_0x05c1
            r0 = 2
            r10.n = r0
            int r2 = r2 - r3
            r10.p = r2
            int r0 = r10.o
            int r0 = r0 - r2
            r10.o = r0
            r0 = 0
            r10.r = r0
            goto L_0x05c9
        L_0x05c1:
            r0 = 0
            if (r3 != r2) goto L_0x05cb
            r2 = 3
            r10.n = r2
            r10.r = r0
        L_0x05c9:
            r0 = r1
            goto L_0x0582
        L_0x05cb:
            if (r3 >= r11) goto L_0x0603
            if (r6 == 0) goto L_0x05d2
            int r0 = r10.o
            goto L_0x05d3
        L_0x05d2:
            r0 = 0
        L_0x05d3:
            int r4 = r3 + -251
            r3 = r0
            r39 = r4
        L_0x05d8:
            if (r39 <= 0) goto L_0x05f4
            java.lang.Object[] r2 = r10.q
            int r40 = r3 + 1
            r0 = r47
            r11 = r4
            r4 = r5
            r41 = r5
            r5 = r34
            int r1 = r0.a(r1, r2, r3, r4, r5)
            int r39 = r39 + -1
            r4 = r11
            r3 = r40
            r5 = r41
            r11 = 255(0xff, float:3.57E-43)
            goto L_0x05d8
        L_0x05f4:
            r11 = r4
            r0 = 1
            r10.n = r0
            r10.p = r11
            int r0 = r10.o
            int r0 = r0 + r11
            r10.o = r0
            r0 = 0
            r10.r = r0
            goto L_0x05c9
        L_0x0603:
            r41 = r5
            r0 = 0
            int r11 = r8.e(r1)
            int r1 = r1 + 2
            r10.n = r0
            r10.p = r11
            r10.o = r11
            r5 = 0
        L_0x0613:
            if (r5 >= r11) goto L_0x0627
            java.lang.Object[] r2 = r10.q
            r0 = r47
            r3 = r5
            r4 = r41
            r39 = r5
            r5 = r34
            int r1 = r0.a(r1, r2, r3, r4, r5)
            int r5 = r39 + 1
            goto L_0x0613
        L_0x0627:
            int r11 = r8.e(r1)
            int r1 = r1 + 2
            r10.r = r11
            r5 = 0
        L_0x0630:
            if (r5 >= r11) goto L_0x05c9
            java.lang.Object[] r2 = r10.s
            r0 = r47
            r3 = r5
            r4 = r41
            r39 = r5
            r5 = r34
            int r1 = r0.a(r1, r2, r3, r4, r5)
            int r5 = r39 + 1
            goto L_0x0630
        L_0x0644:
            int r1 = r10.m
            r2 = 1
            int r3 = r3 + r2
            int r3 = r3 + r1
            r10.m = r3
            r1 = r34
            r8.b((int) r3, (k.e.a.q[]) r1)
            r3 = r0
            r34 = r32
            r1 = r33
            r11 = r37
            r15 = r38
            r4 = r45
            r5 = r46
            goto L_0x04d4
        L_0x065f:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>()
            throw r0
        L_0x0665:
            r34 = r32
            r1 = r33
            r15 = r38
            r4 = r45
            r5 = r46
            r3 = 0
            goto L_0x04d4
        L_0x0672:
            r45 = r4
            r46 = r5
            r37 = r11
            r38 = r15
            r32 = r34
            r15 = r3
            if (r1 == 0) goto L_0x0693
            int r0 = r10.b
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0691
            r1 = 256(0x100, float:3.59E-43)
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r0 = r48
            r0.a((int) r1, (int) r2, (java.lang.Object[]) r3, (int) r4, (java.lang.Object[]) r5)
        L_0x0691:
            r11 = 0
            goto L_0x0694
        L_0x0693:
            r11 = r1
        L_0x0694:
            byte r0 = r12[r32]
            r1 = 255(0xff, float:3.57E-43)
            r5 = r0 & 255(0xff, float:3.57E-43)
            r0 = 200(0xc8, float:2.8E-43)
            switch(r5) {
                case 0: goto L_0x0a76;
                case 1: goto L_0x0a76;
                case 2: goto L_0x0a76;
                case 3: goto L_0x0a76;
                case 4: goto L_0x0a76;
                case 5: goto L_0x0a76;
                case 6: goto L_0x0a76;
                case 7: goto L_0x0a76;
                case 8: goto L_0x0a76;
                case 9: goto L_0x0a76;
                case 10: goto L_0x0a76;
                case 11: goto L_0x0a76;
                case 12: goto L_0x0a76;
                case 13: goto L_0x0a76;
                case 14: goto L_0x0a76;
                case 15: goto L_0x0a76;
                case 16: goto L_0x0a5e;
                case 17: goto L_0x0a44;
                case 18: goto L_0x0a2a;
                case 19: goto L_0x0a04;
                case 20: goto L_0x0a04;
                case 21: goto L_0x09eb;
                case 22: goto L_0x09eb;
                case 23: goto L_0x09eb;
                case 24: goto L_0x09eb;
                case 25: goto L_0x09eb;
                case 26: goto L_0x09d1;
                case 27: goto L_0x09d1;
                case 28: goto L_0x09d1;
                case 29: goto L_0x09d1;
                case 30: goto L_0x09d1;
                case 31: goto L_0x09d1;
                case 32: goto L_0x09d1;
                case 33: goto L_0x09d1;
                case 34: goto L_0x09d1;
                case 35: goto L_0x09d1;
                case 36: goto L_0x09d1;
                case 37: goto L_0x09d1;
                case 38: goto L_0x09d1;
                case 39: goto L_0x09d1;
                case 40: goto L_0x09d1;
                case 41: goto L_0x09d1;
                case 42: goto L_0x09d1;
                case 43: goto L_0x09d1;
                case 44: goto L_0x09d1;
                case 45: goto L_0x09d1;
                case 46: goto L_0x0a76;
                case 47: goto L_0x0a76;
                case 48: goto L_0x0a76;
                case 49: goto L_0x0a76;
                case 50: goto L_0x0a76;
                case 51: goto L_0x0a76;
                case 52: goto L_0x0a76;
                case 53: goto L_0x0a76;
                case 54: goto L_0x09eb;
                case 55: goto L_0x09eb;
                case 56: goto L_0x09eb;
                case 57: goto L_0x09eb;
                case 58: goto L_0x09eb;
                case 59: goto L_0x09b9;
                case 60: goto L_0x09b9;
                case 61: goto L_0x09b9;
                case 62: goto L_0x09b9;
                case 63: goto L_0x09b9;
                case 64: goto L_0x09b9;
                case 65: goto L_0x09b9;
                case 66: goto L_0x09b9;
                case 67: goto L_0x09b9;
                case 68: goto L_0x09b9;
                case 69: goto L_0x09b9;
                case 70: goto L_0x09b9;
                case 71: goto L_0x09b9;
                case 72: goto L_0x09b9;
                case 73: goto L_0x09b9;
                case 74: goto L_0x09b9;
                case 75: goto L_0x09b9;
                case 76: goto L_0x09b9;
                case 77: goto L_0x09b9;
                case 78: goto L_0x09b9;
                case 79: goto L_0x0a76;
                case 80: goto L_0x0a76;
                case 81: goto L_0x0a76;
                case 82: goto L_0x0a76;
                case 83: goto L_0x0a76;
                case 84: goto L_0x0a76;
                case 85: goto L_0x0a76;
                case 86: goto L_0x0a76;
                case 87: goto L_0x0a76;
                case 88: goto L_0x0a76;
                case 89: goto L_0x0a76;
                case 90: goto L_0x0a76;
                case 91: goto L_0x0a76;
                case 92: goto L_0x0a76;
                case 93: goto L_0x0a76;
                case 94: goto L_0x0a76;
                case 95: goto L_0x0a76;
                case 96: goto L_0x0a76;
                case 97: goto L_0x0a76;
                case 98: goto L_0x0a76;
                case 99: goto L_0x0a76;
                case 100: goto L_0x0a76;
                case 101: goto L_0x0a76;
                case 102: goto L_0x0a76;
                case 103: goto L_0x0a76;
                case 104: goto L_0x0a76;
                case 105: goto L_0x0a76;
                case 106: goto L_0x0a76;
                case 107: goto L_0x0a76;
                case 108: goto L_0x0a76;
                case 109: goto L_0x0a76;
                case 110: goto L_0x0a76;
                case 111: goto L_0x0a76;
                case 112: goto L_0x0a76;
                case 113: goto L_0x0a76;
                case 114: goto L_0x0a76;
                case 115: goto L_0x0a76;
                case 116: goto L_0x0a76;
                case 117: goto L_0x0a76;
                case 118: goto L_0x0a76;
                case 119: goto L_0x0a76;
                case 120: goto L_0x0a76;
                case 121: goto L_0x0a76;
                case 122: goto L_0x0a76;
                case 123: goto L_0x0a76;
                case 124: goto L_0x0a76;
                case 125: goto L_0x0a76;
                case 126: goto L_0x0a76;
                case 127: goto L_0x0a76;
                case 128: goto L_0x0a76;
                case 129: goto L_0x0a76;
                case 130: goto L_0x0a76;
                case 131: goto L_0x0a76;
                case 132: goto L_0x099f;
                case 133: goto L_0x0a76;
                case 134: goto L_0x0a76;
                case 135: goto L_0x0a76;
                case 136: goto L_0x0a76;
                case 137: goto L_0x0a76;
                case 138: goto L_0x0a76;
                case 139: goto L_0x0a76;
                case 140: goto L_0x0a76;
                case 141: goto L_0x0a76;
                case 142: goto L_0x0a76;
                case 143: goto L_0x0a76;
                case 144: goto L_0x0a76;
                case 145: goto L_0x0a76;
                case 146: goto L_0x0a76;
                case 147: goto L_0x0a76;
                case 148: goto L_0x0a76;
                case 149: goto L_0x0a76;
                case 150: goto L_0x0a76;
                case 151: goto L_0x0a76;
                case 152: goto L_0x0a76;
                case 153: goto L_0x0985;
                case 154: goto L_0x0985;
                case 155: goto L_0x0985;
                case 156: goto L_0x0985;
                case 157: goto L_0x0985;
                case 158: goto L_0x0985;
                case 159: goto L_0x0985;
                case 160: goto L_0x0985;
                case 161: goto L_0x0985;
                case 162: goto L_0x0985;
                case 163: goto L_0x0985;
                case 164: goto L_0x0985;
                case 165: goto L_0x0985;
                case 166: goto L_0x0985;
                case 167: goto L_0x0985;
                case 168: goto L_0x0985;
                case 169: goto L_0x09eb;
                case 170: goto L_0x0942;
                case 171: goto L_0x08b1;
                case 172: goto L_0x0a76;
                case 173: goto L_0x0a76;
                case 174: goto L_0x0a76;
                case 175: goto L_0x0a76;
                case 176: goto L_0x0a76;
                case 177: goto L_0x0a76;
                case 178: goto L_0x0858;
                case 179: goto L_0x0858;
                case 180: goto L_0x0858;
                case 181: goto L_0x0858;
                case 182: goto L_0x0858;
                case 183: goto L_0x0858;
                case 184: goto L_0x0858;
                case 185: goto L_0x0858;
                case 186: goto L_0x07a0;
                case 187: goto L_0x078f;
                case 188: goto L_0x0a5e;
                case 189: goto L_0x078f;
                case 190: goto L_0x0a76;
                case 191: goto L_0x0a76;
                case 192: goto L_0x078f;
                case 193: goto L_0x078f;
                case 194: goto L_0x0a76;
                case 195: goto L_0x0a76;
                case 196: goto L_0x0766;
                case 197: goto L_0x071b;
                case 198: goto L_0x0985;
                case 199: goto L_0x0985;
                case 200: goto L_0x0707;
                case 201: goto L_0x0707;
                case 202: goto L_0x06c7;
                case 203: goto L_0x06c7;
                case 204: goto L_0x06c7;
                case 205: goto L_0x06c7;
                case 206: goto L_0x06c7;
                case 207: goto L_0x06c7;
                case 208: goto L_0x06c7;
                case 209: goto L_0x06c7;
                case 210: goto L_0x06c7;
                case 211: goto L_0x06c7;
                case 212: goto L_0x06c7;
                case 213: goto L_0x06c7;
                case 214: goto L_0x06c7;
                case 215: goto L_0x06c7;
                case 216: goto L_0x06c7;
                case 217: goto L_0x06c7;
                case 218: goto L_0x06c7;
                case 219: goto L_0x06c7;
                case 220: goto L_0x06a5;
                default: goto L_0x069f;
            }
        L_0x069f:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L_0x06a5:
            int r3 = r32 + 1
            int r1 = r8.b(r3)
            int r1 = r1 + r7
            r1 = r14[r1]
            r9.a((int) r0, (k.e.a.q) r1)
            int r3 = r32 + 5
            r33 = r6
            r39 = r15
            r4 = r22
            r5 = r25
            r11 = r46
            r0 = 1
        L_0x06be:
            r1 = 4
            r2 = 255(0xff, float:3.57E-43)
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            goto L_0x0a91
        L_0x06c7:
            r1 = 218(0xda, float:3.05E-43)
            if (r5 >= r1) goto L_0x06ce
            int r5 = r5 + -49
            goto L_0x06d0
        L_0x06ce:
            int r5 = r5 + -20
        L_0x06d0:
            int r3 = r32 + 1
            int r1 = r8.e(r3)
            int r1 = r1 + r7
            r1 = r14[r1]
            r2 = 167(0xa7, float:2.34E-43)
            if (r5 == r2) goto L_0x06fb
            r3 = 168(0xa8, float:2.35E-43)
            if (r5 != r3) goto L_0x06e2
            goto L_0x06fb
        L_0x06e2:
            if (r5 >= r2) goto L_0x06eb
            int r5 = r5 + 1
            r2 = 1
            r3 = r5 ^ 1
            int r3 = r3 - r2
            goto L_0x06ed
        L_0x06eb:
            r3 = r5 ^ 1
        L_0x06ed:
            int r2 = r7 + 3
            k.e.a.q r2 = r8.b((int) r2, (k.e.a.q[]) r14)
            r9.a((int) r3, (k.e.a.q) r2)
            r9.a((int) r0, (k.e.a.q) r1)
            r2 = 1
            goto L_0x0701
        L_0x06fb:
            int r5 = r5 + 33
            r9.a((int) r5, (k.e.a.q) r1)
            r2 = r11
        L_0x0701:
            int r3 = r32 + 3
            r33 = r6
            goto L_0x084d
        L_0x0707:
            int r5 = r5 - r24
            int r3 = r32 + 1
            int r0 = r8.b(r3)
            int r0 = r0 + r7
            r0 = r14[r0]
            r9.a((int) r5, (k.e.a.q) r0)
            int r3 = r32 + 5
            r4 = 132(0x84, float:1.85E-43)
            goto L_0x079c
        L_0x071b:
            int r3 = r32 + 1
            java.lang.String r0 = r8.a((int) r3, (char[]) r13)
            int r3 = r32 + 3
            byte r1 = r12[r3]
            r2 = 255(0xff, float:3.57E-43)
            r1 = r1 & r2
            r2 = r9
            k.e.a.t r2 = (k.e.a.t) r2
            k.e.a.c r3 = r2.f2404k
            int r3 = r3.b
            r2.Z = r3
            k.e.a.x r3 = r2.f2396c
            r4 = 7
            k.e.a.w r0 = r3.a((int) r4, (java.lang.String) r0)
            k.e.a.c r3 = r2.f2404k
            int r5 = r0.a
            r4 = 197(0xc5, float:2.76E-43)
            r3.b(r4, r5)
            r3.b(r1)
            k.e.a.q r3 = r2.Q
            if (r3 == 0) goto L_0x0763
            int r3 = r2.N
            r5 = 4
            if (r3 == r5) goto L_0x075a
            r5 = 3
            if (r3 != r5) goto L_0x0751
            goto L_0x075a
        L_0x0751:
            int r0 = r2.R
            r3 = 1
            int r1 = 1 - r1
            int r1 = r1 + r0
            r2.R = r1
            goto L_0x0763
        L_0x075a:
            k.e.a.q r3 = r2.Q
            k.e.a.n r3 = r3.f2393j
            k.e.a.x r2 = r2.f2396c
            r3.a((int) r4, (int) r1, (k.e.a.w) r0, (k.e.a.x) r2)
        L_0x0763:
            r4 = 132(0x84, float:1.85E-43)
            goto L_0x078c
        L_0x0766:
            int r3 = r32 + 1
            byte r0 = r12[r3]
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r4 = 132(0x84, float:1.85E-43)
            if (r0 != r4) goto L_0x0783
            int r3 = r32 + 2
            int r0 = r8.e(r3)
            int r3 = r32 + 4
            short r1 = r8.d(r3)
            r9.a((int) r0, (int) r1)
            int r3 = r32 + 6
            goto L_0x079c
        L_0x0783:
            int r3 = r32 + 2
            int r1 = r8.e(r3)
            r9.d(r0, r1)
        L_0x078c:
            int r3 = r32 + 4
            goto L_0x079c
        L_0x078f:
            r4 = 132(0x84, float:1.85E-43)
            int r3 = r32 + 1
            java.lang.String r0 = r8.a((int) r3, (char[]) r13)
            r9.a((int) r5, (java.lang.String) r0)
            int r3 = r32 + 3
        L_0x079c:
            r33 = r6
            goto L_0x084c
        L_0x07a0:
            r4 = 132(0x84, float:1.85E-43)
            int[] r0 = r8.b
            int r3 = r32 + 1
            int r1 = r8.e(r3)
            r0 = r0[r1]
            int[] r1 = r8.b
            int r2 = r0 + 2
            int r2 = r8.e(r2)
            r1 = r1[r2]
            java.lang.String r2 = r8.e(r1, r13)
            r3 = 2
            int r1 = r1 + r3
            java.lang.String r1 = r8.e(r1, r13)
            int[] r3 = r8.f2336e
            int r0 = r8.e(r0)
            r0 = r3[r0]
            int r3 = r8.e(r0)
            java.lang.Object r3 = r8.b((int) r3, (char[]) r13)
            k.e.a.o r3 = (k.e.a.o) r3
            int r5 = r0 + 2
            int r5 = r8.e(r5)
            java.lang.Object[] r4 = new java.lang.Object[r5]
            r18 = 4
            int r0 = r0 + 4
            r33 = r6
            r6 = 0
        L_0x07e1:
            if (r6 >= r5) goto L_0x07f6
            r31 = r5
            int r5 = r8.e(r0)
            java.lang.Object r5 = r8.b((int) r5, (char[]) r13)
            r4[r6] = r5
            r5 = 2
            int r0 = r0 + r5
            int r6 = r6 + 1
            r5 = r31
            goto L_0x07e1
        L_0x07f6:
            r0 = r9
            k.e.a.t r0 = (k.e.a.t) r0
            k.e.a.c r5 = r0.f2404k
            int r5 = r5.b
            r0.Z = r5
            k.e.a.x r5 = r0.f2396c
            k.e.a.w r3 = r5.a((k.e.a.o) r3, (java.lang.Object[]) r4)
            int r3 = r3.a
            r4 = 18
            k.e.a.w r1 = r5.a((int) r4, (java.lang.String) r2, (java.lang.String) r1, (int) r3)
            k.e.a.c r2 = r0.f2404k
            int r3 = r1.a
            r4 = 186(0xba, float:2.6E-43)
            r2.b(r4, r3)
            k.e.a.c r2 = r0.f2404k
            r3 = 0
            r2.d(r3)
            k.e.a.q r2 = r0.Q
            if (r2 == 0) goto L_0x084a
            int r2 = r0.N
            r3 = 4
            if (r2 == r3) goto L_0x0840
            r3 = 3
            if (r2 != r3) goto L_0x0829
            goto L_0x0840
        L_0x0829:
            int r1 = r1.a()
            r2 = r1 & 3
            r3 = 2
            int r1 = r1 >> r3
            int r2 = r2 - r1
            r1 = 1
            int r2 = r2 + r1
            int r1 = r0.R
            int r1 = r1 + r2
            int r2 = r0.S
            if (r1 <= r2) goto L_0x083d
            r0.S = r1
        L_0x083d:
            r0.R = r1
            goto L_0x084a
        L_0x0840:
            k.e.a.q r2 = r0.Q
            k.e.a.n r2 = r2.f2393j
            k.e.a.x r0 = r0.f2396c
            r3 = 0
            r2.a((int) r4, (int) r3, (k.e.a.w) r1, (k.e.a.x) r0)
        L_0x084a:
            int r3 = r32 + 5
        L_0x084c:
            r2 = r11
        L_0x084d:
            r0 = r2
            r39 = r15
            r4 = r22
            r5 = r25
            r11 = r46
            goto L_0x06be
        L_0x0858:
            r33 = r6
            int[] r0 = r8.b
            int r3 = r32 + 1
            int r1 = r8.e(r3)
            r0 = r0[r1]
            int[] r1 = r8.b
            int r2 = r0 + 2
            int r2 = r8.e(r2)
            r1 = r1[r2]
            java.lang.String r2 = r8.a((int) r0, (char[]) r13)
            java.lang.String r3 = r8.e(r1, r13)
            r4 = 2
            int r1 = r1 + r4
            java.lang.String r4 = r8.e(r1, r13)
            r1 = 182(0xb6, float:2.55E-43)
            if (r5 >= r1) goto L_0x088b
            r9.a((int) r5, (java.lang.String) r2, (java.lang.String) r3, (java.lang.String) r4)
            r34 = r11
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r11 = r5
            goto L_0x08a4
        L_0x088b:
            int r0 = r0 + -1
            byte r0 = r12[r0]
            r1 = 11
            if (r0 != r1) goto L_0x0895
            r6 = 1
            goto L_0x0896
        L_0x0895:
            r6 = 0
        L_0x0896:
            r0 = r48
            r1 = r5
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r34 = r11
            r11 = r5
            r5 = r6
            r0.a((int) r1, (java.lang.String) r2, (java.lang.String) r3, (java.lang.String) r4, (boolean) r5)
        L_0x08a4:
            r0 = 185(0xb9, float:2.59E-43)
            if (r11 != r0) goto L_0x08ab
            int r3 = r32 + 5
            goto L_0x08ad
        L_0x08ab:
            int r3 = r32 + 3
        L_0x08ad:
            r39 = r15
            goto L_0x093f
        L_0x08b1:
            r33 = r6
            r34 = r11
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r0 = r7 & 3
            r1 = 4
            int r0 = 4 - r0
            int r0 = r0 + r32
            int r1 = r8.b(r0)
            int r1 = r1 + r7
            r1 = r14[r1]
            int r2 = r0 + 4
            int r2 = r8.b(r2)
            r3 = 8
            int r0 = r0 + r3
            int[] r4 = new int[r2]
            k.e.a.q[] r5 = new k.e.a.q[r2]
            r6 = r0
            r0 = 0
        L_0x08d6:
            if (r0 >= r2) goto L_0x08ee
            int r11 = r8.b(r6)
            r4[r0] = r11
            int r11 = r6 + 4
            int r11 = r8.b(r11)
            int r11 = r11 + r7
            r11 = r14[r11]
            r5[r0] = r11
            int r6 = r6 + 8
            int r0 = r0 + 1
            goto L_0x08d6
        L_0x08ee:
            r0 = r9
            k.e.a.t r0 = (k.e.a.t) r0
            k.e.a.c r11 = r0.f2404k
            int r3 = r11.b
            r0.Z = r3
            r3 = 171(0xab, float:2.4E-43)
            r11.b(r3)
            k.e.a.c r3 = r0.f2404k
            int r3 = r3.b
            r18 = 4
            int r3 = r3 % 4
            int r3 = 4 - r3
            int r3 = r3 % 4
            r32 = r6
            r39 = r15
            r6 = 0
            r15 = 0
            r11.a((byte[]) r15, (int) r6, (int) r3)
            k.e.a.c r3 = r0.f2404k
            int r6 = r0.Z
            r11 = 1
            r1.a((k.e.a.c) r3, (int) r6, (boolean) r11)
            k.e.a.c r3 = r0.f2404k
            r3.c(r2)
            r3 = 0
        L_0x091f:
            if (r3 >= r2) goto L_0x093a
            k.e.a.c r6 = r0.f2404k
            r15 = r4[r3]
            r6.c(r15)
            r6 = r5[r3]
            k.e.a.c r15 = r0.f2404k
            r50 = r2
            int r2 = r0.Z
            r6.a((k.e.a.c) r15, (int) r2, (boolean) r11)
            int r3 = r3 + 1
            r2 = r50
            r11 = 1
            r15 = 0
            goto L_0x091f
        L_0x093a:
            r0.a((k.e.a.q) r1, (k.e.a.q[]) r5)
            r3 = r32
        L_0x093f:
            r1 = 4
            goto L_0x0a1e
        L_0x0942:
            r33 = r6
            r34 = r11
            r39 = r15
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r0 = r7 & 3
            r1 = 4
            int r0 = 4 - r0
            int r0 = r0 + r32
            int r2 = r8.b(r0)
            int r2 = r2 + r7
            r2 = r14[r2]
            int r3 = r0 + 4
            int r3 = r8.b(r3)
            int r4 = r0 + 8
            int r4 = r8.b(r4)
            int r0 = r0 + 12
            int r5 = r4 - r3
            r6 = 1
            int r5 = r5 + r6
            k.e.a.q[] r6 = new k.e.a.q[r5]
            r11 = 0
        L_0x096f:
            if (r11 >= r5) goto L_0x097f
            int r15 = r8.b(r0)
            int r15 = r15 + r7
            r15 = r14[r15]
            r6[r11] = r15
            int r0 = r0 + 4
            int r11 = r11 + 1
            goto L_0x096f
        L_0x097f:
            r9.a((int) r3, (int) r4, (k.e.a.q) r2, (k.e.a.q[]) r6)
            r3 = r0
            goto L_0x0a1e
        L_0x0985:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r11 = r5
            int r3 = r32 + 1
            short r0 = r8.d(r3)
            int r0 = r0 + r7
            r0 = r14[r0]
            r9.a((int) r11, (k.e.a.q) r0)
            goto L_0x0a1c
        L_0x099f:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            int r3 = r32 + 1
            byte r0 = r12[r3]
            r2 = 255(0xff, float:3.57E-43)
            r0 = r0 & r2
            int r3 = r32 + 2
            byte r2 = r12[r3]
            r9.a((int) r0, (int) r2)
            goto L_0x0a1c
        L_0x09b9:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r11 = r5
            int r5 = r11 + -59
            int r0 = r5 >> 2
            int r0 = r0 + 54
            r2 = 3
            r2 = r2 & r5
            r9.d(r0, r2)
            goto L_0x09e8
        L_0x09d1:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r2 = 3
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r11 = r5
            int r5 = r11 + -26
            int r0 = r5 >> 2
            int r0 = r0 + 21
            r2 = r2 & r5
            r9.d(r0, r2)
        L_0x09e8:
            int r3 = r32 + 1
            goto L_0x0a1e
        L_0x09eb:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r11 = r5
            int r3 = r32 + 1
            byte r0 = r12[r3]
            r2 = 255(0xff, float:3.57E-43)
            r0 = r0 & r2
            r9.d(r11, r0)
            int r3 = r32 + 2
            goto L_0x0a1e
        L_0x0a04:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            int r3 = r32 + 1
            int r0 = r8.e(r3)
            java.lang.Object r0 = r8.b((int) r0, (char[]) r13)
            r9.a((java.lang.Object) r0)
        L_0x0a1c:
            int r3 = r32 + 3
        L_0x0a1e:
            r4 = r22
            r5 = r25
            r0 = r34
            r11 = r46
        L_0x0a26:
            r2 = 255(0xff, float:3.57E-43)
            goto L_0x0a91
        L_0x0a2a:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            int r3 = r32 + 1
            byte r0 = r12[r3]
            r2 = 255(0xff, float:3.57E-43)
            r0 = r0 & r2
            java.lang.Object r0 = r8.b((int) r0, (char[]) r13)
            r9.a((java.lang.Object) r0)
            goto L_0x0a73
        L_0x0a44:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r2 = 255(0xff, float:3.57E-43)
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r11 = r5
            int r3 = r32 + 1
            short r0 = r8.d(r3)
            r9.b((int) r11, (int) r0)
            int r3 = r32 + 3
            goto L_0x0a89
        L_0x0a5e:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r2 = 255(0xff, float:3.57E-43)
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r11 = r5
            int r3 = r32 + 1
            byte r0 = r12[r3]
            r9.b((int) r11, (int) r0)
        L_0x0a73:
            int r3 = r32 + 2
            goto L_0x0a89
        L_0x0a76:
            r33 = r6
            r34 = r11
            r39 = r15
            r1 = 4
            r2 = 255(0xff, float:3.57E-43)
            r28 = 7
            r31 = 132(0x84, float:1.85E-43)
            r11 = r5
            r9.a((int) r11)
            int r3 = r32 + 1
        L_0x0a89:
            r4 = r22
            r5 = r25
            r0 = r34
            r11 = r46
        L_0x0a91:
            if (r11 == 0) goto L_0x0abb
            int r6 = r11.length
            if (r5 >= r6) goto L_0x0abb
            if (r4 > r7) goto L_0x0abb
            if (r4 != r7) goto L_0x0ab2
            r4 = r11[r5]
            int r4 = r8.a((k.e.a.i) r10, (int) r4)
            java.lang.String r6 = r8.e(r4, r13)
            r15 = 2
            int r4 = r4 + r15
            int r15 = r10.f2356h
            k.e.a.z r1 = r10.f2357i
            r2 = 1
            k.e.a.a r1 = r9.a((int) r15, (k.e.a.z) r1, (java.lang.String) r6, (boolean) r2)
            r8.a((k.e.a.a) r1, (int) r4, (boolean) r2, (char[]) r13)
        L_0x0ab2:
            int r5 = r5 + 1
            int r4 = r8.a((int[]) r11, (int) r5)
            r1 = 4
            goto L_0x0a26
        L_0x0abb:
            r1 = r26
            r2 = r27
            r15 = r45
        L_0x0ac1:
            if (r15 == 0) goto L_0x0b00
            int r6 = r15.length
            if (r1 >= r6) goto L_0x0b00
            if (r2 > r7) goto L_0x0b00
            if (r2 != r7) goto L_0x0aec
            r2 = r15[r1]
            int r2 = r8.a((k.e.a.i) r10, (int) r2)
            java.lang.String r6 = r8.e(r2, r13)
            r21 = 2
            int r2 = r2 + 2
            r50 = r0
            int r0 = r10.f2356h
            r22 = r3
            k.e.a.z r3 = r10.f2357i
            r25 = r7
            r7 = 0
            k.e.a.a r0 = r9.a((int) r0, (k.e.a.z) r3, (java.lang.String) r6, (boolean) r7)
            r3 = 1
            r8.a((k.e.a.a) r0, (int) r2, (boolean) r3, (char[]) r13)
            goto L_0x0af3
        L_0x0aec:
            r50 = r0
            r22 = r3
            r25 = r7
            r7 = 0
        L_0x0af3:
            int r1 = r1 + 1
            int r2 = r8.a((int[]) r15, (int) r1)
            r0 = r50
            r3 = r22
            r7 = r25
            goto L_0x0ac1
        L_0x0b00:
            r50 = r0
            r22 = r3
            r7 = 0
            r0 = r50
            r26 = r1
            r27 = r2
            r25 = r5
            r5 = r11
            r44 = r14
            r3 = r22
            r14 = r30
            r6 = r33
            r11 = r37
            r1 = r39
            r22 = r4
            r4 = r15
            r15 = r38
            goto L_0x0483
        L_0x0b21:
            r11 = r5
            r30 = r14
            r38 = r15
            r14 = r44
            r7 = 0
            r15 = r4
            r0 = r14[r23]
            if (r0 == 0) goto L_0x0b33
            r0 = r14[r23]
            r9.a((k.e.a.q) r0)
        L_0x0b33:
            r1 = r35
            if (r1 == 0) goto L_0x0bcc
            int r0 = r10.b
            r2 = 2
            r0 = r0 & r2
            if (r0 != 0) goto L_0x0bcc
            r0 = r36
            if (r0 == 0) goto L_0x0b6c
            int r3 = r8.e(r0)
            r4 = 3
            int r3 = r3 * 3
            int[] r4 = new int[r3]
            int r36 = r0 + 2
            r0 = r36
        L_0x0b4e:
            if (r3 <= 0) goto L_0x0b6a
            int r3 = r3 + -1
            int r2 = r0 + 6
            r4[r3] = r2
            r2 = -1
            int r3 = r3 + r2
            int r5 = r0 + 8
            int r5 = r8.e(r5)
            r4[r3] = r5
            int r3 = r3 + r2
            int r5 = r8.e(r0)
            r4[r3] = r5
            int r0 = r0 + 10
            goto L_0x0b4e
        L_0x0b6a:
            r12 = r4
            goto L_0x0b6d
        L_0x0b6c:
            r12 = 0
        L_0x0b6d:
            int r0 = r8.e(r1)
            r2 = 2
            int r35 = r1 + 2
            r1 = r35
        L_0x0b76:
            int r16 = r0 + -1
            if (r0 <= 0) goto L_0x0bcc
            int r0 = r8.e(r1)
            int r2 = r1 + 2
            int r2 = r8.e(r2)
            int r3 = r1 + 4
            java.lang.String r3 = r8.e(r3, r13)
            int r4 = r1 + 6
            java.lang.String r4 = r8.e(r4, r13)
            int r5 = r1 + 8
            int r6 = r8.e(r5)
            int r17 = r1 + 10
            if (r12 == 0) goto L_0x0bb5
            r1 = 0
        L_0x0b9b:
            int r5 = r12.length
            if (r1 >= r5) goto L_0x0bb5
            r5 = r12[r1]
            if (r5 != r0) goto L_0x0bb2
            int r5 = r1 + 1
            r5 = r12[r5]
            if (r5 != r6) goto L_0x0bb2
            int r1 = r1 + 2
            r1 = r12[r1]
            java.lang.String r1 = r8.e(r1, r13)
            r5 = r1
            goto L_0x0bb6
        L_0x0bb2:
            int r1 = r1 + 3
            goto L_0x0b9b
        L_0x0bb5:
            r5 = 0
        L_0x0bb6:
            r18 = r14[r0]
            int r0 = r0 + r2
            r20 = r14[r0]
            r0 = r48
            r1 = r3
            r2 = r4
            r3 = r5
            r4 = r18
            r5 = r20
            r0.a(r1, r2, r3, r4, r5, r6)
            r0 = r16
            r1 = r17
            goto L_0x0b76
        L_0x0bcc:
            r12 = 65
            if (r11 == 0) goto L_0x0c20
            int r14 = r11.length
            r6 = 0
        L_0x0bd2:
            if (r6 >= r14) goto L_0x0c20
            r0 = r11[r6]
            int r1 = r8.a(r0)
            r2 = 64
            if (r1 == r2) goto L_0x0be8
            if (r1 != r12) goto L_0x0be1
            goto L_0x0be8
        L_0x0be1:
            r18 = r6
            r32 = r19
            r16 = 0
            goto L_0x0c18
        L_0x0be8:
            int r0 = r8.a((k.e.a.i) r10, (int) r0)
            java.lang.String r16 = r8.e(r0, r13)
            r1 = 2
            int r5 = r0 + 2
            int r1 = r10.f2356h
            k.e.a.z r2 = r10.f2357i
            k.e.a.q[] r3 = r10.f2358j
            k.e.a.q[] r4 = r10.f2359k
            int[] r0 = r10.f2360l
            r17 = 1
            r18 = r0
            r0 = r48
            r12 = r5
            r5 = r18
            r18 = r6
            r6 = r16
            r32 = r19
            r16 = 0
            r7 = r17
            k.e.a.a r0 = r0.a(r1, r2, r3, r4, r5, r6, r7)
            r1 = 1
            r8.a((k.e.a.a) r0, (int) r12, (boolean) r1, (char[]) r13)
        L_0x0c18:
            int r6 = r18 + 1
            r19 = r32
            r7 = 0
            r12 = 65
            goto L_0x0bd2
        L_0x0c20:
            r32 = r19
            r16 = 0
            if (r15 == 0) goto L_0x0c6d
            int r11 = r15.length
            r12 = 0
        L_0x0c28:
            if (r12 >= r11) goto L_0x0c6d
            r0 = r15[r12]
            int r1 = r8.a(r0)
            r14 = 64
            r7 = 65
            if (r1 == r14) goto L_0x0c3f
            if (r1 != r7) goto L_0x0c39
            goto L_0x0c3f
        L_0x0c39:
            r1 = 1
            r16 = 2
            r18 = 65
            goto L_0x0c6a
        L_0x0c3f:
            int r0 = r8.a((k.e.a.i) r10, (int) r0)
            java.lang.String r6 = r8.e(r0, r13)
            r16 = 2
            int r5 = r0 + 2
            int r1 = r10.f2356h
            k.e.a.z r2 = r10.f2357i
            k.e.a.q[] r3 = r10.f2358j
            k.e.a.q[] r4 = r10.f2359k
            int[] r0 = r10.f2360l
            r17 = 0
            r18 = r0
            r0 = r48
            r14 = r5
            r5 = r18
            r18 = 65
            r7 = r17
            k.e.a.a r0 = r0.a(r1, r2, r3, r4, r5, r6, r7)
            r1 = 1
            r8.a((k.e.a.a) r0, (int) r14, (boolean) r1, (char[]) r13)
        L_0x0c6a:
            int r12 = r12 + 1
            goto L_0x0c28
        L_0x0c6d:
            r0 = r32
        L_0x0c6f:
            if (r0 == 0) goto L_0x0c81
            k.e.a.b r1 = r0.f2333c
            r2 = 0
            r0.f2333c = r2
            r3 = r9
            k.e.a.t r3 = (k.e.a.t) r3
            k.e.a.b r4 = r3.M
            r0.f2333c = r4
            r3.M = r0
            r0 = r1
            goto L_0x0c6f
        L_0x0c81:
            r0 = r30
            r1 = r38
            r9.c(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.d.a(k.e.a.s, k.e.a.i, int):void");
    }

    public final q b(int i2, q[] qVarArr) {
        if (qVarArr[i2] == null) {
            qVarArr[i2] = new q();
        }
        q qVar = qVarArr[i2];
        qVar.a = (short) (qVar.a & -2);
        return qVar;
    }

    public long c(int i2) {
        return (((long) b(i2)) << 32) | (((long) b(i2 + 4)) & 4294967295L);
    }

    public short d(int i2) {
        byte[] bArr = this.a;
        return (short) ((bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8));
    }

    public int e(int i2) {
        byte[] bArr = this.a;
        return (bArr[i2 + 1] & 255) | ((bArr[i2] & 255) << 8);
    }

    public final String f(int i2, char[] cArr) {
        String[] strArr = this.f2334c;
        String str = strArr[i2];
        if (str != null) {
            return str;
        }
        int i3 = this.b[i2];
        String a2 = a(i3 + 2, e(i3), cArr);
        strArr[i2] = a2;
        return a2;
    }

    public String c(int i2, char[] cArr) {
        return e(this.b[e(i2)], cArr);
    }

    public String d(int i2, char[] cArr) {
        return e(this.b[e(i2)], cArr);
    }

    public String e(int i2, char[] cArr) {
        int e2 = e(i2);
        if (i2 == 0 || e2 == 0) {
            return null;
        }
        return f(e2, cArr);
    }

    public final int[] b(s sVar, i iVar, int i2, boolean z) {
        int i3;
        a aVar;
        char[] cArr = iVar.f2351c;
        int e2 = e(i2);
        int[] iArr = new int[e2];
        int i4 = i2 + 2;
        for (int i5 = 0; i5 < e2; i5++) {
            iArr[i5] = i4;
            int b2 = b(i4);
            int i6 = b2 >>> 24;
            if (i6 != 23) {
                switch (i6) {
                    case 16:
                    case 17:
                    case 18:
                        break;
                    default:
                        switch (i6) {
                            case 64:
                            case 65:
                                int e3 = e(i4 + 1);
                                i3 = i4 + 3;
                                while (true) {
                                    int i7 = e3 - 1;
                                    if (e3 <= 0) {
                                        break;
                                    } else {
                                        int e4 = e(i3);
                                        int e5 = e(i3 + 2);
                                        i3 += 6;
                                        b(e4, iVar.f2355g);
                                        b(e4 + e5, iVar.f2355g);
                                        e3 = i7;
                                    }
                                }
                            case 66:
                            case 67:
                            case 68:
                            case 69:
                            case 70:
                                break;
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                                i3 = i4 + 4;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                        break;
                }
            }
            i3 = i4 + 3;
            int a2 = a(i3);
            z zVar = null;
            if (i6 == 66) {
                if (a2 != 0) {
                    zVar = new z(this.a, i3);
                }
                int i8 = (a2 * 2) + 1 + i3;
                String e6 = e(i8, cArr);
                int i9 = i8 + 2;
                int i10 = b2 & -256;
                t tVar = (t) sVar;
                if (z) {
                    aVar = a.a(tVar.f2396c, i10, zVar, e6, tVar.v);
                    tVar.v = aVar;
                } else {
                    aVar = a.a(tVar.f2396c, i10, zVar, e6, tVar.w);
                    tVar.w = aVar;
                }
                i4 = a(aVar, i9, true, cArr);
            } else {
                i4 = a((a) null, (a2 * 2) + 3 + i3, true, cArr);
            }
        }
        return iArr;
    }

    public int b(int i2) {
        byte[] bArr = this.a;
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    public Object b(int i2, char[] cArr) {
        int[] iArr = this.b;
        int i3 = iArr[i2];
        byte b2 = this.a[i3 - 1];
        switch (b2) {
            case 3:
                return Integer.valueOf(b(i3));
            case 4:
                return Float.valueOf(Float.intBitsToFloat(b(i3)));
            case 5:
                return Long.valueOf(c(i3));
            case 6:
                return Double.valueOf(Double.longBitsToDouble(c(i3)));
            case 7:
                return y.c(e(i3, cArr));
            case 8:
                return e(i3, cArr);
            default:
                switch (b2) {
                    case 15:
                        int a2 = a(i3);
                        int i4 = this.b[e(i3 + 1)];
                        int i5 = this.b[e(i4 + 2)];
                        return new o(a2, a(i4, cArr), e(i5, cArr), e(i5 + 2, cArr), this.a[i4 - 1] == 11);
                    case 16:
                        String e2 = e(i3, cArr);
                        return new y(11, e2, 0, e2.length());
                    case 17:
                        h hVar = this.f2335d[i2];
                        if (hVar != null) {
                            return hVar;
                        }
                        int i6 = iArr[i2];
                        int i7 = iArr[e(i6 + 2)];
                        String e3 = e(i7, cArr);
                        String e4 = e(i7 + 2, cArr);
                        int i8 = this.f2336e[e(i6)];
                        o oVar = (o) b(e(i8), cArr);
                        int e5 = e(i8 + 2);
                        Object[] objArr = new Object[e5];
                        int i9 = i8 + 4;
                        for (int i10 = 0; i10 < e5; i10++) {
                            objArr[i10] = b(e(i9), cArr);
                            i9 += 2;
                        }
                        h[] hVarArr = this.f2335d;
                        h hVar2 = new h(e3, e4, oVar, objArr);
                        hVarArr[i2] = hVar2;
                        return hVar2;
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }

    public final void a(int i2, q[] qVarArr) {
        if (qVarArr[i2] == null) {
            if (qVarArr[i2] == null) {
                qVarArr[i2] = new q();
            }
            q qVar = qVarArr[i2];
            qVar.a = (short) (qVar.a | 1);
        }
    }

    public final int a(int[] iArr, int i2) {
        if (iArr == null || i2 >= iArr.length || a(iArr[i2]) < 67) {
            return -1;
        }
        return e(iArr[i2] + 1);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0025, code lost:
        r0 = r0 & -256;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0027, code lost:
        r11 = r11 + 3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int a(k.e.a.i r10, int r11) {
        /*
            r9 = this;
            int r0 = r9.b(r11)
            int r1 = r0 >>> 24
            r2 = 1
            if (r1 == 0) goto L_0x0070
            if (r1 == r2) goto L_0x0070
            r3 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            switch(r1) {
                case 16: goto L_0x0025;
                case 17: goto L_0x0025;
                case 18: goto L_0x0025;
                case 19: goto L_0x0019;
                case 20: goto L_0x0019;
                case 21: goto L_0x0019;
                case 22: goto L_0x0070;
                case 23: goto L_0x0025;
                default: goto L_0x0010;
            }
        L_0x0010:
            switch(r1) {
                case 64: goto L_0x002a;
                case 65: goto L_0x002a;
                case 66: goto L_0x0025;
                case 67: goto L_0x0023;
                case 68: goto L_0x0023;
                case 69: goto L_0x0023;
                case 70: goto L_0x0023;
                case 71: goto L_0x001c;
                case 72: goto L_0x001c;
                case 73: goto L_0x001c;
                case 74: goto L_0x001c;
                case 75: goto L_0x001c;
                default: goto L_0x0013;
            }
        L_0x0013:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            r10.<init>()
            throw r10
        L_0x0019:
            r0 = r0 & r3
            int r11 = r11 + r2
            goto L_0x0075
        L_0x001c:
            r1 = -16776961(0xffffffffff0000ff, float:-1.7014636E38)
            r0 = r0 & r1
            int r11 = r11 + 4
            goto L_0x0075
        L_0x0023:
            r0 = r0 & r3
            goto L_0x0027
        L_0x0025:
            r0 = r0 & -256(0xffffffffffffff00, float:NaN)
        L_0x0027:
            int r11 = r11 + 3
            goto L_0x0075
        L_0x002a:
            r0 = r0 & r3
            int r1 = r11 + 1
            int r1 = r9.e(r1)
            int r11 = r11 + 3
            k.e.a.q[] r3 = new k.e.a.q[r1]
            r10.f2358j = r3
            k.e.a.q[] r3 = new k.e.a.q[r1]
            r10.f2359k = r3
            int[] r3 = new int[r1]
            r10.f2360l = r3
            r3 = 0
        L_0x0040:
            if (r3 >= r1) goto L_0x0075
            int r4 = r9.e(r11)
            int r5 = r11 + 2
            int r5 = r9.e(r5)
            int r6 = r11 + 4
            int r6 = r9.e(r6)
            int r11 = r11 + 6
            k.e.a.q[] r7 = r10.f2358j
            k.e.a.q[] r8 = r10.f2355g
            k.e.a.q r8 = r9.b((int) r4, (k.e.a.q[]) r8)
            r7[r3] = r8
            k.e.a.q[] r7 = r10.f2359k
            int r4 = r4 + r5
            k.e.a.q[] r5 = r10.f2355g
            k.e.a.q r4 = r9.b((int) r4, (k.e.a.q[]) r5)
            r7[r3] = r4
            int[] r4 = r10.f2360l
            r4[r3] = r6
            int r3 = r3 + 1
            goto L_0x0040
        L_0x0070:
            r1 = -65536(0xffffffffffff0000, float:NaN)
            r0 = r0 & r1
            int r11 = r11 + 2
        L_0x0075:
            r10.f2356h = r0
            int r0 = r9.a(r11)
            if (r0 != 0) goto L_0x007f
            r1 = 0
            goto L_0x0086
        L_0x007f:
            k.e.a.z r1 = new k.e.a.z
            byte[] r3 = r9.a
            r1.<init>(r3, r11)
        L_0x0086:
            r10.f2357i = r1
            int r11 = r11 + r2
            int r0 = r0 * 2
            int r0 = r0 + r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.d.a(k.e.a.i, int):int");
    }

    public final void a(s sVar, i iVar, int i2, boolean z) {
        a aVar;
        int i3 = i2 + 1;
        byte b2 = this.a[i2] & 255;
        t tVar = (t) sVar;
        if (z) {
            tVar.D = b2;
        } else {
            tVar.F = b2;
        }
        char[] cArr = iVar.f2351c;
        for (int i4 = 0; i4 < b2; i4++) {
            int e2 = e(i3);
            i3 += 2;
            while (true) {
                int i5 = e2 - 1;
                if (e2 <= 0) {
                    break;
                }
                String e3 = e(i3, cArr);
                int i6 = i3 + 2;
                t tVar2 = (t) sVar;
                if (z) {
                    if (tVar2.E == null) {
                        tVar2.E = new a[y.a(tVar2.f2401h).length];
                    }
                    a[] aVarArr = tVar2.E;
                    aVar = a.a(tVar2.f2396c, e3, aVarArr[i4]);
                    aVarArr[i4] = aVar;
                } else {
                    if (tVar2.G == null) {
                        tVar2.G = new a[y.a(tVar2.f2401h).length];
                    }
                    a[] aVarArr2 = tVar2.G;
                    aVar = a.a(tVar2.f2396c, e3, aVarArr2[i4]);
                    aVarArr2[i4] = aVar;
                }
                i3 = a(aVar, i6, true, cArr);
                e2 = i5;
            }
        }
    }

    public final int a(a aVar, int i2, boolean z, char[] cArr) {
        int e2 = e(i2);
        int i3 = i2 + 2;
        if (!z) {
            while (true) {
                int i4 = e2 - 1;
                if (e2 <= 0) {
                    break;
                }
                i3 = a(aVar, i3, (String) null, cArr);
                e2 = i4;
            }
        } else {
            while (true) {
                int i5 = e2 - 1;
                if (e2 <= 0) {
                    break;
                }
                i3 = a(aVar, i3 + 2, e(i3, cArr), cArr);
                e2 = i5;
            }
        }
        if (aVar != null) {
            aVar.a();
        }
        return i3;
    }

    public final int a(a aVar, int i2, String str, char[] cArr) {
        int i3 = 0;
        if (aVar == null) {
            byte b2 = this.a[i2] & 255;
            if (b2 == 64) {
                return a((a) null, i2 + 3, true, cArr);
            }
            if (b2 != 91) {
                return b2 != 101 ? i2 + 3 : i2 + 5;
            }
            return a((a) null, i2 + 1, false, cArr);
        }
        int i4 = i2 + 1;
        byte b3 = this.a[i2] & 255;
        if (b3 != 64) {
            if (b3 != 70) {
                if (b3 == 83) {
                    aVar.a(str, (Object) Short.valueOf((short) b(this.b[e(i4)])));
                } else if (b3 == 99) {
                    aVar.a(str, (Object) y.e(e(i4, cArr)));
                } else if (b3 == 101) {
                    String e2 = e(i4, cArr);
                    String e3 = e(i4 + 2, cArr);
                    aVar.f2330e++;
                    if (aVar.b) {
                        aVar.f2328c.d(aVar.a.c(str));
                    }
                    c cVar = aVar.f2328c;
                    cVar.b(101, aVar.a.c(e2));
                    cVar.d(aVar.a.c(e3));
                    return i4 + 4;
                } else if (b3 == 115) {
                    aVar.a(str, (Object) e(i4, cArr));
                } else if (!(b3 == 73 || b3 == 74)) {
                    if (b3 == 90) {
                        aVar.a(str, (Object) b(this.b[e(i4)]) == 0 ? Boolean.FALSE : Boolean.TRUE);
                    } else if (b3 != 91) {
                        switch (b3) {
                            case 66:
                                aVar.a(str, (Object) Byte.valueOf((byte) b(this.b[e(i4)])));
                                break;
                            case 67:
                                aVar.a(str, (Object) Character.valueOf((char) b(this.b[e(i4)])));
                                break;
                            case 68:
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                    } else {
                        int e4 = e(i4);
                        int i5 = i4 + 2;
                        if (e4 == 0) {
                            return a(aVar.b(str), i5 - 2, false, cArr);
                        }
                        byte b4 = this.a[i5] & 255;
                        if (b4 == 70) {
                            float[] fArr = new float[e4];
                            while (i3 < e4) {
                                fArr[i3] = Float.intBitsToFloat(b(this.b[e(i5 + 1)]));
                                i5 += 3;
                                i3++;
                            }
                            aVar.a(str, (Object) fArr);
                            return i5;
                        } else if (b4 == 83) {
                            short[] sArr = new short[e4];
                            while (i3 < e4) {
                                sArr[i3] = (short) b(this.b[e(i5 + 1)]);
                                i5 += 3;
                                i3++;
                            }
                            aVar.a(str, (Object) sArr);
                            return i5;
                        } else if (b4 == 90) {
                            boolean[] zArr = new boolean[e4];
                            for (int i6 = 0; i6 < e4; i6++) {
                                zArr[i6] = b(this.b[e(i5 + 1)]) != 0;
                                i5 += 3;
                            }
                            aVar.a(str, (Object) zArr);
                            return i5;
                        } else if (b4 == 73) {
                            int[] iArr = new int[e4];
                            while (i3 < e4) {
                                iArr[i3] = b(this.b[e(i5 + 1)]);
                                i5 += 3;
                                i3++;
                            }
                            aVar.a(str, (Object) iArr);
                            return i5;
                        } else if (b4 != 74) {
                            switch (b4) {
                                case 66:
                                    byte[] bArr = new byte[e4];
                                    while (i3 < e4) {
                                        bArr[i3] = (byte) b(this.b[e(i5 + 1)]);
                                        i5 += 3;
                                        i3++;
                                    }
                                    aVar.a(str, (Object) bArr);
                                    return i5;
                                case 67:
                                    char[] cArr2 = new char[e4];
                                    while (i3 < e4) {
                                        cArr2[i3] = (char) b(this.b[e(i5 + 1)]);
                                        i5 += 3;
                                        i3++;
                                    }
                                    aVar.a(str, (Object) cArr2);
                                    return i5;
                                case 68:
                                    double[] dArr = new double[e4];
                                    while (i3 < e4) {
                                        dArr[i3] = Double.longBitsToDouble(c(this.b[e(i5 + 1)]));
                                        i5 += 3;
                                        i3++;
                                    }
                                    aVar.a(str, (Object) dArr);
                                    return i5;
                                default:
                                    return a(aVar.b(str), i5 - 2, false, cArr);
                            }
                        } else {
                            long[] jArr = new long[e4];
                            while (i3 < e4) {
                                jArr[i3] = c(this.b[e(i5 + 1)]);
                                i5 += 3;
                                i3++;
                            }
                            aVar.a(str, (Object) jArr);
                            return i5;
                        }
                    }
                }
                return i4 + 2;
            }
            aVar.a(str, b(e(i4), cArr));
            return i4 + 2;
        }
        String e5 = e(i4, cArr);
        aVar.f2330e++;
        if (aVar.b) {
            aVar.f2328c.d(aVar.a.c(str));
        }
        c cVar2 = aVar.f2328c;
        cVar2.b(64, aVar.a.c(e5));
        cVar2.d(0);
        return a(new a(aVar.a, true, aVar.f2328c, (a) null), i4 + 2, true, cArr);
    }

    public final int a(int i2, Object[] objArr, int i3, char[] cArr, q[] qVarArr) {
        int i4 = i2 + 1;
        switch (this.a[i2] & 255) {
            case 0:
                objArr[i3] = v.a;
                return i4;
            case 1:
                objArr[i3] = v.b;
                return i4;
            case 2:
                objArr[i3] = v.f2416c;
                return i4;
            case 3:
                objArr[i3] = v.f2417d;
                return i4;
            case 4:
                objArr[i3] = v.f2418e;
                return i4;
            case 5:
                objArr[i3] = v.f2419f;
                return i4;
            case 6:
                objArr[i3] = v.f2420g;
                return i4;
            case 7:
                objArr[i3] = a(i4, cArr);
                break;
            case 8:
                objArr[i3] = b(e(i4), qVarArr);
                break;
            default:
                throw new IllegalArgumentException();
        }
        return i4 + 2;
    }

    public final int a() {
        int i2 = this.f2338g;
        int e2 = (e(i2 + 6) * 2) + i2 + 8;
        int e3 = e(e2);
        int i3 = e2 + 2;
        while (true) {
            int i4 = e3 - 1;
            if (e3 <= 0) {
                break;
            }
            int e4 = e(i3 + 6);
            i3 += 8;
            while (true) {
                int i5 = e4 - 1;
                if (e4 <= 0) {
                    break;
                }
                i3 += b(i3 + 2) + 6;
                e4 = i5;
            }
            e3 = i4;
        }
        int e5 = e(i3);
        int i6 = i3 + 2;
        while (true) {
            int i7 = e5 - 1;
            if (e5 <= 0) {
                return i6 + 2;
            }
            int e6 = e(i6 + 6);
            i6 += 8;
            while (true) {
                int i8 = e6 - 1;
                if (e6 <= 0) {
                    break;
                }
                i6 += b(i6 + 2) + 6;
                e6 = i8;
            }
            e5 = i7;
        }
    }

    public final b a(b[] bVarArr, String str, int i2, int i3, char[] cArr, int i4, q[] qVarArr) {
        for (b bVar : bVarArr) {
            if (bVar.a.equals(str)) {
                b bVar2 = new b(bVar.a);
                byte[] bArr = new byte[i3];
                bVar2.b = bArr;
                System.arraycopy(this.a, i2, bArr, 0, i3);
                return bVar2;
            }
        }
        b bVar3 = new b(str);
        byte[] bArr2 = new byte[i3];
        bVar3.b = bArr2;
        System.arraycopy(this.a, i2, bArr2, 0, i3);
        return bVar3;
    }

    public int a(int i2) {
        return this.a[i2] & 255;
    }

    public final String a(int i2, int i3, char[] cArr) {
        int i4;
        int i5 = i3 + i2;
        byte[] bArr = this.a;
        int i6 = 0;
        while (i2 < i5) {
            int i7 = i2 + 1;
            byte b2 = bArr[i2];
            if ((b2 & 128) == 0) {
                i4 = i6 + 1;
                cArr[i6] = (char) (b2 & Byte.MAX_VALUE);
            } else if ((b2 & 224) == 192) {
                cArr[i6] = (char) (((b2 & 31) << 6) + (bArr[i7] & 63));
                i6++;
                i2 = i7 + 1;
            } else {
                i4 = i6 + 1;
                int i8 = i7 + 1;
                int i9 = ((b2 & 15) << 12) + ((bArr[i7] & 63) << 6);
                i7 = i8 + 1;
                cArr[i6] = (char) (i9 + (bArr[i8] & 63));
            }
            i2 = i7;
            i6 = i4;
        }
        return new String(cArr, 0, i6);
    }

    public String a(int i2, char[] cArr) {
        return e(this.b[e(i2)], cArr);
    }
}
