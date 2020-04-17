package d.c.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

public class b<K, V> implements Iterable<Map.Entry<K, V>> {
    public int A = 0;
    public c<K, V> x;
    public c<K, V> y;
    public WeakHashMap<f<K, V>, Boolean> z = new WeakHashMap<>();

    public static class a<K, V> extends e<K, V> {
        public a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        public c<K, V> b(c<K, V> cVar) {
            return cVar.A;
        }

        public c<K, V> c(c<K, V> cVar) {
            return cVar.z;
        }
    }

    /* renamed from: d.c.a.b.b$b  reason: collision with other inner class name */
    public static class C0018b<K, V> extends e<K, V> {
        public C0018b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        public c<K, V> b(c<K, V> cVar) {
            return cVar.z;
        }

        public c<K, V> c(c<K, V> cVar) {
            return cVar.A;
        }
    }

    public static class c<K, V> implements Map.Entry<K, V> {
        public c<K, V> A;
        public final K x;
        public final V y;
        public c<K, V> z;

        public c(K k2, V v) {
            this.x = k2;
            this.y = v;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!this.x.equals(cVar.x) || !this.y.equals(cVar.y)) {
                return false;
            }
            return true;
        }

        public K getKey() {
            return this.x;
        }

        public V getValue() {
            return this.y;
        }

        public int hashCode() {
            return this.x.hashCode() ^ this.y.hashCode();
        }

        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.x + "=" + this.y;
        }
    }

    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {
        public c<K, V> x;
        public boolean y = true;

        public d() {
        }

        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = this.x;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.A;
                this.x = cVar3;
                this.y = cVar3 == null;
            }
        }

        public boolean hasNext() {
            if (!this.y) {
                c<K, V> cVar = this.x;
                if (cVar == null || cVar.z == null) {
                    return false;
                }
                return true;
            } else if (b.this.x != null) {
                return true;
            } else {
                return false;
            }
        }

        public Object next() {
            if (this.y) {
                this.y = false;
                this.x = b.this.x;
            } else {
                c<K, V> cVar = this.x;
                this.x = cVar != null ? cVar.z : null;
            }
            return this.x;
        }
    }

    public static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {
        public c<K, V> x;
        public c<K, V> y;

        public e(c<K, V> cVar, c<K, V> cVar2) {
            this.x = cVar2;
            this.y = cVar;
        }

        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = null;
            if (this.x == cVar && cVar == this.y) {
                this.y = null;
                this.x = null;
            }
            c<K, V> cVar3 = this.x;
            if (cVar3 == cVar) {
                this.x = b(cVar3);
            }
            c<K, V> cVar4 = this.y;
            if (cVar4 == cVar) {
                c<K, V> cVar5 = this.x;
                if (!(cVar4 == cVar5 || cVar5 == null)) {
                    cVar2 = c(cVar4);
                }
                this.y = cVar2;
            }
        }

        public abstract c<K, V> b(c<K, V> cVar);

        public abstract c<K, V> c(c<K, V> cVar);

        public boolean hasNext() {
            return this.y != null;
        }

        public Object next() {
            c<K, V> cVar = this.y;
            c<K, V> cVar2 = this.x;
            this.y = (cVar == cVar2 || cVar2 == null) ? null : c(cVar);
            return cVar;
        }
    }

    public interface f<K, V> {
        void a(c<K, V> cVar);
    }

    public c<K, V> a(K k2) {
        c<K, V> cVar = this.x;
        while (cVar != null && !cVar.x.equals(k2)) {
            cVar = cVar.z;
        }
        return cVar;
    }

    public V b(K k2, V v) {
        c a2 = a(k2);
        if (a2 != null) {
            return a2.y;
        }
        a(k2, v);
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0048, code lost:
        if (r3.hasNext() != false) goto L_0x0053;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0050, code lost:
        if (((d.c.a.b.b.e) r7).hasNext() != false) goto L_0x0053;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0053, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L_0x0004
            return r0
        L_0x0004:
            boolean r1 = r7 instanceof d.c.a.b.b
            r2 = 0
            if (r1 != 0) goto L_0x000a
            return r2
        L_0x000a:
            d.c.a.b.b r7 = (d.c.a.b.b) r7
            int r1 = r6.A
            int r3 = r7.A
            if (r1 == r3) goto L_0x0013
            return r2
        L_0x0013:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L_0x001b:
            r3 = r1
            d.c.a.b.b$e r3 = (d.c.a.b.b.e) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x0044
            r4 = r7
            d.c.a.b.b$e r4 = (d.c.a.b.b.e) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L_0x0044
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L_0x003b
            if (r4 != 0) goto L_0x0043
        L_0x003b:
            if (r3 == 0) goto L_0x001b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x001b
        L_0x0043:
            return r2
        L_0x0044:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L_0x0053
            d.c.a.b.b$e r7 = (d.c.a.b.b.e) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L_0x0053
            goto L_0x0054
        L_0x0053:
            r0 = 0
        L_0x0054:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.c.a.b.b.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        Iterator it = iterator();
        int i2 = 0;
        while (true) {
            e eVar = (e) it;
            if (!eVar.hasNext()) {
                return i2;
            }
            i2 += ((Map.Entry) eVar.next()).hashCode();
        }
    }

    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.x, this.y);
        this.z.put(aVar, false);
        return aVar;
    }

    public V remove(K k2) {
        c a2 = a(k2);
        if (a2 == null) {
            return null;
        }
        this.A--;
        if (!this.z.isEmpty()) {
            for (f<K, V> a3 : this.z.keySet()) {
                a3.a(a2);
            }
        }
        c<K, V> cVar = a2.A;
        if (cVar != null) {
            cVar.z = a2.z;
        } else {
            this.x = a2.z;
        }
        c<K, V> cVar2 = a2.z;
        if (cVar2 != null) {
            cVar2.A = a2.A;
        } else {
            this.y = a2.A;
        }
        a2.z = null;
        a2.A = null;
        return a2.y;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("[");
        Iterator it = iterator();
        while (true) {
            e eVar = (e) it;
            if (eVar.hasNext()) {
                a2.append(((Map.Entry) eVar.next()).toString());
                if (eVar.hasNext()) {
                    a2.append(", ");
                }
            } else {
                a2.append("]");
                return a2.toString();
            }
        }
    }

    public c<K, V> a(K k2, V v) {
        c<K, V> cVar = new c<>(k2, v);
        this.A++;
        c<K, V> cVar2 = this.y;
        if (cVar2 == null) {
            this.x = cVar;
            this.y = cVar;
            return cVar;
        }
        cVar2.z = cVar;
        cVar.A = cVar2;
        this.y = cVar;
        return cVar;
    }

    public b<K, V>.d a() {
        b<K, V>.d dVar = new d();
        this.z.put(dVar, false);
        return dVar;
    }
}
