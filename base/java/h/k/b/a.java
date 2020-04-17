package h.k.b;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class a<T> implements Iterator<T> {
    public int x;
    public final T[] y;

    public a(T[] tArr) {
        if (tArr != null) {
            this.y = tArr;
        } else {
            g.a("array");
            throw null;
        }
    }

    public boolean hasNext() {
        return this.x < this.y.length;
    }

    public T next() {
        try {
            T[] tArr = this.y;
            int i2 = this.x;
            this.x = i2 + 1;
            return tArr[i2];
        } catch (ArrayIndexOutOfBoundsException e2) {
            this.x--;
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
