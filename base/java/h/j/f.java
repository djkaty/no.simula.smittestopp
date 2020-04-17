package h.j;

import h.j.d;
import h.k.a.p;
import h.k.b.g;
import java.io.Serializable;

public final class f implements d, Serializable {
    public static final f x = new f();

    public <R> R fold(R r, p<? super R, ? super d.a, ? extends R> pVar) {
        if (pVar != null) {
            return r;
        }
        g.a("operation");
        throw null;
    }

    public <E extends d.a> E get(d.b<E> bVar) {
        if (bVar != null) {
            return null;
        }
        g.a("key");
        throw null;
    }

    public int hashCode() {
        return 0;
    }

    public d minusKey(d.b<?> bVar) {
        if (bVar != null) {
            return this;
        }
        g.a("key");
        throw null;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
