package d.t.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import d.t.a.k;
import d.t.a.s;

public class j extends AnimatorListenerAdapter {
    public final /* synthetic */ k.a a;
    public final /* synthetic */ ViewPropertyAnimator b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f778c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f779d;

    public j(k kVar, k.a aVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f779d = kVar;
        this.a = aVar;
        this.b = viewPropertyAnimator;
        this.f778c = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.b.setListener((Animator.AnimatorListener) null);
        this.f778c.setAlpha(1.0f);
        this.f778c.setTranslationX(0.0f);
        this.f778c.setTranslationY(0.0f);
        this.f779d.a(this.a.b);
        this.f779d.r.remove(this.a.b);
        this.f779d.d();
    }

    public void onAnimationStart(Animator animator) {
        k kVar = this.f779d;
        s.x xVar = this.a.b;
        if (kVar == null) {
            throw null;
        }
    }
}
