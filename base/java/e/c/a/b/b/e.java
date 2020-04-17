package e.c.a.b.b;

import android.view.View;
import d.i.i.n;

public class e {
    public final View a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f1250c;

    /* renamed from: d  reason: collision with root package name */
    public int f1251d;

    /* renamed from: e  reason: collision with root package name */
    public int f1252e;

    public e(View view) {
        this.a = view;
    }

    public final void a() {
        View view = this.a;
        n.d(view, this.f1251d - (view.getTop() - this.b));
        View view2 = this.a;
        n.c(view2, this.f1252e - (view2.getLeft() - this.f1250c));
    }
}
