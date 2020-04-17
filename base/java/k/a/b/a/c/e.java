package k.a.b.a.c;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import k.a.b.a.c.a0;
import k.a.b.a.c.c0;
import k.a.b.a.c.f0;
import k.a.b.a.c.h;
import k.a.b.a.c.j;
import k.a.b.a.c.k;
import k.a.b.a.c.l0;
import k.a.b.a.c.t;

public class e implements i0<Object[]> {
    public final x a;
    public final h b;

    /* renamed from: c  reason: collision with root package name */
    public final j f1690c;

    /* renamed from: d  reason: collision with root package name */
    public final l0 f1691d;

    /* renamed from: e  reason: collision with root package name */
    public final c0 f1692e;

    /* renamed from: f  reason: collision with root package name */
    public final f0 f1693f;

    /* renamed from: g  reason: collision with root package name */
    public final a0 f1694g;

    /* renamed from: h  reason: collision with root package name */
    public final t f1695h;

    /* renamed from: i  reason: collision with root package name */
    public final k f1696i;

    /* renamed from: j  reason: collision with root package name */
    public final b f1697j;

    /* renamed from: k  reason: collision with root package name */
    public final b f1698k;

    public class a extends d0<Object[]> implements b {

        /* renamed from: c  reason: collision with root package name */
        public Object[] f1699c;

        /* renamed from: d  reason: collision with root package name */
        public r0 f1700d;

        /* renamed from: e  reason: collision with root package name */
        public int f1701e;

        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(boolean[] zArr) {
            h.b b = e.this.b(zArr);
            int b2 = (b.b(null) * zArr.length) + b.d() + 4;
            this.a.a.c(b2);
            this.a.a.b(b2);
            this.a.a.b(zArr.length);
            b.c();
            for (boolean a : zArr) {
                b.a(a);
            }
        }

        public void d(Object obj) {
            r0<?> r0Var;
            Object[] objArr = (Object[]) obj;
            if (this.f1699c != objArr) {
                this.f1699c = objArr;
                r0Var = e.b(objArr, this.a);
                this.f1700d = r0Var;
                this.f1701e = e.a(objArr, (r0) r0Var);
            } else {
                r0Var = this.f1700d;
            }
            this.a.a.b(objArr.length);
            r0Var.c();
            for (Object a : objArr) {
                r0Var.a(a);
            }
        }

        public void e(Object obj) {
            int a = c((Object[]) obj);
            this.a.a.c(a);
            this.a.a.b(a);
        }

        public byte g() {
            return -16;
        }

        public a getType() {
            return e.this;
        }

        public Object j() {
            r rVar = this.b;
            rVar.f();
            return e.a(rVar, rVar.f());
        }

        public Object k() {
            r rVar = this.b;
            rVar.f();
            return e.a(rVar, rVar.b(true), rVar.f());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m15getType() {
            return e.this;
        }

        public void a(byte[] bArr) {
            j.a aVar = e.this.f1690c.a;
            if (aVar != null) {
                int length = (bArr.length * 1) + 5;
                this.a.a.c(length);
                this.a.a.b(length);
                this.a.a.b(bArr.length);
                aVar.c();
                for (byte a : bArr) {
                    aVar.a.a.a(a);
                }
                return;
            }
            throw null;
        }

        public void a(short[] sArr) {
            l0.a aVar = e.this.f1691d.a;
            if (aVar != null) {
                int length = (sArr.length * 2) + 5;
                this.a.a.c(length);
                this.a.a.b(length);
                this.a.a.b(sArr.length);
                aVar.c();
                for (short a : sArr) {
                    aVar.a.a.a(a);
                }
                return;
            }
            throw null;
        }

        public void a(int[] iArr) {
            c0.b c2 = e.this.c(iArr);
            int b = (c2.b(null) * iArr.length) + c2.d() + 4;
            this.a.a.c(b);
            this.a.a.b(b);
            this.a.a.b(iArr.length);
            c2.c();
            for (int a : iArr) {
                c2.a(a);
            }
        }

        public void a(long[] jArr) {
            f0.b c2 = e.this.c(jArr);
            int b = (c2.b(null) * jArr.length) + c2.d() + 4;
            this.a.a.c(b);
            this.a.a.b(b);
            this.a.a.b(jArr.length);
            c2.c();
            for (long a : jArr) {
                c2.a(a);
            }
        }

        public void a(float[] fArr) {
            a0.a aVar = e.this.f1694g.a;
            if (aVar != null) {
                int length = (fArr.length * 4) + 5;
                this.a.a.c(length);
                this.a.a.b(length);
                this.a.a.b(fArr.length);
                aVar.c();
                for (float a : fArr) {
                    aVar.a.a.a(a);
                }
                return;
            }
            throw null;
        }

        public void a(double[] dArr) {
            t.a aVar = e.this.f1695h.a;
            if (aVar != null) {
                int length = (dArr.length * 8) + 5;
                this.a.a.c(length);
                this.a.a.b(length);
                this.a.a.b(dArr.length);
                aVar.c();
                for (double a : dArr) {
                    aVar.a.a.a(a);
                }
                return;
            }
            throw null;
        }

        public void a(char[] cArr) {
            k.a aVar = e.this.f1696i.a;
            if (aVar != null) {
                int length = (cArr.length * 4) + 5;
                this.a.a.c(length);
                this.a.a.b(length);
                this.a.a.b(cArr.length);
                aVar.c();
                for (char c2 : cArr) {
                    aVar.a.a.b(c2 & 65535);
                }
                return;
            }
            throw null;
        }

        public void a(Object[] objArr, r0 r0Var, int i2) {
            this.f1699c = objArr;
            this.f1700d = r0Var;
            this.f1701e = i2;
        }

        /* renamed from: a */
        public int c(Object[] objArr) {
            if (this.f1699c != objArr) {
                this.f1699c = objArr;
                r0 a = e.b(objArr, this.a);
                this.f1700d = a;
                this.f1701e = e.a(objArr, a);
            }
            return this.f1701e + 4;
        }

        public boolean a(r0<Object[]> r0Var) {
            return e.this == r0Var.getType();
        }
    }

    public interface b extends j0<Object[]> {
        void a(byte[] bArr);

        void a(char[] cArr);

        void a(double[] dArr);

        void a(float[] fArr);

        void a(int[] iArr);

        void a(long[] jArr);

        void a(Object[] objArr, r0<?> r0Var, int i2);

        void a(short[] sArr);

        void a(boolean[] zArr);

        int h();

        Object j();
    }

    public class c extends m0<Object[]> implements b {

        /* renamed from: c  reason: collision with root package name */
        public Object[] f1703c;

        /* renamed from: d  reason: collision with root package name */
        public r0 f1704d;

        /* renamed from: e  reason: collision with root package name */
        public int f1705e;

        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(boolean[] zArr) {
            h.b b = e.this.b(zArr);
            int b2 = (b.b(null) * zArr.length) + b.d() + 1;
            this.a.a.c(b2);
            this.a.a.a((byte) b2);
            this.a.a.a((byte) zArr.length);
            b.c();
            for (boolean a : zArr) {
                b.a(a);
            }
        }

        public void d(Object obj) {
            r0<?> r0Var;
            Object[] objArr = (Object[]) obj;
            if (this.f1703c != objArr) {
                this.f1703c = objArr;
                r0Var = e.b(objArr, this.a);
                this.f1704d = r0Var;
                this.f1705e = e.a(objArr, (r0) r0Var);
            } else {
                r0Var = this.f1704d;
            }
            this.a.a.a((byte) objArr.length);
            r0Var.c();
            for (Object obj2 : objArr) {
                if (!obj2.getClass().isArray() || !obj2.getClass().getComponentType().isPrimitive()) {
                    r0Var.a(obj2);
                } else {
                    b bVar = (b) r0Var;
                    e eVar = (e) bVar.getType();
                    Class<?> componentType = obj2.getClass().getComponentType();
                    if (componentType == Boolean.TYPE) {
                        bVar.a((boolean[]) obj2);
                    } else if (componentType == Byte.TYPE) {
                        bVar.a((byte[]) obj2);
                    } else if (componentType == Short.TYPE) {
                        bVar.a((short[]) obj2);
                    } else if (componentType == Integer.TYPE) {
                        bVar.a((int[]) obj2);
                    } else if (componentType == Long.TYPE) {
                        bVar.a((long[]) obj2);
                    } else if (componentType == Float.TYPE) {
                        bVar.a((float[]) obj2);
                    } else if (componentType == Double.TYPE) {
                        bVar.a((double[]) obj2);
                    } else if (componentType == Character.TYPE) {
                        bVar.a((char[]) obj2);
                    } else {
                        StringBuilder a = e.a.a.a.a.a("Cannot encode arrays of type ");
                        a.append(componentType.getName());
                        throw new IllegalArgumentException(a.toString());
                    }
                }
            }
        }

        public void e(Object obj) {
            int a = c((Object[]) obj);
            this.a.a.c(a);
            this.a.a.a((byte) a);
        }

        public byte g() {
            return -32;
        }

        public a getType() {
            return e.this;
        }

        public Object j() {
            r rVar = this.b;
            rVar.e();
            return e.a(rVar, (int) rVar.e() & 255);
        }

        public Object k() {
            r rVar = this.b;
            rVar.e();
            return e.a(rVar, rVar.b(true), rVar.e() & 255);
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m16getType() {
            return e.this;
        }

        public void a(byte[] bArr) {
            j.a aVar = e.this.f1690c.a;
            if (aVar != null) {
                int length = (bArr.length * 1) + 2;
                this.a.a.c(length);
                this.a.a.a((byte) length);
                this.a.a.a((byte) bArr.length);
                aVar.c();
                for (byte a : bArr) {
                    aVar.a.a.a(a);
                }
                return;
            }
            throw null;
        }

        public void a(short[] sArr) {
            l0.a aVar = e.this.f1691d.a;
            if (aVar != null) {
                int length = (sArr.length * 2) + 2;
                this.a.a.c(length);
                this.a.a.a((byte) length);
                this.a.a.a((byte) sArr.length);
                aVar.c();
                for (short a : sArr) {
                    aVar.a.a.a(a);
                }
                return;
            }
            throw null;
        }

        public void a(int[] iArr) {
            c0.b c2 = e.this.c(iArr);
            int b = (c2.b(null) * iArr.length) + c2.d() + 1;
            this.a.a.c(b);
            this.a.a.a((byte) b);
            this.a.a.a((byte) iArr.length);
            c2.c();
            for (int a : iArr) {
                c2.a(a);
            }
        }

        public void a(long[] jArr) {
            f0.b c2 = e.this.c(jArr);
            int b = (c2.b(null) * jArr.length) + c2.d() + 1;
            this.a.a.c(b);
            this.a.a.a((byte) b);
            this.a.a.a((byte) jArr.length);
            c2.c();
            for (long a : jArr) {
                c2.a(a);
            }
        }

        public void a(float[] fArr) {
            a0.a aVar = e.this.f1694g.a;
            if (aVar != null) {
                int length = (fArr.length * 4) + 2;
                this.a.a.c(length);
                this.a.a.a((byte) length);
                this.a.a.a((byte) fArr.length);
                aVar.c();
                for (float a : fArr) {
                    aVar.a.a.a(a);
                }
                return;
            }
            throw null;
        }

        public void a(double[] dArr) {
            t.a aVar = e.this.f1695h.a;
            if (aVar != null) {
                int length = (dArr.length * 8) + 2;
                this.a.a.c(length);
                this.a.a.a((byte) length);
                this.a.a.a((byte) dArr.length);
                aVar.c();
                for (double a : dArr) {
                    aVar.a.a.a(a);
                }
                return;
            }
            throw null;
        }

        public void a(char[] cArr) {
            k.a aVar = e.this.f1696i.a;
            if (aVar != null) {
                int length = (cArr.length * 4) + 2;
                this.a.a.c(length);
                this.a.a.a((byte) length);
                this.a.a.a((byte) cArr.length);
                aVar.c();
                for (char c2 : cArr) {
                    aVar.a.a.b(c2 & 65535);
                }
                return;
            }
            throw null;
        }

        public void a(Object[] objArr, r0 r0Var, int i2) {
            this.f1703c = objArr;
            this.f1704d = r0Var;
            this.f1705e = i2;
        }

        /* renamed from: a */
        public int c(Object[] objArr) {
            if (this.f1703c != objArr) {
                this.f1703c = objArr;
                r0 a = e.b(objArr, this.a);
                this.f1704d = a;
                this.f1705e = e.a(objArr, a);
            }
            return this.f1705e + 1;
        }

        public boolean a(r0<Object[]> r0Var) {
            return e.this == r0Var.getType();
        }
    }

    public e(x xVar, r rVar, h hVar, j jVar, l0 l0Var, c0 c0Var, f0 f0Var, a0 a0Var, t tVar, k kVar) {
        this.a = xVar;
        this.b = hVar;
        this.f1690c = jVar;
        this.f1691d = l0Var;
        this.f1692e = c0Var;
        this.f1693f = f0Var;
        this.f1694g = a0Var;
        this.f1695h = tVar;
        this.f1696i = kVar;
        this.f1698k = new a(xVar, rVar);
        this.f1697j = new c(xVar, rVar);
        xVar.f1786c.put(Object[].class, this);
        rVar.a(this);
    }

    public static r0<?> b(Object[] objArr, x xVar) {
        boolean z;
        if (objArr.length == 0) {
            return xVar.a((Class) objArr.getClass().getComponentType()).f();
        }
        a a2 = xVar.a((Class) objArr.getClass().getComponentType());
        int i2 = 0;
        if (!objArr[0].getClass().isArray() || !objArr[0].getClass().getComponentType().isPrimitive()) {
            if (a2 == null) {
                a2 = xVar.a(objArr[0]);
                z = true;
            } else {
                z = false;
            }
            r0<?> a3 = a2.a(objArr[0]);
            r0<?> f2 = a2.f();
            while (i2 < objArr.length && (z || a3 != f2)) {
                if (!z || xVar.a(objArr[i2]) == a2) {
                    r0<?> a4 = a2.a(objArr[i2]);
                    if (a4 != a3 && !a3.a(a4)) {
                        a3 = a4.a(a3) ? a4 : f2;
                    }
                    i2++;
                } else {
                    throw new IllegalArgumentException("Non matching types " + a2 + " and " + xVar.a(objArr[i2]) + " in array");
                }
            }
            return a3;
        }
        Class<?> componentType = objArr[0].getClass().getComponentType();
        if (componentType == Boolean.TYPE) {
            return ((e) a2).a(objArr[0]);
        }
        if (componentType == Byte.TYPE) {
            e eVar = (e) a2;
            byte[] bArr = objArr[0];
            if (eVar != null) {
                return bArr.length < 254 ? eVar.f1697j : eVar.f1698k;
            }
            throw null;
        } else if (componentType == Short.TYPE) {
            e eVar2 = (e) a2;
            short[] sArr = objArr[0];
            if (eVar2 != null) {
                return sArr.length < 127 ? eVar2.f1697j : eVar2.f1698k;
            }
            throw null;
        } else if (componentType == Integer.TYPE) {
            return ((e) a2).b(objArr[0]);
        } else {
            if (componentType == Long.TYPE) {
                return ((e) a2).b(objArr[0]);
            }
            if (componentType == Float.TYPE) {
                e eVar3 = (e) a2;
                float[] fArr = objArr[0];
                if (eVar3 != null) {
                    return fArr.length < 63 ? eVar3.f1697j : eVar3.f1698k;
                }
                throw null;
            } else if (componentType == Double.TYPE) {
                e eVar4 = (e) a2;
                double[] dArr = objArr[0];
                if (eVar4 != null) {
                    return dArr.length < 31 ? eVar4.f1697j : eVar4.f1698k;
                }
                throw null;
            } else if (componentType == Character.TYPE) {
                e eVar5 = (e) a2;
                char[] cArr = objArr[0];
                if (eVar5 != null) {
                    return cArr.length < 63 ? eVar5.f1697j : eVar5.f1698k;
                }
                throw null;
            } else {
                StringBuilder a5 = e.a.a.a.a.a("Cannot encode arrays of type ");
                a5.append(componentType.getName());
                throw new IllegalArgumentException(a5.toString());
            }
        }
    }

    public void c(Object obj) {
        Object[] objArr = (Object[]) obj;
        b a2 = a(objArr);
        a2.c();
        a2.a(objArr);
    }

    public r0 f() {
        return this.f1698k;
    }

    public Collection<b> i() {
        return Arrays.asList(new b[]{this.f1697j, this.f1698k});
    }

    public Class<Object[]> a() {
        return Object[].class;
    }

    public b a(Object[] objArr) {
        r0<?> b2 = b(objArr, this.a);
        int a2 = a(objArr, (r0) b2);
        b bVar = (objArr.length > 255 || a2 > 254) ? this.f1698k : this.f1697j;
        bVar.a(objArr, b2, a2);
        return bVar;
    }

    public final c0.b c(int[] iArr) {
        if (iArr.length == 0 || !a(iArr)) {
            return this.f1692e.a;
        }
        c0 c0Var = this.f1692e;
        int i2 = iArr[0];
        return (i2 < -128 || i2 > 127) ? c0Var.a : c0Var.b;
    }

    public static int a(Object[] objArr, r0 r0Var) {
        int i2;
        r0 r0Var2;
        int d2 = r0Var.d();
        if (r0Var.f()) {
            return (r0Var.b(null) * objArr.length) + d2;
        }
        for (boolean[] zArr : objArr) {
            if (!zArr.getClass().isArray() || !zArr.getClass().getComponentType().isPrimitive()) {
                d2 = r0Var.b(zArr) + d2;
            } else {
                b bVar = (b) r0Var;
                e eVar = (e) bVar.getType();
                Class<?> componentType = zArr.getClass().getComponentType();
                int h2 = (bVar.h() * 2) + d2;
                if (componentType == Boolean.TYPE) {
                    boolean[] zArr2 = zArr;
                    r0Var2 = eVar.b(zArr2);
                    i2 = zArr2.length;
                } else if (componentType == Byte.TYPE) {
                    r0Var2 = eVar.f1690c.a;
                    i2 = ((byte[]) zArr).length;
                } else if (componentType == Short.TYPE) {
                    r0Var2 = eVar.f1691d.a;
                    i2 = ((short[]) zArr).length;
                } else if (componentType == Integer.TYPE) {
                    int[] iArr = (int[]) zArr;
                    r0Var2 = eVar.c(iArr);
                    i2 = iArr.length;
                } else if (componentType == Long.TYPE) {
                    long[] jArr = (long[]) zArr;
                    r0Var2 = eVar.c(jArr);
                    i2 = jArr.length;
                } else if (componentType == Float.TYPE) {
                    r0Var2 = eVar.f1694g.a;
                    i2 = ((float[]) zArr).length;
                } else if (componentType == Double.TYPE) {
                    r0Var2 = eVar.f1695h.a;
                    i2 = ((double[]) zArr).length;
                } else if (componentType == Character.TYPE) {
                    r0Var2 = eVar.f1696i.a;
                    i2 = ((char[]) zArr).length;
                } else {
                    StringBuilder a2 = e.a.a.a.a.a("Cannot encode arrays of type ");
                    a2.append(componentType.getName());
                    throw new IllegalArgumentException(a2.toString());
                }
                d2 = (r0Var2.b(null) * i2) + r0Var2.d() + h2;
            }
        }
        return d2;
    }

    public final f0.b c(long[] jArr) {
        if (jArr.length == 0 || !a(jArr)) {
            return this.f1693f.a;
        }
        f0 f0Var = this.f1693f;
        long j2 = jArr[0];
        return (j2 < -128 || j2 > 127) ? f0Var.a : f0Var.b;
    }

    public final b b(int[] iArr) {
        return (iArr.length < 63 || (iArr.length < 254 && a(iArr))) ? this.f1697j : this.f1698k;
    }

    public final b b(long[] jArr) {
        return (jArr.length < 31 || (jArr.length < 254 && a(jArr))) ? this.f1697j : this.f1698k;
    }

    public final h.b b(boolean[] zArr) {
        if (zArr.length == 0) {
            return this.b.f1734c;
        }
        boolean z = zArr[0];
        for (int i2 = 1; i2 < zArr.length; i2++) {
            if (z != zArr[i2]) {
                return this.b.f1734c;
            }
        }
        h hVar = this.b;
        return z ? hVar.a : hVar.b;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x001b, code lost:
        if (r0 != false) goto L_0x0021;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final k.a.b.a.c.e.b a(boolean[] r6) {
        /*
            r5 = this;
            int r0 = r6.length
            r1 = 254(0xfe, float:3.56E-43)
            if (r0 < r1) goto L_0x0021
            int r0 = r6.length
            r1 = 255(0xff, float:3.57E-43)
            if (r0 > r1) goto L_0x001e
            r0 = 0
            boolean r1 = r6[r0]
            r2 = 1
            r3 = 1
        L_0x000f:
            int r4 = r6.length
            if (r3 >= r4) goto L_0x001a
            boolean r4 = r6[r3]
            if (r1 == r4) goto L_0x0017
            goto L_0x001b
        L_0x0017:
            int r3 = r3 + 1
            goto L_0x000f
        L_0x001a:
            r0 = 1
        L_0x001b:
            if (r0 == 0) goto L_0x001e
            goto L_0x0021
        L_0x001e:
            k.a.b.a.c.e$b r6 = r5.f1698k
            goto L_0x0023
        L_0x0021:
            k.a.b.a.c.e$b r6 = r5.f1697j
        L_0x0023:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.e.a(boolean[]):k.a.b.a.c.e$b");
    }

    public final boolean a(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] < -128 || iArr[i2] > 127) {
                return false;
            }
        }
        return true;
    }

    public final boolean a(long[] jArr) {
        for (int i2 = 0; i2 < jArr.length; i2++) {
            if (jArr[i2] < -128 || jArr[i2] > 127) {
                return false;
            }
        }
        return true;
    }

    public static Object[] a(r rVar, q0 q0Var, int i2) {
        if (i2 <= rVar.a()) {
            int i3 = 0;
            if (q0Var instanceof b) {
                b bVar = (b) q0Var;
                Object[] objArr = new Object[i2];
                while (i3 < i2) {
                    objArr[i3] = bVar.j();
                    i3++;
                }
                return objArr;
            }
            Object[] objArr2 = (Object[]) Array.newInstance(q0Var.a(), i2);
            while (i3 < i2) {
                objArr2[i3] = q0Var.k();
                i3++;
            }
            return objArr2;
        }
        StringBuilder a2 = e.a.a.a.a.a("Array element count ", i2, " is specified to be greater than the amount of data available (");
        a2.append(rVar.a());
        a2.append(")");
        throw new IllegalArgumentException(a2.toString());
    }

    public static /* synthetic */ Object a(r rVar, int i2) {
        q0 b2 = rVar.b(true);
        if (!b2.e()) {
            return a(rVar, b2, i2);
        }
        if (i2 <= rVar.a()) {
            int i3 = 0;
            if (b2 instanceof h.b) {
                h.b bVar = (h.b) b2;
                boolean[] zArr = new boolean[i2];
                while (i3 < i2) {
                    zArr[i3] = bVar.b();
                    i3++;
                }
                return zArr;
            } else if (b2 instanceof j.a) {
                j.a aVar = (j.a) b2;
                byte[] bArr = new byte[i2];
                while (i3 < i2) {
                    bArr[i3] = aVar.b.e();
                    i3++;
                }
                return bArr;
            } else if (b2 instanceof l0.a) {
                l0.a aVar2 = (l0.a) b2;
                short[] sArr = new short[i2];
                while (i3 < i2) {
                    sArr[i3] = aVar2.b.a.m();
                    i3++;
                }
                return sArr;
            } else if (b2 instanceof c0.b) {
                c0.b bVar2 = (c0.b) b2;
                int[] iArr = new int[i2];
                while (i3 < i2) {
                    iArr[i3] = bVar2.b();
                    i3++;
                }
                return iArr;
            } else if (b2 instanceof f0.b) {
                f0.b bVar3 = (f0.b) b2;
                long[] jArr = new long[i2];
                while (i3 < i2) {
                    jArr[i3] = bVar3.b();
                    i3++;
                }
                return jArr;
            } else if (b2 instanceof a0.a) {
                a0.a aVar3 = (a0.a) b2;
                float[] fArr = new float[i2];
                while (i3 < i2) {
                    fArr[i3] = aVar3.b.a.k();
                    i3++;
                }
                return fArr;
            } else if (b2 instanceof t.a) {
                t.a aVar4 = (t.a) b2;
                double[] dArr = new double[i2];
                while (i3 < i2) {
                    dArr[i3] = aVar4.b.a.f();
                    i3++;
                }
                return dArr;
            } else if (b2 instanceof k.a) {
                k.a aVar5 = (k.a) b2;
                char[] cArr = new char[i2];
                while (i3 < i2) {
                    cArr[i3] = (char) (aVar5.b.f() & 65535);
                    i3++;
                }
                return cArr;
            } else {
                StringBuilder a2 = e.a.a.a.a.a("Unexpected class ");
                a2.append(b2.getClass().getName());
                throw new ClassCastException(a2.toString());
            }
        } else {
            StringBuilder a3 = e.a.a.a.a.a("Array element count ", i2, " is specified to be greater than the amount of data available (");
            a3.append(rVar.a());
            a3.append(")");
            throw new IllegalArgumentException(a3.toString());
        }
    }
}
