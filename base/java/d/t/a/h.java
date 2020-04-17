package d.t.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import d.t.a.s;

public class h extends AnimatorListenerAdapter {
    public final /* synthetic */ s.x a;
    public final /* synthetic */ int b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f772c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f773d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f774e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ k f775f;

    public h(k kVar, s.x xVar, int i2, View view, int i3, ViewPropertyAnimator viewPropertyAnimator) {
        this.f775f = kVar;
        this.a = xVar;
        this.b = i2;
        this.f772c = view;
        this.f773d = i3;
        this.f774e = viewPropertyAnimator;
    }

    public void onAnimationCancel(Animator animator) {
        if (this.b != 0) {
            this.f772c.setTranslationX(0.0f);
        }
        if (this.f773d != 0) {
            this.f772c.setTranslationY(0.0f);
        }
    }

    public void onAnimationEnd(Animator animator) {
        this.f774e.setListener((Animator.AnimatorListener) null);
        this.f775f.a(this.a);
        this.f775f.p.remove(this.a);
        this.f775f.d();
    }

    public void onAnimationStart(Animator animator) {
        if (this.f775f == null) {
            throw null;
        }
    }
}
