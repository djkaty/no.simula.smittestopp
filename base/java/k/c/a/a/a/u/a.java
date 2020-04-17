package k.c.a.a.a.u;

import java.util.Hashtable;
import k.c.a.a.a.m;
import k.c.a.a.a.n;

public class a implements AutoCloseable {
    public Hashtable<String, m> x;

    public void a(String str, m mVar) {
        a();
        this.x.put(str, mVar);
    }

    public void b() {
        this.x = new Hashtable<>();
    }

    public void close() {
        Hashtable<String, m> hashtable = this.x;
        if (hashtable != null) {
            hashtable.clear();
        }
    }

    public void a(String str) {
        a();
        this.x.remove(str);
    }

    public final void a() {
        if (this.x == null) {
            throw new n();
        }
    }
}
