package d.t.a;

import android.view.View;
import d.t.a.b;

public class t implements b.C0042b {
    public final /* synthetic */ s a;

    public t(s sVar) {
        this.a = sVar;
    }

    public int a() {
        return this.a.getChildCount();
    }

    public void b(int i2) {
        View childAt = this.a.getChildAt(i2);
        if (childAt != null) {
            if (this.a != null) {
                s.b(childAt);
                childAt.clearAnimation();
            } else {
                throw null;
            }
        }
        this.a.removeViewAt(i2);
    }

    public View a(int i2) {
        return this.a.getChildAt(i2);
    }
}
