package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.c<V> {
    public int a = 0;
    public int b = 2;

    /* renamed from: c  reason: collision with root package name */
    public ViewPropertyAnimator f120c;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f120c = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
    }

    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i2) {
        this.a = v.getMeasuredHeight();
        return false;
    }

    public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2) {
        return i2 == 2;
    }

    public void b(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f120c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.b = 2;
        a(v, 0, 225, e.c.a.b.a.a.f1230c);
    }

    public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5) {
        if (this.b != 1 && i3 > 0) {
            a(v);
        } else if (this.b != 2 && i3 < 0) {
            b(v);
        }
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f120c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.b = 1;
        a(v, this.a, 175, e.c.a.b.a.a.b);
    }

    public final void a(V v, int i2, long j2, TimeInterpolator timeInterpolator) {
        this.f120c = v.animate().translationY((float) i2).setInterpolator(timeInterpolator).setDuration(j2).setListener(new a());
    }
}
