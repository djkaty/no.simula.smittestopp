package h;

import h.k.a.a;
import h.k.b.g;
import java.io.Serializable;

public final class d<T> implements b<T>, Serializable {
    public a<? extends T> x;
    public volatile Object y;
    public final Object z;

    public /* synthetic */ d(a aVar, Object obj, int i2) {
        obj = (i2 & 2) != 0 ? null : obj;
        if (aVar != null) {
            this.x = aVar;
            this.y = f.a;
            this.z = obj == null ? this : obj;
            return;
        }
        g.a("initializer");
        throw null;
    }

    public T getValue() {
        T t;
        T t2 = this.y;
        if (t2 != f.a) {
            return t2;
        }
        synchronized (this.z) {
            t = this.y;
            if (t == f.a) {
                a aVar = this.x;
                if (aVar != null) {
                    t = aVar.invoke();
                    this.y = t;
                    this.x = null;
                } else {
                    g.a();
                    throw null;
                }
            }
        }
        return t;
    }

    public String toString() {
        return this.y != f.a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
