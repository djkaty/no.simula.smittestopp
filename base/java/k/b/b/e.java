package k.b.b;

import e.a.a.a.a;
import java.io.Serializable;
import k.b.a.l2.f;
import k.b.a.l2.k;
import k.b.a.t;
import k.b.a.u;

public class e implements Serializable {
    public transient f x;

    public e(byte[] bArr) {
        try {
            t a = b.a(bArr);
            f fVar = a instanceof f ? (f) a : a != null ? new f(u.a((Object) a)) : null;
            this.x = fVar;
            k kVar = fVar.y.z;
        } catch (ClassCastException e2) {
            StringBuilder a2 = a.a("malformed data: ");
            a2.append(e2.getMessage());
            throw new a(a2.toString(), e2);
        } catch (IllegalArgumentException e3) {
            StringBuilder a3 = a.a("malformed data: ");
            a3.append(e3.getMessage());
            throw new a(a3.toString(), e3);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        return this.x.equals(((e) obj).x);
    }

    public int hashCode() {
        return this.x.hashCode();
    }
}
