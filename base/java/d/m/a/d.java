package d.m.a;

import android.animation.Animator;
import android.view.View;
import androidx.fragment.app.Fragment;
import d.i.e.a;

public final class d implements a.C0023a {
    public final /* synthetic */ Fragment a;

    public d(Fragment fragment) {
        this.a = fragment;
    }

    public void a() {
        if (this.a.getAnimatingAway() != null) {
            View animatingAway = this.a.getAnimatingAway();
            this.a.setAnimatingAway((View) null);
            animatingAway.clearAnimation();
        }
        this.a.setAnimator((Animator) null);
    }
}
