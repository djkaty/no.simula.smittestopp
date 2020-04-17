package d.s.s;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.navigation.NavController;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import d.s.i;
import d.s.j;
import java.lang.ref.WeakReference;

public final class e implements NavController.b {
    public final /* synthetic */ WeakReference a;
    public final /* synthetic */ NavController b;

    public e(WeakReference weakReference, NavController navController) {
        this.a = weakReference;
        this.b = navController;
    }

    public void a(NavController navController, i iVar, Bundle bundle) {
        j jVar;
        BottomNavigationView bottomNavigationView = (BottomNavigationView) this.a.get();
        if (bottomNavigationView == null) {
            this.b.f89l.remove(this);
            return;
        }
        Menu menu = bottomNavigationView.getMenu();
        int size = menu.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = menu.getItem(i2);
            int itemId = item.getItemId();
            j jVar2 = iVar;
            while (jVar2.z != itemId && (jVar = jVar2.y) != null) {
                jVar2 = jVar;
            }
            if (jVar2.z == itemId) {
                item.setChecked(true);
            }
        }
    }
}
