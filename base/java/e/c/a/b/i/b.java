package e.c.a.b.i;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import e.c.a.b.i.e;

public class b extends AnimatorListenerAdapter {
    public boolean a;
    public final /* synthetic */ boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ e.d f1268c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ e f1269d;

    public b(e eVar, boolean z, e.d dVar) {
        this.f1269d = eVar;
        this.b = z;
        this.f1268c = dVar;
    }

    public void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    public void onAnimationEnd(Animator animator) {
        e eVar = this.f1269d;
        eVar.a = 0;
        eVar.b = null;
        if (!this.a) {
            eVar.o.a(this.b ? 8 : 4, this.b);
            e.d dVar = this.f1268c;
            if (dVar != null) {
                a aVar = (a) dVar;
                throw null;
            }
        }
    }

    public void onAnimationStart(Animator animator) {
        this.f1269d.o.a(0, this.b);
        e eVar = this.f1269d;
        eVar.a = 1;
        eVar.b = animator;
        this.a = false;
    }
}
