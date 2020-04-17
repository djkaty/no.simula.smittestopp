package e.c.c;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g extends j implements Iterable<j> {
    public final List<j> x = new ArrayList();

    public int a() {
        if (this.x.size() == 1) {
            return this.x.get(0).a();
        }
        throw new IllegalStateException();
    }

    public long e() {
        if (this.x.size() == 1) {
            return this.x.get(0).e();
        }
        throw new IllegalStateException();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof g) && ((g) obj).x.equals(this.x));
    }

    public String f() {
        if (this.x.size() == 1) {
            return this.x.get(0).f();
        }
        throw new IllegalStateException();
    }

    public int hashCode() {
        return this.x.hashCode();
    }

    public Iterator<j> iterator() {
        return this.x.iterator();
    }
}
