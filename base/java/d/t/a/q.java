package d.t.a;

import android.view.View;
import d.t.a.s;

public final class q extends r {
    public q(s.k kVar) {
        super(kVar, (p) null);
    }

    public int a() {
        s.k kVar = this.a;
        return kVar.p - kVar.f();
    }

    public int b() {
        return this.a.i();
    }

    public int c() {
        s.k kVar = this.a;
        return (kVar.p - kVar.i()) - this.a.f();
    }

    public int b(View view) {
        s.l lVar = (s.l) view.getLayoutParams();
        if (this.a != null) {
            return (view.getTop() - ((s.l) view.getLayoutParams()).b.top) - lVar.topMargin;
        }
        throw null;
    }

    public int a(View view) {
        s.l lVar = (s.l) view.getLayoutParams();
        if (this.a != null) {
            return view.getBottom() + ((s.l) view.getLayoutParams()).b.bottom + lVar.bottomMargin;
        }
        throw null;
    }
}
