package d.t.a;

import android.view.View;
import android.view.ViewPropertyAnimator;
import d.t.a.s;
import java.util.ArrayList;
import java.util.Iterator;

public class e implements Runnable {
    public final /* synthetic */ ArrayList x;
    public final /* synthetic */ k y;

    public e(k kVar, ArrayList arrayList) {
        this.y = kVar;
        this.x = arrayList;
    }

    public void run() {
        Iterator it = this.x.iterator();
        while (it.hasNext()) {
            s.x xVar = (s.x) it.next();
            k kVar = this.y;
            if (kVar != null) {
                View view = xVar.a;
                ViewPropertyAnimator animate = view.animate();
                kVar.o.add(xVar);
                animate.alpha(1.0f).setDuration(kVar.f813c).setListener(new g(kVar, xVar, view, animate)).start();
            } else {
                throw null;
            }
        }
        this.x.clear();
        this.y.f784l.remove(this.x);
    }
}
