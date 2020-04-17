package k.a.b.a.d.g0;

import java.nio.ByteBuffer;
import k.a.b.a.b.a;
import k.a.b.a.b.l.c;
import k.a.b.a.b.n.h;
import k.a.b.a.b.n.l;
import k.a.b.a.c.k0;
import k.a.b.a.c.x;

public class j {
    public final a0 a;
    public final x b;

    /* renamed from: c  reason: collision with root package name */
    public final k f1865c;

    /* renamed from: d  reason: collision with root package name */
    public int f1866d;

    /* renamed from: e  reason: collision with root package name */
    public final byte f1867e;

    /* renamed from: f  reason: collision with root package name */
    public int f1868f = 65536;

    /* renamed from: g  reason: collision with root package name */
    public int f1869g;

    /* renamed from: h  reason: collision with root package name */
    public long f1870h;

    public j(x xVar, int i2, byte b2, a0 a0Var) {
        k kVar = new k();
        this.f1865c = kVar;
        this.b = xVar;
        this.f1866d = i2;
        this.f1867e = b2;
        this.a = a0Var;
        xVar.a = kVar;
    }

    public int a(ByteBuffer byteBuffer) {
        k kVar = this.f1865c;
        int min = Math.min(kVar.b, byteBuffer.remaining());
        if (min == 0) {
            return 0;
        }
        if (byteBuffer.hasArray()) {
            System.arraycopy(kVar.a, 0, byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), min);
            byteBuffer.position(byteBuffer.position() + min);
        } else {
            byteBuffer.put(kVar.a, 0, min);
        }
        int i2 = kVar.b;
        if (min != i2) {
            int i3 = i2 - min;
            byte[] bArr = kVar.a;
            System.arraycopy(bArr, min, bArr, 0, i3);
            kVar.b = i3;
            return min;
        }
        kVar.b = 0;
        return min;
    }

    public void a(int i2, Object obj, k0 k0Var, Runnable runnable) {
        int i3;
        k0 k0Var2;
        a aVar;
        l lVar;
        this.f1869g = this.f1865c.b;
        int a2 = a(obj, k0Var, runnable);
        int i4 = this.f1866d;
        int i5 = i4 > 0 ? i4 - a2 : Integer.MAX_VALUE;
        if (k0Var == null) {
            i3 = 0;
        } else {
            i3 = k0Var.c();
        }
        int min = Math.min(i3, i5);
        if (this.a.X()) {
            p V = this.a.V();
            if (this.f1867e == 0) {
                if (k0Var != null) {
                    k0Var2 = k0Var.i();
                    k0Var2.b(min);
                } else {
                    k0Var2 = null;
                }
                if (k0Var2 == null) {
                    aVar = null;
                } else if (!k0Var2.o()) {
                    byte[] bArr = new byte[k0Var2.c()];
                    k0Var2.g().a(bArr);
                    aVar = new a(bArr);
                } else {
                    aVar = new a(k0Var2.j(), k0Var2.position() + k0Var2.h(), k0Var2.c());
                }
                if (obj == null) {
                    lVar = h.a;
                } else {
                    lVar = (l) obj;
                }
                k.a.b.a.e.a aVar2 = new k.a.b.a.e.a(i2, lVar, aVar);
                a0 a0Var = this.a;
                String str = a0.F0;
                if (a0Var.Z()) {
                    a0Var.a(str, aVar2.a, aVar2.b, aVar2.f1937c);
                }
                if (V != null) {
                    V.a(aVar2);
                }
            } else {
                c cVar = (c) obj;
                a0 a0Var2 = this.a;
                String str2 = a0.F0;
                if (a0Var2.Z()) {
                    a0Var2.a(str2, 0, cVar, (a) null);
                }
                if (V != null) {
                    V.b();
                }
            }
        }
        if (min > 0) {
            int a3 = k0Var.a();
            k0Var.b(k0Var.position() + min);
            k kVar = this.f1865c;
            if (kVar != null) {
                int c2 = k0Var.c();
                kVar.c(c2);
                if (k0Var.o()) {
                    System.arraycopy(k0Var.j(), k0Var.position() + k0Var.h(), kVar.a, kVar.b, c2);
                    k0Var.a(k0Var.position() + c2);
                } else {
                    k0Var.a(kVar.a, kVar.b, c2);
                }
                kVar.b += c2;
                k0Var.b(a3);
            } else {
                throw null;
            }
        }
        k kVar2 = this.f1865c;
        int i6 = kVar2.b;
        int i7 = this.f1869g;
        kVar2.a(i7);
        this.f1865c.b(i6 - i7);
        this.f1865c.a((byte) 2);
        this.f1865c.a(this.f1867e);
        this.f1865c.a((short) i2);
        this.f1865c.a(i6);
        this.f1870h++;
    }

    public final int a(Object obj, k0 k0Var, Runnable runnable) {
        this.f1865c.a(this.f1869g + 8);
        if (obj != null) {
            this.b.b(obj);
        }
        int i2 = this.f1865c.b - this.f1869g;
        if (runnable == null || this.f1866d <= 0 || k0Var == null || k0Var.c() + i2 <= this.f1866d) {
            return i2;
        }
        runnable.run();
        return a(obj, k0Var, (Runnable) null);
    }
}
