package d.m.a;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.Fragment;
import d.f.a;

public final class d0 implements Runnable {
    public final /* synthetic */ a A;
    public final /* synthetic */ View B;
    public final /* synthetic */ k0 C;
    public final /* synthetic */ Rect D;
    public final /* synthetic */ Fragment x;
    public final /* synthetic */ Fragment y;
    public final /* synthetic */ boolean z;

    public d0(Fragment fragment, Fragment fragment2, boolean z2, a aVar, View view, k0 k0Var, Rect rect) {
        this.x = fragment;
        this.y = fragment2;
        this.z = z2;
        this.A = aVar;
        this.B = view;
        this.C = k0Var;
        this.D = rect;
    }

    public void run() {
        f0.a(this.x, this.y, this.z, (a<String, View>) this.A, false);
        View view = this.B;
        if (view != null) {
            this.C.a(view, this.D);
        }
    }
}
