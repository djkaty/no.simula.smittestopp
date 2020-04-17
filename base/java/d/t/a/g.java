package d.t.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import d.t.a.s;

public class g extends AnimatorListenerAdapter {
    public final /* synthetic */ s.x a;
    public final /* synthetic */ View b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f770c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ k f771d;

    public g(k kVar, s.x xVar, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f771d = kVar;
        this.a = xVar;
        this.b = view;
        this.f770c = viewPropertyAnimator;
    }

    public void onAnimationCancel(Animator animator) {
        this.b.setAlpha(1.0f);
    }

    public void onAnimationEnd(Animator animator) {
        this.f770c.setListener((Animator.AnimatorListener) null);
        this.f771d.a(this.a);
        this.f771d.o.remove(this.a);
        this.f771d.d();
    }

    public void onAnimationStart(Animator animator) {
        if (this.f771d == null) {
            throw null;
        }
    }
}
