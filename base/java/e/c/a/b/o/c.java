package e.c.a.b.o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.transformation.FabTransformationBehavior;
import e.c.a.b.g.c;

public class c extends AnimatorListenerAdapter {
    public final /* synthetic */ e.c.a.b.g.c a;

    public c(FabTransformationBehavior fabTransformationBehavior, e.c.a.b.g.c cVar) {
        this.a = cVar;
    }

    public void onAnimationEnd(Animator animator) {
        c.e revealInfo = this.a.getRevealInfo();
        revealInfo.f1267c = Float.MAX_VALUE;
        this.a.setRevealInfo(revealInfo);
    }
}
