package d.m.a;

import android.view.View;
import d.i.i.n;
import java.util.ArrayList;

public class h0 implements Runnable {
    public final /* synthetic */ ArrayList A;
    public final /* synthetic */ ArrayList B;
    public final /* synthetic */ int x;
    public final /* synthetic */ ArrayList y;
    public final /* synthetic */ ArrayList z;

    public h0(k0 k0Var, int i2, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.x = i2;
        this.y = arrayList;
        this.z = arrayList2;
        this.A = arrayList3;
        this.B = arrayList4;
    }

    public void run() {
        for (int i2 = 0; i2 < this.x; i2++) {
            n.a((View) this.y.get(i2), (String) this.z.get(i2));
            ((View) this.A.get(i2)).setTransitionName((String) this.B.get(i2));
        }
    }
}
