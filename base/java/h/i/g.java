package h.i;

import java.util.Iterator;

public abstract class g implements Iterator<Integer> {
    public abstract int a();

    public Object next() {
        return Integer.valueOf(a());
    }

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
