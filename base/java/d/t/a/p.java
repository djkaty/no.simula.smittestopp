package d.t.a;

import android.view.View;
import d.t.a.s;

public final class p extends r {
    public p(s.k kVar) {
        super(kVar, (p) null);
    }

    public int a() {
        s.k kVar = this.a;
        return kVar.o - kVar.h();
    }

    public int b() {
        return this.a.g();
    }

    public int c() {
        s.k kVar = this.a;
        return (kVar.o - kVar.g()) - this.a.h();
    }

    public int b(View view) {
        s.l lVar = (s.l) view.getLayoutParams();
        if (this.a != null) {
            return (view.getLeft() - ((s.l) view.getLayoutParams()).b.left) - lVar.leftMargin;
        }
        throw null;
    }

    public int a(View view) {
        s.l lVar = (s.l) view.getLayoutParams();
        if (this.a != null) {
            return view.getRight() + ((s.l) view.getLayoutParams()).b.right + lVar.rightMargin;
        }
        throw null;
    }
}
