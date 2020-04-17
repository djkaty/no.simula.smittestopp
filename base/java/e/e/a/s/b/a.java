package e.e.a.s.b;

import e.e.a.l;
import java.util.Collections;
import java.util.Set;

public abstract class a {
    public final Set<l> a;
    public final e.e.a.t.a b = new e.e.a.t.a();

    public a(Set<l> set) {
        if (set != null) {
            this.a = Collections.unmodifiableSet(set);
            return;
        }
        throw new IllegalArgumentException("The supported JWS algorithm set must not be null");
    }
}
