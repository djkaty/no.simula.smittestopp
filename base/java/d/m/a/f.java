package d.m.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import d.i.e.a;
import d.m.a.f0;
import d.m.a.p;

public final class f extends AnimatorListenerAdapter {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Fragment f647c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f0.a f648d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ a f649e;

    public f(ViewGroup viewGroup, View view, Fragment fragment, f0.a aVar, a aVar2) {
        this.a = viewGroup;
        this.b = view;
        this.f647c = fragment;
        this.f648d = aVar;
        this.f649e = aVar2;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.endViewTransition(this.b);
        Animator animator2 = this.f647c.getAnimator();
        this.f647c.setAnimator((Animator) null);
        if (animator2 != null && this.a.indexOfChild(this.b) < 0) {
            ((p.b) this.f648d).a(this.f647c, this.f649e);
        }
    }
}
