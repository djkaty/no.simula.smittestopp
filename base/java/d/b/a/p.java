package d.b.a;

import android.view.View;
import d.i.i.n;
import d.i.i.t;
import d.i.i.u;

public class p extends u {
    public final /* synthetic */ k a;

    public p(k kVar) {
        this.a = kVar;
    }

    public void a(View view) {
        this.a.L.setAlpha(1.0f);
        this.a.O.a((t) null);
        this.a.O = null;
    }

    public void b(View view) {
        this.a.L.setVisibility(0);
        this.a.L.sendAccessibilityEvent(32);
        if (this.a.L.getParent() instanceof View) {
            n.y((View) this.a.L.getParent());
        }
    }
}
