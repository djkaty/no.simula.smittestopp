package e.c.a.b.d;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import d.b.d.i.g;
import d.b.d.i.i;

public final class b extends g {
    public b(Context context) {
        super(context);
    }

    public MenuItem a(int i2, int i3, int i4, CharSequence charSequence) {
        if (size() + 1 <= 5) {
            j();
            MenuItem a = super.a(i2, i3, i4, charSequence);
            ((i) a).b(true);
            i();
            return a;
        }
        throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
    }

    public SubMenu addSubMenu(int i2, int i3, int i4, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }
}
