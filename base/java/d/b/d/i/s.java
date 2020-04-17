package d.b.d.i;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import d.i.d.a.c;

public class s extends o implements SubMenu {

    /* renamed from: e  reason: collision with root package name */
    public final c f329e;

    public s(Context context, c cVar) {
        super(context, cVar);
        this.f329e = cVar;
    }

    public void clearHeader() {
        this.f329e.clearHeader();
    }

    public MenuItem getItem() {
        return a(this.f329e.getItem());
    }

    public SubMenu setHeaderIcon(int i2) {
        this.f329e.setHeaderIcon(i2);
        return this;
    }

    public SubMenu setHeaderTitle(int i2) {
        this.f329e.setHeaderTitle(i2);
        return this;
    }

    public SubMenu setHeaderView(View view) {
        this.f329e.setHeaderView(view);
        return this;
    }

    public SubMenu setIcon(int i2) {
        this.f329e.setIcon(i2);
        return this;
    }

    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f329e.setHeaderIcon(drawable);
        return this;
    }

    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f329e.setHeaderTitle(charSequence);
        return this;
    }

    public SubMenu setIcon(Drawable drawable) {
        this.f329e.setIcon(drawable);
        return this;
    }
}
