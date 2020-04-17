package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$animator;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import d.b.a.r;
import d.b.e.j;
import d.i.i.n;
import e.c.a.b.a.g;
import e.c.a.b.i.c;
import e.c.a.b.i.d;
import e.c.a.b.i.e;
import e.c.a.b.j.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@CoordinatorLayout.d(Behavior.class)
public class FloatingActionButton extends f implements e.c.a.b.h.a {
    public ColorStateList A;
    public PorterDuff.Mode B;
    public ColorStateList C;
    public int D;
    public int E;
    public int F;
    public boolean G;
    public final Rect H;
    public e I;
    public ColorStateList y;
    public PorterDuff.Mode z;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static abstract class a {
    }

    public class b implements e.c.a.b.l.b {
        public b() {
        }
    }

    private e getImpl() {
        if (this.I == null) {
            this.I = new e.c.a.b.i.f(this, new b());
        }
        return this.I;
    }

    public void b(a aVar, boolean z2) {
        e.c.a.b.i.a aVar2;
        e impl = getImpl();
        if (aVar == null) {
            aVar2 = null;
        } else {
            aVar2 = new e.c.a.b.i.a(this);
        }
        if (!impl.b()) {
            Animator animator = impl.b;
            if (animator != null) {
                animator.cancel();
            }
            if (impl.f()) {
                if (impl.o.getVisibility() != 0) {
                    impl.o.setAlpha(0.0f);
                    impl.o.setScaleY(0.0f);
                    impl.o.setScaleX(0.0f);
                    impl.a(0.0f);
                }
                g gVar = impl.f1271c;
                if (gVar == null) {
                    if (impl.f1273e == null) {
                        impl.f1273e = g.a(impl.o.getContext(), R$animator.design_fab_show_motion_spec);
                    }
                    gVar = impl.f1273e;
                }
                AnimatorSet a2 = impl.a(gVar, 1.0f, 1.0f, 1.0f);
                a2.addListener(new c(impl, z2, aVar2));
                ArrayList<Animator.AnimatorListener> arrayList = impl.m;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a2.addListener(it.next());
                    }
                }
                a2.start();
                return;
            }
            impl.o.a(0, z2);
            impl.o.setAlpha(1.0f);
            impl.o.setScaleY(1.0f);
            impl.o.setScaleX(1.0f);
            impl.a(1.0f);
            if (aVar2 != null) {
                throw null;
            }
        }
    }

    public final void c() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            ColorStateList colorStateList = this.A;
            if (colorStateList == null) {
                r.a(drawable);
                return;
            }
            int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
            PorterDuff.Mode mode = this.B;
            if (mode == null) {
                mode = PorterDuff.Mode.SRC_IN;
            }
            drawable.mutate().setColorFilter(j.a(colorForState, mode));
        }
    }

    public void d(Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = getImpl().m;
        if (arrayList != null) {
            arrayList.remove(animatorListener);
        }
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().a(getDrawableState());
    }

    public ColorStateList getBackgroundTintList() {
        return this.y;
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        return this.z;
    }

    public float getCompatElevation() {
        return getImpl().a();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().f1278j;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().f1279k;
    }

    public Drawable getContentBackground() {
        if (getImpl() != null) {
            return null;
        }
        throw null;
    }

    public int getCustomSize() {
        return this.E;
    }

    public int getExpandedComponentIdHint() {
        throw null;
    }

    public g getHideMotionSpec() {
        return getImpl().f1272d;
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.C;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.C;
    }

    public g getShowMotionSpec() {
        return getImpl().f1271c;
    }

    public int getSize() {
        return this.D;
    }

    public int getSizeDimension() {
        return a(this.D);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.A;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.B;
    }

    public boolean getUseCompatPadding() {
        return this.G;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().c();
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        e impl = getImpl();
        if (impl.e()) {
            if (impl.u == null) {
                impl.u = new d(impl);
            }
            impl.o.getViewTreeObserver().addOnPreDrawListener(impl.u);
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e impl = getImpl();
        if (impl.u != null) {
            impl.o.getViewTreeObserver().removeOnPreDrawListener(impl.u);
            impl.u = null;
        }
    }

    public void onMeasure(int i2, int i3) {
        int sizeDimension = getSizeDimension();
        this.F = (sizeDimension + 0) / 2;
        getImpl().g();
        Math.min(a(sizeDimension, i2), a(sizeDimension, i3));
        throw null;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof e.c.a.b.n.a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        e.c.a.b.n.a aVar = (e.c.a.b.n.a) parcelable;
        super.onRestoreInstanceState(aVar.x);
        Bundle orDefault = aVar.z.getOrDefault("expandableWidgetHelper", null);
        throw null;
    }

    public Parcelable onSaveInstanceState() {
        new e.c.a.b.n.a(super.onSaveInstanceState());
        throw null;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            a((Rect) null);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setBackgroundColor(int i2) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    public void setBackgroundResource(int i2) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.y != colorStateList) {
            this.y = colorStateList;
            if (getImpl() == null) {
                throw null;
            }
        }
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.z != mode) {
            this.z = mode;
            if (getImpl() == null) {
                throw null;
            }
        }
    }

    public void setCompatElevation(float f2) {
        e impl = getImpl();
        if (impl.f1277i != f2) {
            impl.f1277i = f2;
            impl.a(f2, impl.f1278j, impl.f1279k);
        }
    }

    public void setCompatElevationResource(int i2) {
        setCompatElevation(getResources().getDimension(i2));
    }

    public void setCompatHoveredFocusedTranslationZ(float f2) {
        e impl = getImpl();
        if (impl.f1278j != f2) {
            impl.f1278j = f2;
            impl.a(impl.f1277i, f2, impl.f1279k);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(int i2) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i2));
    }

    public void setCompatPressedTranslationZ(float f2) {
        e impl = getImpl();
        if (impl.f1279k != f2) {
            impl.f1279k = f2;
            impl.a(impl.f1277i, impl.f1278j, f2);
        }
    }

    public void setCompatPressedTranslationZResource(int i2) {
        setCompatPressedTranslationZ(getResources().getDimension(i2));
    }

    public void setCustomSize(int i2) {
        if (i2 >= 0) {
            this.E = i2;
            return;
        }
        throw new IllegalArgumentException("Custom size must be non-negative");
    }

    public void setExpandedComponentIdHint(int i2) {
        throw null;
    }

    public void setHideMotionSpec(g gVar) {
        getImpl().f1272d = gVar;
    }

    public void setHideMotionSpecResource(int i2) {
        setHideMotionSpec(g.a(getContext(), i2));
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        e impl = getImpl();
        impl.a(impl.f1280l);
    }

    public void setImageResource(int i2) {
        throw null;
    }

    public void setRippleColor(int i2) {
        setRippleColor(ColorStateList.valueOf(i2));
    }

    public void setShowMotionSpec(g gVar) {
        getImpl().f1271c = gVar;
    }

    public void setShowMotionSpecResource(int i2) {
        setShowMotionSpec(g.a(getContext(), i2));
    }

    public void setSize(int i2) {
        this.E = 0;
        if (i2 != this.D) {
            this.D = i2;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            c();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.B != mode) {
            this.B = mode;
            c();
        }
    }

    public void setUseCompatPadding(boolean z2) {
        if (this.G != z2) {
            this.G = z2;
            getImpl().d();
        }
    }

    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.c<T> {
        public Rect a;
        public boolean b;

        public BaseBehavior() {
            this.b = true;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            Rect rect2 = floatingActionButton.H;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                a(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).a instanceof BottomSheetBehavior : false) {
                    b(view2, floatingActionButton);
                }
            }
            return false;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.FloatingActionButton_Behavior_Layout);
            this.b = obtainStyledAttributes.getBoolean(R$styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            obtainStyledAttributes.recycle();
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view, int i2) {
            int i3;
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            List<View> a2 = coordinatorLayout.a((View) floatingActionButton);
            int size = a2.size();
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                View view2 = a2.get(i5);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof CoordinatorLayout.f ? ((CoordinatorLayout.f) layoutParams).a instanceof BottomSheetBehavior : false) && b(view2, floatingActionButton)) {
                        break;
                    }
                } else if (a(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.b(floatingActionButton, i2);
            Rect rect = floatingActionButton.H;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) floatingActionButton.getLayoutParams();
            if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - fVar.rightMargin) {
                i3 = rect.right;
            } else {
                i3 = floatingActionButton.getLeft() <= fVar.leftMargin ? -rect.left : 0;
            }
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - fVar.bottomMargin) {
                i4 = rect.bottom;
            } else if (floatingActionButton.getTop() <= fVar.topMargin) {
                i4 = -rect.top;
            }
            if (i4 != 0) {
                n.d(floatingActionButton, i4);
            }
            if (i3 == 0) {
                return true;
            }
            n.c(floatingActionButton, i3);
            return true;
        }

        public final boolean b(View view, FloatingActionButton floatingActionButton) {
            if (!a(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((CoordinatorLayout.f) floatingActionButton.getLayoutParams()).topMargin) {
                floatingActionButton.a((a) null, false);
                return true;
            }
            floatingActionButton.b((a) null, false);
            return true;
        }

        public void a(CoordinatorLayout.f fVar) {
            if (fVar.f46h == 0) {
                fVar.f46h = 80;
            }
        }

        public final boolean a(View view, FloatingActionButton floatingActionButton) {
            CoordinatorLayout.f fVar = (CoordinatorLayout.f) floatingActionButton.getLayoutParams();
            if (this.b && fVar.f44f == view.getId() && floatingActionButton.getUserSetVisibility() == 0) {
                return true;
            }
            return false;
        }

        public final boolean a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!a(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.a == null) {
                this.a = new Rect();
            }
            Rect rect = this.a;
            e.c.a.b.j.a.a((ViewGroup) coordinatorLayout, (View) appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.a((a) null, false);
                return true;
            }
            floatingActionButton.b((a) null, false);
            return true;
        }
    }

    public void a(a aVar, boolean z2) {
        e.c.a.b.i.a aVar2;
        e impl = getImpl();
        if (aVar == null) {
            aVar2 = null;
        } else {
            aVar2 = new e.c.a.b.i.a(this);
        }
        boolean z3 = false;
        if (impl.o.getVisibility() != 0 ? impl.a != 2 : impl.a == 1) {
            z3 = true;
        }
        if (!z3) {
            Animator animator = impl.b;
            if (animator != null) {
                animator.cancel();
            }
            if (impl.f()) {
                g gVar = impl.f1272d;
                if (gVar == null) {
                    if (impl.f1274f == null) {
                        impl.f1274f = g.a(impl.o.getContext(), R$animator.design_fab_hide_motion_spec);
                    }
                    gVar = impl.f1274f;
                }
                AnimatorSet a2 = impl.a(gVar, 0.0f, 0.0f, 0.0f);
                a2.addListener(new e.c.a.b.i.b(impl, z2, aVar2));
                ArrayList<Animator.AnimatorListener> arrayList = impl.n;
                if (arrayList != null) {
                    Iterator<Animator.AnimatorListener> it = arrayList.iterator();
                    while (it.hasNext()) {
                        a2.addListener(it.next());
                    }
                }
                a2.start();
                return;
            }
            impl.o.a(z2 ? 8 : 4, z2);
            if (aVar2 != null) {
                throw null;
            }
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            getImpl().a(this.C);
        }
    }

    public void c(Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = getImpl().n;
        if (arrayList != null) {
            arrayList.remove(animatorListener);
        }
    }

    public void a(Animator.AnimatorListener animatorListener) {
        e impl = getImpl();
        if (impl.n == null) {
            impl.n = new ArrayList<>();
        }
        impl.n.add(animatorListener);
    }

    public boolean a() {
        throw null;
    }

    public final int a(int i2) {
        int i3 = this.E;
        if (i3 != 0) {
            return i3;
        }
        Resources resources = getResources();
        if (i2 != -1) {
            if (i2 != 1) {
                return resources.getDimensionPixelSize(R$dimen.design_fab_size_normal);
            }
            return resources.getDimensionPixelSize(R$dimen.design_fab_size_mini);
        } else if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470) {
            return a(1);
        } else {
            return a(0);
        }
    }

    public void b(Animator.AnimatorListener animatorListener) {
        e impl = getImpl();
        if (impl.m == null) {
            impl.m = new ArrayList<>();
        }
        impl.m.add(animatorListener);
    }

    public boolean b() {
        return getImpl().b();
    }

    @Deprecated
    public boolean a(Rect rect) {
        if (!n.t(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        throw null;
    }

    public static int a(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i2, size);
        }
        if (mode == 0) {
            return i2;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }
}
