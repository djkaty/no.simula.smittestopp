package d.x;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Paint;
import android.view.View;
import d.i.i.n;
import d.x.h;

public class c extends b0 {

    public class a extends k {
        public final /* synthetic */ View a;

        public a(c cVar, View view) {
            this.a = view;
        }

        public void d(h hVar) {
            v.a.a(this.a, 1.0f);
            v.a.a(this.a);
            hVar.b((h.d) this);
        }
    }

    public static class b extends AnimatorListenerAdapter {
        public final View a;
        public boolean b = false;

        public b(View view) {
            this.a = view;
        }

        public void onAnimationEnd(Animator animator) {
            v.a.a(this.a, 1.0f);
            if (this.b) {
                this.a.setLayerType(0, (Paint) null);
            }
        }

        public void onAnimationStart(Animator animator) {
            if (n.r(this.a) && this.a.getLayerType() == 0) {
                this.b = true;
                this.a.setLayerType(2, (Paint) null);
            }
        }
    }

    public c(int i2) {
        if ((i2 & -4) == 0) {
            this.f0 = i2;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    public final Animator a(View view, float f2, float f3) {
        if (f2 == f3) {
            return null;
        }
        v.a.a(view, f2);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, v.f977d, new float[]{f3});
        ofFloat.addListener(new b(view));
        a((h.d) new a(this, view));
        return ofFloat;
    }

    public void c(p pVar) {
        d(pVar);
        pVar.a.put("android:fade:transitionAlpha", Float.valueOf(v.b(pVar.b)));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0007, code lost:
        r1 = (java.lang.Float) r3.a.get("android:fade:transitionAlpha");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.animation.Animator a(android.view.ViewGroup r1, android.view.View r2, d.x.p r3, d.x.p r4) {
        /*
            r0 = this;
            d.x.z r1 = d.x.v.a
            r1.c(r2)
            if (r3 == 0) goto L_0x0018
            java.util.Map<java.lang.String, java.lang.Object> r1 = r3.a
            java.lang.String r3 = "android:fade:transitionAlpha"
            java.lang.Object r1 = r1.get(r3)
            java.lang.Float r1 = (java.lang.Float) r1
            if (r1 == 0) goto L_0x0018
            float r1 = r1.floatValue()
            goto L_0x001a
        L_0x0018:
            r1 = 1065353216(0x3f800000, float:1.0)
        L_0x001a:
            r3 = 0
            android.animation.Animator r1 = r0.a(r2, r1, r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.x.c.a(android.view.ViewGroup, android.view.View, d.x.p, d.x.p):android.animation.Animator");
    }
}
