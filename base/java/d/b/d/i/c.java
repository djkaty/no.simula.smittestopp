package d.b.d.i;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import d.f.a;
import d.i.d.a.b;
import java.util.Map;

public abstract class c {
    public final Context a;
    public Map<b, MenuItem> b;

    /* renamed from: c  reason: collision with root package name */
    public Map<d.i.d.a.c, SubMenu> f292c;

    public c(Context context) {
        this.a = context;
    }

    public final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof b)) {
            return menuItem;
        }
        b bVar = (b) menuItem;
        if (this.b == null) {
            this.b = new a();
        }
        MenuItem menuItem2 = this.b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        j jVar = new j(this.a, bVar);
        this.b.put(bVar, jVar);
        return jVar;
    }

    public final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof d.i.d.a.c)) {
            return subMenu;
        }
        d.i.d.a.c cVar = (d.i.d.a.c) subMenu;
        if (this.f292c == null) {
            this.f292c = new a();
        }
        SubMenu subMenu2 = this.f292c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        s sVar = new s(this.a, cVar);
        this.f292c.put(cVar, sVar);
        return sVar;
    }
}
