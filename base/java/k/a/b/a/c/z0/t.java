package k.a.b.a.c.z0;

import java.util.Date;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.b.i;
import k.a.b.a.b.k.p;
import k.a.b.a.c.a;
import k.a.b.a.c.k0;
import k.a.b.a.c.q;
import k.a.b.a.c.r;
import k.a.b.a.c.r0;
import k.a.b.a.c.x;
import k.a.b.a.c.y;
import k.a.b.a.c.y0;

public class t implements a<p>, y<p> {
    public static final Object[] b = {i.a(115), f.a("amqp:properties:list")};
    public final y a;

    public t(x xVar) {
        this.a = new y(xVar);
    }

    public r0 a(Object obj) {
        return this.a.a((p) obj);
    }

    public void c(Object obj) {
        int i2;
        p pVar = (p) obj;
        y0 y0Var = this.a.b.a;
        int i3 = 4;
        if (pVar.m != null) {
            i2 = 13;
        } else if (pVar.f1584l != null) {
            i2 = 12;
        } else if (pVar.f1583k != null) {
            i2 = 11;
        } else if (pVar.f1582j != null) {
            i2 = 10;
        } else if (pVar.f1581i != null) {
            i2 = 9;
        } else if (pVar.f1580h != null) {
            i2 = 8;
        } else if (pVar.f1579g != null) {
            i2 = 7;
        } else if (pVar.f1578f != null) {
            i2 = 6;
        } else if (pVar.f1577e != null) {
            i2 = 5;
        } else if (pVar.f1576d != null) {
            i2 = 4;
        } else if (pVar.f1575c != null) {
            i2 = 3;
        } else if (pVar.b != null) {
            i2 = 2;
        } else {
            i2 = pVar.a != null ? 1 : 0;
        }
        byte b2 = i2 == 0 ? (byte) 69 : -48;
        y0Var.a((byte) 0);
        y0Var.a((byte) 83);
        y0Var.a((byte) 115);
        y0Var.a(b2);
        if (b2 != 69) {
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
                        this.a.b.b(pVar.a);
                        break;
                    case 1:
                        this.a.b.a(pVar.b);
                        break;
                    case 2:
                        this.a.b.a(pVar.f1575c);
                        break;
                    case 3:
                        this.a.b.a(pVar.f1576d);
                        break;
                    case 4:
                        this.a.b.a(pVar.f1577e);
                        break;
                    case 5:
                        this.a.b.b(pVar.f1578f);
                        break;
                    case 6:
                        this.a.b.a(pVar.f1579g);
                        break;
                    case 7:
                        this.a.b.a(pVar.f1580h);
                        break;
                    case 8:
                        this.a.b.a(pVar.f1581i);
                        break;
                    case 9:
                        this.a.b.a(pVar.f1582j);
                        break;
                    case 10:
                        this.a.b.a(pVar.f1583k);
                        break;
                    case 11:
                        this.a.b.a(pVar.f1584l);
                        break;
                    case 12:
                        this.a.b.a(pVar.m);
                        break;
                    default:
                        throw new IllegalArgumentException(e.a.a.a.a.a("Unknown Properties value index: ", i4));
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

    public r0<p> f() {
        if (this.a != null) {
            return null;
        }
        throw null;
    }

    public Object k() {
        int i2;
        r rVar = this.a.a;
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
            throw new q(e.a.a.a.a.a("Incorrect type found in Properties encoding: ", (int) b2));
        }
        p pVar = new p();
        for (int i3 = 0; i3 < i2; i3++) {
            switch (i3) {
                case 0:
                    pVar.a = rVar.d();
                    break;
                case 1:
                    pVar.b = rVar.a((k.a.b.a.b.a) null);
                    break;
                case 2:
                    pVar.f1575c = rVar.a((String) null);
                    break;
                case 3:
                    pVar.f1576d = rVar.a((String) null);
                    break;
                case 4:
                    pVar.f1577e = rVar.a((String) null);
                    break;
                case 5:
                    pVar.f1578f = rVar.d();
                    break;
                case 6:
                    pVar.f1579g = rVar.a((f) null);
                    break;
                case 7:
                    pVar.f1580h = rVar.a((f) null);
                    break;
                case 8:
                    pVar.f1581i = rVar.a((Date) null);
                    break;
                case 9:
                    pVar.f1582j = rVar.a((Date) null);
                    break;
                case 10:
                    pVar.f1583k = rVar.a((String) null);
                    break;
                case 11:
                    pVar.f1584l = rVar.a((h) null);
                    break;
                case 12:
                    pVar.m = rVar.a((String) null);
                    break;
                default:
                    throw new IllegalStateException("To many entries in Properties encoding");
            }
        }
        return pVar;
    }

    public Class<p> a() {
        return p.class;
    }
}
