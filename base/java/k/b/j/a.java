package k.b.j;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class a<T> implements Iterator<T> {
    public final T[] x;
    public int y = 0;

    public a(T[] tArr) {
        this.x = tArr;
    }

    public boolean hasNext() {
        return this.y < this.x.length;
    }

    public T next() {
        int i2 = this.y;
        T[] tArr = this.x;
        if (i2 != tArr.length) {
            this.y = i2 + 1;
            return tArr[i2];
        }
        StringBuilder a = e.a.a.a.a.a("Out of elements: ");
        a.append(this.y);
        throw new NoSuchElementException(a.toString());
    }

    public void remove() {
        throw new UnsupportedOperationException("Cannot remove element from an Array.");
    }
}
