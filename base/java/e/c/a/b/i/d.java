package e.c.a.b.i;

import android.view.ViewTreeObserver;

public class d implements ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ e x;

    public d(e eVar) {
        this.x = eVar;
    }

    public boolean onPreDraw() {
        e eVar = this.x;
        float rotation = eVar.o.getRotation();
        if (eVar.f1276h == rotation) {
            return true;
        }
        eVar.f1276h = rotation;
        return true;
    }
}
