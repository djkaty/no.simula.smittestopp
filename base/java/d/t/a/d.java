package d.t.a;

import android.view.View;
import android.view.ViewPropertyAnimator;
import d.t.a.k;
import d.t.a.s;
import java.util.ArrayList;
import java.util.Iterator;

public class d implements Runnable {
    public final /* synthetic */ ArrayList x;
    public final /* synthetic */ k y;

    public d(k kVar, ArrayList arrayList) {
        this.y = kVar;
        this.x = arrayList;
    }

    public void run() {
        View view;
        Iterator it = this.x.iterator();
        while (it.hasNext()) {
            k.a aVar = (k.a) it.next();
            k kVar = this.y;
            View view2 = null;
            if (kVar != null) {
                s.x xVar = aVar.a;
                if (xVar == null) {
                    view = null;
                } else {
                    view = xVar.a;
                }
                s.x xVar2 = aVar.b;
                if (xVar2 != null) {
                    view2 = xVar2.a;
                }
                if (view != null) {
                    ViewPropertyAnimator duration = view.animate().setDuration(kVar.f816f);
                    kVar.r.add(aVar.a);
                    duration.translationX((float) (aVar.f787e - aVar.f785c));
                    duration.translationY((float) (aVar.f788f - aVar.f786d));
                    duration.alpha(0.0f).setListener(new i(kVar, aVar, duration, view)).start();
                }
                if (view2 != null) {
                    ViewPropertyAnimator animate = view2.animate();
                    kVar.r.add(aVar.b);
                    animate.translationX(0.0f).translationY(0.0f).setDuration(kVar.f816f).alpha(1.0f).setListener(new j(kVar, aVar, animate, view2)).start();
                }
            } else {
                throw null;
            }
        }
        this.x.clear();
        this.y.n.remove(this.x);
    }
}
