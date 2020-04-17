package k.a.b.a.c.z0;

import k.a.b.a.b.f;
import k.a.b.a.b.g;
import k.a.b.a.b.h;
import k.a.b.a.b.i;
import k.a.b.a.b.k.l;
import k.a.b.a.c.a;
import k.a.b.a.c.k0;
import k.a.b.a.c.q;
import k.a.b.a.c.r0;
import k.a.b.a.c.x;
import k.a.b.a.c.y;
import k.a.b.a.c.y0;

public class r implements a<l>, y<l> {
    public static final Object[] b = {i.a(112), f.a("amqp:header:list")};
    public final v a;

    public r(x xVar) {
        this.a = new v(xVar);
    }

    public r0 a(Object obj) {
        return this.a.a((l) obj);
    }

    public void c(Object obj) {
        int i2;
        l lVar = (l) obj;
        y0 y0Var = this.a.b.a;
        if (lVar.f1573e != null) {
            i2 = 5;
        } else if (lVar.f1572d != null) {
            i2 = 4;
        } else if (lVar.f1571c != null) {
            i2 = 3;
        } else if (lVar.b != null) {
            i2 = 2;
        } else {
            i2 = lVar.a != null ? 1 : 0;
        }
        byte b2 = i2 == 0 ? (byte) 69 : -64;
        y0Var.a((byte) 0);
        y0Var.a((byte) 83);
        y0Var.a((byte) 112);
        y0Var.a(b2);
        if (b2 != 69) {
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
                    this.a.b.a(lVar.a);
                } else if (i4 == 1) {
                    x xVar = this.a.b;
                    g gVar = lVar.b;
                    if (gVar == null) {
                        xVar.a();
                    } else if (xVar.f1791h != null) {
                        xVar.a.a((byte) 80);
                        xVar.a.a(gVar.x);
                    } else {
                        throw null;
                    }
                } else if (i4 == 2) {
                    this.a.b.a(lVar.f1571c);
                } else if (i4 == 3) {
                    this.a.b.a(lVar.f1572d);
                } else if (i4 == 4) {
                    this.a.b.a(lVar.f1573e);
                } else {
                    throw new IllegalArgumentException(e.a.a.a.a.a("Unknown Header value index: ", i4));
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
    }

    public boolean e() {
        return false;
    }

    public r0<l> f() {
        if (this.a != null) {
            return null;
        }
        throw null;
    }

    public Object k() {
        int i2;
        k.a.b.a.c.r rVar = this.a.a;
        k0 k0Var = rVar.a;
        byte b2 = k0Var.get();
        if (b2 == -64) {
            k0Var.get();
            i2 = k0Var.get() & 255;
        } else if (b2 == -48) {
            k0Var.d();
            i2 = k0Var.d();
        } else if (b2 == 69) {
            i2 = 0;
        } else {
            throw new q(e.a.a.a.a.a("Incorrect type found in Header encoding: ", (int) b2));
        }
        l lVar = new l();
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 == 0) {
                lVar.a = rVar.a((Boolean) null);
            } else if (i3 == 1) {
                lVar.b = rVar.a((g) null);
            } else if (i3 == 2) {
                lVar.f1571c = rVar.a((h) null);
            } else if (i3 == 3) {
                lVar.f1572d = rVar.a((Boolean) null);
            } else if (i3 == 4) {
                lVar.f1573e = rVar.a((h) null);
            } else {
                throw new IllegalStateException("To many entries in Header encoding");
            }
        }
        return lVar;
    }

    public Class<l> a() {
        return l.class;
    }
}
