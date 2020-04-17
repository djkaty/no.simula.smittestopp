package h.k.b;

import java.io.Serializable;

public abstract class b implements h.m.a, Serializable {
    public static final Object z = a.x;
    public transient h.m.a x;
    public final Object y = z;

    public static class a implements Serializable {
        public static final a x = new a();
    }

    public h.m.a a() {
        h.m.a aVar = this.x;
        if (aVar == null) {
            aVar = (i) this;
            if (l.a != null) {
                this.x = aVar;
            } else {
                throw null;
            }
        }
        return aVar;
    }
}
