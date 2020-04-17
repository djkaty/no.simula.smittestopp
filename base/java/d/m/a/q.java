package d.m.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;

public class q extends AnimatorListenerAdapter {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Fragment f674c;

    public q(p pVar, ViewGroup viewGroup, View view, Fragment fragment) {
        this.a = viewGroup;
        this.b = view;
        this.f674c = fragment;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.endViewTransition(this.b);
        animator.removeListener(this);
        Fragment fragment = this.f674c;
        View view = fragment.mView;
        if (view != null && fragment.mHidden) {
            view.setVisibility(8);
        }
    }
}
