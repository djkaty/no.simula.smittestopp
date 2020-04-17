package h.i;

import com.microsoft.identity.client.claims.RequestedClaimAdditionalInformation;
import e.c.a.a.b.l.c;
import h.k.b.e;
import h.k.b.g;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public final class a<T> implements Collection<T> {
    public final T[] x;
    public final boolean y;

    public a(T[] tArr, boolean z) {
        if (tArr != null) {
            this.x = tArr;
            this.y = z;
            return;
        }
        g.a(RequestedClaimAdditionalInformation.SerializedNames.VALUES);
        throw null;
    }

    public boolean add(T t) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean contains(Object obj) {
        T[] tArr = this.x;
        if (tArr != null) {
            return c.a(tArr, obj) >= 0;
        }
        g.a("$this$contains");
        throw null;
    }

    public boolean containsAll(Collection<? extends Object> collection) {
        if (collection == null) {
            g.a("elements");
            throw null;
        } else if (collection.isEmpty()) {
            return true;
        } else {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }
    }

    public boolean isEmpty() {
        return this.x.length == 0;
    }

    public Iterator<T> iterator() {
        T[] tArr = this.x;
        if (tArr != null) {
            return new h.k.b.a(tArr);
        }
        g.a("array");
        throw null;
    }

    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final int size() {
        return this.x.length;
    }

    public final Object[] toArray() {
        T[] tArr = this.x;
        boolean z = this.y;
        Class<Object[]> cls = Object[].class;
        if (tArr == null) {
            g.a("$this$copyToArrayOfAny");
            throw null;
        } else if (z && g.a((Object) tArr.getClass(), (Object) cls)) {
            return tArr;
        } else {
            Object[] copyOf = Arrays.copyOf(tArr, tArr.length, cls);
            g.a((Object) copyOf, "java.util.Arrays.copyOf(… Array<Any?>::class.java)");
            return copyOf;
        }
    }

    public <T> T[] toArray(T[] tArr) {
        return e.a(this, tArr);
    }
}
