package e.c.a.b.b;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

public class d<V extends View> extends CoordinatorLayout.c<V> {
    public e a;
    public int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f1249c = 0;

    public d() {
    }

    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i2) {
        b(coordinatorLayout, v, i2);
        if (this.a == null) {
            this.a = new e(v);
        }
        e eVar = this.a;
        eVar.b = eVar.a.getTop();
        eVar.f1250c = eVar.a.getLeft();
        eVar.a();
        int i3 = this.b;
        if (i3 != 0) {
            e eVar2 = this.a;
            if (eVar2.f1251d != i3) {
                eVar2.f1251d = i3;
                eVar2.a();
            }
            this.b = 0;
        }
        int i4 = this.f1249c;
        if (i4 == 0) {
            return true;
        }
        e eVar3 = this.a;
        if (eVar3.f1252e != i4) {
            eVar3.f1252e = i4;
            eVar3.a();
        }
        this.f1249c = 0;
        return true;
    }

    public void b(CoordinatorLayout coordinatorLayout, V v, int i2) {
        coordinatorLayout.b(v, i2);
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean a(int i2) {
        e eVar = this.a;
        if (eVar == null) {
            this.b = i2;
            return false;
        } else if (eVar.f1251d == i2) {
            return false;
        } else {
            eVar.f1251d = i2;
            eVar.a();
            return true;
        }
    }

    public int a() {
        e eVar = this.a;
        if (eVar != null) {
            return eVar.f1251d;
        }
        return 0;
    }
}
