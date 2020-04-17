package e.c.c;

import e.c.c.w.r;
import java.util.Map;
import java.util.Set;

public final class m extends j {
    public final r<String, j> a = new r<>();

    public void a(String str, j jVar) {
        if (jVar == null) {
            jVar = l.a;
        }
        this.a.put(str, jVar);
    }

    public m b(String str) {
        r.e<String, j> a2 = this.a.a((Object) str);
        return (m) (a2 != null ? a2.D : null);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof m) && ((m) obj).a.equals(this.a));
    }

    public Set<Map.Entry<String, j>> g() {
        return this.a.entrySet();
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public void a(String str, String str2) {
        a(str, a((Object) str2));
    }

    public final j a(Object obj) {
        return obj == null ? l.a : new p(obj);
    }

    public j a(String str) {
        r.e<String, j> a2 = this.a.a((Object) str);
        return (j) (a2 != null ? a2.D : null);
    }
}
