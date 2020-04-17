package d.m.a;

import android.view.View;
import d.i.i.n;
import java.util.ArrayList;
import java.util.Map;

public class j0 implements Runnable {
    public final /* synthetic */ ArrayList x;
    public final /* synthetic */ Map y;

    public j0(k0 k0Var, ArrayList arrayList, Map map) {
        this.x = arrayList;
        this.y = map;
    }

    public void run() {
        int size = this.x.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = (View) this.x.get(i2);
            view.setTransitionName((String) this.y.get(n.n(view)));
        }
    }
}
