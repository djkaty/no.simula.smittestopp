package androidx.lifecycle;

import d.o.b;
import d.o.g;
import d.o.j;
import d.o.l;

public class ReflectiveGenericLifecycleObserver implements j {
    public final Object x;
    public final b.a y;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.x = obj;
        this.y = b.f707c.a(obj.getClass());
    }

    public void a(l lVar, g.a aVar) {
        b.a aVar2 = this.y;
        Object obj = this.x;
        b.a.a(aVar2.a.get(aVar), lVar, aVar, obj);
        b.a.a(aVar2.a.get(g.a.ON_ANY), lVar, aVar, obj);
    }
}
