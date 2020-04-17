package androidx.lifecycle;

import d.o.e;
import d.o.g;
import d.o.j;
import d.o.l;
import d.o.p;

public class CompositeGeneratedAdaptersObserver implements j {
    public final e[] x;

    public CompositeGeneratedAdaptersObserver(e[] eVarArr) {
        this.x = eVarArr;
    }

    public void a(l lVar, g.a aVar) {
        p pVar = new p();
        for (e a : this.x) {
            a.a(lVar, aVar, false, pVar);
        }
        for (e a2 : this.x) {
            a2.a(lVar, aVar, true, pVar);
        }
    }
}
