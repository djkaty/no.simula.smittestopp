package k.b.h;

import k.b.a.i2.b;
import k.b.a.t;
import k.b.a.u;

public class a {
    public b a;

    public a(byte[] bArr) {
        try {
            t a2 = t.a(bArr);
            this.a = a2 instanceof b ? (b) a2 : a2 != null ? new b(u.a((Object) a2)) : null;
        } catch (ClassCastException e2) {
            StringBuilder a3 = e.a.a.a.a.a("malformed data: ");
            a3.append(e2.getMessage());
            throw new c(a3.toString(), e2);
        } catch (IllegalArgumentException e3) {
            StringBuilder a4 = e.a.a.a.a.a("malformed data: ");
            a4.append(e3.getMessage());
            throw new c(a4.toString(), e3);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        return this.a.equals(((a) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
