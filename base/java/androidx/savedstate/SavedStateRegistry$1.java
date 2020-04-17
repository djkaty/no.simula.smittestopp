package androidx.savedstate;

import d.o.f;
import d.o.g;
import d.o.l;
import d.v.a;

public class SavedStateRegistry$1 implements f {
    public final /* synthetic */ a x;

    public SavedStateRegistry$1(a aVar) {
        this.x = aVar;
    }

    public void a(l lVar, g.a aVar) {
        if (aVar == g.a.ON_START) {
            this.x.f942e = true;
        } else if (aVar == g.a.ON_STOP) {
            this.x.f942e = false;
        }
    }
}
