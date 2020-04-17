package d.b.d;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import d.b.d.a;
import d.b.d.i.g;
import d.b.e.c;
import java.lang.ref.WeakReference;

public class d extends a implements g.a {
    public ActionBarContextView A;
    public a.C0012a B;
    public WeakReference<View> C;
    public boolean D;
    public g E;
    public Context z;

    public d(Context context, ActionBarContextView actionBarContextView, a.C0012a aVar, boolean z2) {
        this.z = context;
        this.A = actionBarContextView;
        this.B = aVar;
        g gVar = new g(actionBarContextView.getContext());
        gVar.f303l = 1;
        this.E = gVar;
        gVar.f296e = this;
    }

    public void a(CharSequence charSequence) {
        this.A.setSubtitle(charSequence);
    }

    public void b(CharSequence charSequence) {
        this.A.setTitle(charSequence);
    }

    public Menu c() {
        return this.E;
    }

    public MenuInflater d() {
        return new f(this.A.getContext());
    }

    public CharSequence e() {
        return this.A.getSubtitle();
    }

    public CharSequence f() {
        return this.A.getTitle();
    }

    public void g() {
        this.B.a((a) this, (Menu) this.E);
    }

    public boolean h() {
        return this.A.O;
    }

    public void a(int i2) {
        this.A.setSubtitle(this.z.getString(i2));
    }

    public void b(int i2) {
        this.A.setTitle(this.z.getString(i2));
    }

    public void a(View view) {
        this.A.setCustomView(view);
        this.C = view != null ? new WeakReference<>(view) : null;
    }

    public View b() {
        WeakReference<View> weakReference = this.C;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public void a() {
        if (!this.D) {
            this.D = true;
            this.A.sendAccessibilityEvent(32);
            this.B.a(this);
        }
    }

    public void a(boolean z2) {
        this.y = z2;
        this.A.setTitleOptional(z2);
    }

    public boolean a(g gVar, MenuItem menuItem) {
        return this.B.a((a) this, menuItem);
    }

    public void a(g gVar) {
        g();
        c cVar = this.A.A;
        if (cVar != null) {
            cVar.g();
        }
    }
}
