package d.t.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import d.t.a.s;

public class f extends AnimatorListenerAdapter {
    public final /* synthetic */ s.x a;
    public final /* synthetic */ ViewPropertyAnimator b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f768c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f769d;

    public f(k kVar, s.x xVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f769d = kVar;
        this.a = xVar;
        this.b = viewPropertyAnimator;
        this.f768c = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.b.setListener((Animator.AnimatorListener) null);
        this.f768c.setAlpha(1.0f);
        this.f769d.a(this.a);
        this.f769d.q.remove(this.a);
        this.f769d.d();
    }

    public void onAnimationStart(Animator animator) {
        if (this.f769d == null) {
            throw null;
        }
    }
}
