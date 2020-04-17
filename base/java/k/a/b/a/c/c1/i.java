package k.a.b.a.c.c1;

import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.b.n.k;
import k.a.b.a.c.a;
import k.a.b.a.c.j0;
import k.a.b.a.c.q;
import k.a.b.a.c.r;
import k.a.b.a.c.r0;
import k.a.b.a.c.x;
import k.a.b.a.c.y;
import k.a.b.a.c.y0;

public class i implements a<k>, y<k> {
    public static final Object[] b = {k.a.b.a.b.i.a(19), f.a("amqp:flow:list")};
    public final k a;

    public i(x xVar) {
        this.a = new k(xVar);
    }

    public r0 a(Object obj) {
        return this.a.a((k) obj);
    }

    public void c(Object obj) {
        int i2;
        k kVar = (k) obj;
        y0 y0Var = this.a.b.a;
        int i3 = 4;
        if (kVar.f1625k != null) {
            i2 = 11;
        } else if (kVar.f1624j) {
            i2 = 10;
        } else if (kVar.f1623i) {
            i2 = 9;
        } else if (kVar.f1622h != null) {
            i2 = 8;
        } else if (kVar.f1621g != null) {
            i2 = 7;
        } else if (kVar.f1620f != null) {
            i2 = 6;
        } else {
            i2 = kVar.f1619e != null ? 5 : 4;
        }
        byte b2 = kVar.f1625k == null ? (byte) -64 : -48;
        y0Var.a((byte) 0);
        y0Var.a((byte) 83);
        y0Var.a((byte) 19);
        y0Var.a(b2);
        if (b2 == -64) {
            i3 = 1;
        }
        int position = y0Var.position();
        if (i3 == 1) {
            y0Var.a((byte) 0);
            y0Var.a((byte) i2);
        } else {
            y0Var.b(0);
            y0Var.b(i2);
        }
        for (int i4 = 0; i4 < i2; i4++) {
            switch (i4) {
                case 0:
                    this.a.b.a(kVar.a);
                    break;
                case 1:
                    this.a.b.a(kVar.b);
                    break;
                case 2:
                    this.a.b.a(kVar.f1617c);
                    break;
                case 3:
                    this.a.b.a(kVar.f1618d);
                    break;
                case 4:
                    this.a.b.a(kVar.f1619e);
                    break;
                case 5:
                    this.a.b.a(kVar.f1620f);
                    break;
                case 6:
                    this.a.b.a(kVar.f1621g);
                    break;
                case 7:
                    this.a.b.a(kVar.f1622h);
                    break;
                case 8:
                    this.a.b.a(kVar.f1623i);
                    break;
                case 9:
                    this.a.b.a(kVar.f1624j);
                    break;
                case 10:
                    x xVar = this.a.b;
                    Map map = kVar.f1625k;
                    if (map != null) {
                        j0 a2 = xVar.u.a((Object) map);
                        a2.c();
                        a2.a(map);
                        break;
                    } else {
                        xVar.a();
                        break;
                    }
                default:
                    throw new IllegalArgumentException(e.a.a.a.a.a("Unknown Flow value index: ", i4));
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

    public r0<k> f() {
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
            throw new q(e.a.a.a.a.a("Incorrect type found in Flow encoding: ", (int) b2));
        }
        k kVar = new k();
        for (int i3 = 0; i3 < i2; i3++) {
            switch (i3) {
                case 0:
                    kVar.a = rVar.a((h) null);
                    break;
                case 1:
                    kVar.a(rVar.a((h) null));
                    break;
                case 2:
                    kVar.b(rVar.a((h) null));
                    break;
                case 3:
                    kVar.c(rVar.a((h) null));
                    break;
                case 4:
                    kVar.f1619e = rVar.a((h) null);
                    break;
                case 5:
                    kVar.f1620f = rVar.a((h) null);
                    break;
                case 6:
                    kVar.f1621g = rVar.a((h) null);
                    break;
                case 7:
                    kVar.f1622h = rVar.a((h) null);
                    break;
                case 8:
                    kVar.f1623i = rVar.a(false);
                    break;
                case 9:
                    kVar.f1624j = rVar.a(false);
                    break;
                case 10:
                    kVar.f1625k = rVar.c();
                    break;
                default:
                    throw new IllegalStateException("To many entries in Flow encoding");
            }
        }
        return kVar;
    }

    public Class<k> a() {
        return k.class;
    }
}
