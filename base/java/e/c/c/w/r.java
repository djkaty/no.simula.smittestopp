package e.c.c.w;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

public final class r<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final Comparator<Comparable> E = new a();
    public int A = 0;
    public final e<K, V> B = new e<>();
    public r<K, V>.defpackage.b C;
    public r<K, V>.c D;
    public Comparator<? super K> x;
    public e<K, V> y;
    public int z = 0;

    public static class a implements Comparator<Comparable> {
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo((Comparable) obj2);
        }
    }

    public class b extends AbstractSet<Map.Entry<K, V>> {

        public class a extends r<K, V>.d<Map.Entry<K, V>> {
            public a(b bVar) {
                super();
            }

            public Object next() {
                return a();
            }
        }

        public b() {
        }

        public void clear() {
            r.this.clear();
        }

        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && r.this.a((Map.Entry<?, ?>) (Map.Entry) obj) != null;
        }

        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        public boolean remove(Object obj) {
            e a2;
            if (!(obj instanceof Map.Entry) || (a2 = r.this.a((Map.Entry<?, ?>) (Map.Entry) obj)) == null) {
                return false;
            }
            r.this.b(a2, true);
            return true;
        }

        public int size() {
            return r.this.z;
        }
    }

    public final class c extends AbstractSet<K> {

        public class a extends r<K, V>.d<K> {
            public a(c cVar) {
                super();
            }

            public K next() {
                return a().C;
            }
        }

        public c() {
        }

        public void clear() {
            r.this.clear();
        }

        public boolean contains(Object obj) {
            return r.this.a(obj) != null;
        }

        public Iterator<K> iterator() {
            return new a(this);
        }

        public boolean remove(Object obj) {
            r rVar = r.this;
            e a2 = rVar.a(obj);
            if (a2 != null) {
                rVar.b(a2, true);
            }
            if (a2 != null) {
                return true;
            }
            return false;
        }

        public int size() {
            return r.this.z;
        }
    }

    public abstract class d<T> implements Iterator<T> {
        public e<K, V> x;
        public e<K, V> y = null;
        public int z;

        public d() {
            r rVar = r.this;
            this.x = rVar.B.A;
            this.z = rVar.A;
        }

        public final e<K, V> a() {
            e<K, V> eVar = this.x;
            r rVar = r.this;
            if (eVar == rVar.B) {
                throw new NoSuchElementException();
            } else if (rVar.A == this.z) {
                this.x = eVar.A;
                this.y = eVar;
                return eVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        public final boolean hasNext() {
            return this.x != r.this.B;
        }

        public final void remove() {
            e<K, V> eVar = this.y;
            if (eVar != null) {
                r.this.b(eVar, true);
                this.y = null;
                this.z = r.this.A;
                return;
            }
            throw new IllegalStateException();
        }
    }

    static {
        Class<r> cls = r.class;
    }

    public r() {
        Comparator<Comparable> comparator = E;
        this.x = comparator == null ? E : comparator;
    }

    public e<K, V> a(K k2, boolean z2) {
        int i2;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.x;
        e<K, V> eVar2 = this.y;
        if (eVar2 != null) {
            Comparable comparable = comparator == E ? (Comparable) k2 : null;
            while (true) {
                if (comparable != null) {
                    i2 = comparable.compareTo(eVar2.C);
                } else {
                    i2 = comparator.compare(k2, eVar2.C);
                }
                if (i2 == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = i2 < 0 ? eVar2.y : eVar2.z;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            i2 = 0;
        }
        if (!z2) {
            return null;
        }
        e<K, V> eVar4 = this.B;
        if (eVar2 != null) {
            eVar = new e<>(eVar2, k2, eVar4, eVar4.B);
            if (i2 < 0) {
                eVar2.y = eVar;
            } else {
                eVar2.z = eVar;
            }
            a(eVar2, true);
        } else if (comparator != E || (k2 instanceof Comparable)) {
            eVar = new e<>(eVar2, k2, eVar4, eVar4.B);
            this.y = eVar;
        } else {
            throw new ClassCastException(k2.getClass().getName() + " is not Comparable");
        }
        this.z++;
        this.A++;
        return eVar;
    }

    public void b(e<K, V> eVar, boolean z2) {
        e<K, V> eVar2;
        int i2;
        e<K, V> eVar3;
        if (z2) {
            e<K, V> eVar4 = eVar.B;
            eVar4.A = eVar.A;
            eVar.A.B = eVar4;
        }
        e<K, V> eVar5 = eVar.y;
        e<K, V> eVar6 = eVar.z;
        e<K, V> eVar7 = eVar.x;
        int i3 = 0;
        if (eVar5 == null || eVar6 == null) {
            if (eVar5 != null) {
                a(eVar, eVar5);
                eVar.y = null;
            } else if (eVar6 != null) {
                a(eVar, eVar6);
                eVar.z = null;
            } else {
                a(eVar, (e<K, V>) null);
            }
            a(eVar7, false);
            this.z--;
            this.A++;
            return;
        }
        if (eVar5.E > eVar6.E) {
            e<K, V> eVar8 = eVar5.z;
            while (true) {
                e<K, V> eVar9 = eVar8;
                eVar2 = eVar5;
                eVar5 = eVar9;
                if (eVar5 == null) {
                    break;
                }
                eVar8 = eVar5.z;
            }
        } else {
            e<K, V> eVar10 = eVar6.y;
            while (true) {
                e<K, V> eVar11 = eVar6;
                eVar6 = eVar10;
                eVar3 = eVar11;
                if (eVar6 == null) {
                    break;
                }
                eVar10 = eVar6.y;
            }
            eVar2 = eVar3;
        }
        b(eVar2, false);
        e<K, V> eVar12 = eVar.y;
        if (eVar12 != null) {
            i2 = eVar12.E;
            eVar2.y = eVar12;
            eVar12.x = eVar2;
            eVar.y = null;
        } else {
            i2 = 0;
        }
        e<K, V> eVar13 = eVar.z;
        if (eVar13 != null) {
            i3 = eVar13.E;
            eVar2.z = eVar13;
            eVar13.x = eVar2;
            eVar.z = null;
        }
        eVar2.E = Math.max(i2, i3) + 1;
        a(eVar, eVar2);
    }

    public void clear() {
        this.y = null;
        this.z = 0;
        this.A++;
        e<K, V> eVar = this.B;
        eVar.B = eVar;
        eVar.A = eVar;
    }

    public boolean containsKey(Object obj) {
        return a(obj) != null;
    }

    public Set<Map.Entry<K, V>> entrySet() {
        r<K, V>.defpackage.b bVar = this.C;
        if (bVar != null) {
            return bVar;
        }
        r<K, V>.defpackage.b bVar2 = new b();
        this.C = bVar2;
        return bVar2;
    }

    public V get(Object obj) {
        e a2 = a(obj);
        if (a2 != null) {
            return a2.D;
        }
        return null;
    }

    public Set<K> keySet() {
        r<K, V>.c cVar = this.D;
        if (cVar != null) {
            return cVar;
        }
        r<K, V>.c cVar2 = new c();
        this.D = cVar2;
        return cVar2;
    }

    public V put(K k2, V v) {
        if (k2 != null) {
            e a2 = a(k2, true);
            V v2 = a2.D;
            a2.D = v;
            return v2;
        }
        throw new NullPointerException("key == null");
    }

    public V remove(Object obj) {
        e a2 = a(obj);
        if (a2 != null) {
            b(a2, true);
        }
        if (a2 != null) {
            return a2.D;
        }
        return null;
    }

    public int size() {
        return this.z;
    }

    public static final class e<K, V> implements Map.Entry<K, V> {
        public e<K, V> A;
        public e<K, V> B;
        public final K C;
        public V D;
        public int E;
        public e<K, V> x;
        public e<K, V> y;
        public e<K, V> z;

        public e() {
            this.C = null;
            this.B = this;
            this.A = this;
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x0031 A[ORIG_RETURN, RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                boolean r0 = r4 instanceof java.util.Map.Entry
                r1 = 0
                if (r0 == 0) goto L_0x0032
                java.util.Map$Entry r4 = (java.util.Map.Entry) r4
                K r0 = r3.C
                if (r0 != 0) goto L_0x0012
                java.lang.Object r0 = r4.getKey()
                if (r0 != 0) goto L_0x0032
                goto L_0x001c
            L_0x0012:
                java.lang.Object r2 = r4.getKey()
                boolean r0 = r0.equals(r2)
                if (r0 == 0) goto L_0x0032
            L_0x001c:
                V r0 = r3.D
                if (r0 != 0) goto L_0x0027
                java.lang.Object r4 = r4.getValue()
                if (r4 != 0) goto L_0x0032
                goto L_0x0031
            L_0x0027:
                java.lang.Object r4 = r4.getValue()
                boolean r4 = r0.equals(r4)
                if (r4 == 0) goto L_0x0032
            L_0x0031:
                r1 = 1
            L_0x0032:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: e.c.c.w.r.e.equals(java.lang.Object):boolean");
        }

        public K getKey() {
            return this.C;
        }

        public V getValue() {
            return this.D;
        }

        public int hashCode() {
            K k2 = this.C;
            int i2 = 0;
            int hashCode = k2 == null ? 0 : k2.hashCode();
            V v = this.D;
            if (v != null) {
                i2 = v.hashCode();
            }
            return hashCode ^ i2;
        }

        public V setValue(V v) {
            V v2 = this.D;
            this.D = v;
            return v2;
        }

        public String toString() {
            return this.C + "=" + this.D;
        }

        public e(e<K, V> eVar, K k2, e<K, V> eVar2, e<K, V> eVar3) {
            this.x = eVar;
            this.C = k2;
            this.E = 1;
            this.A = eVar2;
            this.B = eVar3;
            eVar3.A = this;
            eVar2.B = this;
        }
    }

    public e<K, V> a(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0020, code lost:
        if ((r3 == r5 || (r3 != null && r3.equals(r5))) != false) goto L_0x0024;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public e.c.c.w.r.e<K, V> a(java.util.Map.Entry<?, ?> r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r5.getKey()
            e.c.c.w.r$e r0 = r4.a((java.lang.Object) r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x0023
            V r3 = r0.D
            java.lang.Object r5 = r5.getValue()
            if (r3 == r5) goto L_0x001f
            if (r3 == 0) goto L_0x001d
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r5 = 0
            goto L_0x0020
        L_0x001f:
            r5 = 1
        L_0x0020:
            if (r5 == 0) goto L_0x0023
            goto L_0x0024
        L_0x0023:
            r1 = 0
        L_0x0024:
            if (r1 == 0) goto L_0x0027
            goto L_0x0028
        L_0x0027:
            r0 = 0
        L_0x0028:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.c.w.r.a(java.util.Map$Entry):e.c.c.w.r$e");
    }

    public final void a(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.x;
        eVar.x = null;
        if (eVar2 != null) {
            eVar2.x = eVar3;
        }
        if (eVar3 == null) {
            this.y = eVar2;
        } else if (eVar3.y == eVar) {
            eVar3.y = eVar2;
        } else {
            eVar3.z = eVar2;
        }
    }

    public final void a(e<K, V> eVar, boolean z2) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.y;
            e<K, V> eVar3 = eVar.z;
            int i2 = 0;
            int i3 = eVar2 != null ? eVar2.E : 0;
            int i4 = eVar3 != null ? eVar3.E : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                e<K, V> eVar4 = eVar3.y;
                e<K, V> eVar5 = eVar3.z;
                int i6 = eVar5 != null ? eVar5.E : 0;
                if (eVar4 != null) {
                    i2 = eVar4.E;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z2)) {
                    a(eVar);
                } else {
                    b(eVar3);
                    a(eVar);
                }
                if (z2) {
                    return;
                }
            } else if (i5 == 2) {
                e<K, V> eVar6 = eVar2.y;
                e<K, V> eVar7 = eVar2.z;
                int i8 = eVar7 != null ? eVar7.E : 0;
                if (eVar6 != null) {
                    i2 = eVar6.E;
                }
                int i9 = i2 - i8;
                if (i9 == 1 || (i9 == 0 && !z2)) {
                    b(eVar);
                } else {
                    a(eVar2);
                    b(eVar);
                }
                if (z2) {
                    return;
                }
            } else if (i5 == 0) {
                eVar.E = i3 + 1;
                if (z2) {
                    return;
                }
            } else {
                eVar.E = Math.max(i3, i4) + 1;
                if (!z2) {
                    return;
                }
            }
            eVar = eVar.x;
        }
    }

    public final void b(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.y;
        e<K, V> eVar3 = eVar.z;
        e<K, V> eVar4 = eVar2.y;
        e<K, V> eVar5 = eVar2.z;
        eVar.y = eVar5;
        if (eVar5 != null) {
            eVar5.x = eVar;
        }
        a(eVar, eVar2);
        eVar2.z = eVar;
        eVar.x = eVar2;
        int i2 = 0;
        int max = Math.max(eVar3 != null ? eVar3.E : 0, eVar5 != null ? eVar5.E : 0) + 1;
        eVar.E = max;
        if (eVar4 != null) {
            i2 = eVar4.E;
        }
        eVar2.E = Math.max(max, i2) + 1;
    }

    public final void a(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.y;
        e<K, V> eVar3 = eVar.z;
        e<K, V> eVar4 = eVar3.y;
        e<K, V> eVar5 = eVar3.z;
        eVar.z = eVar4;
        if (eVar4 != null) {
            eVar4.x = eVar;
        }
        a(eVar, eVar3);
        eVar3.y = eVar;
        eVar.x = eVar3;
        int i2 = 0;
        int max = Math.max(eVar2 != null ? eVar2.E : 0, eVar4 != null ? eVar4.E : 0) + 1;
        eVar.E = max;
        if (eVar5 != null) {
            i2 = eVar5.E;
        }
        eVar3.E = Math.max(max, i2) + 1;
    }
}
