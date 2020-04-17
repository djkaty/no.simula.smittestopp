package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.R$attr;
import androidx.coordinatorlayout.R$style;
import androidx.coordinatorlayout.R$styleable;
import com.microsoft.appcenter.utils.crypto.CryptoConstants;
import d.b.a.r;
import d.i.i.j;
import d.i.i.k;
import d.i.i.n;
import d.i.i.w;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public class CoordinatorLayout extends ViewGroup implements d.i.i.h {
    public static final String P;
    public static final Class<?>[] Q = {Context.class, AttributeSet.class};
    public static final ThreadLocal<Map<String, Constructor<c>>> R = new ThreadLocal<>();
    public static final Comparator<View> S = new i();
    public static final d.i.h.b<Rect> T = new d.i.h.c(12);
    public final List<View> A;
    public final int[] B;
    public boolean C;
    public boolean D;
    public int[] E;
    public View F;
    public View G;
    public g H;
    public boolean I;
    public w J;
    public boolean K;
    public Drawable L;
    public ViewGroup.OnHierarchyChangeListener M;
    public k N;
    public final j O;
    public final List<View> x;
    public final d.h.a.a<View> y;
    public final List<View> z;

    public class a implements k {
        public a() {
        }

        public w a(View view, w wVar) {
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            if (!Objects.equals(coordinatorLayout.J, wVar)) {
                coordinatorLayout.J = wVar;
                boolean z = true;
                boolean z2 = wVar != null && wVar.d() > 0;
                coordinatorLayout.K = z2;
                if (z2 || coordinatorLayout.getBackground() != null) {
                    z = false;
                }
                coordinatorLayout.setWillNotDraw(z);
                if (!wVar.e()) {
                    int childCount = coordinatorLayout.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = coordinatorLayout.getChildAt(i2);
                        if (n.g(childAt) && ((f) childAt.getLayoutParams()).a != null && wVar.e()) {
                            break;
                        }
                    }
                }
                coordinatorLayout.requestLayout();
            }
            return wVar;
        }
    }

    public interface b {
        c getBehavior();
    }

    public static abstract class c<V extends View> {
        public c() {
        }

        public void a(f fVar) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i2) {
        }

        @Deprecated
        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int[] iArr, int i4) {
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i2) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, int i4, int i5) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, float f2, float f3) {
            return false;
        }

        @Deprecated
        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2) {
            return false;
        }

        public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2, int i3) {
            if (i3 == 0) {
                return a(coordinatorLayout, v, view, view2, i2);
            }
            return false;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        public boolean b(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        public c(Context context, AttributeSet attributeSet) {
        }

        public void a(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5, int i6) {
            if (i6 == 0) {
                a(coordinatorLayout, v, view, i2, i3, i4, i5);
            }
        }

        public Parcelable a(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }
    }

    @Deprecated
    @Retention(RetentionPolicy.RUNTIME)
    public @interface d {
        Class<? extends c> value();
    }

    public class e implements ViewGroup.OnHierarchyChangeListener {
        public e() {
        }

        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.M;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.b(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.M;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public class g implements ViewTreeObserver.OnPreDrawListener {
        public g() {
        }

        public boolean onPreDraw() {
            CoordinatorLayout.this.b(0);
            return true;
        }
    }

    public static class i implements Comparator<View> {
        public int compare(Object obj, Object obj2) {
            float p = n.p((View) obj);
            float z = ((View) obj2).getZ();
            if (p > z) {
                return -1;
            }
            return p < z ? 1 : 0;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: java.lang.Class<?>[]} */
    /* JADX WARNING: Multi-variable type inference failed */
    static {
        /*
            java.lang.Class<androidx.coordinatorlayout.widget.CoordinatorLayout> r0 = androidx.coordinatorlayout.widget.CoordinatorLayout.class
            java.lang.Package r0 = r0.getPackage()
            if (r0 == 0) goto L_0x000d
            java.lang.String r0 = r0.getName()
            goto L_0x000e
        L_0x000d:
            r0 = 0
        L_0x000e:
            P = r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$i r0 = new androidx.coordinatorlayout.widget.CoordinatorLayout$i
            r0.<init>()
            S = r0
            r0 = 2
            java.lang.Class[] r0 = new java.lang.Class[r0]
            r1 = 0
            java.lang.Class<android.content.Context> r2 = android.content.Context.class
            r0[r1] = r2
            r1 = 1
            java.lang.Class<android.util.AttributeSet> r2 = android.util.AttributeSet.class
            r0[r1] = r2
            Q = r0
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            R = r0
            d.i.h.c r0 = new d.i.h.c
            r1 = 12
            r0.<init>(r1)
            T = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.<clinit>():void");
    }

    public CoordinatorLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public static void a(Rect rect) {
        rect.setEmpty();
        T.a(rect);
    }

    public static Rect c() {
        Rect a2 = T.a();
        return a2 == null ? new Rect() : a2;
    }

    public void b(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        int i3 = 0;
        if (!(fVar.f49k == null && fVar.f44f != -1)) {
            View view2 = fVar.f49k;
            if (view2 != null) {
                Rect c2 = c();
                Rect c3 = c();
                try {
                    d.h.a.b.a((ViewGroup) this, view2, c2);
                    f fVar2 = (f) view.getLayoutParams();
                    int measuredWidth = view.getMeasuredWidth();
                    int measuredHeight = view.getMeasuredHeight();
                    a(i2, c2, c3, fVar2, measuredWidth, measuredHeight);
                    a(fVar2, c3, measuredWidth, measuredHeight);
                    view.layout(c3.left, c3.top, c3.right, c3.bottom);
                    c2.setEmpty();
                    T.a(c2);
                    c3.setEmpty();
                    T.a(c3);
                } catch (Throwable th) {
                    a(c2);
                    a(c3);
                    throw th;
                }
            } else {
                int i4 = fVar.f43e;
                if (i4 >= 0) {
                    f fVar3 = (f) view.getLayoutParams();
                    int i5 = fVar3.f41c;
                    if (i5 == 0) {
                        i5 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i5, i2);
                    int i6 = absoluteGravity & 7;
                    int i7 = absoluteGravity & 112;
                    int width = getWidth();
                    int height = getHeight();
                    int measuredWidth2 = view.getMeasuredWidth();
                    int measuredHeight2 = view.getMeasuredHeight();
                    if (i2 == 1) {
                        i4 = width - i4;
                    }
                    int a2 = a(i4) - measuredWidth2;
                    if (i6 == 1) {
                        a2 += measuredWidth2 / 2;
                    } else if (i6 == 5) {
                        a2 += measuredWidth2;
                    }
                    if (i7 == 16) {
                        i3 = 0 + (measuredHeight2 / 2);
                    } else if (i7 == 80) {
                        i3 = measuredHeight2 + 0;
                    }
                    int max = Math.max(getPaddingLeft() + fVar3.leftMargin, Math.min(a2, ((width - getPaddingRight()) - measuredWidth2) - fVar3.rightMargin));
                    int max2 = Math.max(getPaddingTop() + fVar3.topMargin, Math.min(i3, ((height - getPaddingBottom()) - measuredHeight2) - fVar3.bottomMargin));
                    view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
                    return;
                }
                f fVar4 = (f) view.getLayoutParams();
                Rect c4 = c();
                c4.set(getPaddingLeft() + fVar4.leftMargin, getPaddingTop() + fVar4.topMargin, (getWidth() - getPaddingRight()) - fVar4.rightMargin, (getHeight() - getPaddingBottom()) - fVar4.bottomMargin);
                if (this.J != null && n.g(this) && !view.getFitsSystemWindows()) {
                    c4.left = this.J.b() + c4.left;
                    c4.top = this.J.d() + c4.top;
                    c4.right -= this.J.c();
                    c4.bottom -= this.J.a();
                }
                Rect c5 = c();
                int i8 = fVar4.f41c;
                if ((i8 & 7) == 0) {
                    i8 |= 8388611;
                }
                if ((i8 & 112) == 0) {
                    i8 |= 48;
                }
                Gravity.apply(i8, view.getMeasuredWidth(), view.getMeasuredHeight(), c4, c5, i2);
                view.layout(c5.left, c5.top, c5.right, c5.bottom);
                c4.setEmpty();
                T.a(c4);
                c5.setEmpty();
                T.a(c5);
            }
        } else {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public final void d(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        int i3 = fVar.f48j;
        if (i3 != i2) {
            n.d(view, i2 - i3);
            fVar.f48j = i2;
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        c cVar = ((f) view.getLayoutParams()).a;
        return super.drawChild(canvas, view, j2);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.L;
        boolean z2 = false;
        if (drawable != null && drawable.isStateful()) {
            z2 = false | drawable.setState(drawableState);
        }
        if (z2) {
            invalidate();
        }
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f(-2, -2);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        a();
        return Collections.unmodifiableList(this.x);
    }

    public final w getLastWindowInsets() {
        return this.J;
    }

    public int getNestedScrollAxes() {
        return this.O.a();
    }

    public Drawable getStatusBarBackground() {
        return this.L;
    }

    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(false);
        if (this.I) {
            if (this.H == null) {
                this.H = new g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.H);
        }
        if (this.J == null && n.g(this)) {
            requestApplyInsets();
        }
        this.D = true;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false);
        if (this.I && this.H != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.H);
        }
        View view = this.G;
        if (view != null) {
            a(view, 0);
        }
        this.D = false;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.K && this.L != null) {
            w wVar = this.J;
            int d2 = wVar != null ? wVar.d() : 0;
            if (d2 > 0) {
                this.L.setBounds(0, 0, getWidth(), d2);
                this.L.draw(canvas);
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            a(true);
        }
        boolean a2 = a(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            a(true);
        }
        return a2;
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        c cVar;
        int i6 = n.i(this);
        int size = this.x.size();
        for (int i7 = 0; i7 < size; i7++) {
            View view = this.x.get(i7);
            if (view.getVisibility() != 8 && ((cVar = ((f) view.getLayoutParams()).a) == null || !cVar.a(this, view, i6))) {
                b(view, i6);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:77:0x017e, code lost:
        if (r0.a(r30, r20, r8, r21, r23, 0) == false) goto L_0x018e;
     */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x012d  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0157  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x015f  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0181  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r31, int r32) {
        /*
            r30 = this;
            r7 = r30
            r30.a()
            int r0 = r30.getChildCount()
            r8 = 0
            r1 = 0
        L_0x000b:
            r2 = 1
            if (r1 >= r0) goto L_0x0038
            android.view.View r3 = r7.getChildAt(r1)
            d.h.a.a<android.view.View> r4 = r7.y
            d.f.h<T, java.util.ArrayList<T>> r5 = r4.b
            int r5 = r5.z
            r6 = 0
        L_0x0019:
            if (r6 >= r5) goto L_0x0030
            d.f.h<T, java.util.ArrayList<T>> r9 = r4.b
            java.lang.Object r9 = r9.e(r6)
            java.util.ArrayList r9 = (java.util.ArrayList) r9
            if (r9 == 0) goto L_0x002d
            boolean r9 = r9.contains(r3)
            if (r9 == 0) goto L_0x002d
            r3 = 1
            goto L_0x0031
        L_0x002d:
            int r6 = r6 + 1
            goto L_0x0019
        L_0x0030:
            r3 = 0
        L_0x0031:
            if (r3 == 0) goto L_0x0035
            r0 = 1
            goto L_0x0039
        L_0x0035:
            int r1 = r1 + 1
            goto L_0x000b
        L_0x0038:
            r0 = 0
        L_0x0039:
            boolean r1 = r7.I
            if (r0 == r1) goto L_0x006d
            if (r0 == 0) goto L_0x005a
            boolean r0 = r7.D
            if (r0 == 0) goto L_0x0057
            androidx.coordinatorlayout.widget.CoordinatorLayout$g r0 = r7.H
            if (r0 != 0) goto L_0x004e
            androidx.coordinatorlayout.widget.CoordinatorLayout$g r0 = new androidx.coordinatorlayout.widget.CoordinatorLayout$g
            r0.<init>()
            r7.H = r0
        L_0x004e:
            android.view.ViewTreeObserver r0 = r30.getViewTreeObserver()
            androidx.coordinatorlayout.widget.CoordinatorLayout$g r1 = r7.H
            r0.addOnPreDrawListener(r1)
        L_0x0057:
            r7.I = r2
            goto L_0x006d
        L_0x005a:
            boolean r0 = r7.D
            if (r0 == 0) goto L_0x006b
            androidx.coordinatorlayout.widget.CoordinatorLayout$g r0 = r7.H
            if (r0 == 0) goto L_0x006b
            android.view.ViewTreeObserver r0 = r30.getViewTreeObserver()
            androidx.coordinatorlayout.widget.CoordinatorLayout$g r1 = r7.H
            r0.removeOnPreDrawListener(r1)
        L_0x006b:
            r7.I = r8
        L_0x006d:
            int r9 = r30.getPaddingLeft()
            int r0 = r30.getPaddingTop()
            int r10 = r30.getPaddingRight()
            int r1 = r30.getPaddingBottom()
            int r11 = d.i.i.n.i(r30)
            if (r11 != r2) goto L_0x0085
            r12 = 1
            goto L_0x0086
        L_0x0085:
            r12 = 0
        L_0x0086:
            int r13 = android.view.View.MeasureSpec.getMode(r31)
            int r14 = android.view.View.MeasureSpec.getSize(r31)
            int r15 = android.view.View.MeasureSpec.getMode(r32)
            int r16 = android.view.View.MeasureSpec.getSize(r32)
            int r17 = r9 + r10
            int r18 = r0 + r1
            int r0 = r30.getSuggestedMinimumWidth()
            int r1 = r30.getSuggestedMinimumHeight()
            d.i.i.w r3 = r7.J
            if (r3 == 0) goto L_0x00af
            boolean r3 = r30.getFitsSystemWindows()
            if (r3 == 0) goto L_0x00af
            r19 = 1
            goto L_0x00b1
        L_0x00af:
            r19 = 0
        L_0x00b1:
            java.util.List<android.view.View> r2 = r7.x
            int r6 = r2.size()
            r5 = r0
            r4 = r1
            r2 = 0
            r3 = 0
        L_0x00bb:
            if (r3 >= r6) goto L_0x01d4
            java.util.List<android.view.View> r0 = r7.x
            java.lang.Object r0 = r0.get(r3)
            r20 = r0
            android.view.View r20 = (android.view.View) r20
            int r0 = r20.getVisibility()
            r1 = 8
            if (r0 != r1) goto L_0x00d7
            r22 = r3
            r29 = r6
            r28 = r9
            goto L_0x01cb
        L_0x00d7:
            android.view.ViewGroup$LayoutParams r0 = r20.getLayoutParams()
            r1 = r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$f r1 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r1
            int r0 = r1.f43e
            if (r0 < 0) goto L_0x0121
            if (r13 == 0) goto L_0x0121
            int r0 = r7.a((int) r0)
            int r8 = r1.f41c
            if (r8 != 0) goto L_0x00ef
            r8 = 8388661(0x800035, float:1.1755018E-38)
        L_0x00ef:
            int r8 = android.view.Gravity.getAbsoluteGravity(r8, r11)
            r8 = r8 & 7
            r22 = r2
            r2 = 3
            if (r8 != r2) goto L_0x00fc
            if (r12 == 0) goto L_0x0101
        L_0x00fc:
            r2 = 5
            if (r8 != r2) goto L_0x010d
            if (r12 == 0) goto L_0x010d
        L_0x0101:
            int r2 = r14 - r10
            int r2 = r2 - r0
            r0 = 0
            int r2 = java.lang.Math.max(r0, r2)
            r21 = r2
            r8 = 0
            goto L_0x0125
        L_0x010d:
            if (r8 != r2) goto L_0x0111
            if (r12 == 0) goto L_0x0116
        L_0x0111:
            r2 = 3
            if (r8 != r2) goto L_0x011f
            if (r12 == 0) goto L_0x011f
        L_0x0116:
            int r0 = r0 - r9
            r8 = 0
            int r0 = java.lang.Math.max(r8, r0)
            r21 = r0
            goto L_0x0125
        L_0x011f:
            r8 = 0
            goto L_0x0123
        L_0x0121:
            r22 = r2
        L_0x0123:
            r21 = 0
        L_0x0125:
            if (r19 == 0) goto L_0x0157
            boolean r0 = r20.getFitsSystemWindows()
            if (r0 != 0) goto L_0x0157
            d.i.i.w r0 = r7.J
            int r0 = r0.b()
            d.i.i.w r2 = r7.J
            int r2 = r2.c()
            int r2 = r2 + r0
            d.i.i.w r0 = r7.J
            int r0 = r0.d()
            d.i.i.w r8 = r7.J
            int r8 = r8.a()
            int r8 = r8 + r0
            int r0 = r14 - r2
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r13)
            int r2 = r16 - r8
            int r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r15)
            r8 = r0
            r23 = r2
            goto L_0x015b
        L_0x0157:
            r8 = r31
            r23 = r32
        L_0x015b:
            androidx.coordinatorlayout.widget.CoordinatorLayout$c r0 = r1.a
            if (r0 == 0) goto L_0x0181
            r24 = 0
            r2 = r1
            r1 = r30
            r26 = r2
            r25 = r22
            r2 = r20
            r22 = r3
            r3 = r8
            r27 = r4
            r4 = r21
            r28 = r9
            r9 = r5
            r5 = r23
            r29 = r6
            r6 = r24
            boolean r0 = r0.a((androidx.coordinatorlayout.widget.CoordinatorLayout) r1, r2, (int) r3, (int) r4, (int) r5, (int) r6)
            if (r0 != 0) goto L_0x019b
            goto L_0x018e
        L_0x0181:
            r26 = r1
            r27 = r4
            r29 = r6
            r28 = r9
            r25 = r22
            r22 = r3
            r9 = r5
        L_0x018e:
            r5 = 0
            r0 = r30
            r1 = r20
            r2 = r8
            r3 = r21
            r4 = r23
            r0.a((android.view.View) r1, (int) r2, (int) r3, (int) r4, (int) r5)
        L_0x019b:
            int r0 = r20.getMeasuredWidth()
            int r0 = r0 + r17
            r1 = r26
            int r2 = r1.leftMargin
            int r0 = r0 + r2
            int r2 = r1.rightMargin
            int r0 = r0 + r2
            int r0 = java.lang.Math.max(r9, r0)
            int r2 = r20.getMeasuredHeight()
            int r2 = r2 + r18
            int r3 = r1.topMargin
            int r2 = r2 + r3
            int r1 = r1.bottomMargin
            int r2 = r2 + r1
            r1 = r27
            int r1 = java.lang.Math.max(r1, r2)
            int r2 = r20.getMeasuredState()
            r8 = r25
            int r2 = android.view.View.combineMeasuredStates(r8, r2)
            r5 = r0
            r4 = r1
        L_0x01cb:
            int r3 = r22 + 1
            r9 = r28
            r6 = r29
            r8 = 0
            goto L_0x00bb
        L_0x01d4:
            r8 = r2
            r1 = r4
            r9 = r5
            r0 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r0 = r0 & r8
            r2 = r31
            int r0 = android.view.View.resolveSizeAndState(r9, r2, r0)
            int r2 = r8 << 16
            r3 = r32
            int r1 = android.view.View.resolveSizeAndState(r1, r3, r2)
            r7.setMeasuredDimension(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(0)) {
                    c cVar = fVar.a;
                }
            }
        }
        return false;
    }

    public boolean onNestedPreFling(View view, float f2, float f3) {
        c cVar;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(0) && (cVar = fVar.a) != null) {
                    z2 |= cVar.a(this, childAt, view, f2, f3);
                }
            }
        }
        return z2;
    }

    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        a(view, i2, i3, iArr, 0);
    }

    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        a(view, i2, i3, i4, i5, 0);
    }

    public void onNestedScrollAccepted(View view, View view2, int i2) {
        a(view, view2, i2, 0);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.x);
        SparseArray<Parcelable> sparseArray = hVar.z;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            c cVar = c(childAt).a;
            if (!(id == -1 || cVar == null || (parcelable2 = sparseArray.get(id)) == null)) {
                cVar.a(this, childAt, parcelable2);
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        Parcelable a2;
        h hVar = new h(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            c cVar = ((f) childAt.getLayoutParams()).a;
            if (!(id == -1 || cVar == null || (a2 = cVar.a(this, childAt)) == null)) {
                sparseArray.append(id, a2);
            }
        }
        hVar.z = sparseArray;
        return hVar;
    }

    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return b(view, view2, i2, 0);
    }

    public void onStopNestedScroll(View view) {
        a(view, 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0012, code lost:
        if (r3 != false) goto L_0x0016;
     */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x004a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.F
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L_0x0015
            boolean r3 = r0.a((android.view.MotionEvent) r1, (int) r4)
            if (r3 == 0) goto L_0x0029
            goto L_0x0016
        L_0x0015:
            r3 = 0
        L_0x0016:
            android.view.View r6 = r0.F
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$f r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$c r6 = r6.a
            if (r6 == 0) goto L_0x0029
            android.view.View r7 = r0.F
            boolean r6 = r6.b((androidx.coordinatorlayout.widget.CoordinatorLayout) r0, r7, (android.view.MotionEvent) r1)
            goto L_0x002a
        L_0x0029:
            r6 = 0
        L_0x002a:
            android.view.View r7 = r0.F
            r8 = 0
            if (r7 != 0) goto L_0x0035
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L_0x0048
        L_0x0035:
            if (r3 == 0) goto L_0x0048
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L_0x0048:
            if (r8 == 0) goto L_0x004d
            r8.recycle()
        L_0x004d:
            if (r2 == r4) goto L_0x0052
            r1 = 3
            if (r2 != r1) goto L_0x0055
        L_0x0052:
            r0.a((boolean) r5)
        L_0x0055:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        c cVar = ((f) view.getLayoutParams()).a;
        if (cVar == null || !cVar.a(this, view, rect, z2)) {
            return super.requestChildRectangleOnScreen(view, rect, z2);
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        if (z2 && !this.C) {
            a(false);
            this.C = true;
        }
    }

    public void setFitsSystemWindows(boolean z2) {
        super.setFitsSystemWindows(z2);
        b();
    }

    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.M = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.L;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback((Drawable.Callback) null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.L = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.L.setState(getDrawableState());
                }
                r.a(this.L, n.i(this));
                this.L.setVisible(getVisibility() == 0, false);
                this.L.setCallback(this);
            }
            n.x(this);
        }
    }

    public void setStatusBarBackgroundColor(int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(int i2) {
        setStatusBarBackground(i2 != 0 ? d.i.b.a.c(getContext(), i2) : null);
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z2 = i2 == 0;
        Drawable drawable = this.L;
        if (drawable != null && drawable.isVisible() != z2) {
            this.L.setVisible(z2, false);
        }
    }

    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.L;
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.coordinatorLayoutStyle);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new f((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new f(layoutParams);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArray;
        this.x = new ArrayList();
        this.y = new d.h.a.a<>();
        this.z = new ArrayList();
        this.A = new ArrayList();
        this.B = new int[2];
        this.O = new j();
        if (i2 == 0) {
            typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, 0, R$style.Widget_Support_CoordinatorLayout);
        } else {
            typedArray = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout, i2, 0);
        }
        int resourceId = typedArray.getResourceId(R$styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.E = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.E.length;
            for (int i3 = 0; i3 < length; i3++) {
                int[] iArr = this.E;
                iArr[i3] = (int) (((float) iArr[i3]) * f2);
            }
        }
        this.L = typedArray.getDrawable(R$styleable.CoordinatorLayout_statusBarBackground);
        typedArray.recycle();
        b();
        super.setOnHierarchyChangeListener(new e());
    }

    public final void a(boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            c cVar = ((f) childAt.getLayoutParams()).a;
            if (cVar != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z2) {
                    cVar.a(this, childAt, obtain);
                } else {
                    cVar.b(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ((f) getChildAt(i3).getLayoutParams()).m = false;
        }
        this.F = null;
        this.C = false;
    }

    public f c(View view) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.b) {
            if (view instanceof b) {
                c behavior = ((b) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                fVar.a(behavior);
                fVar.b = true;
            } else {
                d dVar = null;
                for (Class cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    dVar = (d) cls.getAnnotation(d.class);
                    if (dVar != null) {
                        break;
                    }
                }
                if (dVar != null) {
                    try {
                        fVar.a((c) dVar.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e2) {
                        StringBuilder a2 = e.a.a.a.a.a("Default behavior class ");
                        a2.append(dVar.value().getName());
                        a2.append(" could not be instantiated. Did you forget");
                        a2.append(" a default constructor?");
                        Log.e("CoordinatorLayout", a2.toString(), e2);
                    }
                }
                fVar.b = true;
            }
        }
        return fVar;
    }

    public static class f extends ViewGroup.MarginLayoutParams {
        public c a;
        public boolean b = false;

        /* renamed from: c  reason: collision with root package name */
        public int f41c = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f42d = 0;

        /* renamed from: e  reason: collision with root package name */
        public int f43e = -1;

        /* renamed from: f  reason: collision with root package name */
        public int f44f = -1;

        /* renamed from: g  reason: collision with root package name */
        public int f45g = 0;

        /* renamed from: h  reason: collision with root package name */
        public int f46h = 0;

        /* renamed from: i  reason: collision with root package name */
        public int f47i;

        /* renamed from: j  reason: collision with root package name */
        public int f48j;

        /* renamed from: k  reason: collision with root package name */
        public View f49k;

        /* renamed from: l  reason: collision with root package name */
        public View f50l;
        public boolean m;
        public boolean n;
        public boolean o;
        public boolean p;
        public final Rect q = new Rect();

        public f(int i2, int i3) {
            super(i2, i3);
        }

        public void a(c cVar) {
            c cVar2 = this.a;
            if (cVar2 == cVar) {
                return;
            }
            if (cVar2 == null || cVar2 != null) {
                this.a = cVar;
                this.b = true;
                if (cVar != null) {
                    cVar.a(this);
                    return;
                }
                return;
            }
            throw null;
        }

        public void a(int i2, boolean z) {
            if (i2 == 0) {
                this.n = z;
            } else if (i2 == 1) {
                this.o = z;
            }
        }

        public boolean a(int i2) {
            if (i2 == 0) {
                return this.n;
            }
            if (i2 != 1) {
                return false;
            }
            return this.o;
        }

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CoordinatorLayout_Layout);
            this.f41c = obtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f44f = obtainStyledAttributes.getResourceId(R$styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f42d = obtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f43e = obtainStyledAttributes.getInteger(R$styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f45g = obtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f46h = obtainStyledAttributes.getInt(R$styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(R$styleable.CoordinatorLayout_Layout_layout_behavior);
            this.b = hasValue;
            if (hasValue) {
                this.a = CoordinatorLayout.a(context, attributeSet, obtainStyledAttributes.getString(R$styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            c cVar = this.a;
            if (cVar != null) {
                cVar.a(this);
            }
        }

        public f(f fVar) {
            super(fVar);
        }

        public f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public static class h extends d.k.a.a {
        public static final Parcelable.Creator<h> CREATOR = new a();
        public SparseArray<Parcelable> z;

        public static class a implements Parcelable.ClassLoaderCreator<h> {
            public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            public Object[] newArray(int i2) {
                return new h[i2];
            }

            public Object createFromParcel(Parcel parcel) {
                return new h(parcel, (ClassLoader) null);
            }
        }

        public h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.z = new SparseArray<>(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                this.z.append(iArr[i2], readParcelableArray[i2]);
            }
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.x, i2);
            SparseArray<Parcelable> sparseArray = this.z;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i3 = 0; i3 < size; i3++) {
                iArr[i3] = this.z.keyAt(i3);
                parcelableArr[i3] = this.z.valueAt(i3);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i2);
        }

        public h(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public final void a(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        Comparator<View> comparator = S;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    public final void c(View view, int i2) {
        f fVar = (f) view.getLayoutParams();
        int i3 = fVar.f47i;
        if (i3 != i2) {
            n.c(view, i2 - i3);
            fVar.f47i = i2;
        }
    }

    public final boolean a(MotionEvent motionEvent, int i2) {
        boolean z2;
        MotionEvent motionEvent2 = motionEvent;
        int i3 = i2;
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.z;
        a(list);
        int size = list.size();
        MotionEvent motionEvent3 = null;
        boolean z3 = false;
        boolean z4 = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            f fVar = (f) view.getLayoutParams();
            c cVar = fVar.a;
            if ((!z3 && !z4) || actionMasked == 0) {
                if (!z3 && cVar != null) {
                    if (i3 == 0) {
                        z3 = cVar.a(this, view, motionEvent2);
                    } else if (i3 == 1) {
                        z3 = cVar.b(this, view, motionEvent2);
                    }
                    if (z3) {
                        this.F = view;
                    }
                }
                if (fVar.a == null) {
                    fVar.m = false;
                }
                boolean z5 = fVar.m;
                if (z5) {
                    z2 = true;
                } else {
                    c cVar2 = fVar.a;
                    z2 = z5 | false;
                    fVar.m = z2;
                }
                z4 = z2 && !z5;
                if (z2 && !z4) {
                    break;
                }
            } else if (cVar != null) {
                if (motionEvent3 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent3 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i3 == 0) {
                    cVar.a(this, view, motionEvent3);
                } else if (i3 == 1) {
                    cVar.b(this, view, motionEvent3);
                }
            }
        }
        list.clear();
        return z3;
    }

    public final int a(int i2) {
        int[] iArr = this.E;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i2);
            return 0;
        } else if (i2 >= 0 && i2 < iArr.length) {
            return iArr[i2];
        } else {
            Log.e("CoordinatorLayout", "Keyline index " + i2 + " out of range for " + this);
            return 0;
        }
    }

    public static c a(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(CryptoConstants.ALIAS_SEPARATOR)) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(P)) {
            str = P + '.' + str;
        }
        try {
            Map map = R.get();
            if (map == null) {
                map = new HashMap();
                R.set(map);
            }
            Constructor<?> constructor = (Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(Q);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (c) constructor.newInstance(new Object[]{context, attributeSet});
        } catch (Exception e2) {
            throw new RuntimeException(e.a.a.a.a.b("Could not inflate Behavior subclass ", str), e2);
        }
    }

    public final void b(int i2) {
        int i3;
        Rect rect;
        int i4;
        boolean z2;
        boolean z3;
        int width;
        int i5;
        int i6;
        int i7;
        int height;
        int i8;
        int i9;
        int i10;
        Rect rect2;
        int i11;
        int i12;
        int i13;
        f fVar;
        c cVar;
        int i14 = i2;
        int i15 = n.i(this);
        int size = this.x.size();
        Rect c2 = c();
        Rect c3 = c();
        Rect c4 = c();
        int i16 = 0;
        while (i16 < size) {
            View view = this.x.get(i16);
            f fVar2 = (f) view.getLayoutParams();
            if (i14 == 0 && view.getVisibility() == 8) {
                i4 = size;
                rect = c4;
                i3 = i16;
            } else {
                int i17 = 0;
                while (i17 < i16) {
                    if (fVar2.f50l == this.x.get(i17)) {
                        f fVar3 = (f) view.getLayoutParams();
                        if (fVar3.f49k != null) {
                            Rect c5 = c();
                            Rect c6 = c();
                            Rect c7 = c();
                            d.h.a.b.a((ViewGroup) this, fVar3.f49k, c5);
                            a(view, false, c6);
                            int measuredWidth = view.getMeasuredWidth();
                            i13 = size;
                            int measuredHeight = view.getMeasuredHeight();
                            int i18 = measuredWidth;
                            Rect rect3 = c7;
                            i12 = i16;
                            Rect rect4 = c6;
                            Rect rect5 = c5;
                            f fVar4 = fVar3;
                            i11 = i17;
                            rect2 = c4;
                            fVar = fVar2;
                            a(i15, c5, rect3, fVar3, i18, measuredHeight);
                            Rect rect6 = rect3;
                            boolean z4 = (rect6.left == rect4.left && rect6.top == rect4.top) ? false : true;
                            f fVar5 = fVar4;
                            a(fVar5, rect6, i18, measuredHeight);
                            int i19 = rect6.left - rect4.left;
                            int i20 = rect6.top - rect4.top;
                            if (i19 != 0) {
                                n.c(view, i19);
                            }
                            if (i20 != 0) {
                                n.d(view, i20);
                            }
                            if (z4 && (cVar = fVar5.a) != null) {
                                cVar.b(this, view, fVar5.f49k);
                            }
                            rect5.setEmpty();
                            T.a(rect5);
                            rect4.setEmpty();
                            T.a(rect4);
                            rect6.setEmpty();
                            T.a(rect6);
                            i17 = i11 + 1;
                            fVar2 = fVar;
                            size = i13;
                            i16 = i12;
                            c4 = rect2;
                        }
                    }
                    i11 = i17;
                    i13 = size;
                    rect2 = c4;
                    i12 = i16;
                    fVar = fVar2;
                    i17 = i11 + 1;
                    fVar2 = fVar;
                    size = i13;
                    i16 = i12;
                    c4 = rect2;
                }
                int i21 = size;
                Rect rect7 = c4;
                i3 = i16;
                f fVar6 = fVar2;
                a(view, true, c3);
                if (fVar6.f45g != 0 && !c3.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(fVar6.f45g, i15);
                    int i22 = absoluteGravity & 112;
                    if (i22 == 48) {
                        c2.top = Math.max(c2.top, c3.bottom);
                    } else if (i22 == 80) {
                        c2.bottom = Math.max(c2.bottom, getHeight() - c3.top);
                    }
                    int i23 = absoluteGravity & 7;
                    if (i23 == 3) {
                        c2.left = Math.max(c2.left, c3.right);
                    } else if (i23 == 5) {
                        c2.right = Math.max(c2.right, getWidth() - c3.left);
                    }
                }
                if (fVar6.f46h != 0 && view.getVisibility() == 0 && view.isLaidOut() && view.getWidth() > 0 && view.getHeight() > 0) {
                    f fVar7 = (f) view.getLayoutParams();
                    c cVar2 = fVar7.a;
                    Rect c8 = c();
                    Rect c9 = c();
                    c9.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                    if (cVar2 == null || !cVar2.a(this, view, c8)) {
                        c8.set(c9);
                    } else if (!c9.contains(c8)) {
                        StringBuilder a2 = e.a.a.a.a.a("Rect should be within the child's bounds. Rect:");
                        a2.append(c8.toShortString());
                        a2.append(" | Bounds:");
                        a2.append(c9.toShortString());
                        throw new IllegalArgumentException(a2.toString());
                    }
                    c9.setEmpty();
                    T.a(c9);
                    if (c8.isEmpty()) {
                        c8.setEmpty();
                        T.a(c8);
                    } else {
                        int absoluteGravity2 = Gravity.getAbsoluteGravity(fVar7.f46h, i15);
                        if ((absoluteGravity2 & 48) != 48 || (i9 = (c8.top - fVar7.topMargin) - fVar7.f48j) >= (i10 = c2.top)) {
                            z2 = false;
                        } else {
                            d(view, i10 - i9);
                            z2 = true;
                        }
                        if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - c8.bottom) - fVar7.bottomMargin) + fVar7.f48j) < (i8 = c2.bottom)) {
                            d(view, height - i8);
                            z2 = true;
                        }
                        if (!z2) {
                            d(view, 0);
                        }
                        if ((absoluteGravity2 & 3) != 3 || (i6 = (c8.left - fVar7.leftMargin) - fVar7.f47i) >= (i7 = c2.left)) {
                            z3 = false;
                        } else {
                            c(view, i7 - i6);
                            z3 = true;
                        }
                        if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - c8.right) - fVar7.rightMargin) + fVar7.f47i) < (i5 = c2.right)) {
                            c(view, width - i5);
                            z3 = true;
                        }
                        if (!z3) {
                            c(view, 0);
                        }
                        c8.setEmpty();
                        T.a(c8);
                    }
                }
                if (i14 != 2) {
                    rect = rect7;
                    rect.set(((f) view.getLayoutParams()).q);
                    if (rect.equals(c3)) {
                        i4 = i21;
                    } else {
                        ((f) view.getLayoutParams()).q.set(c3);
                    }
                } else {
                    rect = rect7;
                }
                i4 = i21;
                for (int i24 = i3 + 1; i24 < i4; i24++) {
                    View view2 = this.x.get(i24);
                    f fVar8 = (f) view2.getLayoutParams();
                    c cVar3 = fVar8.a;
                    if (cVar3 != null && cVar3.a(this, view2, view)) {
                        if (i14 != 0 || !fVar8.p) {
                            boolean b2 = i14 != 2 ? cVar3.b(this, view2, view) : true;
                            if (i14 == 1) {
                                fVar8.p = b2;
                            }
                        } else {
                            fVar8.p = false;
                        }
                    }
                }
            }
            i16 = i3 + 1;
            size = i4;
            c4 = rect;
        }
        a(c2);
        a(c3);
        a(c4);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0073, code lost:
        if (r5 != false) goto L_0x00ca;
     */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x0168 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x010e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a() {
        /*
            r11 = this;
            java.util.List<android.view.View> r0 = r11.x
            r0.clear()
            d.h.a.a<android.view.View> r0 = r11.y
            d.f.h<T, java.util.ArrayList<T>> r1 = r0.b
            int r1 = r1.z
            r2 = 0
            r3 = 0
        L_0x000d:
            if (r3 >= r1) goto L_0x0024
            d.f.h<T, java.util.ArrayList<T>> r4 = r0.b
            java.lang.Object r4 = r4.e(r3)
            java.util.ArrayList r4 = (java.util.ArrayList) r4
            if (r4 == 0) goto L_0x0021
            r4.clear()
            d.i.h.b<java.util.ArrayList<T>> r5 = r0.a
            r5.a(r4)
        L_0x0021:
            int r3 = r3 + 1
            goto L_0x000d
        L_0x0024:
            d.f.h<T, java.util.ArrayList<T>> r0 = r0.b
            r0.clear()
            int r0 = r11.getChildCount()
            r1 = 0
        L_0x002e:
            if (r1 >= r0) goto L_0x0195
            android.view.View r3 = r11.getChildAt(r1)
            androidx.coordinatorlayout.widget.CoordinatorLayout$f r4 = r11.c(r3)
            int r5 = r4.f44f
            r6 = -1
            r7 = 0
            if (r5 != r6) goto L_0x0044
            r4.f50l = r7
            r4.f49k = r7
            goto L_0x00ca
        L_0x0044:
            android.view.View r5 = r4.f49k
            if (r5 == 0) goto L_0x0075
            int r5 = r5.getId()
            int r6 = r4.f44f
            if (r5 == r6) goto L_0x0051
            goto L_0x006e
        L_0x0051:
            android.view.View r5 = r4.f49k
            android.view.ViewParent r6 = r5.getParent()
        L_0x0057:
            if (r6 == r11) goto L_0x0070
            if (r6 == 0) goto L_0x006a
            if (r6 != r3) goto L_0x005e
            goto L_0x006a
        L_0x005e:
            boolean r8 = r6 instanceof android.view.View
            if (r8 == 0) goto L_0x0065
            r5 = r6
            android.view.View r5 = (android.view.View) r5
        L_0x0065:
            android.view.ViewParent r6 = r6.getParent()
            goto L_0x0057
        L_0x006a:
            r4.f50l = r7
            r4.f49k = r7
        L_0x006e:
            r5 = 0
            goto L_0x0073
        L_0x0070:
            r4.f50l = r5
            r5 = 1
        L_0x0073:
            if (r5 != 0) goto L_0x00ca
        L_0x0075:
            int r5 = r4.f44f
            android.view.View r5 = r11.findViewById(r5)
            r4.f49k = r5
            if (r5 == 0) goto L_0x00c0
            if (r5 != r11) goto L_0x0094
            boolean r5 = r11.isInEditMode()
            if (r5 == 0) goto L_0x008c
            r4.f50l = r7
            r4.f49k = r7
            goto L_0x00ca
        L_0x008c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "View can not be anchored to the the parent CoordinatorLayout"
            r0.<init>(r1)
            throw r0
        L_0x0094:
            android.view.ViewParent r6 = r5.getParent()
        L_0x0098:
            if (r6 == r11) goto L_0x00bd
            if (r6 == 0) goto L_0x00bd
            if (r6 != r3) goto L_0x00b1
            boolean r5 = r11.isInEditMode()
            if (r5 == 0) goto L_0x00a9
            r4.f50l = r7
            r4.f49k = r7
            goto L_0x00ca
        L_0x00a9:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Anchor must not be a descendant of the anchored view"
            r0.<init>(r1)
            throw r0
        L_0x00b1:
            boolean r8 = r6 instanceof android.view.View
            if (r8 == 0) goto L_0x00b8
            r5 = r6
            android.view.View r5 = (android.view.View) r5
        L_0x00b8:
            android.view.ViewParent r6 = r6.getParent()
            goto L_0x0098
        L_0x00bd:
            r4.f50l = r5
            goto L_0x00ca
        L_0x00c0:
            boolean r5 = r11.isInEditMode()
            if (r5 == 0) goto L_0x0170
            r4.f50l = r7
            r4.f49k = r7
        L_0x00ca:
            d.h.a.a<android.view.View> r5 = r11.y
            r5.a(r3)
            r5 = 0
        L_0x00d0:
            if (r5 >= r0) goto L_0x016c
            if (r5 != r1) goto L_0x00d6
            goto L_0x0168
        L_0x00d6:
            android.view.View r6 = r11.getChildAt(r5)
            android.view.View r8 = r4.f50l
            if (r6 == r8) goto L_0x010b
            int r8 = d.i.i.n.i(r11)
            android.view.ViewGroup$LayoutParams r9 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$f r9 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r9
            int r9 = r9.f45g
            int r9 = android.view.Gravity.getAbsoluteGravity(r9, r8)
            if (r9 == 0) goto L_0x00fb
            int r10 = r4.f46h
            int r8 = android.view.Gravity.getAbsoluteGravity(r10, r8)
            r8 = r8 & r9
            if (r8 != r9) goto L_0x00fb
            r8 = 1
            goto L_0x00fc
        L_0x00fb:
            r8 = 0
        L_0x00fc:
            if (r8 != 0) goto L_0x010b
            androidx.coordinatorlayout.widget.CoordinatorLayout$c r8 = r4.a
            if (r8 == 0) goto L_0x0109
            boolean r8 = r8.a((androidx.coordinatorlayout.widget.CoordinatorLayout) r11, r3, (android.view.View) r6)
            if (r8 == 0) goto L_0x0109
            goto L_0x010b
        L_0x0109:
            r8 = 0
            goto L_0x010c
        L_0x010b:
            r8 = 1
        L_0x010c:
            if (r8 == 0) goto L_0x0168
            d.h.a.a<android.view.View> r8 = r11.y
            d.f.h<T, java.util.ArrayList<T>> r8 = r8.b
            int r8 = r8.a((java.lang.Object) r6)
            if (r8 < 0) goto L_0x011a
            r8 = 1
            goto L_0x011b
        L_0x011a:
            r8 = 0
        L_0x011b:
            if (r8 != 0) goto L_0x0122
            d.h.a.a<android.view.View> r8 = r11.y
            r8.a(r6)
        L_0x0122:
            d.h.a.a<android.view.View> r8 = r11.y
            d.f.h<T, java.util.ArrayList<T>> r9 = r8.b
            int r9 = r9.a((java.lang.Object) r6)
            if (r9 < 0) goto L_0x012e
            r9 = 1
            goto L_0x012f
        L_0x012e:
            r9 = 0
        L_0x012f:
            if (r9 == 0) goto L_0x0160
            d.f.h<T, java.util.ArrayList<T>> r9 = r8.b
            int r9 = r9.a((java.lang.Object) r3)
            if (r9 < 0) goto L_0x013b
            r9 = 1
            goto L_0x013c
        L_0x013b:
            r9 = 0
        L_0x013c:
            if (r9 == 0) goto L_0x0160
            d.f.h<T, java.util.ArrayList<T>> r9 = r8.b
            java.lang.Object r9 = r9.getOrDefault(r6, r7)
            java.util.ArrayList r9 = (java.util.ArrayList) r9
            if (r9 != 0) goto L_0x015c
            d.i.h.b<java.util.ArrayList<T>> r9 = r8.a
            java.lang.Object r9 = r9.a()
            java.util.ArrayList r9 = (java.util.ArrayList) r9
            if (r9 != 0) goto L_0x0157
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
        L_0x0157:
            d.f.h<T, java.util.ArrayList<T>> r8 = r8.b
            r8.put(r6, r9)
        L_0x015c:
            r9.add(r3)
            goto L_0x0168
        L_0x0160:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "All nodes must be present in the graph before being added as an edge"
            r0.<init>(r1)
            throw r0
        L_0x0168:
            int r5 = r5 + 1
            goto L_0x00d0
        L_0x016c:
            int r1 = r1 + 1
            goto L_0x002e
        L_0x0170:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Could not find CoordinatorLayout descendant view with id "
            java.lang.StringBuilder r1 = e.a.a.a.a.a(r1)
            android.content.res.Resources r2 = r11.getResources()
            int r4 = r4.f44f
            java.lang.String r2 = r2.getResourceName(r4)
            r1.append(r2)
            java.lang.String r2 = " to anchor view "
            r1.append(r2)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x0195:
            java.util.List<android.view.View> r0 = r11.x
            d.h.a.a<android.view.View> r1 = r11.y
            java.util.ArrayList<T> r3 = r1.f530c
            r3.clear()
            java.util.HashSet<T> r3 = r1.f531d
            r3.clear()
            d.f.h<T, java.util.ArrayList<T>> r3 = r1.b
            int r3 = r3.z
        L_0x01a7:
            if (r2 >= r3) goto L_0x01b9
            d.f.h<T, java.util.ArrayList<T>> r4 = r1.b
            java.lang.Object r4 = r4.c(r2)
            java.util.ArrayList<T> r5 = r1.f530c
            java.util.HashSet<T> r6 = r1.f531d
            r1.a(r4, r5, r6)
            int r2 = r2 + 1
            goto L_0x01a7
        L_0x01b9:
            java.util.ArrayList<T> r1 = r1.f530c
            r0.addAll(r1)
            java.util.List<android.view.View> r0 = r11.x
            java.util.Collections.reverse(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.a():void");
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    public void a(View view, boolean z2, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z2) {
            d.h.a.b.a((ViewGroup) this, view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final void a(int i2, Rect rect, Rect rect2, f fVar, int i3, int i4) {
        int i5;
        int i6;
        int i7 = fVar.f41c;
        if (i7 == 0) {
            i7 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i7, i2);
        int i8 = fVar.f42d;
        if ((i8 & 7) == 0) {
            i8 |= 8388611;
        }
        if ((i8 & 112) == 0) {
            i8 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i8, i2);
        int i9 = absoluteGravity & 7;
        int i10 = absoluteGravity & 112;
        int i11 = absoluteGravity2 & 7;
        int i12 = absoluteGravity2 & 112;
        if (i11 == 1) {
            i5 = rect.left + (rect.width() / 2);
        } else if (i11 != 5) {
            i5 = rect.left;
        } else {
            i5 = rect.right;
        }
        if (i12 == 16) {
            i6 = rect.top + (rect.height() / 2);
        } else if (i12 != 80) {
            i6 = rect.top;
        } else {
            i6 = rect.bottom;
        }
        if (i9 == 1) {
            i5 -= i3 / 2;
        } else if (i9 != 5) {
            i5 -= i3;
        }
        if (i10 == 16) {
            i6 -= i4 / 2;
        } else if (i10 != 80) {
            i6 -= i4;
        }
        rect2.set(i5, i6, i3 + i5, i4 + i6);
    }

    public final void a(f fVar, Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + fVar.leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - fVar.rightMargin));
        int max2 = Math.max(getPaddingTop() + fVar.topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i3) - fVar.bottomMargin));
        rect.set(max, max2, i2 + max, i3 + max2);
    }

    public List<View> b(View view) {
        List orDefault = this.y.b.getOrDefault(view, null);
        this.A.clear();
        if (orDefault != null) {
            this.A.addAll(orDefault);
        }
        return this.A;
    }

    public boolean b(View view, View view2, int i2, int i3) {
        int i4 = i3;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                c cVar = fVar.a;
                if (cVar != null) {
                    boolean a2 = cVar.a(this, childAt, view, view2, i2, i3);
                    z2 |= a2;
                    fVar.a(i4, a2);
                } else {
                    fVar.a(i4, false);
                }
            }
        }
        return z2;
    }

    public List<View> a(View view) {
        d.h.a.a<View> aVar = this.y;
        int i2 = aVar.b.z;
        ArrayList arrayList = null;
        for (int i3 = 0; i3 < i2; i3++) {
            ArrayList e2 = aVar.b.e(i3);
            if (e2 != null && e2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(aVar.b.c(i3));
            }
        }
        this.A.clear();
        if (arrayList != null) {
            this.A.addAll(arrayList);
        }
        return this.A;
    }

    public final void b() {
        if (n.g(this)) {
            if (this.N == null) {
                this.N = new a();
            }
            n.a((View) this, this.N);
            setSystemUiVisibility(1280);
            return;
        }
        n.a((View) this, (k) null);
    }

    public boolean a(View view, int i2, int i3) {
        Rect c2 = c();
        d.h.a.b.a((ViewGroup) this, view, c2);
        try {
            return c2.contains(i2, i3);
        } finally {
            c2.setEmpty();
            T.a(c2);
        }
    }

    public void a(View view, View view2, int i2, int i3) {
        j jVar = this.O;
        if (i3 == 1) {
            jVar.b = i2;
        } else {
            jVar.a = i2;
        }
        this.G = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            f fVar = (f) getChildAt(i4).getLayoutParams();
            if (fVar.a(i3)) {
                c cVar = fVar.a;
            }
        }
    }

    public void a(View view, int i2) {
        j jVar = this.O;
        if (i2 == 1) {
            jVar.b = 0;
        } else {
            jVar.a = 0;
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.a(i2)) {
                c cVar = fVar.a;
                if (cVar != null) {
                    cVar.a(this, childAt, view, i2);
                }
                fVar.a(i2, false);
                fVar.p = false;
            }
        }
        this.G = null;
    }

    public void a(View view, int i2, int i3, int i4, int i5, int i6) {
        c cVar;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                int i8 = i6;
            } else {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(i6) && (cVar = fVar.a) != null) {
                    cVar.a(this, childAt, view, i2, i3, i4, i5, i6);
                    z2 = true;
                }
            }
        }
        if (z2) {
            b(1);
        }
    }

    public void a(View view, int i2, int i3, int[] iArr, int i4) {
        c cVar;
        int i5;
        int i6;
        int childCount = getChildCount();
        boolean z2 = false;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 8) {
                int i10 = i4;
            } else {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(i4) && (cVar = fVar.a) != null) {
                    int[] iArr2 = this.B;
                    iArr2[1] = 0;
                    iArr2[0] = 0;
                    cVar.a(this, childAt, view, i2, i3, iArr2, i4);
                    int[] iArr3 = this.B;
                    if (i2 > 0) {
                        i5 = Math.max(i7, iArr3[0]);
                    } else {
                        i5 = Math.min(i7, iArr3[0]);
                    }
                    i7 = i5;
                    int[] iArr4 = this.B;
                    if (i3 > 0) {
                        i6 = Math.max(i8, iArr4[1]);
                    } else {
                        i6 = Math.min(i8, iArr4[1]);
                    }
                    i8 = i6;
                    z2 = true;
                }
            }
        }
        iArr[0] = i7;
        iArr[1] = i8;
        if (z2) {
            b(1);
        }
    }
}
