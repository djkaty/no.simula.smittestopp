package d.g.a.h;

import java.util.HashSet;
import java.util.Iterator;

public class l {
    public HashSet<l> a = new HashSet<>(2);
    public int b = 0;

    public void a() {
        this.b = 1;
        Iterator<l> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    public void b() {
        this.b = 0;
        Iterator<l> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public boolean c() {
        return this.b == 1;
    }

    public void d() {
    }
}
