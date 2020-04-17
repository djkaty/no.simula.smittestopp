package h;

import h.k.b.g;
import java.io.Serializable;

public final class c<A, B> implements Serializable {
    public final A x;
    public final B y;

    public c(A a, B b) {
        this.x = a;
        this.y = b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return g.a((Object) this.x, (Object) cVar.x) && g.a((Object) this.y, (Object) cVar.y);
    }

    public int hashCode() {
        A a = this.x;
        int i2 = 0;
        int hashCode = (a != null ? a.hashCode() : 0) * 31;
        B b = this.y;
        if (b != null) {
            i2 = b.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return '(' + this.x + ", " + this.y + ')';
    }
}
