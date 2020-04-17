package d.f;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public abstract class g<K, V> {
    public g<K, V>.defpackage.b a;
    public g<K, V>.c b;

    /* renamed from: c  reason: collision with root package name */
    public g<K, V>.e f433c;

    public final class a<T> implements Iterator<T> {
        public boolean A = false;
        public final int x;
        public int y;
        public int z;

        public a(int i2) {
            this.x = i2;
            this.y = g.this.c();
        }

        public boolean hasNext() {
            return this.z < this.y;
        }

        public T next() {
            if (hasNext()) {
                T a = g.this.a(this.z, this.x);
                this.z++;
                this.A = true;
                return a;
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            if (this.A) {
                int i2 = this.z - 1;
                this.z = i2;
                this.y--;
                this.A = false;
                g.this.a(i2);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public final class b implements Set<Map.Entry<K, V>> {
        public b() {
        }

        public boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int c2 = g.this.c();
            for (Map.Entry entry : collection) {
                g.this.a(entry.getKey(), entry.getValue());
            }
            return c2 != g.this.c();
        }

        public void clear() {
            g.this.a();
        }

        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a = g.this.a(entry.getKey());
            if (a < 0) {
                return false;
            }
            return d.a(g.this.a(a, 1), entry.getValue());
        }

        public boolean containsAll(Collection<?> collection) {
            for (Object contains : collection) {
                if (!contains(contains)) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            return g.a(this, obj);
        }

        public int hashCode() {
            int i2;
            int i3;
            int i4 = 0;
            for (int c2 = g.this.c() - 1; c2 >= 0; c2--) {
                Object a = g.this.a(c2, 0);
                Object a2 = g.this.a(c2, 1);
                if (a == null) {
                    i2 = 0;
                } else {
                    i2 = a.hashCode();
                }
                if (a2 == null) {
                    i3 = 0;
                } else {
                    i3 = a2.hashCode();
                }
                i4 += i2 ^ i3;
            }
            return i4;
        }

        public boolean isEmpty() {
            return g.this.c() == 0;
        }

        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public int size() {
            return g.this.c();
        }

        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    public final class c implements Set<K> {
        public c() {
        }

        public boolean add(K k2) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            g.this.a();
        }

        public boolean contains(Object obj) {
            return g.this.a(obj) >= 0;
        }

        public boolean containsAll(Collection<?> collection) {
            Map b = g.this.b();
            for (Object containsKey : collection) {
                if (!b.containsKey(containsKey)) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            return g.a(this, obj);
        }

        public int hashCode() {
            int i2;
            int i3 = 0;
            for (int c2 = g.this.c() - 1; c2 >= 0; c2--) {
                Object a = g.this.a(c2, 0);
                if (a == null) {
                    i2 = 0;
                } else {
                    i2 = a.hashCode();
                }
                i3 += i2;
            }
            return i3;
        }

        public boolean isEmpty() {
            return g.this.c() == 0;
        }

        public Iterator<K> iterator() {
            return new a(0);
        }

        public boolean remove(Object obj) {
            int a = g.this.a(obj);
            if (a < 0) {
                return false;
            }
            g.this.a(a);
            return true;
        }

        public boolean removeAll(Collection<?> collection) {
            Map b = g.this.b();
            int size = b.size();
            for (Object remove : collection) {
                b.remove(remove);
            }
            return size != b.size();
        }

        public boolean retainAll(Collection<?> collection) {
            return g.a(g.this.b(), collection);
        }

        public int size() {
            return g.this.c();
        }

        public Object[] toArray() {
            return g.this.b(0);
        }

        public <T> T[] toArray(T[] tArr) {
            return g.this.a(tArr, 0);
        }
    }

    public final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
        public int x;
        public int y;
        public boolean z = false;

        public d() {
            this.x = g.this.c() - 1;
            this.y = -1;
        }

        public boolean equals(Object obj) {
            if (!this.z) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            } else if (!(obj instanceof Map.Entry)) {
                return false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                if (!d.a(entry.getKey(), g.this.a(this.y, 0)) || !d.a(entry.getValue(), g.this.a(this.y, 1))) {
                    return false;
                }
                return true;
            }
        }

        public K getKey() {
            if (this.z) {
                return g.this.a(this.y, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public V getValue() {
            if (this.z) {
                return g.this.a(this.y, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public boolean hasNext() {
            return this.y < this.x;
        }

        public int hashCode() {
            int i2;
            if (this.z) {
                int i3 = 0;
                Object a = g.this.a(this.y, 0);
                Object a2 = g.this.a(this.y, 1);
                if (a == null) {
                    i2 = 0;
                } else {
                    i2 = a.hashCode();
                }
                if (a2 != null) {
                    i3 = a2.hashCode();
                }
                return i2 ^ i3;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public Object next() {
            if (hasNext()) {
                this.y++;
                this.z = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            if (this.z) {
                g.this.a(this.y);
                this.y--;
                this.x--;
                this.z = false;
                return;
            }
            throw new IllegalStateException();
        }

        public V setValue(V v) {
            if (this.z) {
                return g.this.a(this.y, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    public final class e implements Collection<V> {
        public e() {
        }

        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            g.this.a();
        }

        public boolean contains(Object obj) {
            return g.this.b(obj) >= 0;
        }

        public boolean containsAll(Collection<?> collection) {
            for (Object contains : collection) {
                if (!contains(contains)) {
                    return false;
                }
            }
            return true;
        }

        public boolean isEmpty() {
            return g.this.c() == 0;
        }

        public Iterator<V> iterator() {
            return new a(1);
        }

        public boolean remove(Object obj) {
            int b = g.this.b(obj);
            if (b < 0) {
                return false;
            }
            g.this.a(b);
            return true;
        }

        public boolean removeAll(Collection<?> collection) {
            int c2 = g.this.c();
            int i2 = 0;
            boolean z = false;
            while (i2 < c2) {
                if (collection.contains(g.this.a(i2, 1))) {
                    g.this.a(i2);
                    i2--;
                    c2--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        public boolean retainAll(Collection<?> collection) {
            int c2 = g.this.c();
            int i2 = 0;
            boolean z = false;
            while (i2 < c2) {
                if (!collection.contains(g.this.a(i2, 1))) {
                    g.this.a(i2);
                    i2--;
                    c2--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        public int size() {
            return g.this.c();
        }

        public Object[] toArray() {
            return g.this.b(1);
        }

        public <T> T[] toArray(T[] tArr) {
            return g.this.a(tArr, 1);
        }
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public abstract int a(Object obj);

    public abstract Object a(int i2, int i3);

    public abstract V a(int i2, V v);

    public abstract void a();

    public abstract void a(int i2);

    public abstract void a(K k2, V v);

    public abstract int b(Object obj);

    public abstract Map<K, V> b();

    public Object[] b(int i2) {
        int c2 = c();
        Object[] objArr = new Object[c2];
        for (int i3 = 0; i3 < c2; i3++) {
            objArr[i3] = a(i3, i2);
        }
        return objArr;
    }

    public abstract int c();

    public <T> T[] a(T[] tArr, int i2) {
        int c2 = c();
        if (tArr.length < c2) {
            tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), c2);
        }
        for (int i3 = 0; i3 < c2; i3++) {
            tArr[i3] = a(i3, i2);
        }
        if (tArr.length > c2) {
            tArr[c2] = null;
        }
        return tArr;
    }

    public static <T> boolean a(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() != set2.size() || !set.containsAll(set2)) {
                    return false;
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }
}
