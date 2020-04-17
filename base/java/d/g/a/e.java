package d.g.a;

import d.g.a.g;
import d.g.a.h.c;
import java.util.Arrays;
import java.util.HashMap;

public class e {
    public static int p = 1000;
    public int a;
    public HashMap<String, g> b;

    /* renamed from: c  reason: collision with root package name */
    public a f447c;

    /* renamed from: d  reason: collision with root package name */
    public int f448d;

    /* renamed from: e  reason: collision with root package name */
    public int f449e;

    /* renamed from: f  reason: collision with root package name */
    public b[] f450f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f451g;

    /* renamed from: h  reason: collision with root package name */
    public boolean[] f452h;

    /* renamed from: i  reason: collision with root package name */
    public int f453i;

    /* renamed from: j  reason: collision with root package name */
    public int f454j;

    /* renamed from: k  reason: collision with root package name */
    public int f455k;

    /* renamed from: l  reason: collision with root package name */
    public final c f456l;
    public g[] m;
    public int n;
    public final a o;

    public interface a {
        void a(g gVar);
    }

    public e() {
        this.a = 0;
        this.b = null;
        this.f448d = 32;
        this.f449e = 32;
        this.f450f = null;
        this.f451g = false;
        this.f452h = new boolean[32];
        this.f453i = 1;
        this.f454j = 0;
        this.f455k = 32;
        this.m = new g[p];
        this.n = 0;
        this.f450f = new b[32];
        e();
        c cVar = new c();
        this.f456l = cVar;
        this.f447c = new d(cVar);
        this.o = new b(this.f456l);
    }

    public g a(Object obj) {
        g gVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f453i + 1 >= this.f449e) {
            d();
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            gVar = cVar.f482i;
            if (gVar == null) {
                cVar.d();
                gVar = cVar.f482i;
            }
            int i2 = gVar.b;
            if (i2 == -1 || i2 > this.a || this.f456l.f446c[i2] == null) {
                if (gVar.b != -1) {
                    gVar.a();
                }
                int i3 = this.a + 1;
                this.a = i3;
                this.f453i++;
                gVar.b = i3;
                gVar.f462g = g.a.UNRESTRICTED;
                this.f456l.f446c[i3] = gVar;
            }
        }
        return gVar;
    }

    public b b() {
        b a2 = this.f456l.a.a();
        if (a2 == null) {
            a2 = new b(this.f456l);
        } else {
            a2.a = null;
            a2.f444d.a();
            a2.b = 0.0f;
            a2.f445e = false;
        }
        g.f457k++;
        return a2;
    }

    public g c() {
        if (this.f453i + 1 >= this.f449e) {
            d();
        }
        g a2 = a(g.a.SLACK, (String) null);
        int i2 = this.a + 1;
        this.a = i2;
        this.f453i++;
        a2.b = i2;
        this.f456l.f446c[i2] = a2;
        return a2;
    }

    public final void d() {
        int i2 = this.f448d * 2;
        this.f448d = i2;
        this.f450f = (b[]) Arrays.copyOf(this.f450f, i2);
        c cVar = this.f456l;
        cVar.f446c = (g[]) Arrays.copyOf(cVar.f446c, this.f448d);
        int i3 = this.f448d;
        this.f452h = new boolean[i3];
        this.f449e = i3;
        this.f455k = i3;
    }

    public final void e() {
        int i2 = 0;
        while (true) {
            b[] bVarArr = this.f450f;
            if (i2 < bVarArr.length) {
                b bVar = bVarArr[i2];
                if (bVar != null) {
                    this.f456l.a.a(bVar);
                }
                this.f450f[i2] = null;
                i2++;
            } else {
                return;
            }
        }
    }

    public void f() {
        c cVar;
        int i2 = 0;
        while (true) {
            cVar = this.f456l;
            g[] gVarArr = cVar.f446c;
            if (i2 >= gVarArr.length) {
                break;
            }
            g gVar = gVarArr[i2];
            if (gVar != null) {
                gVar.a();
            }
            i2++;
        }
        f<g> fVar = cVar.b;
        g[] gVarArr2 = this.m;
        int i3 = this.n;
        if (fVar != null) {
            if (i3 > gVarArr2.length) {
                i3 = gVarArr2.length;
            }
            for (int i4 = 0; i4 < i3; i4++) {
                g gVar2 = gVarArr2[i4];
                int i5 = fVar.b;
                Object[] objArr = fVar.a;
                if (i5 < objArr.length) {
                    objArr[i5] = gVar2;
                    fVar.b = i5 + 1;
                }
            }
            this.n = 0;
            Arrays.fill(this.f456l.f446c, (Object) null);
            HashMap<String, g> hashMap = this.b;
            if (hashMap != null) {
                hashMap.clear();
            }
            this.a = 0;
            b bVar = (b) this.f447c;
            bVar.f444d.a();
            bVar.a = null;
            bVar.b = 0.0f;
            this.f453i = 1;
            for (int i6 = 0; i6 < this.f454j; i6++) {
                this.f450f[i6].f443c = false;
            }
            e();
            this.f454j = 0;
            return;
        }
        throw null;
    }

    public int b(Object obj) {
        g gVar = ((c) obj).f482i;
        if (gVar != null) {
            return (int) (gVar.f460e + 0.5f);
        }
        return 0;
    }

    public final void c(b bVar) {
        if (this.f454j > 0) {
            a aVar = bVar.f444d;
            b[] bVarArr = this.f450f;
            int i2 = aVar.f440i;
            loop0:
            while (true) {
                int i3 = 0;
                int i4 = 0;
                while (i2 != -1 && i4 < aVar.a) {
                    g gVar = aVar.f434c.f446c[aVar.f437f[i2]];
                    if (gVar.f458c != -1) {
                        float f2 = aVar.f439h[i2];
                        aVar.a(gVar, true);
                        b bVar2 = bVarArr[gVar.f458c];
                        if (!bVar2.f445e) {
                            a aVar2 = bVar2.f444d;
                            int i5 = aVar2.f440i;
                            while (i5 != -1 && i3 < aVar2.a) {
                                aVar.a(aVar.f434c.f446c[aVar2.f437f[i5]], aVar2.f439h[i5] * f2, true);
                                i5 = aVar2.f438g[i5];
                                i3++;
                            }
                        }
                        bVar.b = (bVar2.b * f2) + bVar.b;
                        bVar2.a.b(bVar);
                        i2 = aVar.f440i;
                    } else {
                        i2 = aVar.f438g[i2];
                        i4++;
                    }
                }
            }
            if (bVar.f444d.a == 0) {
                bVar.f445e = true;
            }
        }
    }

    public final void b(b bVar) {
        b[] bVarArr = this.f450f;
        int i2 = this.f454j;
        if (bVarArr[i2] != null) {
            this.f456l.a.a(bVarArr[i2]);
        }
        b[] bVarArr2 = this.f450f;
        int i3 = this.f454j;
        bVarArr2[i3] = bVar;
        g gVar = bVar.a;
        gVar.f458c = i3;
        this.f454j = i3 + 1;
        gVar.c(bVar);
    }

    public g a(int i2, String str) {
        if (this.f453i + 1 >= this.f449e) {
            d();
        }
        g a2 = a(g.a.ERROR, str);
        int i3 = this.a + 1;
        this.a = i3;
        this.f453i++;
        a2.b = i3;
        a2.f459d = i2;
        this.f456l.f446c[i3] = a2;
        this.f447c.a(a2);
        return a2;
    }

    public final int b(a aVar) {
        boolean z;
        for (int i2 = 0; i2 < this.f453i; i2++) {
            this.f452h[i2] = false;
        }
        boolean z2 = false;
        int i3 = 0;
        while (!z2) {
            i3++;
            if (i3 >= this.f453i * 2) {
                return i3;
            }
            b bVar = (b) aVar;
            g gVar = bVar.a;
            if (gVar != null) {
                this.f452h[gVar.b] = true;
            }
            g a2 = bVar.f444d.a(this.f452h, (g) null);
            if (a2 != null) {
                boolean[] zArr = this.f452h;
                int i4 = a2.b;
                if (zArr[i4]) {
                    return i3;
                }
                zArr[i4] = true;
            }
            if (a2 != null) {
                float f2 = Float.MAX_VALUE;
                int i5 = -1;
                for (int i6 = 0; i6 < this.f454j; i6++) {
                    b bVar2 = this.f450f[i6];
                    if (bVar2.a.f462g != g.a.UNRESTRICTED && !bVar2.f445e) {
                        a aVar2 = bVar2.f444d;
                        int i7 = aVar2.f440i;
                        if (i7 != -1) {
                            int i8 = 0;
                            while (true) {
                                if (i7 == -1 || i8 >= aVar2.a) {
                                    break;
                                } else if (aVar2.f437f[i7] == a2.b) {
                                    z = true;
                                    break;
                                } else {
                                    i7 = aVar2.f438g[i7];
                                    i8++;
                                }
                            }
                        }
                        z = false;
                        if (z) {
                            float a3 = bVar2.f444d.a(a2);
                            if (a3 < 0.0f) {
                                float f3 = (-bVar2.b) / a3;
                                if (f3 < f2) {
                                    i5 = i6;
                                    f2 = f3;
                                }
                            }
                        }
                    }
                }
                if (i5 > -1) {
                    b bVar3 = this.f450f[i5];
                    bVar3.a.f458c = -1;
                    bVar3.b(a2);
                    g gVar2 = bVar3.a;
                    gVar2.f458c = i5;
                    gVar2.c(bVar3);
                }
            }
            z2 = true;
        }
        return i3;
    }

    public final g a(g.a aVar, String str) {
        g a2 = this.f456l.b.a();
        if (a2 == null) {
            a2 = new g(aVar);
            a2.f462g = aVar;
        } else {
            a2.a();
            a2.f462g = aVar;
        }
        int i2 = this.n;
        int i3 = p;
        if (i2 >= i3) {
            int i4 = i3 * 2;
            p = i4;
            this.m = (g[]) Arrays.copyOf(this.m, i4);
        }
        g[] gVarArr = this.m;
        int i5 = this.n;
        this.n = i5 + 1;
        gVarArr[i5] = a2;
        return a2;
    }

    public void c(g gVar, g gVar2, int i2, int i3) {
        b b2 = b();
        g c2 = c();
        c2.f459d = 0;
        b2.b(gVar, gVar2, c2, i2);
        if (i3 != 6) {
            b2.f444d.a(a(i3, (String) null), (float) ((int) (b2.f444d.a(c2) * -1.0f)));
        }
        a(b2);
    }

    public void a(a aVar) {
        float f2;
        boolean z;
        c((b) aVar);
        int i2 = 0;
        while (true) {
            f2 = 0.0f;
            if (i2 >= this.f454j) {
                z = false;
                break;
            }
            b[] bVarArr = this.f450f;
            if (bVarArr[i2].a.f462g != g.a.UNRESTRICTED && bVarArr[i2].b < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            boolean z2 = false;
            int i3 = 0;
            while (!z2) {
                i3++;
                float f3 = Float.MAX_VALUE;
                int i4 = 0;
                int i5 = -1;
                int i6 = -1;
                int i7 = 0;
                while (i4 < this.f454j) {
                    b bVar = this.f450f[i4];
                    if (bVar.a.f462g != g.a.UNRESTRICTED && !bVar.f445e && bVar.b < f2) {
                        int i8 = 1;
                        while (i8 < this.f453i) {
                            g gVar = this.f456l.f446c[i8];
                            float a2 = bVar.f444d.a(gVar);
                            if (a2 > f2) {
                                for (int i9 = 0; i9 < 7; i9++) {
                                    float f4 = gVar.f461f[i9] / a2;
                                    if ((f4 < f3 && i9 == i7) || i9 > i7) {
                                        i7 = i9;
                                        f3 = f4;
                                        i5 = i4;
                                        i6 = i8;
                                    }
                                }
                            }
                            i8++;
                            f2 = 0.0f;
                        }
                    }
                    i4++;
                    f2 = 0.0f;
                }
                if (i5 != -1) {
                    b bVar2 = this.f450f[i5];
                    bVar2.a.f458c = -1;
                    bVar2.b(this.f456l.f446c[i6]);
                    g gVar2 = bVar2.a;
                    gVar2.f458c = i5;
                    gVar2.c(bVar2);
                } else {
                    z2 = true;
                }
                if (i3 > this.f453i / 2) {
                    z2 = true;
                }
                f2 = 0.0f;
            }
        }
        b(aVar);
        a();
    }

    public void b(g gVar, g gVar2, int i2, int i3) {
        b b2 = b();
        g c2 = c();
        c2.f459d = 0;
        b2.a(gVar, gVar2, c2, i2);
        if (i3 != 6) {
            b2.f444d.a(a(i3, (String) null), (float) ((int) (b2.f444d.a(c2) * -1.0f)));
        }
        a(b2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:121:0x00f3 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00a4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(d.g.a.b r19) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            if (r1 != 0) goto L_0x0007
            return
        L_0x0007:
            int r2 = r0.f454j
            r3 = 1
            int r2 = r2 + r3
            int r4 = r0.f455k
            if (r2 >= r4) goto L_0x0016
            int r2 = r0.f453i
            int r2 = r2 + r3
            int r4 = r0.f449e
            if (r2 < r4) goto L_0x0019
        L_0x0016:
            r18.d()
        L_0x0019:
            boolean r2 = r1.f445e
            if (r2 != 0) goto L_0x01a4
            r18.c(r19)
            d.g.a.g r2 = r1.a
            r5 = 0
            if (r2 != 0) goto L_0x0033
            float r2 = r1.b
            int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r2 != 0) goto L_0x0033
            d.g.a.a r2 = r1.f444d
            int r2 = r2.a
            if (r2 != 0) goto L_0x0033
            r2 = 1
            goto L_0x0034
        L_0x0033:
            r2 = 0
        L_0x0034:
            if (r2 == 0) goto L_0x0037
            return
        L_0x0037:
            float r2 = r1.b
            r6 = -1
            int r7 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r7 >= 0) goto L_0x005e
            r7 = -1082130432(0xffffffffbf800000, float:-1.0)
            float r2 = r2 * r7
            r1.b = r2
            d.g.a.a r2 = r1.f444d
            int r8 = r2.f440i
            r9 = 0
        L_0x0049:
            if (r8 == r6) goto L_0x005e
            int r10 = r2.a
            if (r9 >= r10) goto L_0x005e
            float[] r10 = r2.f439h
            r11 = r10[r8]
            float r11 = r11 * r7
            r10[r8] = r11
            int[] r10 = r2.f438g
            r8 = r10[r8]
            int r9 = r9 + 1
            goto L_0x0049
        L_0x005e:
            d.g.a.a r2 = r1.f444d
            int r7 = r2.f440i
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
        L_0x0069:
            if (r7 == r6) goto L_0x00fc
            int r4 = r2.a
            if (r9 >= r4) goto L_0x00fc
            float[] r4 = r2.f439h
            r16 = r4[r7]
            r17 = 981668463(0x3a83126f, float:0.001)
            d.g.a.c r6 = r2.f434c
            d.g.a.g[] r6 = r6.f446c
            int[] r8 = r2.f437f
            r8 = r8[r7]
            r6 = r6[r8]
            int r8 = (r16 > r5 ? 1 : (r16 == r5 ? 0 : -1))
            if (r8 >= 0) goto L_0x0093
            r8 = -1165815185(0xffffffffba83126f, float:-0.001)
            int r8 = (r16 > r8 ? 1 : (r16 == r8 ? 0 : -1))
            if (r8 <= 0) goto L_0x00a0
            r4[r7] = r5
            d.g.a.b r4 = r2.b
            r6.b(r4)
            goto L_0x009e
        L_0x0093:
            int r8 = (r16 > r17 ? 1 : (r16 == r17 ? 0 : -1))
            if (r8 >= 0) goto L_0x00a0
            r4[r7] = r5
            d.g.a.b r4 = r2.b
            r6.b(r4)
        L_0x009e:
            r16 = 0
        L_0x00a0:
            int r4 = (r16 > r5 ? 1 : (r16 == r5 ? 0 : -1))
            if (r4 == 0) goto L_0x00f3
            d.g.a.g$a r4 = r6.f462g
            d.g.a.g$a r8 = d.g.a.g.a.UNRESTRICTED
            if (r4 != r8) goto L_0x00cc
            if (r11 != 0) goto L_0x00b2
            boolean r4 = r2.b((d.g.a.g) r6)
        L_0x00b0:
            r13 = r4
            goto L_0x00bb
        L_0x00b2:
            int r4 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r4 <= 0) goto L_0x00bf
            boolean r4 = r2.b((d.g.a.g) r6)
            goto L_0x00b0
        L_0x00bb:
            r11 = r6
            r12 = r16
            goto L_0x00f3
        L_0x00bf:
            if (r13 != 0) goto L_0x00f3
            boolean r4 = r2.b((d.g.a.g) r6)
            if (r4 == 0) goto L_0x00f3
            r11 = r6
            r12 = r16
            r13 = 1
            goto L_0x00f3
        L_0x00cc:
            if (r11 != 0) goto L_0x00f3
            int r4 = (r16 > r5 ? 1 : (r16 == r5 ? 0 : -1))
            if (r4 >= 0) goto L_0x00f3
            if (r10 != 0) goto L_0x00da
            boolean r4 = r2.b((d.g.a.g) r6)
        L_0x00d8:
            r15 = r4
            goto L_0x00e3
        L_0x00da:
            int r4 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r4 <= 0) goto L_0x00e7
            boolean r4 = r2.b((d.g.a.g) r6)
            goto L_0x00d8
        L_0x00e3:
            r10 = r6
            r14 = r16
            goto L_0x00f3
        L_0x00e7:
            if (r15 != 0) goto L_0x00f3
            boolean r4 = r2.b((d.g.a.g) r6)
            if (r4 == 0) goto L_0x00f3
            r10 = r6
            r14 = r16
            r15 = 1
        L_0x00f3:
            int[] r4 = r2.f438g
            r7 = r4[r7]
            int r9 = r9 + 1
            r6 = -1
            goto L_0x0069
        L_0x00fc:
            if (r11 == 0) goto L_0x00ff
            r10 = r11
        L_0x00ff:
            if (r10 != 0) goto L_0x0103
            r2 = 1
            goto L_0x0107
        L_0x0103:
            r1.b(r10)
            r2 = 0
        L_0x0107:
            d.g.a.a r4 = r1.f444d
            int r4 = r4.a
            if (r4 != 0) goto L_0x010f
            r1.f445e = r3
        L_0x010f:
            if (r2 == 0) goto L_0x018c
            int r2 = r0.f453i
            int r2 = r2 + r3
            int r4 = r0.f449e
            if (r2 < r4) goto L_0x011b
            r18.d()
        L_0x011b:
            d.g.a.g$a r2 = d.g.a.g.a.SLACK
            r4 = 0
            d.g.a.g r2 = r0.a((d.g.a.g.a) r2, (java.lang.String) r4)
            int r4 = r0.a
            int r4 = r4 + r3
            r0.a = r4
            int r6 = r0.f453i
            int r6 = r6 + r3
            r0.f453i = r6
            r2.b = r4
            d.g.a.c r6 = r0.f456l
            d.g.a.g[] r6 = r6.f446c
            r6[r4] = r2
            r1.a = r2
            r18.b((d.g.a.b) r19)
            d.g.a.e$a r4 = r0.o
            d.g.a.b r4 = (d.g.a.b) r4
            if (r4 == 0) goto L_0x018a
            r6 = 0
            r4.a = r6
            d.g.a.a r6 = r4.f444d
            r6.a()
            r6 = 0
        L_0x0148:
            d.g.a.a r7 = r1.f444d
            int r8 = r7.a
            if (r6 >= r8) goto L_0x0160
            d.g.a.g r7 = r7.a((int) r6)
            d.g.a.a r8 = r1.f444d
            float r8 = r8.b((int) r6)
            d.g.a.a r9 = r4.f444d
            r9.a(r7, r8, r3)
            int r6 = r6 + 1
            goto L_0x0148
        L_0x0160:
            d.g.a.e$a r4 = r0.o
            r0.b((d.g.a.e.a) r4)
            int r4 = r2.f458c
            r6 = -1
            if (r4 != r6) goto L_0x0188
            d.g.a.g r4 = r1.a
            if (r4 != r2) goto L_0x017a
            d.g.a.a r4 = r1.f444d
            r6 = 0
            d.g.a.g r2 = r4.a((boolean[]) r6, (d.g.a.g) r2)
            if (r2 == 0) goto L_0x017a
            r1.b(r2)
        L_0x017a:
            boolean r2 = r1.f445e
            if (r2 != 0) goto L_0x0183
            d.g.a.g r2 = r1.a
            r2.c(r1)
        L_0x0183:
            int r2 = r0.f454j
            int r2 = r2 - r3
            r0.f454j = r2
        L_0x0188:
            r2 = 1
            goto L_0x018d
        L_0x018a:
            r2 = 0
            throw r2
        L_0x018c:
            r2 = 0
        L_0x018d:
            d.g.a.g r4 = r1.a
            if (r4 == 0) goto L_0x019e
            d.g.a.g$a r4 = r4.f462g
            d.g.a.g$a r6 = d.g.a.g.a.UNRESTRICTED
            if (r4 == r6) goto L_0x019f
            float r4 = r1.b
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 < 0) goto L_0x019e
            goto L_0x019f
        L_0x019e:
            r3 = 0
        L_0x019f:
            if (r3 != 0) goto L_0x01a2
            return
        L_0x01a2:
            r4 = r2
            goto L_0x01a5
        L_0x01a4:
            r4 = 0
        L_0x01a5:
            if (r4 != 0) goto L_0x01aa
            r18.b((d.g.a.b) r19)
        L_0x01aa:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.a.e.a(d.g.a.b):void");
    }

    public final void a() {
        for (int i2 = 0; i2 < this.f454j; i2++) {
            b bVar = this.f450f[i2];
            bVar.a.f460e = bVar.b;
        }
    }

    public void a(g gVar, g gVar2, int i2, float f2, g gVar3, g gVar4, int i3, int i4) {
        b b2 = b();
        if (gVar2 == gVar3) {
            b2.f444d.a(gVar, 1.0f);
            b2.f444d.a(gVar4, 1.0f);
            b2.f444d.a(gVar2, -2.0f);
        } else if (f2 == 0.5f) {
            b2.f444d.a(gVar, 1.0f);
            b2.f444d.a(gVar2, -1.0f);
            b2.f444d.a(gVar3, -1.0f);
            b2.f444d.a(gVar4, 1.0f);
            if (i2 > 0 || i3 > 0) {
                b2.b = (float) ((-i2) + i3);
            }
        } else if (f2 <= 0.0f) {
            b2.f444d.a(gVar, -1.0f);
            b2.f444d.a(gVar2, 1.0f);
            b2.b = (float) i2;
        } else if (f2 >= 1.0f) {
            b2.f444d.a(gVar3, -1.0f);
            b2.f444d.a(gVar4, 1.0f);
            b2.b = (float) i3;
        } else {
            float f3 = 1.0f - f2;
            b2.f444d.a(gVar, f3 * 1.0f);
            b2.f444d.a(gVar2, f3 * -1.0f);
            b2.f444d.a(gVar3, -1.0f * f2);
            b2.f444d.a(gVar4, 1.0f * f2);
            if (i2 > 0 || i3 > 0) {
                b2.b = (((float) i3) * f2) + (((float) (-i2)) * f3);
            }
        }
        if (i4 != 6) {
            b2.a(this, i4);
        }
        a(b2);
    }

    public void a(g gVar, g gVar2, g gVar3, g gVar4, float f2, int i2) {
        b b2 = b();
        b2.a(gVar, gVar2, gVar3, gVar4, f2);
        if (i2 != 6) {
            b2.a(this, i2);
        }
        a(b2);
    }

    public b a(g gVar, g gVar2, int i2, int i3) {
        b b2 = b();
        boolean z = false;
        if (i2 != 0) {
            if (i2 < 0) {
                i2 *= -1;
                z = true;
            }
            b2.b = (float) i2;
        }
        if (!z) {
            b2.f444d.a(gVar, -1.0f);
            b2.f444d.a(gVar2, 1.0f);
        } else {
            b2.f444d.a(gVar, 1.0f);
            b2.f444d.a(gVar2, -1.0f);
        }
        if (i3 != 6) {
            b2.a(this, i3);
        }
        a(b2);
        return b2;
    }

    public void a(g gVar, int i2) {
        int i3 = gVar.f458c;
        if (i3 != -1) {
            b bVar = this.f450f[i3];
            if (bVar.f445e) {
                bVar.b = (float) i2;
            } else if (bVar.f444d.a == 0) {
                bVar.f445e = true;
                bVar.b = (float) i2;
            } else {
                b b2 = b();
                if (i2 < 0) {
                    b2.b = (float) (i2 * -1);
                    b2.f444d.a(gVar, 1.0f);
                } else {
                    b2.b = (float) i2;
                    b2.f444d.a(gVar, -1.0f);
                }
                a(b2);
            }
        } else {
            b b3 = b();
            b3.a = gVar;
            float f2 = (float) i2;
            gVar.f460e = f2;
            b3.b = f2;
            b3.f445e = true;
            a(b3);
        }
    }
}
