package d.m.a;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.Fragment;
import d.f.a;
import d.m.a.f0;
import java.util.ArrayList;

public final class e0 implements Runnable {
    public final /* synthetic */ f0.b A;
    public final /* synthetic */ ArrayList B;
    public final /* synthetic */ View C;
    public final /* synthetic */ Fragment D;
    public final /* synthetic */ Fragment E;
    public final /* synthetic */ boolean F;
    public final /* synthetic */ ArrayList G;
    public final /* synthetic */ Object H;
    public final /* synthetic */ Rect I;
    public final /* synthetic */ k0 x;
    public final /* synthetic */ a y;
    public final /* synthetic */ Object z;

    public e0(k0 k0Var, a aVar, Object obj, f0.b bVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z2, ArrayList arrayList2, Object obj2, Rect rect) {
        this.x = k0Var;
        this.y = aVar;
        this.z = obj;
        this.A = bVar;
        this.B = arrayList;
        this.C = view;
        this.D = fragment;
        this.E = fragment2;
        this.F = z2;
        this.G = arrayList2;
        this.H = obj2;
        this.I = rect;
    }

    public void run() {
        a<String, View> a = f0.a(this.x, (a<String, String>) this.y, this.z, this.A);
        if (a != null) {
            this.B.addAll(a.values());
            this.B.add(this.C);
        }
        f0.a(this.D, this.E, this.F, a, false);
        Object obj = this.z;
        if (obj != null) {
            this.x.b(obj, (ArrayList<View>) this.G, (ArrayList<View>) this.B);
            View a2 = f0.a(a, this.A, this.H, this.F);
            if (a2 != null) {
                this.x.a(a2, this.I);
            }
        }
    }
}
