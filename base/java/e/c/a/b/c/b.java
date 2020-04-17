package e.c.a.b.c;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.bottomappbar.BottomAppBar;

public class b extends AnimatorListenerAdapter {
    public final /* synthetic */ BottomAppBar a;

    public b(BottomAppBar bottomAppBar) {
        this.a = bottomAppBar;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.q0 = null;
    }
}
