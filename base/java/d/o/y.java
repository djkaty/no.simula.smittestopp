package d.o;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public abstract class y {
    public final Map<String, Object> a = new HashMap();
    public volatile boolean b = false;

    public final void a() {
        this.b = true;
        Map<String, Object> map = this.a;
        if (map != null) {
            synchronized (map) {
                for (Object next : this.a.values()) {
                    if (next instanceof Closeable) {
                        try {
                            ((Closeable) next).close();
                        } catch (IOException e2) {
                            throw new RuntimeException(e2);
                        }
                    }
                }
            }
        }
        b();
    }

    public void b() {
    }

    public <T> T a(String str, T t) {
        T t2;
        synchronized (this.a) {
            t2 = this.a.get(str);
            if (t2 == null) {
                this.a.put(str, t);
            }
        }
        if (t2 != null) {
            t = t2;
        }
        if (this.b && (t instanceof Closeable)) {
            try {
                ((Closeable) t).close();
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        return t;
    }

    public <T> T a(String str) {
        T t;
        Map<String, Object> map = this.a;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = this.a.get(str);
        }
        return t;
    }
}
