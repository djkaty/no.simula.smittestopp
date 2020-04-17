package k.e.a;

public class g extends f {
    public b A;
    public int B;
    public int a;
    public final x b = new x(this);

    /* renamed from: c  reason: collision with root package name */
    public int f2339c;

    /* renamed from: d  reason: collision with root package name */
    public int f2340d;

    /* renamed from: e  reason: collision with root package name */
    public int f2341e;

    /* renamed from: f  reason: collision with root package name */
    public int f2342f;

    /* renamed from: g  reason: collision with root package name */
    public int[] f2343g;

    /* renamed from: h  reason: collision with root package name */
    public m f2344h;

    /* renamed from: i  reason: collision with root package name */
    public m f2345i;

    /* renamed from: j  reason: collision with root package name */
    public t f2346j;

    /* renamed from: k  reason: collision with root package name */
    public t f2347k;

    /* renamed from: l  reason: collision with root package name */
    public int f2348l;
    public c m;
    public int n;
    public int o;
    public int p;
    public int q;
    public c r;
    public a s;
    public a t;
    public a u;
    public a v;
    public u w;
    public int x;
    public int y;
    public c z;

    public g(int i2) {
        super(458752);
        if ((i2 & 2) != 0) {
            this.B = 4;
        } else if ((i2 & 1) != 0) {
            this.B = 1;
        } else {
            this.B = 0;
        }
    }

    public final void a(int i2, int i3, String str, String str2, String str3, String[] strArr) {
        int i4;
        this.a = i2;
        this.f2339c = i3;
        x xVar = this.b;
        int i5 = i2 & 65535;
        xVar.f2426c = i5;
        xVar.f2427d = str;
        this.f2340d = xVar.a(7, str).a;
        if (str2 != null) {
            this.p = this.b.c(str2);
        }
        if (str3 == null) {
            i4 = 0;
        } else {
            i4 = this.b.a(7, str3).a;
        }
        this.f2341e = i4;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.f2342f = length;
            this.f2343g = new int[length];
            for (int i6 = 0; i6 < this.f2342f; i6++) {
                this.f2343g[i6] = this.b.a(strArr[i6]).a;
            }
        }
        if (this.B == 1 && i5 >= 51) {
            this.B = 2;
        }
    }

    public final a a(String str, boolean z2) {
        if (z2) {
            a a2 = a.a(this.b, str, this.s);
            this.s = a2;
            return a2;
        }
        a a3 = a.a(this.b, str, this.t);
        this.t = a3;
        return a3;
    }

    public final a a(int i2, z zVar, String str, boolean z2) {
        if (z2) {
            a a2 = a.a(this.b, i2, zVar, str, this.u);
            this.u = a2;
            return a2;
        }
        a a3 = a.a(this.b, i2, zVar, str, this.v);
        this.v = a3;
        return a3;
    }

    public final s a(int i2, String str, String str2, String str3, String[] strArr) {
        t tVar = new t(this.b, i2, str, str2, str3, strArr, this.B);
        if (this.f2346j == null) {
            this.f2346j = tVar;
        } else {
            this.f2347k.b = tVar;
        }
        this.f2347k = tVar;
        return tVar;
    }

    /* JADX WARNING: type inference failed for: r0v3, types: [k.e.a.s] */
    /* JADX WARNING: type inference failed for: r2v75, types: [k.e.a.s] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] a() {
        /*
            r46 = this;
            r0 = r46
            int r1 = r0.f2342f
            r2 = 2
            int r1 = r1 * 2
            int r1 = r1 + 24
            k.e.a.m r3 = r0.f2344h
            r5 = 0
        L_0x000c:
            java.lang.String r6 = "ConstantValue"
            if (r3 == 0) goto L_0x0049
            int r5 = r5 + 1
            int r9 = r3.f2366g
            if (r9 == 0) goto L_0x001e
            k.e.a.x r8 = r3.b
            r8.c(r6)
            r7 = 16
            goto L_0x0020
        L_0x001e:
            r7 = 8
        L_0x0020:
            k.e.a.x r6 = r3.b
            int r8 = r3.f2362c
            int r9 = r3.f2365f
            int r6 = k.e.a.b.a(r6, r8, r9)
            int r6 = r6 + r7
            k.e.a.a r7 = r3.f2367h
            k.e.a.a r8 = r3.f2368i
            k.e.a.a r9 = r3.f2369j
            k.e.a.a r10 = r3.f2370k
            int r7 = k.e.a.a.a((k.e.a.a) r7, (k.e.a.a) r8, (k.e.a.a) r9, (k.e.a.a) r10)
            int r7 = r7 + r6
            k.e.a.b r6 = r3.f2371l
            if (r6 == 0) goto L_0x0043
            k.e.a.x r8 = r3.b
            int r6 = r6.a(r8)
            int r7 = r7 + r6
        L_0x0043:
            int r1 = r1 + r7
            k.e.a.l r3 = r3.a
            k.e.a.m r3 = (k.e.a.m) r3
            goto L_0x000c
        L_0x0049:
            k.e.a.t r3 = r0.f2346j
            r9 = 0
        L_0x004c:
            java.lang.String r10 = "MethodParameters"
            java.lang.String r11 = "LineNumberTable"
            java.lang.String r12 = "RuntimeInvisibleParameterAnnotations"
            java.lang.String r13 = "AnnotationDefault"
            java.lang.String r14 = "RuntimeVisibleParameterAnnotations"
            java.lang.String r15 = "Exceptions"
            java.lang.String r4 = "Code"
            java.lang.String r8 = "RuntimeInvisibleTypeAnnotations"
            java.lang.String r2 = "RuntimeVisibleTypeAnnotations"
            java.lang.String r17 = "StackMapTable"
            java.lang.String r18 = "StackMap"
            java.lang.String r7 = "LocalVariableTable"
            r19 = r6
            r20 = 1
            if (r3 == 0) goto L_0x01c2
            int r9 = r9 + 1
            int r6 = r3.a0
            if (r6 == 0) goto L_0x0078
            int r2 = r3.b0
            int r2 = r2 + 6
            r22 = r9
            goto L_0x01b5
        L_0x0078:
            k.e.a.c r6 = r3.f2404k
            int r6 = r6.b
            if (r6 <= 0) goto L_0x0140
            r22 = r9
            r9 = 65535(0xffff, float:9.1834E-41)
            if (r6 > r9) goto L_0x012e
            k.e.a.x r6 = r3.f2396c
            r6.c(r4)
            k.e.a.c r4 = r3.f2404k
            int r4 = r4.b
            r6 = 16
            int r4 = r4 + r6
            k.e.a.p r6 = r3.f2405l
            r9 = 0
        L_0x0094:
            if (r6 == 0) goto L_0x009b
            int r9 = r9 + 1
            k.e.a.p r6 = r6.f2385f
            goto L_0x0094
        L_0x009b:
            int r9 = r9 * 8
            r6 = 2
            int r9 = r9 + r6
            int r9 = r9 + r4
            r4 = 8
            int r9 = r9 + r4
            k.e.a.c r4 = r3.u
            if (r4 == 0) goto L_0x00c7
            k.e.a.x r4 = r3.f2396c
            int r4 = r4.f2426c
            r6 = 50
            if (r4 < r6) goto L_0x00b0
            goto L_0x00b2
        L_0x00b0:
            r20 = 0
        L_0x00b2:
            k.e.a.x r4 = r3.f2396c
            if (r20 == 0) goto L_0x00b9
            r6 = r17
            goto L_0x00bb
        L_0x00b9:
            r6 = r18
        L_0x00bb:
            r4.c(r6)
            k.e.a.c r4 = r3.u
            int r4 = r4.b
            r6 = 8
            int r4 = r4 + r6
            int r9 = r9 + r4
            goto L_0x00c9
        L_0x00c7:
            r6 = 8
        L_0x00c9:
            k.e.a.c r4 = r3.o
            if (r4 == 0) goto L_0x00d8
            k.e.a.x r4 = r3.f2396c
            r4.c(r11)
            k.e.a.c r4 = r3.o
            int r4 = r4.b
            int r4 = r4 + r6
            int r9 = r9 + r4
        L_0x00d8:
            k.e.a.c r4 = r3.q
            if (r4 == 0) goto L_0x00e7
            k.e.a.x r4 = r3.f2396c
            r4.c(r7)
            k.e.a.c r4 = r3.q
            int r4 = r4.b
            int r4 = r4 + r6
            int r9 = r9 + r4
        L_0x00e7:
            k.e.a.c r4 = r3.s
            if (r4 == 0) goto L_0x00f8
            k.e.a.x r4 = r3.f2396c
            java.lang.String r7 = "LocalVariableTypeTable"
            r4.c(r7)
            k.e.a.c r4 = r3.s
            int r4 = r4.b
            int r4 = r4 + r6
            int r9 = r9 + r4
        L_0x00f8:
            k.e.a.a r4 = r3.v
            if (r4 == 0) goto L_0x0101
            int r2 = r4.a(r2)
            int r9 = r9 + r2
        L_0x0101:
            k.e.a.a r2 = r3.w
            if (r2 == 0) goto L_0x010b
            int r2 = r2.a(r8)
            int r2 = r2 + r9
            goto L_0x010c
        L_0x010b:
            r2 = r9
        L_0x010c:
            k.e.a.b r4 = r3.x
            if (r4 == 0) goto L_0x0144
            k.e.a.x r6 = r3.f2396c
            k.e.a.c r7 = r3.f2404k
            byte[] r8 = r7.a
            int r7 = r7.b
            int r9 = r3.f2402i
            int r11 = r3.f2403j
            r23 = r4
            r24 = r6
            r25 = r8
            r26 = r7
            r27 = r9
            r28 = r11
            int r4 = r23.a(r24, r25, r26, r27, r28)
            int r2 = r2 + r4
            goto L_0x0144
        L_0x012e:
            k.e.a.r r1 = new k.e.a.r
            k.e.a.x r2 = r3.f2396c
            java.lang.String r2 = r2.f2427d
            java.lang.String r4 = r3.f2399f
            java.lang.String r5 = r3.f2401h
            k.e.a.c r3 = r3.f2404k
            int r3 = r3.b
            r1.<init>(r2, r4, r5, r3)
            throw r1
        L_0x0140:
            r22 = r9
            r2 = 8
        L_0x0144:
            int r4 = r3.y
            if (r4 <= 0) goto L_0x0156
            k.e.a.x r4 = r3.f2396c
            r4.c(r15)
            int r4 = r3.y
            r6 = 2
            int r4 = r4 * 2
            r6 = 8
            int r4 = r4 + r6
            int r2 = r2 + r4
        L_0x0156:
            k.e.a.x r4 = r3.f2396c
            int r6 = r3.f2397d
            int r7 = r3.A
            int r4 = k.e.a.b.a(r4, r6, r7)
            int r4 = r4 + r2
            k.e.a.a r2 = r3.B
            k.e.a.a r6 = r3.C
            k.e.a.a r7 = r3.H
            k.e.a.a r8 = r3.I
            int r2 = k.e.a.a.a((k.e.a.a) r2, (k.e.a.a) r6, (k.e.a.a) r7, (k.e.a.a) r8)
            int r2 = r2 + r4
            k.e.a.a[] r4 = r3.E
            if (r4 == 0) goto L_0x017c
            int r6 = r3.D
            if (r6 != 0) goto L_0x0177
            int r6 = r4.length
        L_0x0177:
            int r4 = k.e.a.a.a((java.lang.String) r14, (k.e.a.a[]) r4, (int) r6)
            int r2 = r2 + r4
        L_0x017c:
            k.e.a.a[] r4 = r3.G
            if (r4 == 0) goto L_0x018a
            int r6 = r3.F
            if (r6 != 0) goto L_0x0185
            int r6 = r4.length
        L_0x0185:
            int r4 = k.e.a.a.a((java.lang.String) r12, (k.e.a.a[]) r4, (int) r6)
            int r2 = r2 + r4
        L_0x018a:
            k.e.a.c r4 = r3.J
            if (r4 == 0) goto L_0x019a
            k.e.a.x r4 = r3.f2396c
            r4.c(r13)
            k.e.a.c r4 = r3.J
            int r4 = r4.b
            int r4 = r4 + 6
            int r2 = r2 + r4
        L_0x019a:
            k.e.a.c r4 = r3.L
            if (r4 == 0) goto L_0x01aa
            k.e.a.x r4 = r3.f2396c
            r4.c(r10)
            k.e.a.c r4 = r3.L
            int r4 = r4.b
            int r4 = r4 + 7
            int r2 = r2 + r4
        L_0x01aa:
            k.e.a.b r4 = r3.M
            if (r4 == 0) goto L_0x01b5
            k.e.a.x r6 = r3.f2396c
            int r4 = r4.a(r6)
            int r2 = r2 + r4
        L_0x01b5:
            int r1 = r1 + r2
            k.e.a.s r2 = r3.b
            r3 = r2
            k.e.a.t r3 = (k.e.a.t) r3
            r6 = r19
            r9 = r22
            r2 = 2
            goto L_0x004c
        L_0x01c2:
            k.e.a.c r3 = r0.m
            java.lang.String r6 = "InnerClasses"
            if (r3 == 0) goto L_0x01d8
            int r3 = r3.b
            r16 = 8
            int r3 = r3 + 8
            int r1 = r1 + r3
            k.e.a.x r3 = r0.b
            r3.c(r6)
            r22 = r6
            r3 = 1
            goto L_0x01db
        L_0x01d8:
            r22 = r6
            r3 = 0
        L_0x01db:
            int r6 = r0.n
            r23 = r10
            java.lang.String r10 = "EnclosingMethod"
            if (r6 == 0) goto L_0x01ec
            int r3 = r3 + 1
            int r1 = r1 + 10
            k.e.a.x r6 = r0.b
            r6.c(r10)
        L_0x01ec:
            int r6 = r0.f2339c
            r24 = r10
            r10 = 4096(0x1000, float:5.74E-42)
            r6 = r6 & r10
            java.lang.String r10 = "Synthetic"
            r26 = r13
            r13 = 49
            if (r6 == 0) goto L_0x020d
            int r6 = r0.a
            r21 = 65535(0xffff, float:9.1834E-41)
            r6 = r6 & r21
            if (r6 >= r13) goto L_0x020d
            int r3 = r3 + 1
            int r1 = r1 + 6
            k.e.a.x r6 = r0.b
            r6.c(r10)
        L_0x020d:
            int r6 = r0.p
            java.lang.String r13 = "Signature"
            if (r6 == 0) goto L_0x021c
            int r3 = r3 + 1
            int r1 = r1 + 8
            k.e.a.x r6 = r0.b
            r6.c(r13)
        L_0x021c:
            int r6 = r0.q
            r28 = r13
            java.lang.String r13 = "SourceFile"
            if (r6 == 0) goto L_0x022d
            int r3 = r3 + 1
            int r1 = r1 + 8
            k.e.a.x r6 = r0.b
            r6.c(r13)
        L_0x022d:
            k.e.a.c r6 = r0.r
            r29 = r13
            java.lang.String r13 = "SourceDebugExtension"
            if (r6 == 0) goto L_0x0241
            int r3 = r3 + 1
            int r6 = r6.b
            int r6 = r6 + 6
            int r1 = r1 + r6
            k.e.a.x r6 = r0.b
            r6.c(r13)
        L_0x0241:
            int r6 = r0.f2339c
            r30 = 131072(0x20000, float:1.83671E-40)
            r6 = r6 & r30
            r31 = r13
            java.lang.String r13 = "Deprecated"
            if (r6 == 0) goto L_0x0256
            int r3 = r3 + 1
            int r1 = r1 + 6
            k.e.a.x r6 = r0.b
            r6.c(r13)
        L_0x0256:
            k.e.a.a r6 = r0.s
            if (r6 == 0) goto L_0x0267
            int r3 = r3 + 1
            r32 = r3
            java.lang.String r3 = "RuntimeVisibleAnnotations"
            int r3 = r6.a(r3)
            int r1 = r1 + r3
            r3 = r32
        L_0x0267:
            k.e.a.a r6 = r0.t
            if (r6 == 0) goto L_0x0278
            int r3 = r3 + 1
            r32 = r3
            java.lang.String r3 = "RuntimeInvisibleAnnotations"
            int r3 = r6.a(r3)
            int r1 = r1 + r3
            r3 = r32
        L_0x0278:
            k.e.a.a r6 = r0.u
            if (r6 == 0) goto L_0x0283
            int r3 = r3 + 1
            int r6 = r6.a(r2)
            int r1 = r1 + r6
        L_0x0283:
            k.e.a.a r6 = r0.v
            if (r6 == 0) goto L_0x028e
            int r3 = r3 + 1
            int r6 = r6.a(r8)
            int r1 = r1 + r6
        L_0x028e:
            k.e.a.x r6 = r0.b
            r32 = r13
            k.e.a.c r13 = r6.f2433j
            r33 = r10
            java.lang.String r10 = "BootstrapMethods"
            if (r13 == 0) goto L_0x02a5
            r6.c(r10)
            k.e.a.c r6 = r6.f2433j
            int r6 = r6.b
            r13 = 8
            int r6 = r6 + r13
            goto L_0x02a6
        L_0x02a5:
            r6 = 0
        L_0x02a6:
            if (r6 <= 0) goto L_0x02bd
            int r3 = r3 + 1
            k.e.a.x r6 = r0.b
            k.e.a.c r13 = r6.f2433j
            if (r13 == 0) goto L_0x02bb
            r6.c(r10)
            k.e.a.c r6 = r6.f2433j
            int r6 = r6.b
            r13 = 8
            int r6 = r6 + r13
            goto L_0x02bc
        L_0x02bb:
            r6 = 0
        L_0x02bc:
            int r1 = r1 + r6
        L_0x02bd:
            k.e.a.u r6 = r0.w
            if (r6 == 0) goto L_0x0321
            int r13 = r6.o
            if (r13 <= 0) goto L_0x02c7
            r13 = 1
            goto L_0x02c8
        L_0x02c7:
            r13 = 0
        L_0x02c8:
            int r13 = r13 + 1
            int r6 = r6.q
            if (r6 <= 0) goto L_0x02d0
            r6 = 1
            goto L_0x02d1
        L_0x02d0:
            r6 = 0
        L_0x02d1:
            int r13 = r13 + r6
            int r3 = r3 + r13
            k.e.a.u r6 = r0.w
            k.e.a.x r13 = r6.a
            r34 = r3
            java.lang.String r3 = "Module"
            r13.c(r3)
            k.e.a.c r3 = r6.f2409f
            int r3 = r3.b
            int r3 = r3 + 22
            k.e.a.c r13 = r6.f2411h
            int r13 = r13.b
            int r3 = r3 + r13
            k.e.a.c r13 = r6.f2413j
            int r13 = r13.b
            int r3 = r3 + r13
            k.e.a.c r13 = r6.f2415l
            int r13 = r13.b
            int r3 = r3 + r13
            k.e.a.c r13 = r6.n
            int r13 = r13.b
            int r3 = r3 + r13
            int r13 = r6.o
            if (r13 <= 0) goto L_0x030e
            k.e.a.x r13 = r6.a
            r35 = r10
            java.lang.String r10 = "ModulePackages"
            r13.c(r10)
            k.e.a.c r10 = r6.p
            int r10 = r10.b
            r13 = 8
            int r10 = r10 + r13
            int r3 = r3 + r10
            goto L_0x0310
        L_0x030e:
            r35 = r10
        L_0x0310:
            int r10 = r6.q
            if (r10 <= 0) goto L_0x031d
            k.e.a.x r6 = r6.a
            java.lang.String r10 = "ModuleMainClass"
            r6.c(r10)
            int r3 = r3 + 8
        L_0x031d:
            int r1 = r1 + r3
            r3 = r34
            goto L_0x0323
        L_0x0321:
            r35 = r10
        L_0x0323:
            int r6 = r0.x
            if (r6 == 0) goto L_0x0332
            int r3 = r3 + 1
            int r1 = r1 + 8
            k.e.a.x r6 = r0.b
            java.lang.String r10 = "NestHost"
            r6.c(r10)
        L_0x0332:
            k.e.a.c r6 = r0.z
            if (r6 == 0) goto L_0x0345
            int r3 = r3 + 1
            int r6 = r6.b
            r10 = 8
            int r6 = r6 + r10
            int r1 = r1 + r6
            k.e.a.x r6 = r0.b
            java.lang.String r10 = "NestMembers"
            r6.c(r10)
        L_0x0345:
            k.e.a.b r6 = r0.A
            if (r6 == 0) goto L_0x0357
            int r6 = r6.a()
            int r3 = r3 + r6
            k.e.a.b r6 = r0.A
            k.e.a.x r10 = r0.b
            int r6 = r6.a(r10)
            int r1 = r1 + r6
        L_0x0357:
            k.e.a.x r6 = r0.b
            k.e.a.c r10 = r6.f2431h
            int r10 = r10.b
            int r1 = r1 + r10
            int r6 = r6.f2430g
            r10 = 65535(0xffff, float:9.1834E-41)
            if (r6 > r10) goto L_0x0a18
            k.e.a.c r6 = new k.e.a.c
            r6.<init>(r1)
            r1 = -889275714(0xffffffffcafebabe, float:-8346975.0)
            r6.c(r1)
            int r1 = r0.a
            r6.c(r1)
            k.e.a.x r1 = r0.b
            int r10 = r1.f2430g
            r6.d(r10)
            k.e.a.c r1 = r1.f2431h
            byte[] r10 = r1.a
            int r1 = r1.b
            r13 = 0
            r6.a((byte[]) r10, (int) r13, (int) r1)
            int r1 = r0.a
            r10 = 65535(0xffff, float:9.1834E-41)
            r1 = r1 & r10
            r10 = 49
            if (r1 >= r10) goto L_0x0393
            r1 = 4096(0x1000, float:5.74E-42)
            goto L_0x0394
        L_0x0393:
            r1 = 0
        L_0x0394:
            int r10 = r0.f2339c
            int r1 = ~r1
            r1 = r1 & r10
            r6.d(r1)
            int r1 = r0.f2340d
            r6.d(r1)
            int r1 = r0.f2341e
            r6.d(r1)
            int r1 = r0.f2342f
            r6.d(r1)
            r1 = 0
        L_0x03ab:
            int r10 = r0.f2342f
            if (r1 >= r10) goto L_0x03b9
            int[] r10 = r0.f2343g
            r10 = r10[r1]
            r6.d(r10)
            int r1 = r1 + 1
            goto L_0x03ab
        L_0x03b9:
            r6.d(r5)
            k.e.a.m r1 = r0.f2344h
        L_0x03be:
            if (r1 == 0) goto L_0x047c
            k.e.a.x r5 = r1.b
            int r5 = r5.f2426c
            r10 = 49
            if (r5 >= r10) goto L_0x03ca
            r5 = 1
            goto L_0x03cb
        L_0x03ca:
            r5 = 0
        L_0x03cb:
            if (r5 == 0) goto L_0x03d0
            r10 = 4096(0x1000, float:5.74E-42)
            goto L_0x03d1
        L_0x03d0:
            r10 = 0
        L_0x03d1:
            int r13 = r1.f2362c
            int r10 = ~r10
            r10 = r10 & r13
            r6.d(r10)
            int r10 = r1.f2363d
            r6.d(r10)
            int r10 = r1.f2364e
            r6.d(r10)
            int r10 = r1.f2366g
            if (r10 == 0) goto L_0x03e8
            r10 = 1
            goto L_0x03e9
        L_0x03e8:
            r10 = 0
        L_0x03e9:
            int r13 = r1.f2362c
            r34 = r3
            r3 = 4096(0x1000, float:5.74E-42)
            r13 = r13 & r3
            if (r13 == 0) goto L_0x03f6
            if (r5 == 0) goto L_0x03f6
            int r10 = r10 + 1
        L_0x03f6:
            int r3 = r1.f2365f
            if (r3 == 0) goto L_0x03fc
            int r10 = r10 + 1
        L_0x03fc:
            int r3 = r1.f2362c
            r3 = r3 & r30
            if (r3 == 0) goto L_0x0404
            int r10 = r10 + 1
        L_0x0404:
            k.e.a.a r3 = r1.f2367h
            if (r3 == 0) goto L_0x040a
            int r10 = r10 + 1
        L_0x040a:
            k.e.a.a r3 = r1.f2368i
            if (r3 == 0) goto L_0x0410
            int r10 = r10 + 1
        L_0x0410:
            k.e.a.a r3 = r1.f2369j
            if (r3 == 0) goto L_0x0416
            int r10 = r10 + 1
        L_0x0416:
            k.e.a.a r3 = r1.f2370k
            if (r3 == 0) goto L_0x041c
            int r10 = r10 + 1
        L_0x041c:
            k.e.a.b r3 = r1.f2371l
            if (r3 == 0) goto L_0x0425
            int r3 = r3.a()
            int r10 = r10 + r3
        L_0x0425:
            r6.d(r10)
            int r3 = r1.f2366g
            if (r3 == 0) goto L_0x0441
            k.e.a.x r3 = r1.b
            r5 = r19
            int r3 = r3.c(r5)
            r6.d(r3)
            r3 = 2
            r6.c(r3)
            int r3 = r1.f2366g
            r6.d(r3)
            goto L_0x0443
        L_0x0441:
            r5 = r19
        L_0x0443:
            k.e.a.x r3 = r1.b
            int r10 = r1.f2362c
            int r13 = r1.f2365f
            k.e.a.b.a(r3, r10, r13, r6)
            k.e.a.x r3 = r1.b
            k.e.a.a r10 = r1.f2367h
            k.e.a.a r13 = r1.f2368i
            r19 = r5
            k.e.a.a r5 = r1.f2369j
            r43 = r12
            k.e.a.a r12 = r1.f2370k
            r36 = r3
            r37 = r10
            r38 = r13
            r39 = r5
            r40 = r12
            r41 = r6
            k.e.a.a.a(r36, r37, r38, r39, r40, r41)
            k.e.a.b r3 = r1.f2371l
            if (r3 == 0) goto L_0x0472
            k.e.a.x r5 = r1.b
            r3.a(r5, r6)
        L_0x0472:
            k.e.a.l r1 = r1.a
            k.e.a.m r1 = (k.e.a.m) r1
            r3 = r34
            r12 = r43
            goto L_0x03be
        L_0x047c:
            r34 = r3
            r43 = r12
            r6.d(r9)
            k.e.a.t r1 = r0.f2346j
            r3 = 0
            r13 = 0
        L_0x0487:
            if (r1 == 0) goto L_0x07f4
            int r5 = r1.t
            if (r5 <= 0) goto L_0x048f
            r5 = 1
            goto L_0x0490
        L_0x048f:
            r5 = 0
        L_0x0490:
            r13 = r13 | r5
            boolean r5 = r1.Y
            r3 = r3 | r5
            k.e.a.x r5 = r1.f2396c
            int r5 = r5.f2426c
            r9 = 49
            if (r5 >= r9) goto L_0x049e
            r5 = 1
            goto L_0x049f
        L_0x049e:
            r5 = 0
        L_0x049f:
            if (r5 == 0) goto L_0x04a4
            r9 = 4096(0x1000, float:5.74E-42)
            goto L_0x04a5
        L_0x04a4:
            r9 = 0
        L_0x04a5:
            int r10 = r1.f2397d
            int r9 = ~r9
            r9 = r9 & r10
            r6.d(r9)
            int r9 = r1.f2398e
            r6.d(r9)
            int r9 = r1.f2400g
            r6.d(r9)
            int r9 = r1.a0
            if (r9 == 0) goto L_0x04d4
            k.e.a.x r5 = r1.f2396c
            k.e.a.d r5 = r5.b
            byte[] r5 = r5.a
            int r10 = r1.b0
            r6.a((byte[]) r5, (int) r9, (int) r10)
            r19 = r3
            r44 = r13
            r9 = r14
            r14 = r23
            r12 = r26
            r10 = r43
            r5 = 50
            goto L_0x07e0
        L_0x04d4:
            k.e.a.c r9 = r1.f2404k
            int r9 = r9.b
            if (r9 <= 0) goto L_0x04dc
            r9 = 1
            goto L_0x04dd
        L_0x04dc:
            r9 = 0
        L_0x04dd:
            int r10 = r1.y
            if (r10 <= 0) goto L_0x04e3
            int r9 = r9 + 1
        L_0x04e3:
            int r10 = r1.f2397d
            r12 = 4096(0x1000, float:5.74E-42)
            r10 = r10 & r12
            if (r10 == 0) goto L_0x04ee
            if (r5 == 0) goto L_0x04ee
            int r9 = r9 + 1
        L_0x04ee:
            int r5 = r1.A
            if (r5 == 0) goto L_0x04f4
            int r9 = r9 + 1
        L_0x04f4:
            int r5 = r1.f2397d
            r5 = r5 & r30
            if (r5 == 0) goto L_0x04fc
            int r9 = r9 + 1
        L_0x04fc:
            k.e.a.a r5 = r1.B
            if (r5 == 0) goto L_0x0502
            int r9 = r9 + 1
        L_0x0502:
            k.e.a.a r5 = r1.C
            if (r5 == 0) goto L_0x0508
            int r9 = r9 + 1
        L_0x0508:
            k.e.a.a[] r5 = r1.E
            if (r5 == 0) goto L_0x050e
            int r9 = r9 + 1
        L_0x050e:
            k.e.a.a[] r5 = r1.G
            if (r5 == 0) goto L_0x0514
            int r9 = r9 + 1
        L_0x0514:
            k.e.a.a r5 = r1.H
            if (r5 == 0) goto L_0x051a
            int r9 = r9 + 1
        L_0x051a:
            k.e.a.a r5 = r1.I
            if (r5 == 0) goto L_0x0520
            int r9 = r9 + 1
        L_0x0520:
            k.e.a.c r5 = r1.J
            if (r5 == 0) goto L_0x0526
            int r9 = r9 + 1
        L_0x0526:
            k.e.a.c r5 = r1.L
            if (r5 == 0) goto L_0x052c
            int r9 = r9 + 1
        L_0x052c:
            k.e.a.b r5 = r1.M
            if (r5 == 0) goto L_0x0535
            int r5 = r5.a()
            int r9 = r9 + r5
        L_0x0535:
            r6.d(r9)
            k.e.a.c r5 = r1.f2404k
            int r5 = r5.b
            if (r5 <= 0) goto L_0x0705
            int r5 = r5 + 10
            k.e.a.p r9 = r1.f2405l
            r10 = 0
        L_0x0543:
            if (r9 == 0) goto L_0x054a
            int r10 = r10 + 1
            k.e.a.p r9 = r9.f2385f
            goto L_0x0543
        L_0x054a:
            int r10 = r10 * 8
            r9 = 2
            int r10 = r10 + r9
            int r10 = r10 + r5
            k.e.a.c r5 = r1.u
            if (r5 == 0) goto L_0x055b
            int r5 = r5.b
            r9 = 8
            int r5 = r5 + r9
            int r10 = r10 + r5
            r5 = 1
            goto L_0x055e
        L_0x055b:
            r9 = 8
            r5 = 0
        L_0x055e:
            k.e.a.c r12 = r1.o
            if (r12 == 0) goto L_0x0568
            int r12 = r12.b
            int r12 = r12 + r9
            int r10 = r10 + r12
            int r5 = r5 + 1
        L_0x0568:
            k.e.a.c r12 = r1.q
            if (r12 == 0) goto L_0x0572
            int r12 = r12.b
            int r12 = r12 + r9
            int r10 = r10 + r12
            int r5 = r5 + 1
        L_0x0572:
            k.e.a.c r12 = r1.s
            if (r12 == 0) goto L_0x057c
            int r12 = r12.b
            int r12 = r12 + r9
            int r10 = r10 + r12
            int r5 = r5 + 1
        L_0x057c:
            k.e.a.a r12 = r1.v
            if (r12 == 0) goto L_0x0587
            int r12 = r12.a(r2)
            int r10 = r10 + r12
            int r5 = r5 + 1
        L_0x0587:
            k.e.a.a r12 = r1.w
            if (r12 == 0) goto L_0x0592
            int r12 = r12.a(r8)
            int r10 = r10 + r12
            int r5 = r5 + 1
        L_0x0592:
            k.e.a.b r12 = r1.x
            if (r12 == 0) goto L_0x05c1
            k.e.a.x r9 = r1.f2396c
            r19 = r3
            k.e.a.c r3 = r1.f2404k
            r44 = r13
            byte[] r13 = r3.a
            int r3 = r3.b
            int r0 = r1.f2402i
            r45 = r14
            int r14 = r1.f2403j
            r36 = r12
            r37 = r9
            r38 = r13
            r39 = r3
            r40 = r0
            r41 = r14
            int r0 = r36.a(r37, r38, r39, r40, r41)
            int r10 = r10 + r0
            k.e.a.b r0 = r1.x
            int r0 = r0.a()
            int r5 = r5 + r0
            goto L_0x05c7
        L_0x05c1:
            r19 = r3
            r44 = r13
            r45 = r14
        L_0x05c7:
            k.e.a.x r0 = r1.f2396c
            int r0 = r0.c(r4)
            r6.d(r0)
            r6.c(r10)
            int r0 = r1.f2402i
            r6.d(r0)
            int r0 = r1.f2403j
            r6.d(r0)
            k.e.a.c r0 = r1.f2404k
            int r0 = r0.b
            r6.c(r0)
            k.e.a.c r0 = r1.f2404k
            byte[] r3 = r0.a
            int r0 = r0.b
            r9 = 0
            r6.a((byte[]) r3, (int) r9, (int) r0)
            k.e.a.p r0 = r1.f2405l
            r9 = r0
            r3 = 0
        L_0x05f2:
            if (r9 == 0) goto L_0x05f9
            int r3 = r3 + 1
            k.e.a.p r9 = r9.f2385f
            goto L_0x05f2
        L_0x05f9:
            r6.d(r3)
        L_0x05fc:
            if (r0 == 0) goto L_0x061b
            k.e.a.q r3 = r0.a
            int r3 = r3.f2387d
            r6.d(r3)
            k.e.a.q r3 = r0.b
            int r3 = r3.f2387d
            r6.d(r3)
            k.e.a.q r3 = r0.f2382c
            int r3 = r3.f2387d
            r6.d(r3)
            int r3 = r0.f2383d
            r6.d(r3)
            k.e.a.p r0 = r0.f2385f
            goto L_0x05fc
        L_0x061b:
            r6.d(r5)
            k.e.a.c r0 = r1.u
            if (r0 == 0) goto L_0x0656
            k.e.a.x r0 = r1.f2396c
            int r0 = r0.f2426c
            r5 = 50
            if (r0 < r5) goto L_0x062c
            r0 = 1
            goto L_0x062d
        L_0x062c:
            r0 = 0
        L_0x062d:
            k.e.a.x r3 = r1.f2396c
            if (r0 == 0) goto L_0x0634
            r0 = r17
            goto L_0x0636
        L_0x0634:
            r0 = r18
        L_0x0636:
            int r0 = r3.c(r0)
            r6.d(r0)
            k.e.a.c r0 = r1.u
            int r0 = r0.b
            r3 = 2
            int r0 = r0 + r3
            r6.c(r0)
            int r0 = r1.t
            r6.d(r0)
            k.e.a.c r0 = r1.u
            byte[] r3 = r0.a
            int r0 = r0.b
            r9 = 0
            r6.a((byte[]) r3, (int) r9, (int) r0)
            goto L_0x0658
        L_0x0656:
            r5 = 50
        L_0x0658:
            k.e.a.c r0 = r1.o
            if (r0 == 0) goto L_0x067d
            k.e.a.x r0 = r1.f2396c
            int r0 = r0.c(r11)
            r6.d(r0)
            k.e.a.c r0 = r1.o
            int r0 = r0.b
            r3 = 2
            int r0 = r0 + r3
            r6.c(r0)
            int r0 = r1.n
            r6.d(r0)
            k.e.a.c r0 = r1.o
            byte[] r3 = r0.a
            int r0 = r0.b
            r9 = 0
            r6.a((byte[]) r3, (int) r9, (int) r0)
        L_0x067d:
            k.e.a.c r0 = r1.q
            if (r0 == 0) goto L_0x06a2
            k.e.a.x r0 = r1.f2396c
            int r0 = r0.c(r7)
            r6.d(r0)
            k.e.a.c r0 = r1.q
            int r0 = r0.b
            r3 = 2
            int r0 = r0 + r3
            r6.c(r0)
            int r0 = r1.p
            r6.d(r0)
            k.e.a.c r0 = r1.q
            byte[] r3 = r0.a
            int r0 = r0.b
            r9 = 0
            r6.a((byte[]) r3, (int) r9, (int) r0)
        L_0x06a2:
            k.e.a.c r0 = r1.s
            if (r0 == 0) goto L_0x06c9
            k.e.a.x r0 = r1.f2396c
            java.lang.String r3 = "LocalVariableTypeTable"
            int r0 = r0.c(r3)
            r6.d(r0)
            k.e.a.c r0 = r1.s
            int r0 = r0.b
            r3 = 2
            int r0 = r0 + r3
            r6.c(r0)
            int r0 = r1.r
            r6.d(r0)
            k.e.a.c r0 = r1.s
            byte[] r3 = r0.a
            int r0 = r0.b
            r9 = 0
            r6.a((byte[]) r3, (int) r9, (int) r0)
        L_0x06c9:
            k.e.a.a r0 = r1.v
            if (r0 == 0) goto L_0x06d6
            k.e.a.x r3 = r1.f2396c
            int r3 = r3.c(r2)
            r0.a((int) r3, (k.e.a.c) r6)
        L_0x06d6:
            k.e.a.a r0 = r1.w
            if (r0 == 0) goto L_0x06e3
            k.e.a.x r3 = r1.f2396c
            int r3 = r3.c(r8)
            r0.a((int) r3, (k.e.a.c) r6)
        L_0x06e3:
            k.e.a.b r0 = r1.x
            if (r0 == 0) goto L_0x070d
            k.e.a.x r3 = r1.f2396c
            k.e.a.c r9 = r1.f2404k
            byte[] r10 = r9.a
            int r9 = r9.b
            int r12 = r1.f2402i
            int r13 = r1.f2403j
            r36 = r0
            r37 = r3
            r38 = r10
            r39 = r9
            r40 = r12
            r41 = r13
            r42 = r6
            r36.a(r37, r38, r39, r40, r41, r42)
            goto L_0x070d
        L_0x0705:
            r19 = r3
            r44 = r13
            r45 = r14
            r5 = 50
        L_0x070d:
            int r0 = r1.y
            if (r0 <= 0) goto L_0x0736
            k.e.a.x r0 = r1.f2396c
            int r0 = r0.c(r15)
            r6.d(r0)
            int r0 = r1.y
            r3 = 2
            int r0 = r0 * 2
            int r0 = r0 + r3
            r6.c(r0)
            int r0 = r1.y
            r6.d(r0)
            int[] r0 = r1.z
            int r3 = r0.length
            r9 = 0
        L_0x072c:
            if (r9 >= r3) goto L_0x0736
            r10 = r0[r9]
            r6.d(r10)
            int r9 = r9 + 1
            goto L_0x072c
        L_0x0736:
            k.e.a.x r0 = r1.f2396c
            int r3 = r1.f2397d
            int r9 = r1.A
            k.e.a.b.a(r0, r3, r9, r6)
            k.e.a.x r0 = r1.f2396c
            k.e.a.a r3 = r1.B
            k.e.a.a r9 = r1.C
            k.e.a.a r10 = r1.H
            k.e.a.a r12 = r1.I
            r36 = r0
            r37 = r3
            r38 = r9
            r39 = r10
            r40 = r12
            r41 = r6
            k.e.a.a.a(r36, r37, r38, r39, r40, r41)
            k.e.a.a[] r0 = r1.E
            if (r0 == 0) goto L_0x076f
            k.e.a.x r0 = r1.f2396c
            r9 = r45
            int r0 = r0.c(r9)
            k.e.a.a[] r3 = r1.E
            int r10 = r1.D
            if (r10 != 0) goto L_0x076b
            int r10 = r3.length
        L_0x076b:
            k.e.a.a.a((int) r0, (k.e.a.a[]) r3, (int) r10, (k.e.a.c) r6)
            goto L_0x0771
        L_0x076f:
            r9 = r45
        L_0x0771:
            k.e.a.a[] r0 = r1.G
            if (r0 == 0) goto L_0x0788
            k.e.a.x r0 = r1.f2396c
            r10 = r43
            int r0 = r0.c(r10)
            k.e.a.a[] r3 = r1.G
            int r12 = r1.F
            if (r12 != 0) goto L_0x0784
            int r12 = r3.length
        L_0x0784:
            k.e.a.a.a((int) r0, (k.e.a.a[]) r3, (int) r12, (k.e.a.c) r6)
            goto L_0x078a
        L_0x0788:
            r10 = r43
        L_0x078a:
            k.e.a.c r0 = r1.J
            if (r0 == 0) goto L_0x07ab
            k.e.a.x r0 = r1.f2396c
            r12 = r26
            int r0 = r0.c(r12)
            r6.d(r0)
            k.e.a.c r0 = r1.J
            int r0 = r0.b
            r6.c(r0)
            k.e.a.c r0 = r1.J
            byte[] r3 = r0.a
            int r0 = r0.b
            r13 = 0
            r6.a((byte[]) r3, (int) r13, (int) r0)
            goto L_0x07ad
        L_0x07ab:
            r12 = r26
        L_0x07ad:
            k.e.a.c r0 = r1.L
            if (r0 == 0) goto L_0x07d5
            k.e.a.x r0 = r1.f2396c
            r14 = r23
            int r0 = r0.c(r14)
            r6.d(r0)
            k.e.a.c r0 = r1.L
            int r0 = r0.b
            int r0 = r0 + 1
            r6.c(r0)
            int r0 = r1.K
            r6.b(r0)
            k.e.a.c r0 = r1.L
            byte[] r3 = r0.a
            int r0 = r0.b
            r13 = 0
            r6.a((byte[]) r3, (int) r13, (int) r0)
            goto L_0x07d7
        L_0x07d5:
            r14 = r23
        L_0x07d7:
            k.e.a.b r0 = r1.M
            if (r0 == 0) goto L_0x07e0
            k.e.a.x r3 = r1.f2396c
            r0.a(r3, r6)
        L_0x07e0:
            k.e.a.s r0 = r1.b
            r1 = r0
            k.e.a.t r1 = (k.e.a.t) r1
            r0 = r46
            r43 = r10
            r26 = r12
            r23 = r14
            r3 = r19
            r13 = r44
            r14 = r9
            goto L_0x0487
        L_0x07f4:
            r0 = r34
            r6.d(r0)
            r0 = r46
            k.e.a.c r1 = r0.m
            if (r1 == 0) goto L_0x0822
            k.e.a.x r1 = r0.b
            r2 = r22
            int r1 = r1.c(r2)
            r6.d(r1)
            k.e.a.c r1 = r0.m
            int r1 = r1.b
            r2 = 2
            int r1 = r1 + r2
            r6.c(r1)
            int r1 = r0.f2348l
            r6.d(r1)
            k.e.a.c r1 = r0.m
            byte[] r2 = r1.a
            int r1 = r1.b
            r4 = 0
            r6.a((byte[]) r2, (int) r4, (int) r1)
        L_0x0822:
            int r1 = r0.n
            if (r1 == 0) goto L_0x083f
            k.e.a.x r1 = r0.b
            r2 = r24
            int r1 = r1.c(r2)
            r6.d(r1)
            r1 = 4
            r6.c(r1)
            int r1 = r0.n
            r6.d(r1)
            int r1 = r0.o
            r6.d(r1)
        L_0x083f:
            int r1 = r0.f2339c
            r2 = 4096(0x1000, float:5.74E-42)
            r1 = r1 & r2
            if (r1 == 0) goto L_0x085f
            int r1 = r0.a
            r2 = 65535(0xffff, float:9.1834E-41)
            r1 = r1 & r2
            r2 = 49
            if (r1 >= r2) goto L_0x085f
            k.e.a.x r1 = r0.b
            r2 = r33
            int r1 = r1.c(r2)
            r6.d(r1)
            r1 = 0
            r6.c(r1)
        L_0x085f:
            int r1 = r0.p
            if (r1 == 0) goto L_0x0878
            k.e.a.x r1 = r0.b
            r2 = r28
            int r1 = r1.c(r2)
            r6.d(r1)
            r1 = 2
            r6.c(r1)
            int r2 = r0.p
            r6.d(r2)
            goto L_0x0879
        L_0x0878:
            r1 = 2
        L_0x0879:
            int r2 = r0.q
            if (r2 == 0) goto L_0x0890
            k.e.a.x r2 = r0.b
            r4 = r29
            int r2 = r2.c(r4)
            r6.d(r2)
            r6.c(r1)
            int r1 = r0.q
            r6.d(r1)
        L_0x0890:
            k.e.a.c r1 = r0.r
            if (r1 == 0) goto L_0x08ad
            int r1 = r1.b
            k.e.a.x r2 = r0.b
            r4 = r31
            int r2 = r2.c(r4)
            r6.d(r2)
            r6.c(r1)
            k.e.a.c r2 = r0.r
            byte[] r2 = r2.a
            r4 = 0
            r6.a((byte[]) r2, (int) r4, (int) r1)
            goto L_0x08ae
        L_0x08ad:
            r4 = 0
        L_0x08ae:
            int r1 = r0.f2339c
            r1 = r1 & r30
            if (r1 == 0) goto L_0x08c2
            k.e.a.x r1 = r0.b
            r2 = r32
            int r1 = r1.c(r2)
            r6.d(r1)
            r6.c(r4)
        L_0x08c2:
            k.e.a.x r1 = r0.b
            k.e.a.a r2 = r0.s
            k.e.a.a r4 = r0.t
            k.e.a.a r5 = r0.u
            k.e.a.a r7 = r0.v
            r36 = r1
            r37 = r2
            r38 = r4
            r39 = r5
            r40 = r7
            r41 = r6
            k.e.a.a.a(r36, r37, r38, r39, r40, r41)
            k.e.a.x r1 = r0.b
            k.e.a.c r2 = r1.f2433j
            if (r2 == 0) goto L_0x0902
            r2 = r35
            int r2 = r1.c(r2)
            r6.d(r2)
            k.e.a.c r2 = r1.f2433j
            int r2 = r2.b
            r4 = 2
            int r2 = r2 + r4
            r6.c(r2)
            int r2 = r1.f2432i
            r6.d(r2)
            k.e.a.c r1 = r1.f2433j
            byte[] r2 = r1.a
            int r1 = r1.b
            r4 = 0
            r6.a((byte[]) r2, (int) r4, (int) r1)
        L_0x0902:
            k.e.a.u r1 = r0.w
            if (r1 == 0) goto L_0x09c4
            k.e.a.c r2 = r1.f2409f
            int r2 = r2.b
            r4 = 16
            int r2 = r2 + r4
            k.e.a.c r4 = r1.f2411h
            int r4 = r4.b
            int r2 = r2 + r4
            k.e.a.c r4 = r1.f2413j
            int r4 = r4.b
            int r2 = r2 + r4
            k.e.a.c r4 = r1.f2415l
            int r4 = r4.b
            int r2 = r2 + r4
            k.e.a.c r4 = r1.n
            int r4 = r4.b
            int r2 = r2 + r4
            k.e.a.x r4 = r1.a
            java.lang.String r5 = "Module"
            int r4 = r4.c(r5)
            r6.d(r4)
            r6.c(r2)
            int r2 = r1.b
            r6.d(r2)
            int r2 = r1.f2406c
            r6.d(r2)
            int r2 = r1.f2407d
            r6.d(r2)
            int r2 = r1.f2408e
            r6.d(r2)
            k.e.a.c r2 = r1.f2409f
            byte[] r4 = r2.a
            int r2 = r2.b
            r5 = 0
            r6.a((byte[]) r4, (int) r5, (int) r2)
            int r2 = r1.f2410g
            r6.d(r2)
            k.e.a.c r2 = r1.f2411h
            byte[] r4 = r2.a
            int r2 = r2.b
            r6.a((byte[]) r4, (int) r5, (int) r2)
            int r2 = r1.f2412i
            r6.d(r2)
            k.e.a.c r2 = r1.f2413j
            byte[] r4 = r2.a
            int r2 = r2.b
            r6.a((byte[]) r4, (int) r5, (int) r2)
            int r2 = r1.f2414k
            r6.d(r2)
            k.e.a.c r2 = r1.f2415l
            byte[] r4 = r2.a
            int r2 = r2.b
            r6.a((byte[]) r4, (int) r5, (int) r2)
            int r2 = r1.m
            r6.d(r2)
            k.e.a.c r2 = r1.n
            byte[] r4 = r2.a
            int r2 = r2.b
            r6.a((byte[]) r4, (int) r5, (int) r2)
            int r2 = r1.o
            if (r2 <= 0) goto L_0x09ac
            k.e.a.x r2 = r1.a
            java.lang.String r4 = "ModulePackages"
            int r2 = r2.c(r4)
            r6.d(r2)
            k.e.a.c r2 = r1.p
            int r2 = r2.b
            r4 = 2
            int r2 = r2 + r4
            r6.c(r2)
            int r2 = r1.o
            r6.d(r2)
            k.e.a.c r2 = r1.p
            byte[] r4 = r2.a
            int r2 = r2.b
            r5 = 0
            r6.a((byte[]) r4, (int) r5, (int) r2)
        L_0x09ac:
            int r2 = r1.q
            if (r2 <= 0) goto L_0x09c4
            k.e.a.x r2 = r1.a
            java.lang.String r4 = "ModuleMainClass"
            int r2 = r2.c(r4)
            r6.d(r2)
            r2 = 2
            r6.c(r2)
            int r1 = r1.q
            r6.d(r1)
        L_0x09c4:
            int r1 = r0.x
            if (r1 == 0) goto L_0x09dc
            k.e.a.x r1 = r0.b
            java.lang.String r2 = "NestHost"
            int r1 = r1.c(r2)
            r6.d(r1)
            r1 = 2
            r6.c(r1)
            int r1 = r0.x
            r6.d(r1)
        L_0x09dc:
            k.e.a.c r1 = r0.z
            if (r1 == 0) goto L_0x0a03
            k.e.a.x r1 = r0.b
            java.lang.String r2 = "NestMembers"
            int r1 = r1.c(r2)
            r6.d(r1)
            k.e.a.c r1 = r0.z
            int r1 = r1.b
            r2 = 2
            int r1 = r1 + r2
            r6.c(r1)
            int r1 = r0.y
            r6.d(r1)
            k.e.a.c r1 = r0.z
            byte[] r2 = r1.a
            int r1 = r1.b
            r4 = 0
            r6.a((byte[]) r2, (int) r4, (int) r1)
        L_0x0a03:
            k.e.a.b r1 = r0.A
            if (r1 == 0) goto L_0x0a0c
            k.e.a.x r2 = r0.b
            r1.a(r2, r6)
        L_0x0a0c:
            if (r3 == 0) goto L_0x0a15
            byte[] r1 = r6.a
            byte[] r1 = r0.a((byte[]) r1, (boolean) r13)
            return r1
        L_0x0a15:
            byte[] r1 = r6.a
            return r1
        L_0x0a18:
            k.e.a.e r1 = new k.e.a.e
            k.e.a.x r2 = r0.b
            java.lang.String r2 = r2.f2427d
            r1.<init>(r2, r6)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.g.a():byte[]");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:389:0x0ac6, code lost:
        if (r1.y != 0) goto L_0x0aea;
     */
    /* JADX WARNING: Removed duplicated region for block: B:158:0x04ab  */
    /* JADX WARNING: Removed duplicated region for block: B:161:0x04b1  */
    /* JADX WARNING: Removed duplicated region for block: B:164:0x04c0  */
    /* JADX WARNING: Removed duplicated region for block: B:177:0x04ff  */
    /* JADX WARNING: Removed duplicated region for block: B:183:0x0520  */
    /* JADX WARNING: Removed duplicated region for block: B:189:0x0542  */
    /* JADX WARNING: Removed duplicated region for block: B:195:0x056b  */
    /* JADX WARNING: Removed duplicated region for block: B:201:0x0596 A[LOOP:20: B:200:0x0594->B:201:0x0596, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:204:0x05a8  */
    /* JADX WARNING: Removed duplicated region for block: B:213:0x05df  */
    /* JADX WARNING: Removed duplicated region for block: B:235:0x0661  */
    /* JADX WARNING: Removed duplicated region for block: B:305:0x0890  */
    /* JADX WARNING: Removed duplicated region for block: B:401:0x0aed  */
    /* JADX WARNING: Removed duplicated region for block: B:402:0x0af9  */
    /* JADX WARNING: Removed duplicated region for block: B:490:0x0872 A[EDGE_INSN: B:490:0x0872->B:302:0x0872 ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:501:0x0c20 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x027c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final byte[] a(byte[] r58, boolean r59) {
        /*
            r57 = this;
            r7 = r57
            k.e.a.b$a r0 = new k.e.a.b$a
            r0.<init>()
            k.e.a.b r1 = r7.A
            r0.a(r1)
            k.e.a.m r1 = r7.f2344h
        L_0x000e:
            if (r1 == 0) goto L_0x001a
            k.e.a.b r2 = r1.f2371l
            r0.a(r2)
            k.e.a.l r1 = r1.a
            k.e.a.m r1 = (k.e.a.m) r1
            goto L_0x000e
        L_0x001a:
            k.e.a.t r1 = r7.f2346j
        L_0x001c:
            if (r1 == 0) goto L_0x002d
            k.e.a.b r2 = r1.M
            r0.a(r2)
            k.e.a.b r2 = r1.x
            r0.a(r2)
            k.e.a.s r1 = r1.b
            k.e.a.t r1 = (k.e.a.t) r1
            goto L_0x001c
        L_0x002d:
            int r1 = r0.a
            k.e.a.b[] r2 = new k.e.a.b[r1]
            k.e.a.b[] r0 = r0.b
            r6 = 0
            java.lang.System.arraycopy(r0, r6, r2, r6, r1)
            r5 = 0
            r7.f2344h = r5
            r7.f2345i = r5
            r7.f2346j = r5
            r7.f2347k = r5
            r7.s = r5
            r7.t = r5
            r7.u = r5
            r7.v = r5
            r7.w = r5
            r7.x = r6
            r7.y = r6
            r7.z = r5
            r7.A = r5
            if (r59 == 0) goto L_0x0056
            r0 = 3
            goto L_0x0057
        L_0x0056:
            r0 = 0
        L_0x0057:
            r7.B = r0
            k.e.a.d r4 = new k.e.a.d
            r0 = r58
            r4.<init>(r0, r6, r6)
            r0 = 8
            if (r59 == 0) goto L_0x0067
            r1 = 8
            goto L_0x0068
        L_0x0067:
            r1 = 0
        L_0x0068:
            r3 = r1 | 256(0x100, float:3.59E-43)
            k.e.a.i r1 = new k.e.a.i
            r1.<init>()
            r1.a = r2
            r1.b = r3
            int r8 = r4.f2337f
            char[] r15 = new char[r8]
            r1.f2351c = r15
            int r8 = r4.f2338g
            int r9 = r4.e(r8)
            int r10 = r8 + 2
            java.lang.String r16 = r4.a((int) r10, (char[]) r15)
            int r10 = r8 + 4
            java.lang.String r17 = r4.a((int) r10, (char[]) r15)
            int r10 = r8 + 6
            int r10 = r4.e(r10)
            java.lang.String[] r14 = new java.lang.String[r10]
            int r8 = r8 + r0
            r0 = r8
            r8 = 0
        L_0x0096:
            if (r8 >= r10) goto L_0x00a3
            java.lang.String r11 = r4.a((int) r0, (char[]) r15)
            r14[r8] = r11
            int r0 = r0 + 2
            int r8 = r8 + 1
            goto L_0x0096
        L_0x00a3:
            int r8 = r4.a()
            int r10 = r8 + -2
            int r10 = r4.e(r10)
            r11 = r5
            r12 = r11
            r18 = r12
            r20 = r18
            r22 = r20
            r13 = r9
            r19 = r10
            r58 = r14
            r9 = 0
            r21 = 0
            r23 = 0
            r24 = 0
            r25 = 0
            r26 = 0
            r27 = 0
            r28 = 0
            r29 = 0
            r10 = r22
        L_0x00cd:
            java.lang.String r14 = "RuntimeInvisibleTypeAnnotations"
            r59 = r12
            java.lang.String r12 = "RuntimeInvisibleAnnotations"
            r30 = 131072(0x20000, float:1.83671E-40)
            r31 = r11
            java.lang.String r11 = "Synthetic"
            r32 = r10
            java.lang.String r10 = "Deprecated"
            r33 = r9
            java.lang.String r9 = "RuntimeVisibleTypeAnnotations"
            java.lang.String r7 = "RuntimeVisibleAnnotations"
            java.lang.String r6 = "Signature"
            if (r19 <= 0) goto L_0x0209
            java.lang.String r5 = r4.e(r8, r15)
            r34 = r0
            int r0 = r8 + 2
            int r0 = r4.b(r0)
            int r8 = r8 + 6
            r35 = r1
            java.lang.String r1 = "SourceFile"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x0109
            java.lang.String r11 = r4.e(r8, r15)
            r10 = r32
            r9 = r33
            goto L_0x01b3
        L_0x0109:
            java.lang.String r1 = "InnerClasses"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x0114
            r29 = r8
            goto L_0x012b
        L_0x0114:
            java.lang.String r1 = "EnclosingMethod"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x011f
            r23 = r8
            goto L_0x012b
        L_0x011f:
            java.lang.String r1 = "NestHost"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x012f
            java.lang.String r22 = r4.a((int) r8, (char[]) r15)
        L_0x012b:
            r9 = r33
            goto L_0x01af
        L_0x012f:
            java.lang.String r1 = "NestMembers"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x013a
            r28 = r8
            goto L_0x012b
        L_0x013a:
            boolean r1 = r6.equals(r5)
            if (r1 == 0) goto L_0x0145
            java.lang.String r18 = r4.e(r8, r15)
            goto L_0x012b
        L_0x0145:
            boolean r1 = r7.equals(r5)
            if (r1 == 0) goto L_0x014e
            r24 = r8
            goto L_0x012b
        L_0x014e:
            boolean r1 = r9.equals(r5)
            if (r1 == 0) goto L_0x0157
            r26 = r8
            goto L_0x012b
        L_0x0157:
            boolean r1 = r10.equals(r5)
            if (r1 == 0) goto L_0x0160
            r13 = r13 | r30
            goto L_0x012b
        L_0x0160:
            boolean r1 = r11.equals(r5)
            if (r1 == 0) goto L_0x0169
            r13 = r13 | 4096(0x1000, float:5.74E-42)
            goto L_0x012b
        L_0x0169:
            java.lang.String r1 = "SourceDebugExtension"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x017a
            char[] r1 = new char[r0]
            java.lang.String r10 = r4.a((int) r8, (int) r0, (char[]) r1)
            r9 = r33
            goto L_0x01b1
        L_0x017a:
            boolean r1 = r12.equals(r5)
            if (r1 == 0) goto L_0x0183
            r25 = r8
            goto L_0x012b
        L_0x0183:
            boolean r1 = r14.equals(r5)
            if (r1 == 0) goto L_0x018c
            r27 = r8
            goto L_0x012b
        L_0x018c:
            java.lang.String r1 = "Module"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x0196
            r9 = r8
            goto L_0x01af
        L_0x0196:
            java.lang.String r1 = "ModuleMainClass"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x01a3
            java.lang.String r20 = r4.a((int) r8, (char[]) r15)
            goto L_0x012b
        L_0x01a3:
            java.lang.String r1 = "ModulePackages"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L_0x01ba
            r21 = r8
            goto L_0x012b
        L_0x01af:
            r10 = r32
        L_0x01b1:
            r11 = r31
        L_0x01b3:
            r32 = r58
            r12 = r59
            r6 = r8
            r7 = r15
            goto L_0x01f8
        L_0x01ba:
            java.lang.String r1 = "BootstrapMethods"
            boolean r1 = r1.equals(r5)
            if (r1 != 0) goto L_0x01e4
            r14 = -1
            r1 = 0
            r6 = r8
            r8 = r4
            r7 = r33
            r9 = r2
            r12 = r32
            r10 = r5
            r5 = r31
            r11 = r6
            r36 = r59
            r37 = r12
            r12 = r0
            r31 = r13
            r13 = r15
            r32 = r58
            r7 = r15
            r15 = r1
            k.e.a.b r12 = r8.a(r9, r10, r11, r12, r13, r14, r15)
            r8 = r36
            r12.f2333c = r8
            goto L_0x01f1
        L_0x01e4:
            r6 = r8
            r7 = r15
            r5 = r31
            r37 = r32
            r32 = r58
            r8 = r59
            r31 = r13
            r12 = r8
        L_0x01f1:
            r11 = r5
            r13 = r31
            r9 = r33
            r10 = r37
        L_0x01f8:
            int r8 = r6 + r0
            int r19 = r19 + -1
            r5 = 0
            r6 = 0
            r15 = r7
            r58 = r32
            r0 = r34
            r1 = r35
            r7 = r57
            goto L_0x00cd
        L_0x0209:
            r8 = r59
            r34 = r0
            r35 = r1
            r5 = r31
            r37 = r32
            r32 = r58
            r31 = r13
            r13 = r7
            r7 = r15
            r15 = r33
            int[] r0 = r4.b
            r2 = 1
            r0 = r0[r2]
            r1 = 7
            int r0 = r0 - r1
            int r19 = r4.b(r0)
            r36 = r8
            r8 = r34
            r0 = r57
            r58 = r13
            r59 = r14
            r13 = r35
            r14 = 7
            r1 = r19
            r2 = r31
            r19 = r3
            r3 = r16
            r14 = r4
            r4 = r18
            r18 = r12
            r12 = r5
            r5 = r17
            r38 = r6
            r17 = r9
            r9 = 0
            r6 = r32
            r0.a(r1, r2, r3, r4, r5, r6)
            r0 = r19 & 2
            if (r0 != 0) goto L_0x0258
            r5 = r37
            if (r12 != 0) goto L_0x025d
            if (r5 == 0) goto L_0x0258
            goto L_0x025d
        L_0x0258:
            r6 = r57
            r4 = r58
            goto L_0x027a
        L_0x025d:
            r6 = r57
            r4 = r58
            if (r12 == 0) goto L_0x026b
            k.e.a.x r0 = r6.b
            int r0 = r0.c(r12)
            r6.q = r0
        L_0x026b:
            if (r5 == 0) goto L_0x027a
            k.e.a.c r0 = new k.e.a.c
            r0.<init>()
            r1 = 2147483647(0x7fffffff, float:NaN)
            r0.a((java.lang.String) r5, (int) r9, (int) r1)
            r6.r = r0
        L_0x027a:
            if (r15 == 0) goto L_0x04ab
            char[] r0 = r13.f2351c
            int[] r1 = r14.b
            int r2 = r14.e(r15)
            r1 = r1[r2]
            java.lang.String r1 = r14.e(r1, r0)
            int r2 = r15 + 2
            int r2 = r14.e(r2)
            int r3 = r15 + 4
            java.lang.String r3 = r14.e(r3, r0)
            int r5 = r15 + 6
            k.e.a.u r12 = new k.e.a.u
            k.e.a.x r15 = r6.b
            r9 = 19
            k.e.a.w r1 = r15.a((int) r9, (java.lang.String) r1)
            int r1 = r1.a
            if (r3 != 0) goto L_0x02a8
            r3 = 0
            goto L_0x02ae
        L_0x02a8:
            k.e.a.x r9 = r6.b
            int r3 = r9.c(r3)
        L_0x02ae:
            r12.<init>(r15, r1, r2, r3)
            r6.w = r12
            r1 = r20
            if (r1 == 0) goto L_0x02c2
            k.e.a.x r2 = r12.a
            r3 = 7
            k.e.a.w r1 = r2.a((int) r3, (java.lang.String) r1)
            int r1 = r1.a
            r12.q = r1
        L_0x02c2:
            r1 = 20
            r2 = r21
            if (r2 == 0) goto L_0x02f2
            int r3 = r14.e(r2)
            int r21 = r2 + 2
            r2 = r21
        L_0x02d0:
            int r9 = r3 + -1
            if (r3 <= 0) goto L_0x02f2
            java.lang.String r3 = r14.d(r2, r0)
            k.e.a.c r15 = r12.p
            r19 = r9
            k.e.a.x r9 = r12.a
            k.e.a.w r3 = r9.a((int) r1, (java.lang.String) r3)
            int r3 = r3.a
            r15.d(r3)
            int r3 = r12.o
            r15 = 1
            int r3 = r3 + r15
            r12.o = r3
            int r2 = r2 + 2
            r3 = r19
            goto L_0x02d0
        L_0x02f2:
            r15 = 1
            int r2 = r14.e(r5)
            int r5 = r5 + 2
        L_0x02f9:
            int r3 = r2 + -1
            if (r2 <= 0) goto L_0x0340
            java.lang.String r2 = r14.c(r5, r0)
            int r9 = r5 + 2
            int r9 = r14.e(r9)
            int r1 = r5 + 4
            java.lang.String r1 = r14.e(r1, r0)
            int r5 = r5 + 6
            k.e.a.c r15 = r12.f2409f
            r20 = r3
            k.e.a.x r3 = r12.a
            r21 = r4
            r4 = 19
            k.e.a.w r2 = r3.a((int) r4, (java.lang.String) r2)
            int r2 = r2.a
            r15.d(r2)
            r15.d(r9)
            if (r1 != 0) goto L_0x0329
            r1 = 0
            goto L_0x032f
        L_0x0329:
            k.e.a.x r2 = r12.a
            int r1 = r2.c(r1)
        L_0x032f:
            r15.d(r1)
            int r1 = r12.f2408e
            r2 = 1
            int r1 = r1 + r2
            r12.f2408e = r1
            r2 = r20
            r4 = r21
            r1 = 20
            r15 = 1
            goto L_0x02f9
        L_0x0340:
            r21 = r4
            int r1 = r14.e(r5)
            int r5 = r5 + 2
        L_0x0348:
            int r2 = r1 + -1
            if (r1 <= 0) goto L_0x03b3
            java.lang.String r1 = r14.d(r5, r0)
            int r3 = r5 + 2
            int r3 = r14.e(r3)
            int r4 = r5 + 4
            int r4 = r14.e(r4)
            int r5 = r5 + 6
            if (r4 == 0) goto L_0x0370
            java.lang.String[] r9 = new java.lang.String[r4]
            r15 = 0
        L_0x0363:
            if (r15 >= r4) goto L_0x0371
            java.lang.String r20 = r14.c(r5, r0)
            r9[r15] = r20
            int r5 = r5 + 2
            int r15 = r15 + 1
            goto L_0x0363
        L_0x0370:
            r9 = 0
        L_0x0371:
            k.e.a.c r4 = r12.f2411h
            k.e.a.x r15 = r12.a
            r58 = r2
            r2 = 20
            k.e.a.w r1 = r15.a((int) r2, (java.lang.String) r1)
            int r1 = r1.a
            r4.d(r1)
            r4.d(r3)
            if (r9 != 0) goto L_0x038e
            k.e.a.c r1 = r12.f2411h
            r2 = 0
            r1.d(r2)
            goto L_0x03aa
        L_0x038e:
            k.e.a.c r1 = r12.f2411h
            int r2 = r9.length
            r1.d(r2)
            int r1 = r9.length
            r2 = 0
        L_0x0396:
            if (r2 >= r1) goto L_0x03aa
            r3 = r9[r2]
            k.e.a.c r4 = r12.f2411h
            k.e.a.x r15 = r12.a
            k.e.a.w r3 = r15.b((java.lang.String) r3)
            int r3 = r3.a
            r4.d(r3)
            int r2 = r2 + 1
            goto L_0x0396
        L_0x03aa:
            int r1 = r12.f2410g
            r2 = 1
            int r1 = r1 + r2
            r12.f2410g = r1
            r1 = r58
            goto L_0x0348
        L_0x03b3:
            int r1 = r14.e(r5)
            int r5 = r5 + 2
        L_0x03b9:
            int r2 = r1 + -1
            if (r1 <= 0) goto L_0x042b
            java.lang.String r1 = r14.d(r5, r0)
            int r3 = r5 + 2
            int r3 = r14.e(r3)
            int r4 = r5 + 4
            int r4 = r14.e(r4)
            int r5 = r5 + 6
            if (r4 == 0) goto L_0x03e4
            java.lang.String[] r9 = new java.lang.String[r4]
            r15 = 0
        L_0x03d4:
            if (r15 >= r4) goto L_0x03e1
            java.lang.String r20 = r14.c(r5, r0)
            r9[r15] = r20
            int r5 = r5 + 2
            int r15 = r15 + 1
            goto L_0x03d4
        L_0x03e1:
            r4 = r5
            r5 = r9
            goto L_0x03e6
        L_0x03e4:
            r4 = r5
            r5 = 0
        L_0x03e6:
            k.e.a.c r9 = r12.f2413j
            k.e.a.x r15 = r12.a
            r58 = r2
            r2 = 20
            k.e.a.w r1 = r15.a((int) r2, (java.lang.String) r1)
            int r1 = r1.a
            r9.d(r1)
            r9.d(r3)
            if (r5 != 0) goto L_0x0403
            k.e.a.c r1 = r12.f2413j
            r3 = 0
            r1.d(r3)
            goto L_0x0421
        L_0x0403:
            k.e.a.c r1 = r12.f2413j
            int r3 = r5.length
            r1.d(r3)
            int r1 = r5.length
            r3 = 0
        L_0x040b:
            if (r3 >= r1) goto L_0x0421
            r9 = r5[r3]
            k.e.a.c r15 = r12.f2413j
            k.e.a.x r2 = r12.a
            k.e.a.w r2 = r2.b((java.lang.String) r9)
            int r2 = r2.a
            r15.d(r2)
            int r3 = r3 + 1
            r2 = 20
            goto L_0x040b
        L_0x0421:
            int r1 = r12.f2412i
            r2 = 1
            int r1 = r1 + r2
            r12.f2412i = r1
            r1 = r58
            r5 = r4
            goto L_0x03b9
        L_0x042b:
            int r1 = r14.e(r5)
            int r5 = r5 + 2
        L_0x0431:
            int r2 = r1 + -1
            if (r1 <= 0) goto L_0x0451
            java.lang.String r1 = r14.a((int) r5, (char[]) r0)
            k.e.a.c r3 = r12.f2415l
            k.e.a.x r4 = r12.a
            r9 = 7
            k.e.a.w r1 = r4.a((int) r9, (java.lang.String) r1)
            int r1 = r1.a
            r3.d(r1)
            int r1 = r12.f2414k
            r3 = 1
            int r1 = r1 + r3
            r12.f2414k = r1
            int r5 = r5 + 2
            r1 = r2
            goto L_0x0431
        L_0x0451:
            int r1 = r14.e(r5)
            int r5 = r5 + 2
        L_0x0457:
            int r2 = r1 + -1
            if (r1 <= 0) goto L_0x04ad
            java.lang.String r1 = r14.a((int) r5, (char[]) r0)
            int r3 = r5 + 2
            int r3 = r14.e(r3)
            int r5 = r5 + 4
            java.lang.String[] r4 = new java.lang.String[r3]
            r9 = 0
        L_0x046a:
            if (r9 >= r3) goto L_0x0477
            java.lang.String r15 = r14.a((int) r5, (char[]) r0)
            r4[r9] = r15
            int r5 = r5 + 2
            int r9 = r9 + 1
            goto L_0x046a
        L_0x0477:
            k.e.a.c r9 = r12.n
            k.e.a.x r15 = r12.a
            r19 = r0
            r0 = 7
            k.e.a.w r1 = r15.a((int) r0, (java.lang.String) r1)
            int r0 = r1.a
            r9.d(r0)
            k.e.a.c r0 = r12.n
            r0.d(r3)
            r0 = 0
        L_0x048d:
            if (r0 >= r3) goto L_0x04a1
            r1 = r4[r0]
            k.e.a.c r9 = r12.n
            k.e.a.x r15 = r12.a
            k.e.a.w r1 = r15.a((java.lang.String) r1)
            int r1 = r1.a
            r9.d(r1)
            int r0 = r0 + 1
            goto L_0x048d
        L_0x04a1:
            int r0 = r12.m
            r1 = 1
            int r0 = r0 + r1
            r12.m = r0
            r1 = r2
            r0 = r19
            goto L_0x0457
        L_0x04ab:
            r21 = r4
        L_0x04ad:
            r5 = r22
            if (r5 == 0) goto L_0x04bc
            k.e.a.x r0 = r6.b
            r1 = 7
            k.e.a.w r0 = r0.a((int) r1, (java.lang.String) r5)
            int r0 = r0.a
            r6.x = r0
        L_0x04bc:
            r0 = r23
            if (r0 == 0) goto L_0x04fb
            java.lang.String r1 = r14.a((int) r0, (char[]) r7)
            int r0 = r0 + 2
            int r0 = r14.e(r0)
            if (r0 != 0) goto L_0x04ce
            r5 = 0
            goto L_0x04d6
        L_0x04ce:
            int[] r2 = r14.b
            r2 = r2[r0]
            java.lang.String r5 = r14.e(r2, r7)
        L_0x04d6:
            if (r0 != 0) goto L_0x04da
            r0 = 0
            goto L_0x04e4
        L_0x04da:
            int[] r2 = r14.b
            r0 = r2[r0]
            int r0 = r0 + 2
            java.lang.String r0 = r14.e(r0, r7)
        L_0x04e4:
            k.e.a.x r2 = r6.b
            r3 = 7
            k.e.a.w r1 = r2.a((int) r3, (java.lang.String) r1)
            int r1 = r1.a
            r6.n = r1
            if (r5 == 0) goto L_0x04fb
            if (r0 == 0) goto L_0x04fb
            k.e.a.x r1 = r6.b
            int r0 = r1.a((java.lang.String) r5, (java.lang.String) r0)
            r6.o = r0
        L_0x04fb:
            r0 = r24
            if (r0 == 0) goto L_0x051c
            int r1 = r14.e(r0)
            int r24 = r0 + 2
            r0 = r24
        L_0x0507:
            int r2 = r1 + -1
            if (r1 <= 0) goto L_0x051c
            java.lang.String r1 = r14.e(r0, r7)
            int r0 = r0 + 2
            r3 = 1
            k.e.a.a r1 = r6.a(r1, r3)
            int r0 = r14.a((k.e.a.a) r1, (int) r0, (boolean) r3, (char[]) r7)
            r1 = r2
            goto L_0x0507
        L_0x051c:
            r0 = r25
            if (r0 == 0) goto L_0x053e
            int r1 = r14.e(r0)
            int r25 = r0 + 2
            r0 = r25
        L_0x0528:
            int r2 = r1 + -1
            if (r1 <= 0) goto L_0x053e
            java.lang.String r1 = r14.e(r0, r7)
            int r0 = r0 + 2
            r3 = 0
            k.e.a.a r1 = r6.a(r1, r3)
            r3 = 1
            int r0 = r14.a((k.e.a.a) r1, (int) r0, (boolean) r3, (char[]) r7)
            r1 = r2
            goto L_0x0528
        L_0x053e:
            r0 = r26
            if (r0 == 0) goto L_0x0567
            int r1 = r14.e(r0)
            int r26 = r0 + 2
            r0 = r26
        L_0x054a:
            int r2 = r1 + -1
            if (r1 <= 0) goto L_0x0567
            int r0 = r14.a((k.e.a.i) r13, (int) r0)
            java.lang.String r1 = r14.e(r0, r7)
            int r0 = r0 + 2
            int r3 = r13.f2356h
            k.e.a.z r4 = r13.f2357i
            r5 = 1
            k.e.a.a r1 = r6.a(r3, r4, r1, r5)
            int r0 = r14.a((k.e.a.a) r1, (int) r0, (boolean) r5, (char[]) r7)
            r1 = r2
            goto L_0x054a
        L_0x0567:
            r0 = r27
            if (r0 == 0) goto L_0x0591
            int r1 = r14.e(r0)
            int r27 = r0 + 2
            r0 = r27
        L_0x0573:
            int r2 = r1 + -1
            if (r1 <= 0) goto L_0x0591
            int r0 = r14.a((k.e.a.i) r13, (int) r0)
            java.lang.String r1 = r14.e(r0, r7)
            int r0 = r0 + 2
            int r3 = r13.f2356h
            k.e.a.z r4 = r13.f2357i
            r5 = 0
            k.e.a.a r1 = r6.a(r3, r4, r1, r5)
            r3 = 1
            int r0 = r14.a((k.e.a.a) r1, (int) r0, (boolean) r3, (char[]) r7)
            r1 = r2
            goto L_0x0573
        L_0x0591:
            r5 = 0
            r12 = r36
        L_0x0594:
            if (r12 == 0) goto L_0x05a3
            k.e.a.b r0 = r12.f2333c
            r1 = 0
            r12.f2333c = r1
            k.e.a.b r2 = r6.A
            r12.f2333c = r2
            r6.A = r12
            r12 = r0
            goto L_0x0594
        L_0x05a3:
            r0 = r28
            r1 = 0
            if (r0 == 0) goto L_0x05db
            int r2 = r14.e(r0)
            int r28 = r0 + 2
            r0 = r28
        L_0x05b0:
            int r3 = r2 + -1
            if (r2 <= 0) goto L_0x05db
            java.lang.String r2 = r14.a((int) r0, (char[]) r7)
            k.e.a.c r4 = r6.z
            if (r4 != 0) goto L_0x05c3
            k.e.a.c r4 = new k.e.a.c
            r4.<init>()
            r6.z = r4
        L_0x05c3:
            int r4 = r6.y
            r9 = 1
            int r4 = r4 + r9
            r6.y = r4
            k.e.a.c r4 = r6.z
            k.e.a.x r9 = r6.b
            r12 = 7
            k.e.a.w r2 = r9.a((int) r12, (java.lang.String) r2)
            int r2 = r2.a
            r4.d(r2)
            int r0 = r0 + 2
            r2 = r3
            goto L_0x05b0
        L_0x05db:
            r0 = r29
            if (r0 == 0) goto L_0x0657
            int r2 = r14.e(r0)
            int r29 = r0 + 2
            r0 = r29
        L_0x05e7:
            int r3 = r2 + -1
            if (r2 <= 0) goto L_0x0657
            java.lang.String r2 = r14.a((int) r0, (char[]) r7)
            int r4 = r0 + 2
            java.lang.String r4 = r14.a((int) r4, (char[]) r7)
            int r9 = r0 + 4
            java.lang.String r9 = r14.e(r9, r7)
            int r12 = r0 + 6
            int r12 = r14.e(r12)
            k.e.a.c r15 = r6.m
            if (r15 != 0) goto L_0x060c
            k.e.a.c r15 = new k.e.a.c
            r15.<init>()
            r6.m = r15
        L_0x060c:
            k.e.a.x r15 = r6.b
            r1 = 7
            k.e.a.w r2 = r15.a((int) r1, (java.lang.String) r2)
            int r1 = r2.f2425g
            if (r1 != 0) goto L_0x0650
            int r1 = r6.f2348l
            r15 = 1
            int r1 = r1 + r15
            r6.f2348l = r1
            k.e.a.c r1 = r6.m
            int r5 = r2.a
            r1.d(r5)
            k.e.a.c r1 = r6.m
            if (r4 != 0) goto L_0x062b
            r4 = 0
            r15 = 7
            goto L_0x0634
        L_0x062b:
            k.e.a.x r5 = r6.b
            r15 = 7
            k.e.a.w r4 = r5.a((int) r15, (java.lang.String) r4)
            int r4 = r4.a
        L_0x0634:
            r1.d(r4)
            k.e.a.c r1 = r6.m
            if (r9 != 0) goto L_0x063d
            r4 = 0
            goto L_0x0643
        L_0x063d:
            k.e.a.x r4 = r6.b
            int r4 = r4.c(r9)
        L_0x0643:
            r1.d(r4)
            k.e.a.c r1 = r6.m
            r1.d(r12)
            int r1 = r6.f2348l
            r2.f2425g = r1
            goto L_0x0651
        L_0x0650:
            r15 = 7
        L_0x0651:
            int r0 = r0 + 8
            r2 = r3
            r1 = 0
            r5 = 0
            goto L_0x05e7
        L_0x0657:
            int r0 = r14.e(r8)
            int r1 = r8 + 2
        L_0x065d:
            int r2 = r0 + -1
            if (r0 <= 0) goto L_0x0872
            char[] r0 = r13.f2351c
            int r3 = r14.e(r1)
            int r4 = r1 + 2
            java.lang.String r25 = r14.e(r4, r0)
            int r4 = r1 + 4
            java.lang.String r26 = r14.e(r4, r0)
            int r1 = r1 + 6
            int r4 = r14.e(r1)
            int r1 = r1 + 2
            r9 = r3
            r3 = 0
            r5 = 0
            r7 = 0
            r12 = 0
            r15 = 0
            r27 = 0
            r28 = 0
        L_0x0685:
            int r16 = r4 + -1
            if (r4 <= 0) goto L_0x0791
            java.lang.String r4 = r14.e(r1, r0)
            int r8 = r1 + 2
            int r19 = r14.b(r8)
            int r1 = r1 + 6
            java.lang.String r8 = "ConstantValue"
            boolean r8 = r8.equals(r4)
            if (r8 == 0) goto L_0x06b1
            int r4 = r14.e(r1)
            if (r4 != 0) goto L_0x06a8
            r8 = r38
            r28 = 0
            goto L_0x06d1
        L_0x06a8:
            java.lang.Object r4 = r14.b((int) r4, (char[]) r0)
            r28 = r4
            r8 = r38
            goto L_0x06d1
        L_0x06b1:
            r8 = r38
            boolean r20 = r8.equals(r4)
            if (r20 == 0) goto L_0x06be
            java.lang.String r27 = r14.e(r1, r0)
            goto L_0x06d1
        L_0x06be:
            boolean r20 = r10.equals(r4)
            if (r20 == 0) goto L_0x06c8
            r4 = r9 | r30
        L_0x06c6:
            r9 = r4
            goto L_0x06d1
        L_0x06c8:
            boolean r20 = r11.equals(r4)
            if (r20 == 0) goto L_0x06da
            r4 = r9 | 4096(0x1000, float:5.74E-42)
            goto L_0x06c6
        L_0x06d1:
            r20 = r2
            r58 = r15
            r15 = r21
            r2 = r59
            goto L_0x072a
        L_0x06da:
            r58 = r15
            r15 = r21
            boolean r20 = r15.equals(r4)
            if (r20 == 0) goto L_0x06fd
            r44 = r59
            r3 = r1
            r20 = r2
            r39 = r8
            r21 = r10
            r43 = r13
            r4 = r14
            r45 = r15
            r40 = r17
            r41 = r18
            r2 = 1
            r15 = r58
            r18 = r11
            goto L_0x0778
        L_0x06fd:
            r20 = r2
            r2 = r17
            boolean r17 = r2.equals(r4)
            if (r17 == 0) goto L_0x070d
            r4 = r1
            r17 = r2
            r2 = r18
            goto L_0x071a
        L_0x070d:
            r17 = r2
            r2 = r18
            boolean r18 = r2.equals(r4)
            if (r18 == 0) goto L_0x071f
            r4 = r58
            r7 = r1
        L_0x071a:
            r18 = r2
            r2 = r59
            goto L_0x072c
        L_0x071f:
            r18 = r2
            r2 = r59
            boolean r21 = r2.equals(r4)
            if (r21 == 0) goto L_0x0740
            r12 = r1
        L_0x072a:
            r4 = r58
        L_0x072c:
            r44 = r2
            r39 = r8
            r21 = r10
            r43 = r13
            r45 = r15
            r40 = r17
            r41 = r18
            r2 = 1
            r15 = r4
            r18 = r11
            r4 = r14
            goto L_0x0778
        L_0x0740:
            r59 = r2
            k.e.a.b[] r2 = r13.a
            r21 = -1
            r22 = 0
            r39 = r8
            r8 = r14
            r40 = r17
            r17 = r9
            r9 = r2
            r2 = r10
            r10 = r4
            r4 = r11
            r11 = r1
            r42 = r12
            r41 = r18
            r12 = r19
            r43 = r13
            r13 = r0
            r44 = r59
            r18 = r4
            r4 = r14
            r14 = r21
            r21 = r2
            r45 = r15
            r2 = 1
            r15 = r22
            k.e.a.b r8 = r8.a(r9, r10, r11, r12, r13, r14, r15)
            r8.f2333c = r5
            r15 = r58
            r5 = r8
            r9 = r17
            r12 = r42
        L_0x0778:
            int r1 = r1 + r19
            r14 = r4
            r4 = r16
            r11 = r18
            r2 = r20
            r10 = r21
            r38 = r39
            r17 = r40
            r18 = r41
            r13 = r43
            r59 = r44
            r21 = r45
            goto L_0x0685
        L_0x0791:
            r44 = r59
            r20 = r2
            r42 = r12
            r43 = r13
            r4 = r14
            r58 = r15
            r40 = r17
            r41 = r18
            r45 = r21
            r39 = r38
            r2 = 1
            r17 = r9
            r21 = r10
            r18 = r11
            k.e.a.m r8 = new k.e.a.m
            k.e.a.x r9 = r6.b
            r22 = r8
            r23 = r9
            r24 = r17
            r22.<init>(r23, r24, r25, r26, r27, r28)
            k.e.a.m r9 = r6.f2344h
            if (r9 != 0) goto L_0x07bf
            r6.f2344h = r8
            goto L_0x07c3
        L_0x07bf:
            k.e.a.m r9 = r6.f2345i
            r9.a = r8
        L_0x07c3:
            r6.f2345i = r8
            if (r3 == 0) goto L_0x07e1
            int r9 = r4.e(r3)
            int r3 = r3 + 2
        L_0x07cd:
            int r10 = r9 + -1
            if (r9 <= 0) goto L_0x07e1
            java.lang.String r9 = r4.e(r3, r0)
            int r3 = r3 + 2
            k.e.a.a r9 = r8.a(r9, r2)
            int r3 = r4.a((k.e.a.a) r9, (int) r3, (boolean) r2, (char[]) r0)
            r9 = r10
            goto L_0x07cd
        L_0x07e1:
            if (r7 == 0) goto L_0x07fe
            int r3 = r4.e(r7)
            int r7 = r7 + 2
        L_0x07e9:
            int r9 = r3 + -1
            if (r3 <= 0) goto L_0x07fe
            java.lang.String r3 = r4.e(r7, r0)
            int r7 = r7 + 2
            r15 = 0
            k.e.a.a r3 = r8.a(r3, r15)
            int r7 = r4.a((k.e.a.a) r3, (int) r7, (boolean) r2, (char[]) r0)
            r3 = r9
            goto L_0x07e9
        L_0x07fe:
            r15 = 0
            if (r58 == 0) goto L_0x0827
            r3 = r58
            int r7 = r4.e(r3)
            int r3 = r3 + 2
        L_0x0809:
            int r9 = r7 + -1
            if (r7 <= 0) goto L_0x0827
            r7 = r43
            int r3 = r4.a((k.e.a.i) r7, (int) r3)
            java.lang.String r10 = r4.e(r3, r0)
            int r3 = r3 + 2
            int r11 = r7.f2356h
            k.e.a.z r12 = r7.f2357i
            k.e.a.a r10 = r8.a(r11, r12, r10, r2)
            int r3 = r4.a((k.e.a.a) r10, (int) r3, (boolean) r2, (char[]) r0)
            r7 = r9
            goto L_0x0809
        L_0x0827:
            r7 = r43
            r12 = r42
            if (r12 == 0) goto L_0x084f
            int r3 = r4.e(r12)
            int r12 = r12 + 2
        L_0x0833:
            int r9 = r3 + -1
            if (r3 <= 0) goto L_0x084f
            int r3 = r4.a((k.e.a.i) r7, (int) r12)
            java.lang.String r10 = r4.e(r3, r0)
            int r3 = r3 + 2
            int r11 = r7.f2356h
            k.e.a.z r12 = r7.f2357i
            k.e.a.a r10 = r8.a(r11, r12, r10, r15)
            int r12 = r4.a((k.e.a.a) r10, (int) r3, (boolean) r2, (char[]) r0)
            r3 = r9
            goto L_0x0833
        L_0x084f:
            if (r5 == 0) goto L_0x085e
            k.e.a.b r0 = r5.f2333c
            r3 = 0
            r5.f2333c = r3
            k.e.a.b r9 = r8.f2371l
            r5.f2333c = r9
            r8.f2371l = r5
            r5 = r0
            goto L_0x084f
        L_0x085e:
            r14 = r4
            r13 = r7
            r11 = r18
            r0 = r20
            r10 = r21
            r38 = r39
            r17 = r40
            r18 = r41
            r59 = r44
            r21 = r45
            goto L_0x065d
        L_0x0872:
            r44 = r59
            r7 = r13
            r4 = r14
            r40 = r17
            r41 = r18
            r45 = r21
            r39 = r38
            r2 = 1
            r3 = 0
            r15 = 0
            r21 = r10
            r18 = r11
            int r0 = r4.e(r1)
            int r1 = r1 + 2
            r5 = r1
        L_0x088c:
            int r16 = r0 + -1
            if (r0 <= 0) goto L_0x0c20
            char[] r1 = r7.f2351c
            int r0 = r4.e(r5)
            r7.f2352d = r0
            int r0 = r5 + 2
            java.lang.String r0 = r4.e(r0, r1)
            r7.f2353e = r0
            int r0 = r5 + 4
            java.lang.String r8 = r4.e(r0, r1)
            r7.f2354f = r8
            int r14 = r5 + 6
            int r8 = r4.e(r14)
            int r9 = r14 + 2
            r13 = r3
            r17 = r13
            r19 = r8
            r8 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r46 = 0
            r47 = 0
            r48 = 0
            r49 = 0
            r50 = 0
            r51 = 0
            r52 = 0
            r53 = 0
        L_0x08c9:
            int r20 = r19 + -1
            if (r19 <= 0) goto L_0x0a3b
            java.lang.String r3 = r4.e(r9, r1)
            int r15 = r9 + 2
            int r19 = r4.b(r15)
            int r15 = r9 + 6
            java.lang.String r9 = "Code"
            boolean r9 = r9.equals(r3)
            if (r9 == 0) goto L_0x08f6
            int r3 = r7.b
            r3 = r3 & r2
            if (r3 != 0) goto L_0x08f1
            r59 = r0
            r58 = r14
            r53 = r15
            r9 = r21
            r2 = r39
            goto L_0x0942
        L_0x08f1:
            r9 = r21
            r2 = r39
            goto L_0x093e
        L_0x08f6:
            java.lang.String r9 = "Exceptions"
            boolean r9 = r9.equals(r3)
            if (r9 == 0) goto L_0x0921
            int r3 = r4.e(r15)
            java.lang.String[] r9 = new java.lang.String[r3]
            int r11 = r15 + 2
            r2 = r11
            r11 = 0
        L_0x0908:
            if (r11 >= r3) goto L_0x0915
            java.lang.String r17 = r4.a((int) r2, (char[]) r1)
            r9[r11] = r17
            int r2 = r2 + 2
            int r11 = r11 + 1
            goto L_0x0908
        L_0x0915:
            r17 = r9
            r58 = r14
            r11 = r15
            r9 = r21
            r2 = r39
            r14 = r45
            goto L_0x0954
        L_0x0921:
            r2 = r39
            boolean r9 = r2.equals(r3)
            if (r9 == 0) goto L_0x0930
            int r12 = r4.e(r15)
            r9 = r21
            goto L_0x093e
        L_0x0930:
            r9 = r21
            boolean r21 = r9.equals(r3)
            if (r21 == 0) goto L_0x0948
            int r3 = r7.f2352d
            r3 = r3 | r30
            r7.f2352d = r3
        L_0x093e:
            r59 = r0
            r58 = r14
        L_0x0942:
            r14 = r44
            r21 = r45
            goto L_0x09dc
        L_0x0948:
            r58 = r14
            r14 = r45
            boolean r21 = r14.equals(r3)
            if (r21 == 0) goto L_0x0959
            r46 = r15
        L_0x0954:
            r59 = r0
            r21 = r14
            goto L_0x0975
        L_0x0959:
            r21 = r14
            r14 = r40
            boolean r22 = r14.equals(r3)
            if (r22 == 0) goto L_0x0968
            r59 = r0
            r49 = r15
            goto L_0x0973
        L_0x0968:
            r59 = r0
            java.lang.String r0 = "AnnotationDefault"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x0979
            r10 = r15
        L_0x0973:
            r40 = r14
        L_0x0975:
            r14 = r44
            goto L_0x09dc
        L_0x0979:
            r0 = r18
            boolean r18 = r0.equals(r3)
            if (r18 == 0) goto L_0x099b
            int r3 = r7.f2352d
            r3 = r3 | 4096(0x1000, float:5.74E-42)
            r7.f2352d = r3
            r6 = r58
            r18 = r0
            r24 = r9
            r26 = r14
            r22 = r15
            r27 = r21
            r25 = r41
            r21 = r44
            r47 = 1
            goto L_0x0a21
        L_0x099b:
            r40 = r14
            r14 = r41
            boolean r18 = r14.equals(r3)
            if (r18 == 0) goto L_0x09ac
            r18 = r0
            r41 = r14
            r48 = r15
            goto L_0x0975
        L_0x09ac:
            r41 = r14
            r14 = r44
            boolean r18 = r14.equals(r3)
            if (r18 == 0) goto L_0x09bb
            r18 = r0
            r50 = r15
            goto L_0x09dc
        L_0x09bb:
            r18 = r0
            java.lang.String r0 = "RuntimeVisibleParameterAnnotations"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x09c8
            r51 = r15
            goto L_0x09dc
        L_0x09c8:
            java.lang.String r0 = "RuntimeInvisibleParameterAnnotations"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x09d3
            r52 = r15
            goto L_0x09dc
        L_0x09d3:
            java.lang.String r0 = "MethodParameters"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L_0x09eb
            r8 = r15
        L_0x09dc:
            r6 = r58
            r24 = r9
            r22 = r15
            r27 = r21
            r26 = r40
            r25 = r41
            r21 = r14
            goto L_0x0a21
        L_0x09eb:
            k.e.a.b[] r0 = r7.a
            r22 = -1
            r23 = 0
            r54 = r8
            r8 = r4
            r24 = r9
            r9 = r0
            r0 = r10
            r10 = r3
            r3 = r11
            r11 = r15
            r55 = r12
            r12 = r19
            r56 = r13
            r13 = r1
            r6 = r58
            r27 = r21
            r26 = r40
            r25 = r41
            r21 = r14
            r14 = r22
            r22 = r15
            r15 = r23
            k.e.a.b r8 = r8.a(r9, r10, r11, r12, r13, r14, r15)
            r10 = r56
            r8.f2333c = r10
            r10 = r0
            r11 = r3
            r13 = r8
            r8 = r54
            r12 = r55
        L_0x0a21:
            int r9 = r22 + r19
            r0 = r59
            r39 = r2
            r14 = r6
            r19 = r20
            r44 = r21
            r21 = r24
            r41 = r25
            r40 = r26
            r45 = r27
            r2 = 1
            r3 = 0
            r15 = 0
            r6 = r57
            goto L_0x08c9
        L_0x0a3b:
            r59 = r0
            r54 = r8
            r0 = r10
            r3 = r11
            r55 = r12
            r10 = r13
            r6 = r14
            r24 = r21
            r2 = r39
            r26 = r40
            r25 = r41
            r21 = r44
            r27 = r45
            int r8 = r7.f2352d
            java.lang.String r11 = r7.f2353e
            java.lang.String r12 = r7.f2354f
            r15 = r55
            if (r15 != 0) goto L_0x0a60
            r14 = r0
            r56 = r10
            r13 = 0
            goto L_0x0a67
        L_0x0a60:
            java.lang.String r13 = r4.f(r15, r1)
            r14 = r0
            r56 = r10
        L_0x0a67:
            r10 = r59
            r0 = r57
            r58 = r14
            r14 = r1
            r1 = r8
            r19 = r2
            r8 = 1
            r2 = r11
            r11 = r3
            r3 = r12
            r12 = r4
            r20 = r27
            r4 = r13
            r13 = r5
            r5 = r17
            k.e.a.s r0 = r0.a(r1, r2, r3, r4, r5)
            r1 = r0
            k.e.a.t r1 = (k.e.a.t) r1
            int r2 = r7.f2352d
            r2 = r2 & r30
            if (r2 == 0) goto L_0x0a8b
            r2 = 1
            goto L_0x0a8c
        L_0x0a8b:
            r2 = 0
        L_0x0a8c:
            int r3 = r12.e(r10)
            k.e.a.x r4 = r1.f2396c
            k.e.a.d r4 = r4.b
            if (r12 != r4) goto L_0x0aea
            int r4 = r1.f2400g
            if (r3 != r4) goto L_0x0aea
            int r3 = r1.A
            if (r15 != r3) goto L_0x0aea
            int r3 = r1.f2397d
            r3 = r3 & r30
            if (r3 == 0) goto L_0x0aa6
            r3 = 1
            goto L_0x0aa7
        L_0x0aa6:
            r3 = 0
        L_0x0aa7:
            if (r2 == r3) goto L_0x0aaa
            goto L_0x0aea
        L_0x0aaa:
            k.e.a.x r2 = r1.f2396c
            int r2 = r2.f2426c
            r3 = 49
            if (r2 >= r3) goto L_0x0abc
            int r2 = r1.f2397d
            r2 = r2 & 4096(0x1000, float:5.74E-42)
            if (r2 == 0) goto L_0x0abc
            r15 = r47
            r2 = 1
            goto L_0x0abf
        L_0x0abc:
            r15 = r47
            r2 = 0
        L_0x0abf:
            if (r15 == r2) goto L_0x0ac2
            goto L_0x0aea
        L_0x0ac2:
            if (r11 != 0) goto L_0x0ac9
            int r2 = r1.y
            if (r2 == 0) goto L_0x0ae8
            goto L_0x0aea
        L_0x0ac9:
            int r2 = r12.e(r11)
            int r3 = r1.y
            if (r2 != r3) goto L_0x0ae8
            int r11 = r11 + 2
            r2 = 0
        L_0x0ad4:
            int r3 = r1.y
            if (r2 >= r3) goto L_0x0ae8
            int r3 = r12.e(r11)
            int[] r4 = r1.z
            r4 = r4[r2]
            if (r3 == r4) goto L_0x0ae3
            goto L_0x0aea
        L_0x0ae3:
            int r11 = r11 + 2
            int r2 = r2 + 1
            goto L_0x0ad4
        L_0x0ae8:
            r2 = 1
            goto L_0x0aeb
        L_0x0aea:
            r2 = 0
        L_0x0aeb:
            if (r2 == 0) goto L_0x0af9
            int r0 = r9 - r13
            r1.a0 = r6
            int r0 = r0 + -6
            r1.b0 = r0
            r5 = 0
            r6 = 0
            goto L_0x0c09
        L_0x0af9:
            r15 = r54
            if (r15 == 0) goto L_0x0b37
            int r2 = r12.a(r15)
            int r3 = r15 + 1
        L_0x0b03:
            int r4 = r2 + -1
            if (r2 <= 0) goto L_0x0b37
            java.lang.String r2 = r12.e(r3, r14)
            int r5 = r3 + 2
            int r5 = r12.e(r5)
            k.e.a.c r6 = r1.L
            if (r6 != 0) goto L_0x0b1c
            k.e.a.c r6 = new k.e.a.c
            r6.<init>()
            r1.L = r6
        L_0x0b1c:
            int r6 = r1.K
            int r6 = r6 + r8
            r1.K = r6
            k.e.a.c r6 = r1.L
            if (r2 != 0) goto L_0x0b27
            r2 = 0
            goto L_0x0b2d
        L_0x0b27:
            k.e.a.x r10 = r1.f2396c
            int r2 = r10.c(r2)
        L_0x0b2d:
            r6.d(r2)
            r6.d(r5)
            int r3 = r3 + 4
            r2 = r4
            goto L_0x0b03
        L_0x0b37:
            if (r58 == 0) goto L_0x0b52
            k.e.a.c r2 = new k.e.a.c
            r2.<init>()
            r1.J = r2
            k.e.a.a r3 = new k.e.a.a
            k.e.a.x r4 = r1.f2396c
            r5 = 0
            r6 = 0
            r3.<init>(r4, r6, r2, r5)
            r15 = r58
            r12.a((k.e.a.a) r3, (int) r15, (java.lang.String) r5, (char[]) r14)
            r3.a()
            goto L_0x0b54
        L_0x0b52:
            r5 = 0
            r6 = 0
        L_0x0b54:
            r15 = r46
            if (r15 == 0) goto L_0x0b74
            int r2 = r12.e(r15)
            int r46 = r15 + 2
            r3 = r46
        L_0x0b60:
            int r4 = r2 + -1
            if (r2 <= 0) goto L_0x0b74
            java.lang.String r2 = r12.e(r3, r14)
            int r3 = r3 + 2
            k.e.a.a r2 = r0.a((java.lang.String) r2, (boolean) r8)
            int r3 = r12.a((k.e.a.a) r2, (int) r3, (boolean) r8, (char[]) r14)
            r2 = r4
            goto L_0x0b60
        L_0x0b74:
            r15 = r48
            if (r15 == 0) goto L_0x0b94
            int r2 = r12.e(r15)
            int r48 = r15 + 2
            r3 = r48
        L_0x0b80:
            int r4 = r2 + -1
            if (r2 <= 0) goto L_0x0b94
            java.lang.String r2 = r12.e(r3, r14)
            int r3 = r3 + 2
            k.e.a.a r2 = r0.a((java.lang.String) r2, (boolean) r6)
            int r3 = r12.a((k.e.a.a) r2, (int) r3, (boolean) r8, (char[]) r14)
            r2 = r4
            goto L_0x0b80
        L_0x0b94:
            r15 = r49
            if (r15 == 0) goto L_0x0bbc
            int r2 = r12.e(r15)
            int r49 = r15 + 2
            r3 = r49
        L_0x0ba0:
            int r4 = r2 + -1
            if (r2 <= 0) goto L_0x0bbc
            int r2 = r12.a((k.e.a.i) r7, (int) r3)
            java.lang.String r3 = r12.e(r2, r14)
            int r2 = r2 + 2
            int r10 = r7.f2356h
            k.e.a.z r11 = r7.f2357i
            k.e.a.a r3 = r0.b((int) r10, (k.e.a.z) r11, (java.lang.String) r3, (boolean) r8)
            int r3 = r12.a((k.e.a.a) r3, (int) r2, (boolean) r8, (char[]) r14)
            r2 = r4
            goto L_0x0ba0
        L_0x0bbc:
            r15 = r50
            if (r15 == 0) goto L_0x0be4
            int r2 = r12.e(r15)
            int r50 = r15 + 2
            r3 = r50
        L_0x0bc8:
            int r4 = r2 + -1
            if (r2 <= 0) goto L_0x0be4
            int r2 = r12.a((k.e.a.i) r7, (int) r3)
            java.lang.String r3 = r12.e(r2, r14)
            int r2 = r2 + 2
            int r10 = r7.f2356h
            k.e.a.z r11 = r7.f2357i
            k.e.a.a r3 = r0.b((int) r10, (k.e.a.z) r11, (java.lang.String) r3, (boolean) r6)
            int r3 = r12.a((k.e.a.a) r3, (int) r2, (boolean) r8, (char[]) r14)
            r2 = r4
            goto L_0x0bc8
        L_0x0be4:
            r15 = r51
            if (r15 == 0) goto L_0x0beb
            r12.a((k.e.a.s) r0, (k.e.a.i) r7, (int) r15, (boolean) r8)
        L_0x0beb:
            r15 = r52
            if (r15 == 0) goto L_0x0bf2
            r12.a((k.e.a.s) r0, (k.e.a.i) r7, (int) r15, (boolean) r6)
        L_0x0bf2:
            r13 = r56
        L_0x0bf4:
            if (r13 == 0) goto L_0x0c02
            k.e.a.b r2 = r13.f2333c
            r13.f2333c = r5
            k.e.a.b r3 = r1.M
            r13.f2333c = r3
            r1.M = r13
            r13 = r2
            goto L_0x0bf4
        L_0x0c02:
            r15 = r53
            if (r15 == 0) goto L_0x0c09
            r12.a((k.e.a.s) r0, (k.e.a.i) r7, (int) r15)
        L_0x0c09:
            r2 = 1
            r15 = 0
            r6 = r57
            r3 = r5
            r5 = r9
            r4 = r12
            r0 = r16
            r39 = r19
            r45 = r20
            r44 = r21
            r21 = r24
            r41 = r25
            r40 = r26
            goto L_0x088c
        L_0x0c20:
            byte[] r0 = r57.a()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.g.a(byte[], boolean):byte[]");
    }
}
