package e.c.a.b.i;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import e.c.a.b.i.e;

public class c extends AnimatorListenerAdapter {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ e.d b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ e f1270c;

    public c(e eVar, boolean z, e.d dVar) {
        this.f1270c = eVar;
        this.a = z;
        this.b = dVar;
    }

    public void onAnimationEnd(Animator animator) {
        e eVar = this.f1270c;
        eVar.a = 0;
        eVar.b = null;
        e.d dVar = this.b;
        if (dVar != null) {
            a aVar = (a) dVar;
            throw null;
        }
    }

    public void onAnimationStart(Animator animator) {
        this.f1270c.o.a(0, this.a);
        e eVar = this.f1270c;
        eVar.a = 2;
        eVar.b = animator;
    }
}
