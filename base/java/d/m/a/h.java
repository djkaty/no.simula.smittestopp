package d.m.a;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;
import d.i.i.l;

public class h extends AnimationSet implements Runnable {
    public boolean A;
    public boolean B = true;
    public final ViewGroup x;
    public final View y;
    public boolean z;

    public h(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.x = viewGroup;
        this.y = view;
        addAnimation(animation);
        this.x.post(this);
    }

    public boolean getTransformation(long j2, Transformation transformation) {
        this.B = true;
        if (this.z) {
            return !this.A;
        }
        if (!super.getTransformation(j2, transformation)) {
            this.z = true;
            l.a(this.x, this);
        }
        return true;
    }

    public void run() {
        if (this.z || !this.B) {
            this.x.endViewTransition(this.y);
            this.A = true;
            return;
        }
        this.B = false;
        this.x.post(this);
    }

    public boolean getTransformation(long j2, Transformation transformation, float f2) {
        this.B = true;
        if (this.z) {
            return !this.A;
        }
        if (!super.getTransformation(j2, transformation, f2)) {
            this.z = true;
            l.a(this.x, this);
        }
        return true;
    }
}
