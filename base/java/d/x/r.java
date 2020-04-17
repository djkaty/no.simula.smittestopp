package d.x;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

public class r implements s {
    public final ViewGroupOverlay a;

    public r(ViewGroup viewGroup) {
        this.a = viewGroup.getOverlay();
    }

    public void a(View view) {
        this.a.remove(view);
    }
}
