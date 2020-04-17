package com.google.android.material.appbar;

import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$attr;
import com.google.android.material.R$integer;
import com.google.android.material.R$styleable;
import d.b.a.r;
import d.i.i.n;
import e.c.a.b.b.b;
import e.c.a.b.b.c;
import java.lang.ref.WeakReference;
import java.util.List;

@CoordinatorLayout.d(Behavior.class)
public class AppBarLayout extends LinearLayout {
    public boolean A;
    public int B;
    public boolean C;
    public boolean D;
    public boolean E;
    public int[] F;
    public int x;
    public int y;
    public int z;

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends c {
        public ScrollingViewBehavior() {
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.c cVar = ((CoordinatorLayout.f) view2.getLayoutParams()).a;
            if (cVar instanceof BaseBehavior) {
                n.d(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) cVar).f118k) + this.f1247f) - a(view2));
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.E) {
                    appBarLayout.a(view.getScrollY() > 0);
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ScrollingViewBehavior_Layout);
            this.f1248g = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0);
            obtainStyledAttributes.recycle();
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout a = a(coordinatorLayout.a(view));
            if (a != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f1245d;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    a.a(false, !z);
                    return true;
                }
            }
            return false;
        }

        public AppBarLayout a(List<View> list) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = list.get(i2);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }
    }

    public void a(boolean z2, boolean z3) {
        this.B = (z2 ? 1 : 2) | (z3 ? 4 : 0) | 8;
        requestLayout();
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new a(-1, -2);
    }

    public int getDownNestedPreScrollRange() {
        int i2;
        int i3 = this.y;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = aVar.a;
            if ((i5 & 5) == 5) {
                int i6 = aVar.topMargin + aVar.bottomMargin + i4;
                if ((i5 & 8) != 0) {
                    i4 = n.j(childAt) + i6;
                } else {
                    if ((i5 & 2) != 0) {
                        i2 = n.j(childAt);
                    } else {
                        i2 = getTopInset();
                    }
                    i4 = (measuredHeight - i2) + i6;
                }
            } else if (i4 > 0) {
                break;
            }
        }
        int max = Math.max(0, i4);
        this.y = max;
        return max;
    }

    public int getDownNestedScrollRange() {
        int i2 = this.z;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = aVar.topMargin + aVar.bottomMargin + childAt.getMeasuredHeight();
            int i5 = aVar.a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight;
            if ((i5 & 2) != 0) {
                i4 -= getTopInset() + n.j(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4);
        this.z = max;
        return max;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int j2 = n.j(this);
        if (j2 == 0) {
            int childCount = getChildCount();
            j2 = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
            if (j2 == 0) {
                return getHeight() / 3;
            }
        }
        return (j2 * 2) + topInset;
    }

    public int getPendingAction() {
        return this.B;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        return 0;
    }

    public final int getTotalScrollRange() {
        int i2 = this.x;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            a aVar = (a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = aVar.a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight + aVar.topMargin + aVar.bottomMargin;
            if ((i5 & 2) != 0) {
                i4 -= n.j(childAt);
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4 - getTopInset());
        this.x = max;
        return max;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    public int[] onCreateDrawableState(int i2) {
        if (this.F == null) {
            this.F = new int[4];
        }
        int[] iArr = this.F;
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        iArr[0] = this.C ? R$attr.state_liftable : -R$attr.state_liftable;
        iArr[1] = (!this.C || !this.D) ? -R$attr.state_lifted : R$attr.state_lifted;
        iArr[2] = this.C ? R$attr.state_collapsible : -R$attr.state_collapsible;
        iArr[3] = (!this.C || !this.D) ? -R$attr.state_collapsed : R$attr.state_collapsed;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0053, code lost:
        if (r3 != false) goto L_0x0055;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r2, int r3, int r4, int r5, int r6) {
        /*
            r1 = this;
            super.onLayout(r2, r3, r4, r5, r6)
            r2 = -1
            r1.x = r2
            r1.y = r2
            r1.z = r2
            r2 = 0
            r1.A = r2
            int r3 = r1.getChildCount()
            r4 = 0
        L_0x0012:
            r5 = 1
            if (r4 >= r3) goto L_0x0029
            android.view.View r6 = r1.getChildAt(r4)
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$a r6 = (com.google.android.material.appbar.AppBarLayout.a) r6
            android.view.animation.Interpolator r6 = r6.b
            if (r6 == 0) goto L_0x0026
            r1.A = r5
            goto L_0x0029
        L_0x0026:
            int r4 = r4 + 1
            goto L_0x0012
        L_0x0029:
            boolean r3 = r1.E
            if (r3 != 0) goto L_0x0055
            int r3 = r1.getChildCount()
            r4 = 0
        L_0x0032:
            if (r4 >= r3) goto L_0x0052
            android.view.View r6 = r1.getChildAt(r4)
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$a r6 = (com.google.android.material.appbar.AppBarLayout.a) r6
            int r6 = r6.a
            r0 = r6 & 1
            if (r0 != r5) goto L_0x004a
            r6 = r6 & 10
            if (r6 == 0) goto L_0x004a
            r6 = 1
            goto L_0x004b
        L_0x004a:
            r6 = 0
        L_0x004b:
            if (r6 == 0) goto L_0x004f
            r3 = 1
            goto L_0x0053
        L_0x004f:
            int r4 = r4 + 1
            goto L_0x0032
        L_0x0052:
            r3 = 0
        L_0x0053:
            if (r3 == 0) goto L_0x0056
        L_0x0055:
            r2 = 1
        L_0x0056:
            boolean r3 = r1.C
            if (r3 == r2) goto L_0x005f
            r1.C = r2
            r1.refreshDrawableState()
        L_0x005f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.onLayout(boolean, int, int, int, int):void");
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.x = -1;
        this.y = -1;
        this.z = -1;
    }

    public void setExpanded(boolean z2) {
        a(z2, n.t(this));
    }

    public void setLiftOnScroll(boolean z2) {
        this.E = z2;
    }

    public void setOrientation(int i2) {
        if (i2 == 1) {
            super.setOrientation(i2);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    @Deprecated
    public void setTargetElevation(float f2) {
        int integer = getResources().getInteger(R$integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j2 = (long) integer;
        stateListAnimator.addState(new int[]{16842766, R$attr.state_liftable, -R$attr.state_lifted}, ObjectAnimator.ofFloat(this, "elevation", new float[]{0.0f}).setDuration(j2));
        stateListAnimator.addState(new int[]{16842766}, ObjectAnimator.ofFloat(this, "elevation", new float[]{f2}).setDuration(j2));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(this, "elevation", new float[]{0.0f}).setDuration(0));
        setStateListAnimator(stateListAnimator);
    }

    public static class BaseBehavior<T extends AppBarLayout> extends b<T> {

        /* renamed from: k  reason: collision with root package name */
        public int f118k;

        /* renamed from: l  reason: collision with root package name */
        public int f119l;
        public ValueAnimator m;
        public int n = -1;
        public boolean o;
        public float p;
        public WeakReference<View> q;

        public BaseBehavior() {
        }

        public static boolean a(int i2, int i3) {
            return (i2 & i3) == i3;
        }

        public boolean a(View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            WeakReference<View> weakReference = this.q;
            if (weakReference == null) {
                return true;
            }
            View view2 = (View) weakReference.get();
            if (view2 == null || !view2.isShown() || view2.canScrollVertically(-1)) {
                return false;
            }
            return true;
        }

        /* JADX WARNING: Removed duplicated region for block: B:38:0x00b1  */
        /* JADX WARNING: Removed duplicated region for block: B:44:0x00cc  */
        /* JADX WARNING: Removed duplicated region for block: B:45:0x00cf  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int b(androidx.coordinatorlayout.widget.CoordinatorLayout r8, android.view.View r9, int r10, int r11, int r12) {
            /*
                r7 = this;
                r2 = r9
                com.google.android.material.appbar.AppBarLayout r2 = (com.google.android.material.appbar.AppBarLayout) r2
                int r9 = r7.b()
                r0 = 0
                if (r11 == 0) goto L_0x00d9
                if (r9 < r11) goto L_0x00d9
                if (r9 > r12) goto L_0x00d9
                int r3 = d.b.a.r.a((int) r10, (int) r11, (int) r12)
                if (r9 == r3) goto L_0x00db
                boolean r10 = r2.A
                if (r10 == 0) goto L_0x0087
                int r10 = java.lang.Math.abs(r3)
                int r11 = r2.getChildCount()
                r12 = 0
            L_0x0021:
                if (r12 >= r11) goto L_0x0087
                android.view.View r1 = r2.getChildAt(r12)
                android.view.ViewGroup$LayoutParams r4 = r1.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$a r4 = (com.google.android.material.appbar.AppBarLayout.a) r4
                android.view.animation.Interpolator r5 = r4.b
                int r6 = r1.getTop()
                if (r10 < r6) goto L_0x0084
                int r6 = r1.getBottom()
                if (r10 > r6) goto L_0x0084
                if (r5 == 0) goto L_0x0087
                int r11 = r4.a
                r12 = r11 & 1
                if (r12 == 0) goto L_0x0058
                int r12 = r1.getHeight()
                int r6 = r4.topMargin
                int r12 = r12 + r6
                int r4 = r4.bottomMargin
                int r12 = r12 + r4
                int r12 = r12 + r0
                r11 = r11 & 2
                if (r11 == 0) goto L_0x0059
                int r11 = d.i.i.n.j(r1)
                int r12 = r12 - r11
                goto L_0x0059
            L_0x0058:
                r12 = 0
            L_0x0059:
                boolean r11 = d.i.i.n.g(r1)
                if (r11 == 0) goto L_0x0064
                int r11 = r2.getTopInset()
                int r12 = r12 - r11
            L_0x0064:
                if (r12 <= 0) goto L_0x0087
                int r11 = r1.getTop()
                int r10 = r10 - r11
                float r11 = (float) r12
                float r10 = (float) r10
                float r10 = r10 / r11
                float r10 = r5.getInterpolation(r10)
                float r10 = r10 * r11
                int r10 = java.lang.Math.round(r10)
                int r11 = java.lang.Integer.signum(r3)
                int r12 = r1.getTop()
                int r12 = r12 + r10
                int r12 = r12 * r11
                goto L_0x0088
            L_0x0084:
                int r12 = r12 + 1
                goto L_0x0021
            L_0x0087:
                r12 = r3
            L_0x0088:
                boolean r10 = r7.a(r12)
                int r11 = r9 - r3
                int r12 = r3 - r12
                r7.f118k = r12
                if (r10 != 0) goto L_0x00c7
                boolean r10 = r2.A
                if (r10 == 0) goto L_0x00c7
                d.h.a.a<android.view.View> r10 = r8.y
                d.f.h<T, java.util.ArrayList<T>> r10 = r10.b
                r12 = 0
                java.lang.Object r10 = r10.getOrDefault(r2, r12)
                java.util.List r10 = (java.util.List) r10
                if (r10 == 0) goto L_0x00c7
                boolean r12 = r10.isEmpty()
                if (r12 != 0) goto L_0x00c7
            L_0x00ab:
                int r12 = r10.size()
                if (r0 >= r12) goto L_0x00c7
                java.lang.Object r12 = r10.get(r0)
                android.view.View r12 = (android.view.View) r12
                android.view.ViewGroup$LayoutParams r1 = r12.getLayoutParams()
                androidx.coordinatorlayout.widget.CoordinatorLayout$f r1 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r1
                androidx.coordinatorlayout.widget.CoordinatorLayout$c r1 = r1.a
                if (r1 == 0) goto L_0x00c4
                r1.b((androidx.coordinatorlayout.widget.CoordinatorLayout) r8, r12, (android.view.View) r2)
            L_0x00c4:
                int r0 = r0 + 1
                goto L_0x00ab
            L_0x00c7:
                r7.a()
                if (r3 >= r9) goto L_0x00cf
                r9 = -1
                r4 = -1
                goto L_0x00d1
            L_0x00cf:
                r9 = 1
                r4 = 1
            L_0x00d1:
                r5 = 0
                r0 = r7
                r1 = r8
                r0.a(r1, r2, r3, r4, r5)
                r0 = r11
                goto L_0x00db
            L_0x00d9:
                r7.f118k = r0
            L_0x00db:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.b(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int, int, int):int");
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public static class a extends d.k.a.a {
            public static final Parcelable.Creator<a> CREATOR = new C0004a();
            public float A;
            public boolean B;
            public int z;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a$a  reason: collision with other inner class name */
            public static class C0004a implements Parcelable.ClassLoaderCreator<a> {
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

            public a(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.z = parcel.readInt();
                this.A = parcel.readFloat();
                this.B = parcel.readByte() != 0;
            }

            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeParcelable(this.x, i2);
                parcel.writeInt(this.z);
                parcel.writeFloat(this.A);
                parcel.writeByte(this.B ? (byte) 1 : 0);
            }

            public a(Parcelable parcelable) {
                super(parcelable);
            }
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view, int i2) {
            int i3;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.a(coordinatorLayout, appBarLayout, i2);
            int pendingAction = appBarLayout.getPendingAction();
            int i4 = this.n;
            if (i4 >= 0 && (pendingAction & 8) == 0) {
                View childAt = appBarLayout.getChildAt(i4);
                int i5 = -childAt.getBottom();
                if (this.o) {
                    i3 = appBarLayout.getTopInset() + childAt.getMinimumHeight() + i5;
                } else {
                    i3 = Math.round(((float) childAt.getHeight()) * this.p) + i5;
                }
                c(coordinatorLayout, appBarLayout, i3);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i6 = -appBarLayout.getUpNestedPreScrollRange();
                    if (z) {
                        a(coordinatorLayout, appBarLayout, i6, 0.0f);
                    } else {
                        c(coordinatorLayout, appBarLayout, i6);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        a(coordinatorLayout, appBarLayout, 0, 0.0f);
                    } else {
                        c(coordinatorLayout, appBarLayout, 0);
                    }
                }
            }
            appBarLayout.B = 0;
            this.n = -1;
            a(r.a(a(), -appBarLayout.getTotalScrollRange(), 0));
            a(coordinatorLayout, appBarLayout, a(), 0, true);
            a();
            return true;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int i5) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((CoordinatorLayout.f) appBarLayout.getLayoutParams()).height != -2) {
                return false;
            }
            coordinatorLayout.a((View) appBarLayout, i2, i3, View.MeasureSpec.makeMeasureSpec(0, 0), i5);
            return true;
        }

        public void a(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i3, int[] iArr, int i4) {
            int i5;
            int i6;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i3 != 0) {
                if (i3 < 0) {
                    int i7 = -appBarLayout.getTotalScrollRange();
                    i6 = i7;
                    i5 = appBarLayout.getDownNestedPreScrollRange() + i7;
                } else {
                    i6 = -appBarLayout.getUpNestedPreScrollRange();
                    i5 = 0;
                }
                if (i6 != i5) {
                    iArr[1] = a(coordinatorLayout, appBarLayout, i3, i6, i5);
                    a(i3, appBarLayout, view2, i4);
                }
            }
        }

        public int b() {
            return a() + this.f118k;
        }

        public void a(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i3, int i4, int i5, int i6) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i5 < 0) {
                a(coordinatorLayout, appBarLayout, i5, -appBarLayout.getDownNestedScrollRange(), 0);
                a(i5, appBarLayout, view2, i6);
            }
            if (appBarLayout.E) {
                appBarLayout.a(view2.getScrollY() > 0);
            }
        }

        public void a(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (parcelable instanceof a) {
                a aVar = (a) parcelable;
                Parcelable parcelable2 = aVar.x;
                this.n = aVar.z;
                this.p = aVar.A;
                this.o = aVar.B;
                return;
            }
            this.n = -1;
        }

        public Parcelable a(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            int a2 = a();
            int childCount = appBarLayout.getChildCount();
            boolean z = false;
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = appBarLayout.getChildAt(i2);
                int bottom = childAt.getBottom() + a2;
                if (childAt.getTop() + a2 > 0 || bottom < 0) {
                    i2++;
                } else {
                    a aVar = new a(absSavedState);
                    aVar.z = i2;
                    if (bottom == appBarLayout.getTopInset() + n.j(childAt)) {
                        z = true;
                    }
                    aVar.B = z;
                    aVar.A = ((float) bottom) / ((float) childAt.getHeight());
                    return aVar;
                }
            }
            return absSavedState;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0029, code lost:
            if (((r3.getTotalScrollRange() != 0) && r2.getHeight() - r4.getHeight() <= r3.getHeight()) != false) goto L_0x002b;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(androidx.coordinatorlayout.widget.CoordinatorLayout r2, android.view.View r3, android.view.View r4, android.view.View r5, int r6, int r7) {
            /*
                r1 = this;
                com.google.android.material.appbar.AppBarLayout r3 = (com.google.android.material.appbar.AppBarLayout) r3
                r5 = r6 & 2
                r6 = 0
                r0 = 1
                if (r5 == 0) goto L_0x002c
                boolean r5 = r3.E
                if (r5 != 0) goto L_0x002b
                int r5 = r3.getTotalScrollRange()
                if (r5 == 0) goto L_0x0014
                r5 = 1
                goto L_0x0015
            L_0x0014:
                r5 = 0
            L_0x0015:
                if (r5 == 0) goto L_0x0028
                int r2 = r2.getHeight()
                int r4 = r4.getHeight()
                int r2 = r2 - r4
                int r3 = r3.getHeight()
                if (r2 > r3) goto L_0x0028
                r2 = 1
                goto L_0x0029
            L_0x0028:
                r2 = 0
            L_0x0029:
                if (r2 == 0) goto L_0x002c
            L_0x002b:
                r6 = 1
            L_0x002c:
                if (r6 == 0) goto L_0x0035
                android.animation.ValueAnimator r2 = r1.m
                if (r2 == 0) goto L_0x0035
                r2.cancel()
            L_0x0035:
                r2 = 0
                r1.q = r2
                r1.f119l = r7
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, android.view.View, int, int):boolean");
        }

        public void a(CoordinatorLayout coordinatorLayout, View view, View view2, int i2) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.f119l == 0 || i2 == 1) {
                a(coordinatorLayout, appBarLayout);
            }
            this.q = new WeakReference<>(view2);
        }

        public final void a(int i2, T t, View view, int i3) {
            if (i3 == 1) {
                int b = b();
                if ((i2 < 0 && b == 0) || (i2 > 0 && b == (-t.getDownNestedScrollRange()))) {
                    n.f(view, 1);
                }
            }
        }

        public final void a(CoordinatorLayout coordinatorLayout, T t, int i2, float f2) {
            int i3;
            int abs = Math.abs(b() - i2);
            float abs2 = Math.abs(f2);
            if (abs2 > 0.0f) {
                i3 = Math.round((((float) abs) / abs2) * 1000.0f) * 3;
            } else {
                i3 = (int) (((((float) abs) / ((float) t.getHeight())) + 1.0f) * 150.0f);
            }
            int b = b();
            if (b == i2) {
                ValueAnimator valueAnimator = this.m;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.m.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.m;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.m = valueAnimator3;
                valueAnimator3.setInterpolator(e.c.a.b.a.a.f1231d);
                this.m.addUpdateListener(new e.c.a.b.b.a(this, coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.m.setDuration((long) Math.min(i3, 600));
            this.m.setIntValues(new int[]{b, i2});
            this.m.start();
        }

        public final void a(CoordinatorLayout coordinatorLayout, T t) {
            int b = b();
            int childCount = t.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    i2 = -1;
                    break;
                }
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                a aVar = (a) childAt.getLayoutParams();
                if (a(aVar.a, 32)) {
                    top -= aVar.topMargin;
                    bottom += aVar.bottomMargin;
                }
                int i3 = -b;
                if (top <= i3 && bottom >= i3) {
                    break;
                }
                i2++;
            }
            if (i2 >= 0) {
                View childAt2 = t.getChildAt(i2);
                a aVar2 = (a) childAt2.getLayoutParams();
                int i4 = aVar2.a;
                if ((i4 & 17) == 17) {
                    int i5 = -childAt2.getTop();
                    int i6 = -childAt2.getBottom();
                    if (i2 == t.getChildCount() - 1) {
                        i6 += t.getTopInset();
                    }
                    if (a(i4, 2)) {
                        i6 += n.j(childAt2);
                    } else if (a(i4, 5)) {
                        int j2 = n.j(childAt2) + i6;
                        if (b < j2) {
                            i5 = j2;
                        } else {
                            i6 = j2;
                        }
                    }
                    if (a(i4, 32)) {
                        i5 += aVar2.topMargin;
                        i6 -= aVar2.bottomMargin;
                    }
                    if (b < (i6 + i5) / 2) {
                        i5 = i6;
                    }
                    a(coordinatorLayout, t, r.a(i5, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:26:0x0062  */
        /* JADX WARNING: Removed duplicated region for block: B:39:0x0087  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(androidx.coordinatorlayout.widget.CoordinatorLayout r8, T r9, int r10, int r11, boolean r12) {
            /*
                r7 = this;
                int r0 = java.lang.Math.abs(r10)
                int r1 = r9.getChildCount()
                r2 = 0
                r3 = 0
            L_0x000a:
                r4 = 0
                if (r3 >= r1) goto L_0x0021
                android.view.View r5 = r9.getChildAt(r3)
                int r6 = r5.getTop()
                if (r0 < r6) goto L_0x001e
                int r6 = r5.getBottom()
                if (r0 > r6) goto L_0x001e
                goto L_0x0022
            L_0x001e:
                int r3 = r3 + 1
                goto L_0x000a
            L_0x0021:
                r5 = r4
            L_0x0022:
                if (r5 == 0) goto L_0x00b6
                android.view.ViewGroup$LayoutParams r0 = r5.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$a r0 = (com.google.android.material.appbar.AppBarLayout.a) r0
                int r0 = r0.a
                r1 = r0 & 1
                r3 = 1
                if (r1 == 0) goto L_0x004a
                int r1 = d.i.i.n.j(r5)
                if (r11 <= 0) goto L_0x004c
                r11 = r0 & 12
                if (r11 == 0) goto L_0x004c
                int r10 = -r10
                int r11 = r5.getBottom()
                int r11 = r11 - r1
                int r0 = r9.getTopInset()
                int r11 = r11 - r0
                if (r10 < r11) goto L_0x004a
            L_0x0048:
                r10 = 1
                goto L_0x005e
            L_0x004a:
                r10 = 0
                goto L_0x005e
            L_0x004c:
                r11 = r0 & 2
                if (r11 == 0) goto L_0x004a
                int r10 = -r10
                int r11 = r5.getBottom()
                int r11 = r11 - r1
                int r0 = r9.getTopInset()
                int r11 = r11 - r0
                if (r10 < r11) goto L_0x004a
                goto L_0x0048
            L_0x005e:
                boolean r11 = r9.E
                if (r11 == 0) goto L_0x0081
                int r11 = r8.getChildCount()
                r0 = 0
            L_0x0067:
                if (r0 >= r11) goto L_0x0076
                android.view.View r1 = r8.getChildAt(r0)
                boolean r5 = r1 instanceof d.i.i.f
                if (r5 == 0) goto L_0x0073
                r4 = r1
                goto L_0x0076
            L_0x0073:
                int r0 = r0 + 1
                goto L_0x0067
            L_0x0076:
                if (r4 == 0) goto L_0x0081
                int r10 = r4.getScrollY()
                if (r10 <= 0) goto L_0x0080
                r10 = 1
                goto L_0x0081
            L_0x0080:
                r10 = 0
            L_0x0081:
                boolean r10 = r9.a(r10)
                if (r12 != 0) goto L_0x00b3
                if (r10 == 0) goto L_0x00b6
                java.util.List r8 = r8.b((android.view.View) r9)
                int r10 = r8.size()
                r11 = 0
            L_0x0092:
                if (r11 >= r10) goto L_0x00b1
                java.lang.Object r12 = r8.get(r11)
                android.view.View r12 = (android.view.View) r12
                android.view.ViewGroup$LayoutParams r12 = r12.getLayoutParams()
                androidx.coordinatorlayout.widget.CoordinatorLayout$f r12 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r12
                androidx.coordinatorlayout.widget.CoordinatorLayout$c r12 = r12.a
                boolean r0 = r12 instanceof com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior
                if (r0 == 0) goto L_0x00ae
                com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior r12 = (com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior) r12
                int r8 = r12.f1248g
                if (r8 == 0) goto L_0x00b1
                r2 = 1
                goto L_0x00b1
            L_0x00ae:
                int r11 = r11 + 1
                goto L_0x0092
            L_0x00b1:
                if (r2 == 0) goto L_0x00b6
            L_0x00b3:
                r9.jumpDrawablesToCurrentState()
            L_0x00b6:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }
    }

    /* renamed from: generateDefaultLayoutParams  reason: collision with other method in class */
    public LinearLayout.LayoutParams m1generateDefaultLayoutParams() {
        return new a(-1, -2);
    }

    public boolean a(boolean z2) {
        if (this.D == z2) {
            return false;
        }
        this.D = z2;
        refreshDrawableState();
        return true;
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* renamed from: generateLayoutParams  reason: collision with other method in class */
    public LinearLayout.LayoutParams m2generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new a((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new a((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new a(layoutParams);
    }

    public static class a extends LinearLayout.LayoutParams {
        public int a = 1;
        public Interpolator b;

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AppBarLayout_Layout);
            this.a = obtainStyledAttributes.getInt(R$styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(R$styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(R$styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public a(int i2, int i3) {
            super(i2, i3);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public a(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
