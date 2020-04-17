package d.a;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class b {
    public boolean a;
    public CopyOnWriteArrayList<a> b = new CopyOnWriteArrayList<>();

    public b(boolean z) {
        this.a = z;
    }

    public abstract void a();

    public final void b() {
        Iterator<a> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }
}
