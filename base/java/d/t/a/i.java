package d.t.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import d.t.a.k;
import d.t.a.s;

public class i extends AnimatorListenerAdapter {
    public final /* synthetic */ k.a a;
    public final /* synthetic */ ViewPropertyAnimator b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f776c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f777d;

    public i(k kVar, k.a aVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f777d = kVar;
        this.a = aVar;
        this.b = viewPropertyAnimator;
        this.f776c = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.b.setListener((Animator.AnimatorListener) null);
        this.f776c.setAlpha(1.0f);
        this.f776c.setTranslationX(0.0f);
        this.f776c.setTranslationY(0.0f);
        this.f777d.a(this.a.a);
        this.f777d.r.remove(this.a.a);
        this.f777d.d();
    }

    public void onAnimationStart(Animator animator) {
        k kVar = this.f777d;
        s.x xVar = this.a.a;
        if (kVar == null) {
            throw null;
        }
    }
}
