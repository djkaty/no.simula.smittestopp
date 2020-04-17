package k.e.a;

import com.microsoft.azure.sdk.iot.device.DeviceClientConfig;
import com.microsoft.azure.storage.analytics.LogRecordStreamReader;
import k.e.a.x;

public final class t extends s {
    public static final int[] c0 = {0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1, 0, 0, 1, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -1, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3, -4, -3, -4, -3, -3, -3, -3, -1, -2, 1, 1, 1, 2, 2, 2, 0, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, -1, -2, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -2, -1, -2, -1, -2, 0, 1, 0, 1, -1, -1, 0, 0, 1, 1, -1, 0, -1, 0, 0, 0, -3, -1, -1, -3, -3, -1, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2, -2, -2, 0, 1, 0, -1, -1, -1, -2, -1, -2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, -1, 0, 0};
    public final int A;
    public a B;
    public a C;
    public int D;
    public a[] E;
    public int F;
    public a[] G;
    public a H;
    public a I;
    public c J;
    public int K;
    public c L;
    public b M;
    public final int N;
    public q O;
    public q P;
    public q Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int[] V;
    public int[] W;
    public boolean X;
    public boolean Y;
    public int Z;
    public int a0;
    public int b0;

    /* renamed from: c  reason: collision with root package name */
    public final x f2396c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2397d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2398e;

    /* renamed from: f  reason: collision with root package name */
    public final String f2399f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2400g;

    /* renamed from: h  reason: collision with root package name */
    public final String f2401h;

    /* renamed from: i  reason: collision with root package name */
    public int f2402i;

    /* renamed from: j  reason: collision with root package name */
    public int f2403j;

    /* renamed from: k  reason: collision with root package name */
    public final c f2404k = new c();

    /* renamed from: l  reason: collision with root package name */
    public p f2405l;
    public p m;
    public int n;
    public c o;
    public int p;
    public c q;
    public int r;
    public c s;
    public int t;
    public c u;
    public a v;
    public a w;
    public b x;
    public final int y;
    public final int[] z;

    public t(x xVar, int i2, String str, String str2, String str3, String[] strArr, int i3) {
        super(458752);
        int i4;
        this.f2396c = xVar;
        this.f2397d = "<init>".equals(str) ? 262144 | i2 : i2;
        this.f2398e = xVar.c(str);
        this.f2399f = str;
        this.f2400g = xVar.c(str2);
        this.f2401h = str2;
        if (str3 == null) {
            i4 = 0;
        } else {
            i4 = xVar.c(str3);
        }
        this.A = i4;
        if (strArr == null || strArr.length <= 0) {
            this.y = 0;
            this.z = null;
        } else {
            int length = strArr.length;
            this.y = length;
            this.z = new int[length];
            for (int i5 = 0; i5 < this.y; i5++) {
                this.z[i5] = xVar.a(strArr[i5]).a;
            }
        }
        this.N = i3;
        if (i3 != 0) {
            int b = y.b(str2) >> 2;
            b = (i2 & 8) != 0 ? b - 1 : b;
            this.f2403j = b;
            this.T = b;
            q qVar = new q();
            this.O = qVar;
            a(qVar);
        }
    }

    public a a(String str, boolean z2) {
        if (z2) {
            a a = a.a(this.f2396c, str, this.B);
            this.B = a;
            return a;
        }
        a a2 = a.a(this.f2396c, str, this.C);
        this.C = a2;
        return a2;
    }

    public a b(int i2, z zVar, String str, boolean z2) {
        if (z2) {
            a a = a.a(this.f2396c, i2, zVar, str, this.H);
            this.H = a;
            return a;
        }
        a a2 = a.a(this.f2396c, i2, zVar, str, this.I);
        this.I = a2;
        return a2;
    }

    public void c(int i2, int i3) {
        String str;
        int i4 = this.N;
        if (i4 == 4) {
            p pVar = this.f2405l;
            while (true) {
                str = "java/lang/Throwable";
                if (pVar == null) {
                    break;
                }
                String str2 = pVar.f2384e;
                if (str2 != null) {
                    str = str2;
                }
                int d2 = 8388608 | this.f2396c.d(str);
                q a = pVar.f2382c.a();
                a.a = (short) (a.a | 2);
                q a2 = pVar.b.a();
                for (q a3 = pVar.a.a(); a3 != a2; a3 = a3.f2394k) {
                    a3.f2395l = new k(d2, a, a3.f2395l);
                }
                pVar = pVar.f2385f;
            }
            n nVar = this.O.f2393j;
            nVar.a(this.f2396c, this.f2397d, this.f2401h, this.f2403j);
            nVar.a(this);
            q qVar = this.O;
            qVar.m = q.n;
            int i5 = 0;
            while (qVar != q.n) {
                q qVar2 = qVar.m;
                qVar.m = null;
                qVar.a = (short) (qVar.a | 8);
                int length = qVar.f2393j.f2372c.length + qVar.f2391h;
                if (length > i5) {
                    i5 = length;
                }
                for (k kVar = qVar.f2395l; kVar != null; kVar = kVar.f2361c) {
                    q a4 = kVar.b.a();
                    if (qVar.f2393j.a(this.f2396c, a4.f2393j, kVar.a) && a4.m == null) {
                        a4.m = qVar2;
                        qVar2 = a4;
                    }
                }
                qVar = qVar2;
            }
            for (q qVar3 = this.O; qVar3 != null; qVar3 = qVar3.f2394k) {
                if ((qVar3.a & 10) == 10) {
                    qVar3.f2393j.a(this);
                }
                if ((qVar3.a & 8) == 0) {
                    q qVar4 = qVar3.f2394k;
                    int i6 = qVar3.f2387d;
                    int i7 = (qVar4 == null ? this.f2404k.b : qVar4.f2387d) - 1;
                    if (i7 >= i6) {
                        for (int i8 = i6; i8 < i7; i8++) {
                            this.f2404k.a[i8] = 0;
                        }
                        this.f2404k.a[i7] = -65;
                        a(i6, 0, 1);
                        this.W[3] = this.f2396c.d(str) | 8388608;
                        b();
                        this.f2405l = p.a(this.f2405l, qVar3, qVar4);
                        i5 = Math.max(i5, 1);
                    }
                }
            }
            this.f2402i = i5;
        } else if (i4 == 1) {
            for (p pVar2 = this.f2405l; pVar2 != null; pVar2 = pVar2.f2385f) {
                q qVar5 = pVar2.f2382c;
                q qVar6 = pVar2.b;
                for (q qVar7 = pVar2.a; qVar7 != qVar6; qVar7 = qVar7.f2394k) {
                    if ((qVar7.a & 16) == 0) {
                        qVar7.f2395l = new k(Integer.MAX_VALUE, qVar5, qVar7.f2395l);
                    } else {
                        k kVar2 = qVar7.f2395l.f2361c;
                        kVar2.f2361c = new k(Integer.MAX_VALUE, qVar5, kVar2.f2361c);
                    }
                }
            }
            if (this.X) {
                this.O.a(1);
                short s2 = 1;
                for (short s3 = 1; s3 <= s2; s3 = (short) (s3 + 1)) {
                    for (q qVar8 = this.O; qVar8 != null; qVar8 = qVar8.f2394k) {
                        if ((qVar8.a & 16) != 0 && qVar8.f2392i == s3) {
                            q qVar9 = qVar8.f2395l.f2361c.b;
                            if (qVar9.f2392i == 0) {
                                s2 = (short) (s2 + 1);
                                qVar9.a(s2);
                            }
                        }
                    }
                }
                for (q qVar10 = this.O; qVar10 != null; qVar10 = qVar10.f2394k) {
                    if ((qVar10.a & 16) != 0) {
                        q qVar11 = qVar10.f2395l.f2361c.b;
                        q qVar12 = q.n;
                        qVar11.m = qVar12;
                        while (qVar11 != q.n) {
                            q qVar13 = qVar11.m;
                            qVar11.m = qVar12;
                            if (!((qVar11.a & 64) == 0 || qVar11.f2392i == qVar10.f2392i)) {
                                qVar11.f2395l = new k(qVar11.f2390g, qVar10.f2395l.b, qVar11.f2395l);
                            }
                            qVar12 = qVar11;
                            qVar11 = qVar11.a(qVar13);
                        }
                        while (qVar12 != q.n) {
                            q qVar14 = qVar12.m;
                            qVar12.m = null;
                            qVar12 = qVar14;
                        }
                    }
                }
            }
            q qVar15 = this.O;
            qVar15.m = q.n;
            int i9 = this.f2402i;
            while (qVar15 != q.n) {
                q qVar16 = qVar15.m;
                short s4 = qVar15.f2389f;
                int i10 = qVar15.f2391h + s4;
                if (i10 > i9) {
                    i9 = i10;
                }
                k kVar3 = qVar15.f2395l;
                if ((qVar15.a & 16) != 0) {
                    kVar3 = kVar3.f2361c;
                }
                qVar15 = qVar16;
                while (kVar3 != null) {
                    q qVar17 = kVar3.b;
                    if (qVar17.m == null) {
                        int i11 = kVar3.a;
                        qVar17.f2389f = (short) (i11 == Integer.MAX_VALUE ? 1 : i11 + s4);
                        qVar17.m = qVar15;
                        qVar15 = qVar17;
                    }
                    kVar3 = kVar3.f2361c;
                }
            }
            this.f2402i = i9;
        } else if (i4 == 2) {
            this.f2402i = this.S;
        } else {
            this.f2402i = i2;
            this.f2403j = i3;
        }
    }

    public void d(int i2, int i3) {
        this.Z = this.f2404k.b;
        if (i3 < 4 && i2 != 169) {
            this.f2404k.b((i2 < 54 ? ((i2 - 21) << 2) + 26 : ((i2 - 54) << 2) + 59) + i3);
        } else if (i3 >= 256) {
            c cVar = this.f2404k;
            cVar.b(196);
            cVar.b(i2, i3);
        } else {
            this.f2404k.a(i2, i3);
        }
        q qVar = this.Q;
        if (qVar != null) {
            int i4 = this.N;
            if (i4 == 4 || i4 == 3) {
                this.Q.f2393j.a(i2, i3, (w) null, (x) null);
            } else if (i2 == 169) {
                qVar.a = (short) (qVar.a | 64);
                qVar.f2390g = (short) this.R;
                a();
            } else {
                int i5 = this.R + c0[i2];
                if (i5 > this.S) {
                    this.S = i5;
                }
                this.R = i5;
            }
        }
        if (this.N != 0) {
            int i6 = (i2 == 22 || i2 == 24 || i2 == 55 || i2 == 57) ? i3 + 2 : i3 + 1;
            if (i6 > this.f2403j) {
                this.f2403j = i6;
            }
        }
        if (i2 >= 54 && this.N == 4 && this.f2405l != null) {
            a(new q());
        }
    }

    public final void e(int i2, int i3) {
        while (i2 < i3) {
            x xVar = this.f2396c;
            int i4 = this.W[i2];
            c cVar = this.u;
            int i5 = (-67108864 & i4) >> 26;
            if (i5 == 0) {
                int i6 = i4 & 1048575;
                int i7 = i4 & 62914560;
                if (i7 == 4194304) {
                    cVar.b(i6);
                } else if (i7 == 8388608) {
                    cVar.b(7);
                    cVar.d(xVar.a(xVar.f2435l[i6].f2423e).a);
                } else if (i7 == 12582912) {
                    cVar.b(8);
                    cVar.d((int) xVar.f2435l[i6].f2424f);
                } else {
                    throw new AssertionError();
                }
            } else {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    int i8 = i5 - 1;
                    if (i5 <= 0) {
                        break;
                    }
                    sb.append('[');
                    i5 = i8;
                }
                if ((i4 & 62914560) == 8388608) {
                    sb.append('L');
                    sb.append(xVar.f2435l[i4 & 1048575].f2423e);
                    sb.append(LogRecordStreamReader.FIELD_DELIMITER);
                } else {
                    int i9 = i4 & 1048575;
                    if (i9 == 1) {
                        sb.append('I');
                    } else if (i9 == 2) {
                        sb.append('F');
                    } else if (i9 == 3) {
                        sb.append('D');
                    } else if (i9 != 4) {
                        switch (i9) {
                            case 9:
                                sb.append('Z');
                                break;
                            case 10:
                                sb.append('B');
                                break;
                            case 11:
                                sb.append('C');
                                break;
                            case 12:
                                sb.append('S');
                                break;
                            default:
                                throw new AssertionError();
                        }
                    } else {
                        sb.append('J');
                    }
                }
                cVar.b(7);
                cVar.d(xVar.a(sb.toString()).a);
            }
            i2++;
        }
    }

    public void a(int i2, int i3, Object[] objArr, int i4, Object[] objArr2) {
        int i5;
        int i6 = this.N;
        if (i6 != 4) {
            int i7 = 3;
            if (i6 == 3) {
                q qVar = this.Q;
                n nVar = qVar.f2393j;
                if (nVar == null) {
                    qVar.f2393j = new j(qVar);
                    this.Q.f2393j.a(this.f2396c, this.f2397d, this.f2401h, i3);
                    this.Q.f2393j.a(this);
                } else {
                    if (i2 == -1) {
                        x xVar = this.f2396c;
                        int i8 = 0;
                        for (int i9 = 0; i9 < i3; i9++) {
                            int i10 = i8 + 1;
                            nVar.b[i8] = n.a(xVar, objArr[i9]);
                            if (objArr[i9] == v.f2418e || objArr[i9] == v.f2417d) {
                                nVar.b[i10] = 4194304;
                                i8 = i10 + 1;
                            } else {
                                i8 = i10;
                            }
                        }
                        while (true) {
                            int[] iArr = nVar.b;
                            if (i8 >= iArr.length) {
                                break;
                            }
                            iArr[i8] = 4194304;
                            i8++;
                        }
                        int i11 = 0;
                        for (int i12 = 0; i12 < i4; i12++) {
                            if (objArr2[i12] == v.f2418e || objArr2[i12] == v.f2417d) {
                                i11++;
                            }
                        }
                        nVar.f2372c = new int[(i11 + i4)];
                        int i13 = 0;
                        for (int i14 = 0; i14 < i4; i14++) {
                            int i15 = i13 + 1;
                            nVar.f2372c[i13] = n.a(xVar, objArr2[i14]);
                            if (objArr2[i14] == v.f2418e || objArr2[i14] == v.f2417d) {
                                nVar.f2372c[i15] = 4194304;
                                i13 = i15 + 1;
                            } else {
                                i13 = i15;
                            }
                        }
                        nVar.f2376g = 0;
                        nVar.f2377h = 0;
                    }
                    this.Q.f2393j.a(this);
                }
            } else if (i2 == -1) {
                if (this.V == null) {
                    n nVar2 = new n(new q());
                    nVar2.a(this.f2396c, this.f2397d, this.f2401h, y.b(this.f2401h) >> 2);
                    nVar2.a(this);
                }
                this.T = i3;
                a(this.f2404k.b, i3, i4);
                int i16 = 0;
                while (i16 < i3) {
                    this.W[i7] = n.a(this.f2396c, objArr[i16]);
                    i16++;
                    i7++;
                }
                int i17 = 0;
                while (i17 < i4) {
                    this.W[i7] = n.a(this.f2396c, objArr2[i17]);
                    i17++;
                    i7++;
                }
                b();
            } else {
                if (this.u == null) {
                    this.u = new c();
                    i5 = this.f2404k.b;
                } else {
                    i5 = (this.f2404k.b - this.U) - 1;
                    if (i5 < 0) {
                        if (i2 != 3) {
                            throw new IllegalStateException();
                        }
                        return;
                    }
                }
                if (i2 == 0) {
                    this.T = i3;
                    c cVar = this.u;
                    cVar.b(255);
                    cVar.d(i5);
                    cVar.d(i3);
                    for (int i18 = 0; i18 < i3; i18++) {
                        b(objArr[i18]);
                    }
                    this.u.d(i4);
                    for (int i19 = 0; i19 < i4; i19++) {
                        b(objArr2[i19]);
                    }
                } else if (i2 == 1) {
                    this.T += i3;
                    c cVar2 = this.u;
                    cVar2.b(i3 + 251);
                    cVar2.d(i5);
                    for (int i20 = 0; i20 < i3; i20++) {
                        b(objArr[i20]);
                    }
                } else if (i2 == 2) {
                    this.T -= i3;
                    c cVar3 = this.u;
                    cVar3.b(251 - i3);
                    cVar3.d(i5);
                } else if (i2 != 3) {
                    if (i2 == 4) {
                        if (i5 < 64) {
                            this.u.b(i5 + 64);
                        } else {
                            c cVar4 = this.u;
                            cVar4.b(247);
                            cVar4.d(i5);
                        }
                        b(objArr2[0]);
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else if (i5 < 64) {
                    this.u.b(i5);
                } else {
                    c cVar5 = this.u;
                    cVar5.b(251);
                    cVar5.d(i5);
                }
                this.U = this.f2404k.b;
                this.t++;
            }
            if (this.N == 2) {
                this.R = i4;
                for (int i21 = 0; i21 < i4; i21++) {
                    if (objArr2[i21] == v.f2418e || objArr2[i21] == v.f2417d) {
                        this.R++;
                    }
                }
                int i22 = this.R;
                if (i22 > this.S) {
                    this.S = i22;
                }
            }
            this.f2402i = Math.max(this.f2402i, i4);
            this.f2403j = Math.max(this.f2403j, this.T);
        }
    }

    public void b(int i2, int i3) {
        c cVar = this.f2404k;
        this.Z = cVar.b;
        if (i2 == 17) {
            cVar.b(i2, i3);
        } else {
            cVar.a(i2, i3);
        }
        if (this.Q != null) {
            int i4 = this.N;
            if (i4 == 4 || i4 == 3) {
                this.Q.f2393j.a(i2, i3, (w) null, (x) null);
            } else if (i2 != 188) {
                int i5 = this.R + 1;
                if (i5 > this.S) {
                    this.S = i5;
                }
                this.R = i5;
            }
        }
    }

    public void b(int i2, q qVar) {
        if (this.o == null) {
            this.o = new c();
        }
        this.n++;
        this.o.d(qVar.f2387d);
        this.o.d(i2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0103  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b() {
        /*
            r17 = this;
            r0 = r17
            int[] r1 = r0.V
            if (r1 == 0) goto L_0x010e
            k.e.a.c r1 = r0.u
            if (r1 != 0) goto L_0x0011
            k.e.a.c r1 = new k.e.a.c
            r1.<init>()
            r0.u = r1
        L_0x0011:
            int[] r1 = r0.W
            r2 = 1
            r3 = r1[r2]
            r4 = 2
            r4 = r1[r4]
            k.e.a.x r5 = r0.f2396c
            int r5 = r5.f2426c
            r6 = 50
            r7 = 0
            r8 = 3
            if (r5 >= r6) goto L_0x003c
            k.e.a.c r5 = r0.u
            r1 = r1[r7]
            r5.d(r1)
            r5.d(r3)
            int r3 = r3 + r8
            r0.e(r8, r3)
            k.e.a.c r1 = r0.u
            r1.d(r4)
            int r4 = r4 + r3
            r0.e(r3, r4)
            goto L_0x0108
        L_0x003c:
            int r5 = r0.t
            if (r5 != 0) goto L_0x0043
            r1 = r1[r7]
            goto L_0x004b
        L_0x0043:
            r1 = r1[r7]
            int[] r5 = r0.V
            r5 = r5[r7]
            int r1 = r1 - r5
            int r1 = r1 - r2
        L_0x004b:
            int[] r5 = r0.V
            r5 = r5[r2]
            int r6 = r3 - r5
            r9 = 251(0xfb, float:3.52E-43)
            r10 = 64
            r11 = 247(0xf7, float:3.46E-43)
            r12 = 248(0xf8, float:3.48E-43)
            r13 = 252(0xfc, float:3.53E-43)
            r14 = 255(0xff, float:3.57E-43)
            if (r4 != 0) goto L_0x0070
            switch(r6) {
                case -3: goto L_0x006d;
                case -2: goto L_0x006d;
                case -1: goto L_0x006d;
                case 0: goto L_0x0066;
                case 1: goto L_0x0063;
                case 2: goto L_0x0063;
                case 3: goto L_0x0063;
                default: goto L_0x0062;
            }
        L_0x0062:
            goto L_0x007e
        L_0x0063:
            r15 = 252(0xfc, float:3.53E-43)
            goto L_0x0080
        L_0x0066:
            if (r1 >= r10) goto L_0x006a
            r15 = 0
            goto L_0x0080
        L_0x006a:
            r15 = 251(0xfb, float:3.52E-43)
            goto L_0x0080
        L_0x006d:
            r15 = 248(0xf8, float:3.48E-43)
            goto L_0x0080
        L_0x0070:
            if (r6 != 0) goto L_0x007e
            if (r4 != r2) goto L_0x007e
            r15 = 63
            if (r1 >= r15) goto L_0x007b
            r15 = 64
            goto L_0x0080
        L_0x007b:
            r15 = 247(0xf7, float:3.46E-43)
            goto L_0x0080
        L_0x007e:
            r15 = 255(0xff, float:3.57E-43)
        L_0x0080:
            if (r15 == r14) goto L_0x009c
            r16 = 3
        L_0x0084:
            if (r7 >= r5) goto L_0x009c
            if (r7 >= r3) goto L_0x009c
            int[] r2 = r0.W
            r2 = r2[r16]
            int[] r8 = r0.V
            r8 = r8[r16]
            if (r2 == r8) goto L_0x0095
            r15 = 255(0xff, float:3.57E-43)
            goto L_0x009c
        L_0x0095:
            int r16 = r16 + 1
            int r7 = r7 + 1
            r2 = 1
            r8 = 3
            goto L_0x0084
        L_0x009c:
            if (r15 == 0) goto L_0x0103
            if (r15 == r10) goto L_0x00f5
            if (r15 == r11) goto L_0x00e5
            if (r15 == r12) goto L_0x00db
            if (r15 == r9) goto L_0x00d2
            if (r15 == r13) goto L_0x00c2
            k.e.a.c r2 = r0.u
            r2.b(r14)
            r2.d(r1)
            r2.d(r3)
            r2 = 3
            int r3 = r3 + r2
            r0.e(r2, r3)
            k.e.a.c r1 = r0.u
            r1.d(r4)
            int r4 = r4 + r3
            r0.e(r3, r4)
            goto L_0x0108
        L_0x00c2:
            r2 = 3
            k.e.a.c r4 = r0.u
            int r6 = r6 + r9
            r4.b(r6)
            r4.d(r1)
            int r5 = r5 + r2
            int r3 = r3 + r2
            r0.e(r5, r3)
            goto L_0x0108
        L_0x00d2:
            k.e.a.c r2 = r0.u
            r2.b(r9)
            r2.d(r1)
            goto L_0x0108
        L_0x00db:
            k.e.a.c r2 = r0.u
            int r6 = r6 + r9
            r2.b(r6)
            r2.d(r1)
            goto L_0x0108
        L_0x00e5:
            k.e.a.c r2 = r0.u
            r2.b(r11)
            r2.d(r1)
            int r1 = r3 + 3
            int r3 = r3 + 4
            r0.e(r1, r3)
            goto L_0x0108
        L_0x00f5:
            k.e.a.c r2 = r0.u
            int r1 = r1 + r10
            r2.b(r1)
            int r1 = r3 + 3
            int r3 = r3 + 4
            r0.e(r1, r3)
            goto L_0x0108
        L_0x0103:
            k.e.a.c r2 = r0.u
            r2.b(r1)
        L_0x0108:
            int r1 = r0.t
            r2 = 1
            int r1 = r1 + r2
            r0.t = r1
        L_0x010e:
            int[] r1 = r0.W
            r0.V = r1
            r1 = 0
            r0.W = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.t.b():void");
    }

    public final void b(Object obj) {
        if (obj instanceof Integer) {
            this.u.b(((Integer) obj).intValue());
        } else if (obj instanceof String) {
            c cVar = this.u;
            cVar.b(7);
            cVar.d(this.f2396c.a((String) obj).a);
        } else {
            c cVar2 = this.u;
            cVar2.b(8);
            cVar2.d(((q) obj).f2387d);
        }
    }

    public void a(int i2) {
        c cVar = this.f2404k;
        this.Z = cVar.b;
        cVar.b(i2);
        if (this.Q != null) {
            int i3 = this.N;
            if (i3 == 4 || i3 == 3) {
                this.Q.f2393j.a(i2, 0, (w) null, (x) null);
            } else {
                int i4 = this.R + c0[i2];
                if (i4 > this.S) {
                    this.S = i4;
                }
                this.R = i4;
            }
            if ((i2 >= 172 && i2 <= 177) || i2 == 191) {
                a();
            }
        }
    }

    public void a(int i2, String str) {
        this.Z = this.f2404k.b;
        w a = this.f2396c.a(7, str);
        this.f2404k.b(i2, a.a);
        if (this.Q != null) {
            int i3 = this.N;
            if (i3 == 4 || i3 == 3) {
                this.Q.f2393j.a(i2, this.Z, a, this.f2396c);
            } else if (i2 == 187) {
                int i4 = this.R + 1;
                if (i4 > this.S) {
                    this.S = i4;
                }
                this.R = i4;
            }
        }
    }

    public void a(int i2, String str, String str2, String str3) {
        int i3;
        int i4;
        this.Z = this.f2404k.b;
        x.a a = this.f2396c.a(9, str, str2, str3);
        this.f2404k.b(i2, a.a);
        if (this.Q != null) {
            int i5 = this.N;
            int i6 = 0;
            if (i5 == 4 || i5 == 3) {
                this.Q.f2393j.a(i2, 0, (w) a, this.f2396c);
                return;
            }
            char charAt = str3.charAt(0);
            int i7 = -2;
            int i8 = 1;
            switch (i2) {
                case 178:
                    int i9 = this.R;
                    if (charAt == 'D' || charAt == 'J') {
                        i8 = 2;
                    }
                    i3 = i9 + i8;
                    break;
                case 179:
                    i4 = this.R;
                    if (!(charAt == 'D' || charAt == 'J')) {
                        i7 = -1;
                        break;
                    }
                case DeviceClientConfig.DEFAULT_MESSAGE_LOCK_TIMEOUT_SECS:
                    int i10 = this.R;
                    if (charAt == 'D' || charAt == 'J') {
                        i6 = 1;
                    }
                    i3 = i10 + i6;
                    break;
                default:
                    i4 = this.R;
                    if (charAt == 'D' || charAt == 'J') {
                        i7 = -3;
                        break;
                    }
            }
            i3 = i4 + i7;
            if (i3 > this.S) {
                this.S = i3;
            }
            this.R = i3;
        }
    }

    public final void c(int i2, q qVar) {
        q qVar2 = this.Q;
        qVar2.f2395l = new k(i2, qVar, qVar2.f2395l);
    }

    public void a(int i2, String str, String str2, String str3, boolean z2) {
        int i3;
        this.Z = this.f2404k.b;
        x.a a = this.f2396c.a(z2 ? 11 : 10, str, str2, str3);
        if (i2 == 185) {
            c cVar = this.f2404k;
            cVar.b(185, a.a);
            cVar.a(a.a() >> 2, 0);
        } else {
            this.f2404k.b(i2, a.a);
        }
        if (this.Q != null) {
            int i4 = this.N;
            if (i4 == 4 || i4 == 3) {
                this.Q.f2393j.a(i2, 0, (w) a, this.f2396c);
                return;
            }
            int a2 = a.a();
            int i5 = (a2 & 3) - (a2 >> 2);
            if (i2 == 184) {
                i3 = this.R + i5 + 1;
            } else {
                i3 = this.R + i5;
            }
            if (i3 > this.S) {
                this.S = i3;
            }
            this.R = i3;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x007e  */
    /* JADX WARNING: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r11, k.e.a.q r12) {
        /*
            r10 = this;
            k.e.a.c r0 = r10.f2404k
            int r0 = r0.b
            r10.Z = r0
            r0 = 200(0xc8, float:2.8E-43)
            if (r11 < r0) goto L_0x000d
            int r1 = r11 + -33
            goto L_0x000e
        L_0x000d:
            r1 = r11
        L_0x000e:
            short r2 = r12.a
            r3 = 4
            r2 = r2 & r3
            r4 = 168(0xa8, float:2.35E-43)
            r5 = 167(0xa7, float:2.34E-43)
            r6 = 0
            r7 = 1
            if (r2 == 0) goto L_0x005c
            int r2 = r12.f2387d
            k.e.a.c r8 = r10.f2404k
            int r9 = r8.b
            int r2 = r2 - r9
            r9 = -32768(0xffffffffffff8000, float:NaN)
            if (r2 >= r9) goto L_0x005c
            if (r1 != r5) goto L_0x002b
            r8.b(r0)
            goto L_0x0032
        L_0x002b:
            if (r1 != r4) goto L_0x0034
            r11 = 201(0xc9, float:2.82E-43)
            r8.b(r11)
        L_0x0032:
            r11 = 0
            goto L_0x0053
        L_0x0034:
            r11 = 198(0xc6, float:2.77E-43)
            if (r1 < r11) goto L_0x003b
            r11 = r1 ^ 1
            goto L_0x003f
        L_0x003b:
            int r11 = r1 + 1
            r11 = r11 ^ r7
            int r11 = r11 - r7
        L_0x003f:
            r8.b(r11)
            k.e.a.c r11 = r10.f2404k
            r0 = 8
            r11.d(r0)
            k.e.a.c r11 = r10.f2404k
            r0 = 220(0xdc, float:3.08E-43)
            r11.b(r0)
            r10.Y = r7
            r11 = 1
        L_0x0053:
            k.e.a.c r0 = r10.f2404k
            int r2 = r0.b
            int r2 = r2 - r7
            r12.a((k.e.a.c) r0, (int) r2, (boolean) r7)
            goto L_0x007a
        L_0x005c:
            if (r1 == r11) goto L_0x006c
            k.e.a.c r0 = r10.f2404k
            r0.b(r11)
            k.e.a.c r11 = r10.f2404k
            int r0 = r11.b
            int r0 = r0 - r7
            r12.a((k.e.a.c) r11, (int) r0, (boolean) r7)
            goto L_0x0079
        L_0x006c:
            k.e.a.c r11 = r10.f2404k
            r11.b(r1)
            k.e.a.c r11 = r10.f2404k
            int r0 = r11.b
            int r0 = r0 - r7
            r12.a((k.e.a.c) r11, (int) r0, (boolean) r6)
        L_0x0079:
            r11 = 0
        L_0x007a:
            k.e.a.q r0 = r10.Q
            if (r0 == 0) goto L_0x00f5
            int r2 = r10.N
            r8 = 2
            r9 = 0
            if (r2 != r3) goto L_0x009e
            k.e.a.n r0 = r0.f2393j
            r0.a((int) r1, (int) r6, (k.e.a.w) r9, (k.e.a.x) r9)
            k.e.a.q r0 = r12.a()
            short r2 = r0.a
            r2 = r2 | r8
            short r2 = (short) r2
            r0.a = r2
            r10.c((int) r6, (k.e.a.q) r12)
            if (r1 == r5) goto L_0x00e3
            k.e.a.q r9 = new k.e.a.q
            r9.<init>()
            goto L_0x00e3
        L_0x009e:
            r3 = 3
            if (r2 != r3) goto L_0x00a7
            k.e.a.n r12 = r0.f2393j
            r12.a((int) r1, (int) r6, (k.e.a.w) r9, (k.e.a.x) r9)
            goto L_0x00e3
        L_0x00a7:
            if (r2 != r8) goto L_0x00b3
            int r12 = r10.R
            int[] r0 = c0
            r0 = r0[r1]
            int r12 = r12 + r0
            r10.R = r12
            goto L_0x00e3
        L_0x00b3:
            if (r1 != r4) goto L_0x00d7
            short r0 = r12.a
            r2 = r0 & 32
            if (r2 != 0) goto L_0x00c2
            r0 = r0 | 32
            short r0 = (short) r0
            r12.a = r0
            r10.X = r7
        L_0x00c2:
            k.e.a.q r0 = r10.Q
            short r2 = r0.a
            r2 = r2 | 16
            short r2 = (short) r2
            r0.a = r2
            int r0 = r10.R
            int r0 = r0 + r7
            r10.c((int) r0, (k.e.a.q) r12)
            k.e.a.q r9 = new k.e.a.q
            r9.<init>()
            goto L_0x00e3
        L_0x00d7:
            int r0 = r10.R
            int[] r2 = c0
            r2 = r2[r1]
            int r0 = r0 + r2
            r10.R = r0
            r10.c((int) r0, (k.e.a.q) r12)
        L_0x00e3:
            if (r9 == 0) goto L_0x00f0
            if (r11 == 0) goto L_0x00ed
            short r11 = r9.a
            r11 = r11 | r8
            short r11 = (short) r11
            r9.a = r11
        L_0x00ed:
            r10.a((k.e.a.q) r9)
        L_0x00f0:
            if (r1 != r5) goto L_0x00f5
            r10.a()
        L_0x00f5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.t.a(int, k.e.a.q):void");
    }

    public void a(q qVar) {
        boolean z2 = this.Y;
        c cVar = this.f2404k;
        this.Y = z2 | qVar.a(cVar.a, cVar.b);
        short s2 = qVar.a;
        if ((s2 & 1) == 0) {
            int i2 = this.N;
            if (i2 == 4) {
                q qVar2 = this.Q;
                if (qVar2 != null) {
                    if (qVar.f2387d == qVar2.f2387d) {
                        qVar2.a = (short) ((s2 & 2) | qVar2.a);
                        qVar.f2393j = qVar2.f2393j;
                        return;
                    }
                    c(0, qVar);
                }
                q qVar3 = this.P;
                if (qVar3 != null) {
                    if (qVar.f2387d == qVar3.f2387d) {
                        qVar3.a = (short) (qVar3.a | (qVar.a & 2));
                        qVar.f2393j = qVar3.f2393j;
                        this.Q = qVar3;
                        return;
                    }
                    qVar3.f2394k = qVar;
                }
                this.P = qVar;
                this.Q = qVar;
                qVar.f2393j = new n(qVar);
            } else if (i2 == 3) {
                q qVar4 = this.Q;
                if (qVar4 == null) {
                    this.Q = qVar;
                } else {
                    qVar4.f2393j.a = qVar;
                }
            } else if (i2 == 1) {
                q qVar5 = this.Q;
                if (qVar5 != null) {
                    qVar5.f2391h = (short) this.S;
                    c(this.R, qVar);
                }
                this.Q = qVar;
                this.R = 0;
                this.S = 0;
                q qVar6 = this.P;
                if (qVar6 != null) {
                    qVar6.f2394k = qVar;
                }
                this.P = qVar;
            } else if (i2 == 2 && this.Q == null) {
                this.Q = qVar;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001c, code lost:
        r1 = r8.f2423e.charAt(0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.lang.Object r8) {
        /*
            r7 = this;
            k.e.a.c r0 = r7.f2404k
            int r0 = r0.b
            r7.Z = r0
            k.e.a.x r0 = r7.f2396c
            k.e.a.w r8 = r0.a((java.lang.Object) r8)
            int r0 = r8.a
            int r1 = r8.b
            r2 = 1
            r3 = 0
            r4 = 5
            if (r1 == r4) goto L_0x002d
            r4 = 6
            if (r1 == r4) goto L_0x002d
            r4 = 17
            if (r1 != r4) goto L_0x002b
            java.lang.String r1 = r8.f2423e
            char r1 = r1.charAt(r3)
            r4 = 74
            if (r1 == r4) goto L_0x002d
            r4 = 68
            if (r1 != r4) goto L_0x002b
            goto L_0x002d
        L_0x002b:
            r1 = 0
            goto L_0x002e
        L_0x002d:
            r1 = 1
        L_0x002e:
            r4 = 18
            if (r1 == 0) goto L_0x003a
            k.e.a.c r5 = r7.f2404k
            r6 = 20
            r5.b(r6, r0)
            goto L_0x004b
        L_0x003a:
            r5 = 256(0x100, float:3.59E-43)
            if (r0 < r5) goto L_0x0046
            k.e.a.c r5 = r7.f2404k
            r6 = 19
            r5.b(r6, r0)
            goto L_0x004b
        L_0x0046:
            k.e.a.c r5 = r7.f2404k
            r5.a(r4, r0)
        L_0x004b:
            k.e.a.q r0 = r7.Q
            if (r0 == 0) goto L_0x0070
            int r0 = r7.N
            r5 = 4
            if (r0 == r5) goto L_0x0067
            r5 = 3
            if (r0 != r5) goto L_0x0058
            goto L_0x0067
        L_0x0058:
            int r8 = r7.R
            if (r1 == 0) goto L_0x005d
            r2 = 2
        L_0x005d:
            int r8 = r8 + r2
            int r0 = r7.S
            if (r8 <= r0) goto L_0x0064
            r7.S = r8
        L_0x0064:
            r7.R = r8
            goto L_0x0070
        L_0x0067:
            k.e.a.q r0 = r7.Q
            k.e.a.n r0 = r0.f2393j
            k.e.a.x r1 = r7.f2396c
            r0.a((int) r4, (int) r3, (k.e.a.w) r8, (k.e.a.x) r1)
        L_0x0070:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k.e.a.t.a(java.lang.Object):void");
    }

    public void a(int i2, int i3) {
        int i4;
        int i5;
        c cVar = this.f2404k;
        this.Z = cVar.b;
        if (i2 > 255 || i3 > 127 || i3 < -128) {
            c cVar2 = this.f2404k;
            cVar2.b(196);
            cVar2.b(132, i2);
            cVar2.d(i3);
        } else {
            cVar.b(132);
            cVar.a(i2, i3);
        }
        if (this.Q != null && ((i5 = this.N) == 4 || i5 == 3)) {
            this.Q.f2393j.a(132, i2, (w) null, (x) null);
        }
        if (this.N != 0 && (i4 = i2 + 1) > this.f2403j) {
            this.f2403j = i4;
        }
    }

    public void a(int i2, int i3, q qVar, q... qVarArr) {
        c cVar = this.f2404k;
        this.Z = cVar.b;
        cVar.b(170);
        cVar.a((byte[]) null, 0, (4 - (this.f2404k.b % 4)) % 4);
        qVar.a(this.f2404k, this.Z, true);
        c cVar2 = this.f2404k;
        cVar2.c(i2);
        cVar2.c(i3);
        for (q a : qVarArr) {
            a.a(this.f2404k, this.Z, true);
        }
        a(qVar, qVarArr);
    }

    public final void a(q qVar, q[] qVarArr) {
        q qVar2 = this.Q;
        if (qVar2 != null) {
            int i2 = this.N;
            if (i2 == 4) {
                qVar2.f2393j.a(171, 0, (w) null, (x) null);
                c(0, qVar);
                q a = qVar.a();
                a.a = (short) (a.a | 2);
                for (q qVar3 : qVarArr) {
                    c(0, qVar3);
                    q a2 = qVar3.a();
                    a2.a = (short) (a2.a | 2);
                }
            } else if (i2 == 1) {
                int i3 = this.R - 1;
                this.R = i3;
                c(i3, qVar);
                for (q c2 : qVarArr) {
                    c(this.R, c2);
                }
            }
            a();
        }
    }

    public a a(int i2, z zVar, String str, boolean z2) {
        if (z2) {
            a a = a.a(this.f2396c, (i2 & -16776961) | (this.Z << 8), zVar, str, this.v);
            this.v = a;
            return a;
        }
        a a2 = a.a(this.f2396c, (i2 & -16776961) | (this.Z << 8), zVar, str, this.w);
        this.w = a2;
        return a2;
    }

    public void a(String str, String str2, String str3, q qVar, q qVar2, int i2) {
        int i3 = 1;
        if (str3 != null) {
            if (this.s == null) {
                this.s = new c();
            }
            this.r++;
            c cVar = this.s;
            cVar.d(qVar.f2387d);
            cVar.d(qVar2.f2387d - qVar.f2387d);
            cVar.d(this.f2396c.c(str));
            cVar.d(this.f2396c.c(str3));
            cVar.d(i2);
        }
        if (this.q == null) {
            this.q = new c();
        }
        this.p++;
        c cVar2 = this.q;
        cVar2.d(qVar.f2387d);
        cVar2.d(qVar2.f2387d - qVar.f2387d);
        cVar2.d(this.f2396c.c(str));
        cVar2.d(this.f2396c.c(str2));
        cVar2.d(i2);
        if (this.N != 0) {
            char charAt = str2.charAt(0);
            if (charAt == 'J' || charAt == 'D') {
                i3 = 2;
            }
            int i4 = i2 + i3;
            if (i4 > this.f2403j) {
                this.f2403j = i4;
            }
        }
    }

    public a a(int i2, z zVar, q[] qVarArr, q[] qVarArr2, int[] iArr, String str, boolean z2) {
        c cVar = new c();
        cVar.b(i2 >>> 24);
        cVar.d(qVarArr.length);
        for (int i3 = 0; i3 < qVarArr.length; i3++) {
            cVar.d(qVarArr[i3].f2387d);
            cVar.d(qVarArr2[i3].f2387d - qVarArr[i3].f2387d);
            cVar.d(iArr[i3]);
        }
        z.a(zVar, cVar);
        cVar.d(this.f2396c.c(str));
        cVar.d(0);
        if (z2) {
            a aVar = new a(this.f2396c, true, cVar, this.v);
            this.v = aVar;
            return aVar;
        }
        a aVar2 = new a(this.f2396c, true, cVar, this.w);
        this.w = aVar2;
        return aVar2;
    }

    public final void a() {
        int i2 = this.N;
        if (i2 == 4) {
            q qVar = new q();
            qVar.f2393j = new n(qVar);
            c cVar = this.f2404k;
            qVar.a(cVar.a, cVar.b);
            this.P.f2394k = qVar;
            this.P = qVar;
            this.Q = null;
        } else if (i2 == 1) {
            this.Q.f2391h = (short) this.S;
            this.Q = null;
        }
    }

    public int a(int i2, int i3, int i4) {
        int i5 = i3 + 3 + i4;
        int[] iArr = this.W;
        if (iArr == null || iArr.length < i5) {
            this.W = new int[i5];
        }
        int[] iArr2 = this.W;
        iArr2[0] = i2;
        iArr2[1] = i3;
        iArr2[2] = i4;
        return 3;
    }
}
