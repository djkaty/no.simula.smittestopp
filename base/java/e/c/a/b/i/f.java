package e.c.a.b.i;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.view.View;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import e.c.a.b.l.a;
import e.c.a.b.l.b;
import java.util.ArrayList;

public class f extends e {
    public InsetDrawable C;

    public f(e.c.a.b.j.f fVar, b bVar) {
        super(fVar, bVar);
    }

    public void a(float f2, float f3, float f4) {
        if (Build.VERSION.SDK_INT == 21) {
            this.o.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(e.w, a(f2, f4));
            stateListAnimator.addState(e.x, a(f2, f3));
            stateListAnimator.addState(e.y, a(f2, f3));
            stateListAnimator.addState(e.z, a(f2, f3));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.o, "elevation", new float[]{f2}).setDuration(0));
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 22 && i2 <= 24) {
                e.c.a.b.j.f fVar = this.o;
                arrayList.add(ObjectAnimator.ofFloat(fVar, View.TRANSLATION_Z, new float[]{fVar.getTranslationZ()}).setDuration(100));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.o, View.TRANSLATION_Z, new float[]{0.0f}).setDuration(100));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(e.v);
            stateListAnimator.addState(e.A, animatorSet);
            stateListAnimator.addState(e.B, a(0.0f, 0.0f));
            this.o.setStateListAnimator(stateListAnimator);
        }
        if (FloatingActionButton.this.G) {
            g();
        }
    }

    public void a(ColorStateList colorStateList) {
    }

    public void b(Rect rect) {
        FloatingActionButton floatingActionButton = FloatingActionButton.this;
        if (floatingActionButton.G) {
            InsetDrawable insetDrawable = new InsetDrawable((Drawable) null, rect.left, rect.top, rect.right, rect.bottom);
            this.C = insetDrawable;
            f.super.setBackgroundDrawable(insetDrawable);
            return;
        }
        f.super.setBackgroundDrawable((Drawable) null);
    }

    public void c() {
    }

    public void d() {
        g();
    }

    public boolean e() {
        return false;
    }

    public final Animator a(float f2, float f3) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.o, "elevation", new float[]{f2}).setDuration(0)).with(ObjectAnimator.ofFloat(this.o, View.TRANSLATION_Z, new float[]{f3}).setDuration(100));
        animatorSet.setInterpolator(e.v);
        return animatorSet;
    }

    public float a() {
        return this.o.getElevation();
    }

    public void a(int[] iArr) {
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        if (this.o.isEnabled()) {
            this.o.setElevation(this.f1277i);
            if (this.o.isPressed()) {
                this.o.setTranslationZ(this.f1279k);
            } else if (this.o.isFocused() || this.o.isHovered()) {
                this.o.setTranslationZ(this.f1278j);
            } else {
                this.o.setTranslationZ(0.0f);
            }
        } else {
            this.o.setElevation(0.0f);
            this.o.setTranslationZ(0.0f);
        }
    }

    public void a(Rect rect) {
        b bVar = this.p;
        if (FloatingActionButton.this.G) {
            float elevation = this.o.getElevation() + this.f1279k;
            int ceil = (int) Math.ceil((double) a.a(elevation, ((float) FloatingActionButton.this.getSizeDimension()) / 2.0f, false));
            int ceil2 = (int) Math.ceil((double) (elevation * 1.5f));
            rect.set(ceil, ceil2, ceil, ceil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }
}
