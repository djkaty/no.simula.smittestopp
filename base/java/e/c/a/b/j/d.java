package e.c.a.b.j;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import d.x.h;
import d.x.p;
import java.util.Map;

public class d extends h {

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ TextView a;

        public a(d dVar, TextView textView) {
            this.a = textView;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.a.setScaleX(floatValue);
            this.a.setScaleY(floatValue);
        }
    }

    public void a(p pVar) {
        d(pVar);
    }

    public void c(p pVar) {
        d(pVar);
    }

    public final void d(p pVar) {
        View view = pVar.b;
        if (view instanceof TextView) {
            pVar.a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    public Animator a(ViewGroup viewGroup, p pVar, p pVar2) {
        if (pVar == null || pVar2 == null || !(pVar.b instanceof TextView)) {
            return null;
        }
        View view = pVar2.b;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        Map<String, Object> map = pVar.a;
        Map<String, Object> map2 = pVar2.a;
        float f2 = 1.0f;
        float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        if (map2.get("android:textscale:scale") != null) {
            f2 = ((Float) map2.get("android:textscale:scale")).floatValue();
        }
        if (floatValue == f2) {
            return null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{floatValue, f2});
        ofFloat.addUpdateListener(new a(this, textView));
        return ofFloat;
    }
}
