package k.b.a.l2;

import e.a.a.a.a;
import java.io.IOException;
import k.b.a.b0;
import k.b.a.d;
import k.b.a.e;
import k.b.a.h1;
import k.b.a.k2.c;
import k.b.a.n;
import k.b.a.o;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;
import k.b.a.x0;

public class l extends n implements d {
    public e x;
    public int y;

    public l(int i2, e eVar) {
        this.x = eVar;
        this.y = i2;
    }

    public static l a(Object obj) {
        if (obj == null || (obj instanceof l)) {
            return (l) obj;
        }
        if (obj instanceof b0) {
            b0 b0Var = (b0) obj;
            int i2 = b0Var.x;
            switch (i2) {
                case 0:
                case 3:
                case 5:
                    return new l(i2, u.a(b0Var, false));
                case 1:
                case 2:
                case 6:
                    t j2 = b0Var.j();
                    return new l(i2, j2 instanceof x0 ? x0.a((Object) j2) : new x0(p.a((Object) j2).j()));
                case 4:
                    return new l(i2, c.a(b0Var));
                case 7:
                    return new l(i2, p.a(b0Var, false));
                case 8:
                    return new l(i2, o.a(b0Var, false));
                default:
                    throw new IllegalArgumentException(a.a("unknown tag: ", i2));
            }
        } else if (obj instanceof byte[]) {
            try {
                return a(t.a((byte[]) obj));
            } catch (IOException unused) {
                throw new IllegalArgumentException("unable to parse encoded general name");
            }
        } else {
            throw new IllegalArgumentException(a.a(obj, a.a("unknown object in getInstance: ")));
        }
    }

    public t c() {
        return new h1(this.y == 4, this.y, this.x);
    }

    public String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.y);
        stringBuffer.append(": ");
        int i2 = this.y;
        if (!(i2 == 1 || i2 == 2)) {
            if (i2 == 4) {
                str = c.a((Object) this.x).toString();
            } else if (i2 != 6) {
                str = this.x.toString();
            }
            stringBuffer.append(str);
            return stringBuffer.toString();
        }
        str = x0.a((Object) this.x).d();
        stringBuffer.append(str);
        return stringBuffer.toString();
    }
}
