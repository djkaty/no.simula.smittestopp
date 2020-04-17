package androidx.lifecycle;

import d.o.d;
import d.o.g;
import d.o.j;
import d.o.l;

public class FullLifecycleObserverAdapter implements j {
    public final d x;
    public final j y;

    public FullLifecycleObserverAdapter(d dVar, j jVar) {
        this.x = dVar;
        this.y = jVar;
    }

    public void a(l lVar, g.a aVar) {
        switch (aVar.ordinal()) {
            case 0:
                this.x.c(lVar);
                break;
            case 1:
                this.x.f(lVar);
                break;
            case 2:
                this.x.a(lVar);
                break;
            case 3:
                this.x.d(lVar);
                break;
            case 4:
                this.x.e(lVar);
                break;
            case 5:
                this.x.b(lVar);
                break;
            case 6:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        j jVar = this.y;
        if (jVar != null) {
            jVar.a(lVar, aVar);
        }
    }
}
