package d.u;

import d.w.a.f.f;

public abstract class b<T> extends k {
    public b(g gVar) {
        super(gVar);
    }

    public abstract void a(f fVar, T t);

    public final void a(T[] tArr) {
        f a = a();
        try {
            for (T a2 : tArr) {
                a(a, a2);
                a.y.executeInsert();
            }
        } finally {
            a(a);
        }
    }
}
