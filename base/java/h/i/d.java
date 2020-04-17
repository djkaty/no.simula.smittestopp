package h.i;

import com.microsoft.identity.common.internal.cache.SharedPreferencesSimpleCacheImpl;
import e.a.a.a.a;
import h.k.b.e;
import h.k.b.g;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class d implements List, Serializable, RandomAccess {
    public static final d x = new d();

    public /* synthetic */ void add(int i2, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean addAll(int i2, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean contains(Object obj) {
        if (!(obj instanceof Void) || ((Void) obj) != null) {
            return false;
        }
        g.a("element");
        throw null;
    }

    public boolean containsAll(Collection collection) {
        if (collection != null) {
            return collection.isEmpty();
        }
        g.a("elements");
        throw null;
    }

    public boolean equals(Object obj) {
        return (obj instanceof List) && ((List) obj).isEmpty();
    }

    public Object get(int i2) {
        throw new IndexOutOfBoundsException("Empty list doesn't contain element at index " + i2 + '.');
    }

    public int hashCode() {
        return 1;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Void) || ((Void) obj) != null) {
            return -1;
        }
        g.a("element");
        throw null;
    }

    public boolean isEmpty() {
        return true;
    }

    public Iterator iterator() {
        return c.x;
    }

    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Void) || ((Void) obj) != null) {
            return -1;
        }
        g.a("element");
        throw null;
    }

    public ListIterator listIterator() {
        return c.x;
    }

    public /* synthetic */ Object remove(int i2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public /* synthetic */ Object set(int i2, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final int size() {
        return 0;
    }

    public List subList(int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException("fromIndex: " + i2 + ", toIndex: " + i3);
    }

    public Object[] toArray() {
        return e.a(this);
    }

    public <T> T[] toArray(T[] tArr) {
        return e.a(this, tArr);
    }

    public String toString() {
        return SharedPreferencesSimpleCacheImpl.EMPTY_ARRAY;
    }

    public ListIterator listIterator(int i2) {
        if (i2 == 0) {
            return c.x;
        }
        throw new IndexOutOfBoundsException(a.a("Index: ", i2));
    }
}
