package d.c.a.b;

import d.c.a.b.b;
import java.util.HashMap;

public class a<K, V> extends b<K, V> {
    public HashMap<K, b.c<K, V>> B = new HashMap<>();

    public b.c<K, V> a(K k2) {
        return this.B.get(k2);
    }

    public V b(K k2, V v) {
        b.c cVar = this.B.get(k2);
        if (cVar != null) {
            return cVar.y;
        }
        this.B.put(k2, a(k2, v));
        return null;
    }

    public boolean contains(K k2) {
        return this.B.containsKey(k2);
    }

    public V remove(K k2) {
        V remove = super.remove(k2);
        this.B.remove(k2);
        return remove;
    }
}
