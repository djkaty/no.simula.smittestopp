package d.b.e;

import android.view.View;
import android.view.Window;
import d.b.d.i.a;

public class y0 implements View.OnClickListener {
    public final a x = new a(this.y.a.getContext(), 0, 16908332, 0, 0, this.y.f409i);
    public final /* synthetic */ z0 y;

    public y0(z0 z0Var) {
        this.y = z0Var;
    }

    public void onClick(View view) {
        z0 z0Var = this.y;
        Window.Callback callback = z0Var.f412l;
        if (callback != null && z0Var.m) {
            callback.onMenuItemSelected(0, this.x);
        }
    }
}
