package d.m.a;

import android.view.View;
import d.i.i.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public class i0 implements Runnable {
    public final /* synthetic */ ArrayList x;
    public final /* synthetic */ Map y;

    public i0(k0 k0Var, ArrayList arrayList, Map map) {
        this.x = arrayList;
        this.y = map;
    }

    public void run() {
        String str;
        int size = this.x.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = (View) this.x.get(i2);
            String n = n.n(view);
            if (n != null) {
                Iterator it = this.y.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (n.equals(entry.getValue())) {
                        str = (String) entry.getKey();
                        break;
                    }
                }
                view.setTransitionName(str);
            }
        }
    }
}
