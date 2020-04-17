package d.i.i;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import d.b.d.i.j;

public abstract class b {
    public a a;

    public interface a {
    }

    public b(Context context) {
    }

    public View a(MenuItem menuItem) {
        return ((j.a) this).b.onCreateActionView();
    }

    public boolean a() {
        return true;
    }

    public boolean b() {
        return false;
    }

    public void a(a aVar) {
        if (!(this.a == null || aVar == null)) {
            StringBuilder a2 = e.a.a.a.a.a("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ");
            a2.append(getClass().getSimpleName());
            a2.append(" instance while it is still in use somewhere else?");
            Log.w("ActionProvider(support)", a2.toString());
        }
        this.a = aVar;
    }
}
