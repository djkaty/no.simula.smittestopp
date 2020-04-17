package d.b.d.i;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import d.b.d.i.g;

public class r extends g implements SubMenu {
    public g A;
    public i B;

    public r(Context context, g gVar, i iVar) {
        super(context);
        this.A = gVar;
        this.B = iVar;
    }

    public void a(g.a aVar) {
        this.A.a(aVar);
    }

    public boolean b(i iVar) {
        return this.A.b(iVar);
    }

    public g c() {
        return this.A.c();
    }

    public boolean e() {
        return this.A.e();
    }

    public boolean f() {
        return this.A.f();
    }

    public boolean g() {
        return this.A.g();
    }

    public MenuItem getItem() {
        return this.B;
    }

    public void setGroupDividerEnabled(boolean z) {
        this.A.setGroupDividerEnabled(z);
    }

    public SubMenu setHeaderIcon(Drawable drawable) {
        a(0, (CharSequence) null, 0, drawable, (View) null);
        return this;
    }

    public SubMenu setHeaderTitle(CharSequence charSequence) {
        a(0, charSequence, 0, (Drawable) null, (View) null);
        return this;
    }

    public SubMenu setHeaderView(View view) {
        a(0, (CharSequence) null, 0, (Drawable) null, view);
        return this;
    }

    public SubMenu setIcon(Drawable drawable) {
        this.B.setIcon(drawable);
        return this;
    }

    public void setQwertyMode(boolean z) {
        this.A.setQwertyMode(z);
    }

    public boolean a(g gVar, MenuItem menuItem) {
        return super.a(gVar, menuItem) || this.A.a(gVar, menuItem);
    }

    public String b() {
        i iVar = this.B;
        int i2 = iVar != null ? iVar.a : 0;
        if (i2 == 0) {
            return null;
        }
        return "android:menu:actionviewstates" + ":" + i2;
    }

    public SubMenu setHeaderIcon(int i2) {
        a(0, (CharSequence) null, i2, (Drawable) null, (View) null);
        return this;
    }

    public SubMenu setHeaderTitle(int i2) {
        a(i2, (CharSequence) null, 0, (Drawable) null, (View) null);
        return this;
    }

    public SubMenu setIcon(int i2) {
        this.B.setIcon(i2);
        return this;
    }

    public boolean a(i iVar) {
        return this.A.a(iVar);
    }
}
