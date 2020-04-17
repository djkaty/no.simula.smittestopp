package k.a.b.a.c.c1;

import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.k.s;
import k.a.b.a.b.n.e;
import k.a.b.a.b.n.g;
import k.a.b.a.b.n.o;
import k.a.b.a.c.a;
import k.a.b.a.c.q;
import k.a.b.a.c.r;
import k.a.b.a.c.r0;
import k.a.b.a.c.x;
import k.a.b.a.c.y;
import k.a.b.a.c.y0;

public class h implements a<g>, y<g> {
    public static final Object[] b = {i.a(21), f.a("amqp:disposition:list")};

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f1683c = {0, 83, 36, 69};
    public final e a;

    public h(x xVar) {
        this.a = new e(xVar);
    }

    public r0 a(Object obj) {
        return this.a.a((g) obj);
    }

    public void c(Object obj) {
        int i2;
        g gVar = (g) obj;
        y0 y0Var = this.a.b.a;
        if (gVar.f1615f) {
            i2 = 6;
        } else if (gVar.f1614e != null) {
            i2 = 5;
        } else if (gVar.f1613d) {
            i2 = 4;
        } else {
            i2 = gVar.f1612c != null ? 3 : 2;
        }
        e eVar = gVar.f1614e;
        byte b2 = (eVar == null || eVar == k.a.b.a.b.k.a.a || eVar == s.a) ? (byte) -64 : -48;
        y0Var.a((byte) 0);
        y0Var.a((byte) 83);
        y0Var.a((byte) 21);
        y0Var.a(b2);
        int i3 = b2 == -64 ? 1 : 4;
        int position = y0Var.position();
        if (i3 == 1) {
            y0Var.a((byte) 0);
            y0Var.a((byte) i2);
        } else {
            y0Var.b(0);
            y0Var.b(i2);
        }
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == 0) {
                this.a.b.a(gVar.a.getValue());
            } else if (i4 == 1) {
                this.a.b.a(gVar.b);
            } else if (i4 == 2) {
                this.a.b.a(gVar.f1612c);
            } else if (i4 == 3) {
                this.a.b.a(gVar.f1613d);
            } else if (i4 != 4) {
                if (i4 == 5) {
                    this.a.b.a(gVar.f1615f);
                } else {
                    throw new IllegalArgumentException(e.a.a.a.a.a("Unknown Disposition value index: ", i4));
                }
            } else if (k.a.b.a.b.k.a.a.equals(gVar.f1614e)) {
                y0 y0Var2 = this.a.b.a;
                byte[] bArr = f1683c;
                y0Var2.a(bArr, 0, bArr.length);
            } else {
                this.a.b.b(gVar.f1614e);
            }
        }
        int position2 = y0Var.position();
        int i5 = (position2 - position) - i3;
        y0Var.a(position);
        if (i3 == 1) {
            y0Var.a((byte) i5);
        } else {
            y0Var.b(i5);
        }
        y0Var.a(position2);
    }

    public boolean e() {
        return false;
    }

    public r0<g> f() {
        if (this.a != null) {
            return null;
        }
        throw null;
    }

    public Object k() {
        int i2;
        r rVar = this.a.a;
        byte b2 = rVar.a.get();
        if (b2 == -64) {
            rVar.a.get();
            i2 = rVar.a.get() & 255;
        } else if (b2 == -48) {
            rVar.a.d();
            i2 = rVar.a.d();
        } else if (b2 == 69) {
            i2 = 0;
        } else {
            throw new q(e.a.a.a.a.a("Incorrect type found in Disposition encoding: ", (int) b2));
        }
        g gVar = new g();
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 == 0) {
                gVar.a(Boolean.TRUE.equals(rVar.a((Boolean) null)) ? o.RECEIVER : o.SENDER);
            } else if (i3 == 1) {
                gVar.a(rVar.a((k.a.b.a.b.h) null));
            } else if (i3 == 2) {
                gVar.f1612c = rVar.a((k.a.b.a.b.h) null);
            } else if (i3 == 3) {
                gVar.f1613d = rVar.a(false);
            } else if (i3 == 4) {
                gVar.f1614e = (e) rVar.d();
            } else if (i3 == 5) {
                gVar.f1615f = rVar.a(false);
            } else {
                throw new IllegalStateException("To many entries in Disposition encoding");
            }
        }
        return gVar;
    }

    public Class<g> a() {
        return g.class;
    }
}
