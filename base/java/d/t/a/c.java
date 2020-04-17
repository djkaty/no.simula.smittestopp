package d.t.a;

import android.view.View;
import android.view.ViewPropertyAnimator;
import d.t.a.k;
import d.t.a.s;
import java.util.ArrayList;
import java.util.Iterator;

public class c implements Runnable {
    public final /* synthetic */ ArrayList x;
    public final /* synthetic */ k y;

    public c(k kVar, ArrayList arrayList) {
        this.y = kVar;
        this.x = arrayList;
    }

    public void run() {
        Iterator it = this.x.iterator();
        while (it.hasNext()) {
            k.b bVar = (k.b) it.next();
            k kVar = this.y;
            s.x xVar = bVar.a;
            int i2 = bVar.b;
            int i3 = bVar.f789c;
            int i4 = bVar.f790d;
            int i5 = bVar.f791e;
            if (kVar != null) {
                View view = xVar.a;
                int i6 = i4 - i2;
                int i7 = i5 - i3;
                if (i6 != 0) {
                    view.animate().translationX(0.0f);
                }
                if (i7 != 0) {
                    view.animate().translationY(0.0f);
                }
                ViewPropertyAnimator animate = view.animate();
                kVar.p.add(xVar);
                animate.setDuration(kVar.f815e).setListener(new h(kVar, xVar, i6, view, i7, animate)).start();
            } else {
                throw null;
            }
        }
        this.x.clear();
        this.y.m.remove(this.x);
    }
}
