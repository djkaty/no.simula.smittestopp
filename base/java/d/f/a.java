package d.f;

import d.f.g;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

public class a<K, V> extends h<K, V> implements Map<K, V> {
    public g<K, V> E;

    /* renamed from: d.f.a$a  reason: collision with other inner class name */
    public class C0019a extends g<K, V> {
        public C0019a() {
        }

        public Object a(int i2, int i3) {
            return a.this.y[(i2 << 1) + i3];
        }

        public int b(Object obj) {
            return a.this.b(obj);
        }

        public int c() {
            return a.this.z;
        }

        public int a(Object obj) {
            return a.this.a(obj);
        }

        public Map<K, V> b() {
            return a.this;
        }

        public void a(K k2, V v) {
            a.this.put(k2, v);
        }

        public V a(int i2, V v) {
            int i3 = (i2 << 1) + 1;
            V[] vArr = a.this.y;
            V v2 = vArr[i3];
            vArr[i3] = v;
            return v2;
        }

        public void a(int i2) {
            a.this.d(i2);
        }

        public void a() {
            a.this.clear();
        }
    }

    public a() {
    }

    public final g<K, V> b() {
        if (this.E == null) {
            this.E = new C0019a();
        }
        return this.E;
    }

    public Set<Map.Entry<K, V>> entrySet() {
        g b = b();
        if (b.a == null) {
            b.a = new g.b();
        }
        return b.a;
    }

    public Set<K> keySet() {
        g b = b();
        if (b.b == null) {
            b.b = new g.c();
        }
        return b.b;
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        b(map.size() + this.z);
        for (Map.Entry next : map.entrySet()) {
            put(next.getKey(), next.getValue());
        }
    }

    public Collection<V> values() {
        g b = b();
        if (b.f433c == null) {
            b.f433c = new g.e();
        }
        return b.f433c;
    }

    public a(int i2) {
        super(i2);
    }

    public a(h hVar) {
        if (hVar != null) {
            int i2 = hVar.z;
            b(this.z + i2);
            if (this.z != 0) {
                for (int i3 = 0; i3 < i2; i3++) {
                    put(hVar.c(i3), hVar.e(i3));
                }
            } else if (i2 > 0) {
                System.arraycopy(hVar.x, 0, this.x, 0, i2);
                System.arraycopy(hVar.y, 0, this.y, 0, i2 << 1);
                this.z = i2;
            }
        }
    }
}
