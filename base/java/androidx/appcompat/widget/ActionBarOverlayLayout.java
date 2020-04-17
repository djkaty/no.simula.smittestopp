package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.widget.OverScroller;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import d.b.a.v;
import d.b.d.i.m;
import d.b.e.c0;
import d.b.e.d0;
import d.b.e.d1;
import d.i.i.h;
import d.i.i.i;
import d.i.i.j;
import d.i.i.n;

public class ActionBarOverlayLayout extends ViewGroup implements c0, h, i {
    public static final int[] b0 = {R$attr.actionBarSize, 16842841};
    public ActionBarContainer A;
    public d0 B;
    public Drawable C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public int I;
    public int J;
    public final Rect K;
    public final Rect L;
    public final Rect M;
    public final Rect N;
    public final Rect O;
    public final Rect P;
    public final Rect Q;
    public d R;
    public OverScroller S;
    public ViewPropertyAnimator T;
    public final AnimatorListenerAdapter U;
    public final Runnable V;
    public final Runnable W;
    public final j a0;
    public int x;
    public int y;
    public ContentFrameLayout z;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.T = null;
            actionBarOverlayLayout.H = false;
        }

        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.T = null;
            actionBarOverlayLayout.H = false;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        public void run() {
            ActionBarOverlayLayout.this.h();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.T = actionBarOverlayLayout.A.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.U);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        public void run() {
            ActionBarOverlayLayout.this.h();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.T = actionBarOverlayLayout.A.animate().translationY((float) (-ActionBarOverlayLayout.this.A.getHeight())).setListener(ActionBarOverlayLayout.this.U);
        }
    }

    public interface d {
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i2, int i3) {
            super(i2, i3);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public final void a(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(b0);
        boolean z2 = false;
        this.x = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.C = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19) {
            z2 = true;
        }
        this.D = z2;
        this.S = new OverScroller(context);
    }

    public void a(View view, int i2, int i3, int[] iArr, int i4) {
    }

    public boolean b(View view, View view2, int i2, int i3) {
        return i3 == 0 && onStartNestedScroll(view, view2, i2);
    }

    public boolean c() {
        i();
        return this.B.c();
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    public boolean d() {
        i();
        return this.B.d();
    }

    public void draw(Canvas canvas) {
        int i2;
        super.draw(canvas);
        if (this.C != null && !this.D) {
            if (this.A.getVisibility() == 0) {
                i2 = (int) (this.A.getTranslationY() + ((float) this.A.getBottom()) + 0.5f);
            } else {
                i2 = 0;
            }
            this.C.setBounds(0, i2, getWidth(), this.C.getIntrinsicHeight() + i2);
            this.C.draw(canvas);
        }
    }

    public void e() {
        i();
        this.B.e();
    }

    public boolean f() {
        i();
        return this.B.f();
    }

    public boolean fitSystemWindows(Rect rect) {
        i();
        int o = n.o(this) & 256;
        boolean a2 = a((View) this.A, rect, true, true, false, true);
        this.N.set(rect);
        d1.a(this, this.N, this.K);
        if (!this.O.equals(this.N)) {
            this.O.set(this.N);
            a2 = true;
        }
        if (!this.L.equals(this.K)) {
            this.L.set(this.K);
            a2 = true;
        }
        if (a2) {
            requestLayout();
        }
        return true;
    }

    public void g() {
        i();
        this.B.g();
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.A;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    public int getNestedScrollAxes() {
        return this.a0.a();
    }

    public CharSequence getTitle() {
        i();
        return this.B.getTitle();
    }

    public void h() {
        removeCallbacks(this.V);
        removeCallbacks(this.W);
        ViewPropertyAnimator viewPropertyAnimator = this.T;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public void i() {
        d0 d0Var;
        if (this.z == null) {
            this.z = (ContentFrameLayout) findViewById(R$id.action_bar_activity_content);
            this.A = (ActionBarContainer) findViewById(R$id.action_bar_container);
            View findViewById = findViewById(R$id.action_bar);
            if (findViewById instanceof d0) {
                d0Var = (d0) findViewById;
            } else if (findViewById instanceof Toolbar) {
                d0Var = ((Toolbar) findViewById).getWrapper();
            } else {
                StringBuilder a2 = e.a.a.a.a.a("Can't make a decor toolbar out of ");
                a2.append(findViewById.getClass().getSimpleName());
                throw new IllegalStateException(a2.toString());
            }
            this.B = d0Var;
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        a(getContext());
        n.y(this);
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = eVar.leftMargin + paddingLeft;
                int i8 = eVar.topMargin + paddingTop;
                childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        i();
        measureChildWithMargins(this.A, i2, 0, i3, 0);
        e eVar = (e) this.A.getLayoutParams();
        int max = Math.max(0, this.A.getMeasuredWidth() + eVar.leftMargin + eVar.rightMargin);
        int max2 = Math.max(0, this.A.getMeasuredHeight() + eVar.topMargin + eVar.bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.A.getMeasuredState());
        boolean z2 = (n.o(this) & 256) != 0;
        if (z2) {
            i4 = this.x;
            if (this.F && this.A.getTabContainer() != null) {
                i4 += this.x;
            }
        } else {
            i4 = this.A.getVisibility() != 8 ? this.A.getMeasuredHeight() : 0;
        }
        this.M.set(this.K);
        this.P.set(this.N);
        if (this.E || z2) {
            Rect rect = this.P;
            rect.top += i4;
            rect.bottom += 0;
        } else {
            Rect rect2 = this.M;
            rect2.top += i4;
            rect2.bottom += 0;
        }
        a((View) this.z, this.M, true, true, true, true);
        if (!this.Q.equals(this.P)) {
            this.Q.set(this.P);
            this.z.a(this.P);
        }
        measureChildWithMargins(this.z, i2, 0, i3, 0);
        e eVar2 = (e) this.z.getLayoutParams();
        int max3 = Math.max(max, this.z.getMeasuredWidth() + eVar2.leftMargin + eVar2.rightMargin);
        int max4 = Math.max(max2, this.z.getMeasuredHeight() + eVar2.topMargin + eVar2.bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.z.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i2, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i3, combineMeasuredStates2 << 16));
    }

    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        boolean z3 = false;
        if (!this.G || !z2) {
            return false;
        }
        this.S.fling(0, 0, 0, (int) f3, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.S.getFinalY() > this.A.getHeight()) {
            z3 = true;
        }
        if (z3) {
            h();
            this.W.run();
        } else {
            h();
            this.V.run();
        }
        this.H = true;
        return true;
    }

    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        int i6 = this.I + i3;
        this.I = i6;
        setActionBarHideOffset(i6);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0011, code lost:
        r1 = (d.b.a.v) r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onNestedScrollAccepted(android.view.View r1, android.view.View r2, int r3) {
        /*
            r0 = this;
            d.i.i.j r1 = r0.a0
            r1.a = r3
            int r1 = r0.getActionBarHideOffset()
            r0.I = r1
            r0.h()
            androidx.appcompat.widget.ActionBarOverlayLayout$d r1 = r0.R
            if (r1 == 0) goto L_0x001d
            d.b.a.v r1 = (d.b.a.v) r1
            d.b.d.g r2 = r1.u
            if (r2 == 0) goto L_0x001d
            r2.a()
            r2 = 0
            r1.u = r2
        L_0x001d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.onNestedScrollAccepted(android.view.View, android.view.View, int):void");
    }

    public boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.A.getVisibility() != 0) {
            return false;
        }
        return this.G;
    }

    public void onStopNestedScroll(View view) {
        if (this.G && !this.H) {
            if (this.I <= this.A.getHeight()) {
                h();
                postDelayed(this.V, 600);
            } else {
                h();
                postDelayed(this.W, 600);
            }
        }
        d dVar = this.R;
        if (dVar != null && ((v) dVar) == null) {
            throw null;
        }
    }

    public void onWindowSystemUiVisibilityChanged(int i2) {
        super.onWindowSystemUiVisibilityChanged(i2);
        i();
        int i3 = this.J ^ i2;
        this.J = i2;
        boolean z2 = (i2 & 4) == 0;
        boolean z3 = (i2 & 256) != 0;
        d dVar = this.R;
        if (dVar != null) {
            ((v) dVar).p = !z3;
            if (z2 || !z3) {
                v vVar = (v) this.R;
                if (vVar.r) {
                    vVar.r = false;
                    vVar.g(true);
                }
            } else {
                v vVar2 = (v) dVar;
                if (!vVar2.r) {
                    vVar2.r = true;
                    vVar2.g(true);
                }
            }
        }
        if ((i3 & 256) != 0 && this.R != null) {
            n.y(this);
        }
    }

    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.y = i2;
        d dVar = this.R;
        if (dVar != null) {
            ((v) dVar).o = i2;
        }
    }

    public void setActionBarHideOffset(int i2) {
        h();
        this.A.setTranslationY((float) (-Math.max(0, Math.min(i2, this.A.getHeight()))));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.R = dVar;
        if (getWindowToken() != null) {
            ((v) this.R).o = this.y;
            int i2 = this.J;
            if (i2 != 0) {
                onWindowSystemUiVisibilityChanged(i2);
                n.y(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z2) {
        this.F = z2;
    }

    public void setHideOnContentScrollEnabled(boolean z2) {
        if (z2 != this.G) {
            this.G = z2;
            if (!z2) {
                h();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i2) {
        i();
        this.B.setIcon(i2);
    }

    public void setLogo(int i2) {
        i();
        this.B.b(i2);
    }

    public void setOverlayMode(boolean z2) {
        this.E = z2;
        this.D = z2 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z2) {
    }

    public void setUiOptions(int i2) {
    }

    public void setWindowCallback(Window.Callback callback) {
        i();
        this.B.setWindowCallback(callback);
    }

    public void setWindowTitle(CharSequence charSequence) {
        i();
        this.B.setWindowTitle(charSequence);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.y = 0;
        this.K = new Rect();
        this.L = new Rect();
        this.M = new Rect();
        this.N = new Rect();
        this.O = new Rect();
        this.P = new Rect();
        this.Q = new Rect();
        this.U = new a();
        this.V = new b();
        this.W = new c();
        a(context);
        this.a0 = new j();
    }

    public boolean b() {
        i();
        return this.B.b();
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        i();
        this.B.setIcon(drawable);
    }

    public final boolean a(View view, Rect rect, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6;
        int i2;
        int i3;
        int i4;
        int i5;
        e eVar = (e) view.getLayoutParams();
        if (!z2 || eVar.leftMargin == (i5 = rect.left)) {
            z6 = false;
        } else {
            eVar.leftMargin = i5;
            z6 = true;
        }
        if (z3 && eVar.topMargin != (i4 = rect.top)) {
            eVar.topMargin = i4;
            z6 = true;
        }
        if (z5 && eVar.rightMargin != (i3 = rect.right)) {
            eVar.rightMargin = i3;
            z6 = true;
        }
        if (!z4 || eVar.bottomMargin == (i2 = rect.bottom)) {
            return z6;
        }
        eVar.bottomMargin = i2;
        return true;
    }

    public void a(View view, View view2, int i2, int i3) {
        if (i3 == 0) {
            onNestedScrollAccepted(view, view2, i2);
        }
    }

    public void a(View view, int i2) {
        if (i2 == 0) {
            onStopNestedScroll(view);
        }
    }

    public void a(View view, int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            int i7 = this.I + i3;
            this.I = i7;
            setActionBarHideOffset(i7);
        }
    }

    public void a(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        if (i6 == 0) {
            int i7 = this.I + i3;
            this.I = i7;
            setActionBarHideOffset(i7);
        }
    }

    public void a(int i2) {
        i();
        if (i2 == 2) {
            this.B.m();
        } else if (i2 == 5) {
            this.B.o();
        } else if (i2 == 109) {
            setOverlayMode(true);
        }
    }

    public boolean a() {
        i();
        return this.B.a();
    }

    public void a(Menu menu, m.a aVar) {
        i();
        this.B.a(menu, aVar);
    }
}
