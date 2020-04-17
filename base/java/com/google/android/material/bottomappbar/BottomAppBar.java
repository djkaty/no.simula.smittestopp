package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import d.i.i.n;
import e.c.a.b.c.b;
import e.c.a.b.c.c;
import java.util.ArrayList;

public class BottomAppBar extends Toolbar implements CoordinatorLayout.b {
    public Animator p0;
    public Animator q0;
    public int r0;
    public boolean s0;
    public boolean t0;

    public static class a extends d.k.a.a {
        public static final Parcelable.Creator<a> CREATOR = new C0005a();
        public boolean A;
        public int z;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$a$a  reason: collision with other inner class name */
        public static class C0005a implements Parcelable.ClassLoaderCreator<a> {
            public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new a(parcel, classLoader);
            }

            public Object[] newArray(int i2) {
                return new a[i2];
            }

            public Object createFromParcel(Parcel parcel) {
                return new a(parcel, (ClassLoader) null);
            }
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.x, i2);
            parcel.writeInt(this.z);
            parcel.writeInt(this.A ? 1 : 0);
        }

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.z = parcel.readInt();
            this.A = parcel.readInt() != 0;
        }
    }

    private ActionMenuView getActionMenuView() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    private float getFabTranslationX() {
        return (float) b(this.r0);
    }

    /* access modifiers changed from: private */
    public float getFabTranslationY() {
        boolean z = this.t0;
        FloatingActionButton h2 = h();
        if (h2 == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        h2.a(rect);
        float height = (float) rect.height();
        if (height == 0.0f) {
            height = (float) h2.getMeasuredHeight();
        }
        float height2 = (float) (h2.getHeight() - rect.height());
        float height3 = (height / 2.0f) + (-getCradleVerticalOffset()) + ((float) (h2.getHeight() - rect.bottom));
        float paddingBottom = height2 - ((float) h2.getPaddingBottom());
        float f2 = (float) (-getMeasuredHeight());
        if (!z) {
            height3 = paddingBottom;
        }
        return f2 + height3;
    }

    public final int b(int i2) {
        int i3 = 1;
        boolean z = n.i(this) == 1;
        if (i2 != 1) {
            return 0;
        }
        int measuredWidth = (getMeasuredWidth() / 2) - 0;
        if (z) {
            i3 = -1;
        }
        return measuredWidth * i3;
    }

    public ColorStateList getBackgroundTint() {
        throw null;
    }

    public CoordinatorLayout.c<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    public float getCradleVerticalOffset() {
        throw null;
    }

    public int getFabAlignmentMode() {
        return this.r0;
    }

    public float getFabCradleMargin() {
        throw null;
    }

    public float getFabCradleRoundedCornerRadius() {
        throw null;
    }

    public boolean getHideOnScroll() {
        return this.s0;
    }

    public final FloatingActionButton h() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View next : ((CoordinatorLayout) getParent()).b((View) this)) {
            if (next instanceof FloatingActionButton) {
                return (FloatingActionButton) next;
            }
        }
        return null;
    }

    public final boolean i() {
        FloatingActionButton h2 = h();
        return h2 != null && h2.b();
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        Animator animator = this.q0;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.p0;
        if (animator2 != null) {
            animator2.cancel();
        }
        getFabTranslationX();
        throw null;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.x);
        this.r0 = aVar.z;
        this.t0 = aVar.A;
    }

    public Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.z = this.r0;
        aVar.A = this.t0;
        return aVar;
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        throw null;
    }

    public void setCradleVerticalOffset(float f2) {
        if (f2 != getCradleVerticalOffset()) {
            throw null;
        }
    }

    public void setFabAlignmentMode(int i2) {
        int i3;
        if (this.r0 != i2 && n.t(this)) {
            Animator animator = this.p0;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!this.t0) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(h(), "translationX", new float[]{(float) b(i2)});
                ofFloat.setDuration(300);
                arrayList.add(ofFloat);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(arrayList);
                this.p0 = animatorSet;
                animatorSet.addListener(new e.c.a.b.c.a(this));
                this.p0.start();
            } else {
                throw null;
            }
        }
        boolean z = this.t0;
        if (n.t(this)) {
            Animator animator2 = this.q0;
            if (animator2 != null) {
                animator2.cancel();
            }
            ArrayList arrayList2 = new ArrayList();
            if (!i()) {
                z = false;
                i3 = 0;
            } else {
                i3 = i2;
            }
            ActionMenuView actionMenuView = getActionMenuView();
            if (actionMenuView != null) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(actionMenuView, "alpha", new float[]{1.0f});
                if ((this.t0 || (z && i())) && (this.r0 == 1 || i3 == 1)) {
                    ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(actionMenuView, "alpha", new float[]{0.0f});
                    ofFloat3.addListener(new c(this, actionMenuView, i3, z));
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    animatorSet2.setDuration(150);
                    animatorSet2.playSequentially(new Animator[]{ofFloat3, ofFloat2});
                    arrayList2.add(animatorSet2);
                } else if (actionMenuView.getAlpha() < 1.0f) {
                    arrayList2.add(ofFloat2);
                }
            }
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playTogether(arrayList2);
            this.q0 = animatorSet3;
            animatorSet3.addListener(new b(this));
            this.q0.start();
        }
        this.r0 = i2;
    }

    public void setFabCradleMargin(float f2) {
        if (f2 != getFabCradleMargin()) {
            throw null;
        }
    }

    public void setFabCradleRoundedCornerRadius(float f2) {
        if (f2 != getFabCradleRoundedCornerRadius()) {
            throw null;
        }
    }

    public void setFabDiameter(int i2) {
        throw null;
    }

    public void setHideOnScroll(boolean z) {
        this.s0 = z;
    }

    public void setSubtitle(CharSequence charSequence) {
    }

    public void setTitle(CharSequence charSequence) {
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: d  reason: collision with root package name */
        public final Rect f129d = new Rect();

        public Behavior() {
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x0014, code lost:
            r0 = r5.p0;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(androidx.coordinatorlayout.widget.CoordinatorLayout r4, android.view.View r5, int r6) {
            /*
                r3 = this;
                com.google.android.material.bottomappbar.BottomAppBar r5 = (com.google.android.material.bottomappbar.BottomAppBar) r5
                com.google.android.material.floatingactionbutton.FloatingActionButton r0 = r5.h()
                r1 = 0
                r2 = 0
                if (r0 != 0) goto L_0x0031
                android.animation.Animator r0 = r5.q0
                if (r0 == 0) goto L_0x0014
                boolean r0 = r0.isRunning()
                if (r0 != 0) goto L_0x001e
            L_0x0014:
                android.animation.Animator r0 = r5.p0
                if (r0 == 0) goto L_0x0020
                boolean r0 = r0.isRunning()
                if (r0 == 0) goto L_0x0020
            L_0x001e:
                r0 = 1
                goto L_0x0021
            L_0x0020:
                r0 = 0
            L_0x0021:
                if (r0 == 0) goto L_0x002d
                r4.b(r5, r6)
                int r4 = r5.getMeasuredHeight()
                r3.a = r4
                return r2
            L_0x002d:
                com.google.android.material.bottomappbar.BottomAppBar.b((com.google.android.material.bottomappbar.BottomAppBar) r5)
                throw r1
            L_0x0031:
                android.view.ViewGroup$LayoutParams r4 = r0.getLayoutParams()
                androidx.coordinatorlayout.widget.CoordinatorLayout$f r4 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r4
                r6 = 17
                r4.f42d = r6
                com.google.android.material.bottomappbar.BottomAppBar.a(r5, r0)
                android.graphics.Rect r4 = r3.f129d
                int r5 = r0.getMeasuredWidth()
                int r6 = r0.getMeasuredHeight()
                r4.set(r2, r2, r5, r6)
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.Behavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int):boolean");
        }

        public void b(View view) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            super.b(bottomAppBar);
            FloatingActionButton a = bottomAppBar.h();
            if (a != null) {
                a.clearAnimation();
                a.animate().translationY(bottomAppBar.getFabTranslationY()).setInterpolator(e.c.a.b.a.a.f1230c).setDuration(225);
            }
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i3) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            if (!bottomAppBar.getHideOnScroll()) {
                return false;
            }
            if (i3 == 0 ? a(coordinatorLayout, bottomAppBar, view2, view3, i2) : false) {
                return true;
            }
            return false;
        }

        public void a(View view) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            super.a(bottomAppBar);
            FloatingActionButton a = bottomAppBar.h();
            if (a != null) {
                a.a(this.f129d);
                a.clearAnimation();
                a.animate().translationY(((float) (-a.getPaddingBottom())) + ((float) (a.getMeasuredHeight() - this.f129d.height()))).setInterpolator(e.c.a.b.a.a.b).setDuration(175);
            }
        }
    }

    public static /* synthetic */ void b(BottomAppBar bottomAppBar) {
        bottomAppBar.getFabTranslationX();
        throw null;
    }

    public final void a(ActionMenuView actionMenuView, int i2, boolean z) {
        boolean z2 = n.i(this) == 1;
        int i3 = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            if ((childAt.getLayoutParams() instanceof Toolbar.e) && (((Toolbar.e) childAt.getLayoutParams()).a & 8388615) == 8388611) {
                i3 = Math.max(i3, z2 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i2 != 1 || !z) ? 0.0f : (float) (i3 - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft())));
    }

    public static /* synthetic */ void a(BottomAppBar bottomAppBar, FloatingActionButton floatingActionButton) {
        if (bottomAppBar != null) {
            floatingActionButton.c((Animator.AnimatorListener) null);
            floatingActionButton.d((Animator.AnimatorListener) null);
            floatingActionButton.a((Animator.AnimatorListener) null);
            floatingActionButton.b((Animator.AnimatorListener) null);
            return;
        }
        throw null;
    }
}
