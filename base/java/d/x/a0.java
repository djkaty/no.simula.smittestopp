package d.x;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

public class a0 extends AnimatorListenerAdapter {
    public final /* synthetic */ s a;
    public final /* synthetic */ View b;

    public a0(b0 b0Var, s sVar, View view) {
        this.a = sVar;
        this.b = view;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.a(this.b);
    }
}
