package d.m.a;

import android.view.View;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;

public final class c0 implements Runnable {
    public final /* synthetic */ Fragment A;
    public final /* synthetic */ ArrayList B;
    public final /* synthetic */ ArrayList C;
    public final /* synthetic */ ArrayList D;
    public final /* synthetic */ Object E;
    public final /* synthetic */ Object x;
    public final /* synthetic */ k0 y;
    public final /* synthetic */ View z;

    public c0(Object obj, k0 k0Var, View view, Fragment fragment, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Object obj2) {
        this.x = obj;
        this.y = k0Var;
        this.z = view;
        this.A = fragment;
        this.B = arrayList;
        this.C = arrayList2;
        this.D = arrayList3;
        this.E = obj2;
    }

    public void run() {
        Object obj = this.x;
        if (obj != null) {
            this.y.b(obj, this.z);
            this.C.addAll(f0.a(this.y, this.x, this.A, (ArrayList<View>) this.B, this.z));
        }
        if (this.D != null) {
            if (this.E != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.z);
                this.y.a(this.E, (ArrayList<View>) this.D, (ArrayList<View>) arrayList);
            }
            this.D.clear();
            this.D.add(this.z);
        }
    }
}
