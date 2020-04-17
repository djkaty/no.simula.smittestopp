package k.b.a.l2;

import e.a.a.a.a;
import k.b.a.c;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.n;
import k.b.a.o;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;

public class j extends n {
    public static final o A = new o("2.5.29.28").k();
    public o x;
    public boolean y;
    public p z;

    static {
        new o("2.5.29.9").k();
        new o("2.5.29.14").k();
        new o("2.5.29.15").k();
        new o("2.5.29.16").k();
        new o("2.5.29.17").k();
        new o("2.5.29.18").k();
        new o("2.5.29.19").k();
        new o("2.5.29.20").k();
        new o("2.5.29.21").k();
        new o("2.5.29.23").k();
        new o("2.5.29.24").k();
        new o("2.5.29.27").k();
        new o("2.5.29.29").k();
        new o("2.5.29.30").k();
        new o("2.5.29.31").k();
        new o("2.5.29.32").k();
        new o("2.5.29.33").k();
        new o("2.5.29.35").k();
        new o("2.5.29.36").k();
        new o("2.5.29.37").k();
        new o("2.5.29.46").k();
        new o("2.5.29.54").k();
        new o("1.3.6.1.5.5.7.1.1").k();
        new o("1.3.6.1.5.5.7.1.11").k();
        new o("1.3.6.1.5.5.7.1.12").k();
        new o("1.3.6.1.5.5.7.1.2").k();
        new o("1.3.6.1.5.5.7.1.3").k();
        new o("1.3.6.1.5.5.7.1.4").k();
        new o("2.5.29.56").k();
        new o("2.5.29.55").k();
        new o("2.5.29.60").k();
    }

    public j(u uVar) {
        e eVar;
        if (uVar.size() == 2) {
            this.x = o.a((Object) uVar.a(0));
            this.y = false;
            eVar = uVar.a(1);
        } else if (uVar.size() == 3) {
            this.x = o.a((Object) uVar.a(0));
            this.y = c.a((Object) uVar.a(1)).j();
            eVar = uVar.a(2);
        } else {
            StringBuilder a = a.a("Bad sequence size: ");
            a.append(uVar.size());
            throw new IllegalArgumentException(a.toString());
        }
        this.z = p.a((Object) eVar);
    }

    public static j a(Object obj) {
        if (obj instanceof j) {
            return (j) obj;
        }
        if (obj != null) {
            return new j(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(3);
        fVar.a((e) this.x);
        if (this.y) {
            fVar.a((e) c.z);
        }
        fVar.a((e) this.z);
        return new e1(fVar);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (!jVar.x.b(this.x) || !jVar.z.b(this.z) || jVar.y != this.y) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        if (this.y) {
            return this.z.hashCode() ^ this.x.hashCode();
        }
        return ~(this.z.hashCode() ^ this.x.hashCode());
    }
}
