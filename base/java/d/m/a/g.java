package d.m.a;

import android.animation.Animator;
import android.view.animation.Animation;

public class g {
    public final Animation a;
    public final Animator b;

    public g(Animation animation) {
        this.a = animation;
        this.b = null;
        if (animation == null) {
            throw new IllegalStateException("Animation cannot be null");
        }
    }

    public g(Animator animator) {
        this.a = null;
        this.b = animator;
        if (animator == null) {
            throw new IllegalStateException("Animator cannot be null");
        }
    }
}
