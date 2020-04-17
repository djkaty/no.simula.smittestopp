package e.c.a.b.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import d.f.h;
import e.a.a.a.a;
import java.util.ArrayList;
import java.util.List;

public class g {
    public final h<String, h> a = new h<>();

    public h a(String str) {
        if (this.a.getOrDefault(str, null) != null) {
            return this.a.getOrDefault(str, null);
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((g) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return 10 + g.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.a + "}\n";
    }

    public static g a(Context context, int i2) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i2);
            if (loadAnimator instanceof AnimatorSet) {
                return a((List<Animator>) ((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return a((List<Animator>) arrayList);
        } catch (Exception e2) {
            StringBuilder a2 = a.a("Can't load animation resource ID #0x");
            a2.append(Integer.toHexString(i2));
            Log.w("MotionSpec", a2.toString(), e2);
            return null;
        }
    }

    public static g a(List<Animator> list) {
        g gVar = new g();
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            Animator animator = list.get(i2);
            if (animator instanceof ObjectAnimator) {
                ObjectAnimator objectAnimator = (ObjectAnimator) animator;
                String propertyName = objectAnimator.getPropertyName();
                long startDelay = objectAnimator.getStartDelay();
                long duration = objectAnimator.getDuration();
                TimeInterpolator interpolator = objectAnimator.getInterpolator();
                if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                    interpolator = a.a;
                } else if (interpolator instanceof AccelerateInterpolator) {
                    interpolator = a.b;
                } else if (interpolator instanceof DecelerateInterpolator) {
                    interpolator = a.f1230c;
                }
                h hVar = new h(startDelay, duration, interpolator);
                hVar.f1234d = objectAnimator.getRepeatCount();
                hVar.f1235e = objectAnimator.getRepeatMode();
                gVar.a.put(propertyName, hVar);
                i2++;
            } else {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
        }
        return gVar;
    }
}
