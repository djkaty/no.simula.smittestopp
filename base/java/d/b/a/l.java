package d.b.a;

import android.view.View;
import android.view.WindowInsets;
import d.i.i.k;
import d.i.i.n;
import d.i.i.w;

public class l implements k {
    public final /* synthetic */ k a;

    public l(k kVar) {
        this.a = kVar;
    }

    public w a(View view, w wVar) {
        int d2 = wVar.d();
        int f2 = this.a.f(d2);
        if (d2 != f2) {
            wVar = new w(((WindowInsets) wVar.a).replaceSystemWindowInsets(wVar.b(), f2, wVar.c(), wVar.a()));
        }
        return n.a(view, wVar);
    }
}
