package d.o;

import android.app.Activity;
import android.os.Bundle;
import d.o.g;

public class u extends c {
    public final /* synthetic */ t x;

    public u(t tVar) {
        this.x = tVar;
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        v.a(activity).x = this.x.E;
    }

    public void onActivityPaused(Activity activity) {
        t tVar = this.x;
        int i2 = tVar.y - 1;
        tVar.y = i2;
        if (i2 == 0) {
            tVar.B.postDelayed(tVar.D, 700);
        }
    }

    public void onActivityStopped(Activity activity) {
        t tVar = this.x;
        int i2 = tVar.x - 1;
        tVar.x = i2;
        if (i2 == 0 && tVar.z) {
            tVar.C.a(g.a.ON_STOP);
            tVar.A = true;
        }
    }
}
