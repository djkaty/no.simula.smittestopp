package d.m.a;

import androidx.fragment.app.Fragment;
import d.i.e.a;
import d.m.a.f0;
import d.m.a.p;

public final class z implements Runnable {
    public final /* synthetic */ f0.a x;
    public final /* synthetic */ Fragment y;
    public final /* synthetic */ a z;

    public z(f0.a aVar, Fragment fragment, a aVar2) {
        this.x = aVar;
        this.y = fragment;
        this.z = aVar2;
    }

    public void run() {
        ((p.b) this.x).a(this.y, this.z);
    }
}
