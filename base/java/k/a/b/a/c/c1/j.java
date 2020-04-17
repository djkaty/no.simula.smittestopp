package k.a.b.a.c.c1;

import k.a.b.a.b.f;
import k.a.b.a.b.g;
import k.a.b.a.b.h;
import k.a.b.a.b.i;
import k.a.b.a.b.n.e;
import k.a.b.a.b.n.n;
import k.a.b.a.b.n.s;
import k.a.b.a.c.a;
import k.a.b.a.c.q;
import k.a.b.a.c.r;
import k.a.b.a.c.r0;
import k.a.b.a.c.x;
import k.a.b.a.c.y;
import k.a.b.a.c.y0;

public class j implements a<s>, y<s> {
    public static final Object[] b = {i.a(20), f.a("amqp:transfer:list")};
    public final m a;

    public j(x xVar) {
        this.a = new m(xVar);
    }

    public r0 a(Object obj) {
        return this.a.a((s) obj);
    }

    public void c(Object obj) {
        int i2;
        g gVar;
        k.a.b.a.b.a aVar;
        s sVar = (s) obj;
        y0 y0Var = this.a.b.a;
        int i3 = 4;
        if (sVar.f1642k) {
            i2 = 11;
        } else if (sVar.f1641j) {
            i2 = 10;
        } else if (sVar.f1640i) {
            i2 = 9;
        } else if (sVar.f1639h != null) {
            i2 = 8;
        } else if (sVar.f1638g != null) {
            i2 = 7;
        } else if (sVar.f1637f) {
            i2 = 6;
        } else if (sVar.f1636e != null) {
            i2 = 5;
        } else if (sVar.f1635d != null) {
            i2 = 4;
        } else if (sVar.f1634c != null) {
            i2 = 3;
        } else {
            i2 = sVar.b != null ? 2 : 1;
        }
        byte b2 = -48;
        if (sVar.f1639h == null && ((aVar = sVar.f1634c) == null || aVar.f1569c <= 200)) {
            b2 = -64;
        }
        y0Var.a((byte) 0);
        y0Var.a((byte) 83);
        y0Var.a((byte) 20);
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
                    this.a.b.a(sVar.a);
                    break;
                case 1:
                    this.a.b.a(sVar.b);
                    break;
                case 2:
                    this.a.b.a(sVar.f1634c);
                    break;
                case 3:
                    this.a.b.a(sVar.f1635d);
                    break;
                case 4:
                    this.a.b.a(sVar.f1636e);
                    break;
                case 5:
                    this.a.b.a(sVar.f1637f);
                    break;
                case 6:
                    n nVar = sVar.f1638g;
                    x xVar = this.a.b;
                    if (nVar == null) {
                        gVar = null;
                    } else {
                        gVar = nVar.getValue();
                    }
                    xVar.b(gVar);
                    break;
                case 7:
                    this.a.b.b(sVar.f1639h);
                    break;
                case 8:
                    this.a.b.a(sVar.f1640i);
                    break;
                case 9:
                    this.a.b.a(sVar.f1641j);
                    break;
                case 10:
                    this.a.b.a(sVar.f1642k);
                    break;
                default:
                    throw new IllegalArgumentException(e.a.a.a.a.a("Unknown Transfer value index: ", i4));
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

    public r0<s> f() {
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
            throw new q(e.a.a.a.a.a("Incorrect type found in Transfer encoding: ", (int) b2));
        }
        s sVar = new s();
        for (int i3 = 0; i3 < i2; i3++) {
            n nVar = null;
            switch (i3) {
                case 0:
                    sVar.a(rVar.a((h) null));
                    break;
                case 1:
                    sVar.b = rVar.a((h) null);
                    break;
                case 2:
                    sVar.f1634c = rVar.a((k.a.b.a.b.a) null);
                    break;
                case 3:
                    sVar.f1635d = rVar.a((h) null);
                    break;
                case 4:
                    sVar.f1636e = rVar.a((Boolean) null);
                    break;
                case 5:
                    sVar.f1637f = rVar.a(false);
                    break;
                case 6:
                    g a2 = rVar.a((g) null);
                    if (a2 != null) {
                        nVar = n.values()[a2.x & 255];
                    }
                    sVar.f1638g = nVar;
                    break;
                case 7:
                    sVar.f1639h = (e) rVar.d();
                    break;
                case 8:
                    sVar.f1640i = rVar.a(false);
                    break;
                case 9:
                    sVar.f1641j = rVar.a(false);
                    break;
                case 10:
                    sVar.f1642k = rVar.a(false);
                    break;
                default:
                    throw new IllegalStateException("To many entries in Transfer encoding");
            }
        }
        return sVar;
    }

    public Class<s> a() {
        return s.class;
    }
}
