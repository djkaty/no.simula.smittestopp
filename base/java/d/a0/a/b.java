package d.a0.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.fragment.app.Fragment;
import com.microsoft.appcenter.ingestion.models.one.CommonSchemaDataUtils;
import d.i.i.n;
import d.i.i.w;
import d.m.a.p;
import d.o.g;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import no.simula.corona.R$drawable;
import no.simula.corona.R$string;
import no.simula.corona.ui.onboarding.OnboardingActivity;
import no.simula.corona.ui.onboarding.OnboardingFragment;
import no.simula.corona.ui.onboarding.PrivavcyOnboardingFragment;

public class b extends ViewGroup {
    public static final int[] w0 = {16842931};
    public static final Comparator<f> x0 = new a();
    public static final Interpolator y0 = new C0006b();
    public static final l z0 = new l();
    public final Rect A = new Rect();
    public a B;
    public int C;
    public int D = -1;
    public Parcelable E = null;
    public ClassLoader F = null;
    public Scroller G;
    public boolean H;
    public j I;
    public int J;
    public Drawable K;
    public int L;
    public int M;
    public float N = -3.4028235E38f;
    public float O = Float.MAX_VALUE;
    public int P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public int T = 1;
    public boolean U;
    public boolean V;
    public int W;
    public int a0;
    public int b0;
    public float c0;
    public float d0;
    public float e0;
    public float f0;
    public int g0 = -1;
    public VelocityTracker h0;
    public int i0;
    public int j0;
    public int k0;
    public int l0;
    public EdgeEffect m0;
    public EdgeEffect n0;
    public boolean o0 = true;
    public boolean p0;
    public int q0;
    public List<i> r0;
    public i s0;
    public ArrayList<View> t0;
    public final Runnable u0 = new c();
    public int v0 = 0;
    public int x;
    public final ArrayList<f> y = new ArrayList<>();
    public final f z = new f();

    public static class a implements Comparator<f> {
        public int compare(Object obj, Object obj2) {
            return ((f) obj).b - ((f) obj2).b;
        }
    }

    /* renamed from: d.a0.a.b$b  reason: collision with other inner class name */
    public static class C0006b implements Interpolator {
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        public void run() {
            b.this.setScrollState(0);
            b bVar = b.this;
            bVar.e(bVar.C);
        }
    }

    public class d implements d.i.i.k {
        public final Rect a = new Rect();

        public d() {
        }

        public w a(View view, w wVar) {
            w a2 = n.a(view, wVar);
            if (a2.e()) {
                return a2;
            }
            Rect rect = this.a;
            rect.left = a2.b();
            rect.top = a2.d();
            rect.right = a2.c();
            rect.bottom = a2.a();
            int childCount = b.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = b.this.getChildAt(i2);
                WindowInsets windowInsets = (WindowInsets) a2.a;
                WindowInsets dispatchApplyWindowInsets = childAt.dispatchApplyWindowInsets(windowInsets);
                if (!dispatchApplyWindowInsets.equals(windowInsets)) {
                    windowInsets = new WindowInsets(dispatchApplyWindowInsets);
                }
                w a3 = w.a(windowInsets);
                rect.left = Math.min(a3.b(), rect.left);
                rect.top = Math.min(a3.d(), rect.top);
                rect.right = Math.min(a3.c(), rect.right);
                rect.bottom = Math.min(a3.a(), rect.bottom);
            }
            return new w(((WindowInsets) a2.a).replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    @Inherited
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface e {
    }

    public static class f {
        public Object a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f184c;

        /* renamed from: d  reason: collision with root package name */
        public float f185d;

        /* renamed from: e  reason: collision with root package name */
        public float f186e;
    }

    public interface i {
        void a(int i2);

        void a(int i2, float f2, int i3);

        void b(int i2);
    }

    public class j extends DataSetObserver {
        public j() {
        }

        public void onChanged() {
            b.this.a();
        }

        public void onInvalidated() {
            b.this.a();
        }
    }

    public static class k extends d.k.a.a {
        public static final Parcelable.Creator<k> CREATOR = new a();
        public Parcelable A;
        public ClassLoader B;
        public int z;

        public static class a implements Parcelable.ClassLoaderCreator<k> {
            public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new k(parcel, classLoader);
            }

            public Object[] newArray(int i2) {
                return new k[i2];
            }

            public Object createFromParcel(Parcel parcel) {
                return new k(parcel, (ClassLoader) null);
            }
        }

        public k(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder a2 = e.a.a.a.a.a("FragmentPager.SavedState{");
            a2.append(Integer.toHexString(System.identityHashCode(this)));
            a2.append(" position=");
            return e.a.a.a.a.a(a2, this.z, "}");
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.x, i2);
            parcel.writeInt(this.z);
            parcel.writeParcelable(this.A, i2);
        }

        public k(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? k.class.getClassLoader() : classLoader;
            this.z = parcel.readInt();
            this.A = parcel.readParcelable(classLoader);
            this.B = classLoader;
        }
    }

    public static class l implements Comparator<View> {
        public int compare(Object obj, Object obj2) {
            g gVar = (g) ((View) obj).getLayoutParams();
            g gVar2 = (g) ((View) obj2).getLayoutParams();
            boolean z = gVar.a;
            if (z != gVar2.a) {
                return z ? 1 : -1;
            }
            return gVar.f189e - gVar2.f189e;
        }
    }

    public b(Context context) {
        super(context);
        c();
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z2) {
        if (this.R != z2) {
            this.R = z2;
        }
    }

    public void a(int i2, boolean z2) {
        this.S = false;
        a(i2, z2, false, 0);
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        f a2;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.C) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if ((i3 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) {
            arrayList.add(this);
        }
    }

    public void addTouchables(ArrayList<View> arrayList) {
        f a2;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.C) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = new g();
        }
        g gVar = (g) layoutParams;
        boolean z2 = gVar.a | (view.getClass().getAnnotation(e.class) != null);
        gVar.a = z2;
        if (!this.Q) {
            super.addView(view, i2, layoutParams);
        } else if (!z2) {
            gVar.f188d = true;
            addViewInLayout(view, i2, layoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public final void b(int i2) {
        i iVar = this.s0;
        if (iVar != null) {
            iVar.b(i2);
        }
        List<i> list = this.r0;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                i iVar2 = this.r0.get(i3);
                if (iVar2 != null) {
                    iVar2.b(i2);
                }
            }
        }
    }

    public void c() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.G = new Scroller(context, y0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.b0 = viewConfiguration.getScaledPagingTouchSlop();
        this.i0 = (int) (400.0f * f2);
        this.j0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.m0 = new EdgeEffect(context);
        this.n0 = new EdgeEffect(context);
        this.k0 = (int) (25.0f * f2);
        this.l0 = (int) (2.0f * f2);
        this.W = (int) (f2 * 16.0f);
        n.a((View) this, (d.i.i.a) new h());
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        n.a((View) this, (d.i.i.k) new d());
    }

    public boolean canScrollHorizontally(int i2) {
        if (this.B == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i2 < 0) {
            if (scrollX > ((int) (((float) clientWidth) * this.N))) {
                return true;
            }
            return false;
        } else if (i2 <= 0 || scrollX >= ((int) (((float) clientWidth) * this.O))) {
            return false;
        } else {
            return true;
        }
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof g) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        this.H = true;
        if (this.G.isFinished() || !this.G.computeScrollOffset()) {
            a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.G.getCurrX();
        int currY = this.G.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!d(currX)) {
                this.G.abortAnimation();
                scrollTo(0, currY);
            }
        }
        n.x(this);
    }

    public final boolean d(int i2) {
        if (this.y.size() != 0) {
            f b = b();
            int clientWidth = getClientWidth();
            int i3 = this.J;
            int i4 = clientWidth + i3;
            float f2 = (float) clientWidth;
            int i5 = b.b;
            float f3 = ((((float) i2) / f2) - b.f186e) / (b.f185d + (((float) i3) / f2));
            this.p0 = false;
            a(i5, f3, (int) (((float) i4) * f3));
            if (this.p0) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else if (this.o0) {
            return false;
        } else {
            this.p0 = false;
            a(0, 0.0f, 0);
            if (this.p0) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean dispatchKeyEvent(android.view.KeyEvent r6) {
        /*
            r5 = this;
            boolean r0 = super.dispatchKeyEvent(r6)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x005d
            int r0 = r6.getAction()
            if (r0 != 0) goto L_0x005a
            int r0 = r6.getKeyCode()
            r3 = 21
            r4 = 2
            if (r0 == r3) goto L_0x0048
            r3 = 22
            if (r0 == r3) goto L_0x0036
            r3 = 61
            if (r0 == r3) goto L_0x0020
            goto L_0x005a
        L_0x0020:
            boolean r0 = r6.hasNoModifiers()
            if (r0 == 0) goto L_0x002b
            boolean r6 = r5.a((int) r4)
            goto L_0x005b
        L_0x002b:
            boolean r6 = r6.hasModifiers(r2)
            if (r6 == 0) goto L_0x005a
            boolean r6 = r5.a((int) r2)
            goto L_0x005b
        L_0x0036:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L_0x0041
            boolean r6 = r5.e()
            goto L_0x005b
        L_0x0041:
            r6 = 66
            boolean r6 = r5.a((int) r6)
            goto L_0x005b
        L_0x0048:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L_0x0053
            boolean r6 = r5.d()
            goto L_0x005b
        L_0x0053:
            r6 = 17
            boolean r6 = r5.a((int) r6)
            goto L_0x005b
        L_0x005a:
            r6 = 0
        L_0x005b:
            if (r6 == 0) goto L_0x005e
        L_0x005d:
            r1 = 1
        L_0x005e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a0.a.b.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        f a2;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.C && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x00ab  */
    /* JADX WARNING: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void draw(android.graphics.Canvas r8) {
        /*
            r7 = this;
            super.draw(r8)
            int r0 = r7.getOverScrollMode()
            r1 = 0
            if (r0 == 0) goto L_0x0024
            r2 = 1
            if (r0 != r2) goto L_0x0018
            d.a0.a.a r0 = r7.B
            if (r0 == 0) goto L_0x0018
            no.simula.corona.ui.onboarding.OnboardingActivity$b r0 = (no.simula.corona.ui.onboarding.OnboardingActivity.b) r0
            if (r0 == 0) goto L_0x0016
            goto L_0x0024
        L_0x0016:
            r8 = 0
            throw r8
        L_0x0018:
            android.widget.EdgeEffect r8 = r7.m0
            r8.finish()
            android.widget.EdgeEffect r8 = r7.n0
            r8.finish()
            goto L_0x00a9
        L_0x0024:
            android.widget.EdgeEffect r0 = r7.m0
            boolean r0 = r0.isFinished()
            if (r0 != 0) goto L_0x0065
            int r0 = r8.save()
            int r2 = r7.getHeight()
            int r3 = r7.getPaddingTop()
            int r2 = r2 - r3
            int r3 = r7.getPaddingBottom()
            int r2 = r2 - r3
            int r3 = r7.getWidth()
            r4 = 1132920832(0x43870000, float:270.0)
            r8.rotate(r4)
            int r4 = -r2
            int r5 = r7.getPaddingTop()
            int r5 = r5 + r4
            float r4 = (float) r5
            float r5 = r7.N
            float r6 = (float) r3
            float r5 = r5 * r6
            r8.translate(r4, r5)
            android.widget.EdgeEffect r4 = r7.m0
            r4.setSize(r2, r3)
            android.widget.EdgeEffect r2 = r7.m0
            boolean r2 = r2.draw(r8)
            r1 = r1 | r2
            r8.restoreToCount(r0)
        L_0x0065:
            android.widget.EdgeEffect r0 = r7.n0
            boolean r0 = r0.isFinished()
            if (r0 != 0) goto L_0x00a9
            int r0 = r8.save()
            int r2 = r7.getWidth()
            int r3 = r7.getHeight()
            int r4 = r7.getPaddingTop()
            int r3 = r3 - r4
            int r4 = r7.getPaddingBottom()
            int r3 = r3 - r4
            r4 = 1119092736(0x42b40000, float:90.0)
            r8.rotate(r4)
            int r4 = r7.getPaddingTop()
            int r4 = -r4
            float r4 = (float) r4
            float r5 = r7.O
            r6 = 1065353216(0x3f800000, float:1.0)
            float r5 = r5 + r6
            float r5 = -r5
            float r6 = (float) r2
            float r5 = r5 * r6
            r8.translate(r4, r5)
            android.widget.EdgeEffect r4 = r7.n0
            r4.setSize(r3, r2)
            android.widget.EdgeEffect r2 = r7.n0
            boolean r2 = r2.draw(r8)
            r1 = r1 | r2
            r8.restoreToCount(r0)
        L_0x00a9:
            if (r1 == 0) goto L_0x00ae
            d.i.i.n.x(r7)
        L_0x00ae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a0.a.b.draw(android.graphics.Canvas):void");
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.K;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:159:0x0276, code lost:
        r5 = r5 - (r6.f185d + r3);
        r6.f186e = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:160:0x027c, code lost:
        if (r10 != 0) goto L_0x0280;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:161:0x027e, code lost:
        r0.N = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:162:0x0280, code lost:
        r7 = r7 - 1;
        r9 = r9 - 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:174:0x02a9, code lost:
        if (r9 != 3) goto L_0x02b1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:175:0x02ab, code lost:
        r0.O = (r7.f185d + r5) - 1.0f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:0x02b1, code lost:
        r7.f186e = r5;
        r5 = r5 + (r7.f185d + r3);
        r4 = r4 + 1;
        r6 = r6 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x005a, code lost:
        if (r9 == r10) goto L_0x0061;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e(int r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r0.C
            if (r2 == r1) goto L_0x000f
            d.a0.a.b$f r2 = r0.c(r2)
            r0.C = r1
            goto L_0x0010
        L_0x000f:
            r2 = 0
        L_0x0010:
            d.a0.a.a r1 = r0.B
            if (r1 != 0) goto L_0x0015
            return
        L_0x0015:
            boolean r1 = r0.S
            if (r1 == 0) goto L_0x001a
            return
        L_0x001a:
            android.os.IBinder r1 = r17.getWindowToken()
            if (r1 != 0) goto L_0x0021
            return
        L_0x0021:
            d.a0.a.a r1 = r0.B
            r1.b(r0)
            int r1 = r0.T
            int r4 = r0.C
            int r4 = r4 - r1
            r5 = 0
            int r4 = java.lang.Math.max(r5, r4)
            d.a0.a.a r6 = r0.B
            no.simula.corona.ui.onboarding.OnboardingActivity$b r6 = (no.simula.corona.ui.onboarding.OnboardingActivity.b) r6
            if (r6 == 0) goto L_0x03fa
            r6 = 4
            int r7 = r0.C
            int r7 = r7 + r1
            r1 = 3
            int r1 = java.lang.Math.min(r1, r7)
            int r7 = r0.x
            if (r6 != r7) goto L_0x03a6
            r7 = 0
        L_0x0044:
            java.util.ArrayList<d.a0.a.b$f> r8 = r0.y
            int r8 = r8.size()
            if (r7 >= r8) goto L_0x0060
            java.util.ArrayList<d.a0.a.b$f> r8 = r0.y
            java.lang.Object r8 = r8.get(r7)
            d.a0.a.b$f r8 = (d.a0.a.b.f) r8
            int r9 = r8.b
            int r10 = r0.C
            if (r9 < r10) goto L_0x005d
            if (r9 != r10) goto L_0x0060
            goto L_0x0061
        L_0x005d:
            int r7 = r7 + 1
            goto L_0x0044
        L_0x0060:
            r8 = 0
        L_0x0061:
            if (r8 != 0) goto L_0x0069
            int r8 = r0.C
            d.a0.a.b$f r8 = r0.a((int) r8, (int) r7)
        L_0x0069:
            if (r8 == 0) goto L_0x0325
            int r5 = r7 + -1
            if (r5 < 0) goto L_0x0078
            java.util.ArrayList<d.a0.a.b$f> r9 = r0.y
            java.lang.Object r9 = r9.get(r5)
            d.a0.a.b$f r9 = (d.a0.a.b.f) r9
            goto L_0x0079
        L_0x0078:
            r9 = 0
        L_0x0079:
            int r10 = r17.getClientWidth()
            r11 = 1073741824(0x40000000, float:2.0)
            if (r10 > 0) goto L_0x0083
            r12 = 0
            goto L_0x008f
        L_0x0083:
            float r12 = r8.f185d
            float r12 = r11 - r12
            int r13 = r17.getPaddingLeft()
            float r13 = (float) r13
            float r14 = (float) r10
            float r13 = r13 / r14
            float r12 = r12 + r13
        L_0x008f:
            int r13 = r0.C
            r14 = 1
            int r13 = r13 - r14
            r15 = 0
        L_0x0094:
            if (r13 < 0) goto L_0x00f3
            int r16 = (r15 > r12 ? 1 : (r15 == r12 ? 0 : -1))
            if (r16 < 0) goto L_0x00c2
            if (r13 >= r4) goto L_0x00c2
            if (r9 != 0) goto L_0x009f
            goto L_0x00f3
        L_0x009f:
            int r3 = r9.b
            if (r13 != r3) goto L_0x00f0
            boolean r3 = r9.f184c
            if (r3 != 0) goto L_0x00f0
            java.util.ArrayList<d.a0.a.b$f> r3 = r0.y
            r3.remove(r5)
            d.a0.a.a r3 = r0.B
            java.lang.Object r9 = r9.a
            r3.a(r0, r13, r9)
            int r5 = r5 + -1
            int r7 = r7 + -1
            if (r5 < 0) goto L_0x00ee
            java.util.ArrayList<d.a0.a.b$f> r3 = r0.y
            java.lang.Object r3 = r3.get(r5)
            d.a0.a.b$f r3 = (d.a0.a.b.f) r3
            goto L_0x00ef
        L_0x00c2:
            if (r9 == 0) goto L_0x00d8
            int r3 = r9.b
            if (r13 != r3) goto L_0x00d8
            float r3 = r9.f185d
            float r15 = r15 + r3
            int r5 = r5 + -1
            if (r5 < 0) goto L_0x00ee
            java.util.ArrayList<d.a0.a.b$f> r3 = r0.y
            java.lang.Object r3 = r3.get(r5)
            d.a0.a.b$f r3 = (d.a0.a.b.f) r3
            goto L_0x00ef
        L_0x00d8:
            int r3 = r5 + 1
            d.a0.a.b$f r3 = r0.a((int) r13, (int) r3)
            float r3 = r3.f185d
            float r15 = r15 + r3
            int r7 = r7 + 1
            if (r5 < 0) goto L_0x00ee
            java.util.ArrayList<d.a0.a.b$f> r3 = r0.y
            java.lang.Object r3 = r3.get(r5)
            d.a0.a.b$f r3 = (d.a0.a.b.f) r3
            goto L_0x00ef
        L_0x00ee:
            r3 = 0
        L_0x00ef:
            r9 = r3
        L_0x00f0:
            int r13 = r13 + -1
            goto L_0x0094
        L_0x00f3:
            float r3 = r8.f185d
            int r4 = r7 + 1
            int r5 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1))
            if (r5 >= 0) goto L_0x0187
            java.util.ArrayList<d.a0.a.b$f> r5 = r0.y
            int r5 = r5.size()
            if (r4 >= r5) goto L_0x010c
            java.util.ArrayList<d.a0.a.b$f> r5 = r0.y
            java.lang.Object r5 = r5.get(r4)
            d.a0.a.b$f r5 = (d.a0.a.b.f) r5
            goto L_0x010d
        L_0x010c:
            r5 = 0
        L_0x010d:
            if (r10 > 0) goto L_0x0111
            r9 = 0
            goto L_0x0119
        L_0x0111:
            int r9 = r17.getPaddingRight()
            float r9 = (float) r9
            float r10 = (float) r10
            float r9 = r9 / r10
            float r9 = r9 + r11
        L_0x0119:
            int r10 = r0.C
            int r10 = r10 + r14
            r11 = r4
        L_0x011d:
            if (r10 >= r6) goto L_0x0187
            int r12 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r12 < 0) goto L_0x014d
            if (r10 <= r1) goto L_0x014d
            if (r5 != 0) goto L_0x0128
            goto L_0x0187
        L_0x0128:
            int r12 = r5.b
            if (r10 != r12) goto L_0x0184
            boolean r12 = r5.f184c
            if (r12 != 0) goto L_0x0184
            java.util.ArrayList<d.a0.a.b$f> r12 = r0.y
            r12.remove(r11)
            d.a0.a.a r12 = r0.B
            java.lang.Object r5 = r5.a
            r12.a(r0, r10, r5)
            java.util.ArrayList<d.a0.a.b$f> r5 = r0.y
            int r5 = r5.size()
            if (r11 >= r5) goto L_0x0183
            java.util.ArrayList<d.a0.a.b$f> r5 = r0.y
            java.lang.Object r5 = r5.get(r11)
            d.a0.a.b$f r5 = (d.a0.a.b.f) r5
            goto L_0x0184
        L_0x014d:
            if (r5 == 0) goto L_0x0169
            int r12 = r5.b
            if (r10 != r12) goto L_0x0169
            float r5 = r5.f185d
            float r3 = r3 + r5
            int r11 = r11 + 1
            java.util.ArrayList<d.a0.a.b$f> r5 = r0.y
            int r5 = r5.size()
            if (r11 >= r5) goto L_0x0183
            java.util.ArrayList<d.a0.a.b$f> r5 = r0.y
            java.lang.Object r5 = r5.get(r11)
            d.a0.a.b$f r5 = (d.a0.a.b.f) r5
            goto L_0x0184
        L_0x0169:
            d.a0.a.b$f r5 = r0.a((int) r10, (int) r11)
            int r11 = r11 + 1
            float r5 = r5.f185d
            float r3 = r3 + r5
            java.util.ArrayList<d.a0.a.b$f> r5 = r0.y
            int r5 = r5.size()
            if (r11 >= r5) goto L_0x0183
            java.util.ArrayList<d.a0.a.b$f> r5 = r0.y
            java.lang.Object r5 = r5.get(r11)
            d.a0.a.b$f r5 = (d.a0.a.b.f) r5
            goto L_0x0184
        L_0x0183:
            r5 = 0
        L_0x0184:
            int r10 = r10 + 1
            goto L_0x011d
        L_0x0187:
            d.a0.a.a r1 = r0.B
            no.simula.corona.ui.onboarding.OnboardingActivity$b r1 = (no.simula.corona.ui.onboarding.OnboardingActivity.b) r1
            if (r1 == 0) goto L_0x0323
            int r1 = r17.getClientWidth()
            if (r1 <= 0) goto L_0x0199
            int r3 = r0.J
            float r3 = (float) r3
            float r1 = (float) r1
            float r3 = r3 / r1
            goto L_0x019a
        L_0x0199:
            r3 = 0
        L_0x019a:
            r1 = 1065353216(0x3f800000, float:1.0)
            if (r2 == 0) goto L_0x0234
            int r5 = r2.b
            int r6 = r8.b
            if (r5 >= r6) goto L_0x01f0
            float r6 = r2.f186e
            float r2 = r2.f185d
            float r6 = r6 + r2
            float r6 = r6 + r3
            r2 = 0
        L_0x01ab:
            int r5 = r5 + r14
            int r9 = r8.b
            if (r5 > r9) goto L_0x0234
            java.util.ArrayList<d.a0.a.b$f> r9 = r0.y
            int r9 = r9.size()
            if (r2 >= r9) goto L_0x0234
            java.util.ArrayList<d.a0.a.b$f> r9 = r0.y
            java.lang.Object r9 = r9.get(r2)
            d.a0.a.b$f r9 = (d.a0.a.b.f) r9
        L_0x01c0:
            int r10 = r9.b
            if (r5 <= r10) goto L_0x01d9
            java.util.ArrayList<d.a0.a.b$f> r10 = r0.y
            int r10 = r10.size()
            int r10 = r10 + -1
            if (r2 >= r10) goto L_0x01d9
            int r2 = r2 + 1
            java.util.ArrayList<d.a0.a.b$f> r9 = r0.y
            java.lang.Object r9 = r9.get(r2)
            d.a0.a.b$f r9 = (d.a0.a.b.f) r9
            goto L_0x01c0
        L_0x01d9:
            int r10 = r9.b
            if (r5 >= r10) goto L_0x01e9
            d.a0.a.a r10 = r0.B
            if (r10 == 0) goto L_0x01e7
            float r10 = r1 + r3
            float r6 = r6 + r10
            int r5 = r5 + 1
            goto L_0x01d9
        L_0x01e7:
            r5 = 0
            throw r5
        L_0x01e9:
            r9.f186e = r6
            float r9 = r9.f185d
            float r9 = r9 + r3
            float r6 = r6 + r9
            goto L_0x01ab
        L_0x01f0:
            if (r5 <= r6) goto L_0x0234
            java.util.ArrayList<d.a0.a.b$f> r6 = r0.y
            int r6 = r6.size()
            int r6 = r6 + -1
            float r2 = r2.f186e
        L_0x01fc:
            int r5 = r5 + -1
            int r9 = r8.b
            if (r5 < r9) goto L_0x0234
            if (r6 < 0) goto L_0x0234
            java.util.ArrayList<d.a0.a.b$f> r9 = r0.y
            java.lang.Object r9 = r9.get(r6)
            d.a0.a.b$f r9 = (d.a0.a.b.f) r9
        L_0x020c:
            int r10 = r9.b
            if (r5 >= r10) goto L_0x021d
            if (r6 <= 0) goto L_0x021d
            int r6 = r6 + -1
            java.util.ArrayList<d.a0.a.b$f> r9 = r0.y
            java.lang.Object r9 = r9.get(r6)
            d.a0.a.b$f r9 = (d.a0.a.b.f) r9
            goto L_0x020c
        L_0x021d:
            int r10 = r9.b
            if (r5 <= r10) goto L_0x022d
            d.a0.a.a r10 = r0.B
            if (r10 == 0) goto L_0x022b
            float r10 = r1 + r3
            float r2 = r2 - r10
            int r5 = r5 + -1
            goto L_0x021d
        L_0x022b:
            r2 = 0
            throw r2
        L_0x022d:
            float r10 = r9.f185d
            float r10 = r10 + r3
            float r2 = r2 - r10
            r9.f186e = r2
            goto L_0x01fc
        L_0x0234:
            java.util.ArrayList<d.a0.a.b$f> r2 = r0.y
            int r2 = r2.size()
            float r5 = r8.f186e
            int r6 = r8.b
            int r9 = r6 + -1
            if (r6 != 0) goto L_0x0244
            r6 = r5
            goto L_0x0247
        L_0x0244:
            r6 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
        L_0x0247:
            r0.N = r6
            int r6 = r8.b
            r10 = 3
            if (r6 != r10) goto L_0x0255
            float r6 = r8.f186e
            float r10 = r8.f185d
            float r6 = r6 + r10
            float r6 = r6 - r1
            goto L_0x0258
        L_0x0255:
            r6 = 2139095039(0x7f7fffff, float:3.4028235E38)
        L_0x0258:
            r0.O = r6
            int r7 = r7 + -1
        L_0x025c:
            if (r7 < 0) goto L_0x0285
            java.util.ArrayList<d.a0.a.b$f> r6 = r0.y
            java.lang.Object r6 = r6.get(r7)
            d.a0.a.b$f r6 = (d.a0.a.b.f) r6
        L_0x0266:
            int r10 = r6.b
            if (r9 <= r10) goto L_0x0276
            d.a0.a.a r10 = r0.B
            int r9 = r9 + -1
            if (r10 == 0) goto L_0x0274
            float r10 = r1 + r3
            float r5 = r5 - r10
            goto L_0x0266
        L_0x0274:
            r5 = 0
            throw r5
        L_0x0276:
            float r11 = r6.f185d
            float r11 = r11 + r3
            float r5 = r5 - r11
            r6.f186e = r5
            if (r10 != 0) goto L_0x0280
            r0.N = r5
        L_0x0280:
            int r7 = r7 + -1
            int r9 = r9 + -1
            goto L_0x025c
        L_0x0285:
            float r5 = r8.f186e
            float r6 = r8.f185d
            float r5 = r5 + r6
            float r5 = r5 + r3
            int r6 = r8.b
            int r6 = r6 + r14
        L_0x028e:
            if (r4 >= r2) goto L_0x02bc
            java.util.ArrayList<d.a0.a.b$f> r7 = r0.y
            java.lang.Object r7 = r7.get(r4)
            d.a0.a.b$f r7 = (d.a0.a.b.f) r7
        L_0x0298:
            int r9 = r7.b
            if (r6 >= r9) goto L_0x02a8
            d.a0.a.a r9 = r0.B
            int r6 = r6 + 1
            if (r9 == 0) goto L_0x02a6
            float r9 = r1 + r3
            float r5 = r5 + r9
            goto L_0x0298
        L_0x02a6:
            r5 = 0
            throw r5
        L_0x02a8:
            r10 = 3
            if (r9 != r10) goto L_0x02b1
            float r9 = r7.f185d
            float r9 = r9 + r5
            float r9 = r9 - r1
            r0.O = r9
        L_0x02b1:
            r7.f186e = r5
            float r7 = r7.f185d
            float r7 = r7 + r3
            float r5 = r5 + r7
            int r4 = r4 + 1
            int r6 = r6 + 1
            goto L_0x028e
        L_0x02bc:
            d.a0.a.a r1 = r0.B
            java.lang.Object r2 = r8.a
            d.m.a.w r1 = (d.m.a.w) r1
            if (r1 == 0) goto L_0x0321
            androidx.fragment.app.Fragment r2 = (androidx.fragment.app.Fragment) r2
            androidx.fragment.app.Fragment r3 = r1.f686f
            r5 = 0
            if (r2 == r3) goto L_0x0325
            if (r3 == 0) goto L_0x02f8
            r3.setMenuVisibility(r5)
            int r3 = r1.b
            if (r3 != r14) goto L_0x02f1
            d.m.a.y r3 = r1.f683c
            if (r3 != 0) goto L_0x02e6
            d.m.a.p r3 = r1.a
            if (r3 == 0) goto L_0x02e4
            d.m.a.a r4 = new d.m.a.a
            r4.<init>(r3)
            r1.f683c = r4
            goto L_0x02e6
        L_0x02e4:
            r3 = 0
            throw r3
        L_0x02e6:
            d.m.a.y r3 = r1.f683c
            androidx.fragment.app.Fragment r4 = r1.f686f
            d.o.g$b r5 = d.o.g.b.STARTED
            r3.a(r4, r5)
            r3 = 0
            goto L_0x02f7
        L_0x02f1:
            androidx.fragment.app.Fragment r3 = r1.f686f
            r4 = 0
            r3.setUserVisibleHint(r4)
        L_0x02f7:
            r5 = 0
        L_0x02f8:
            r2.setMenuVisibility(r14)
            int r3 = r1.b
            if (r3 != r14) goto L_0x031a
            d.m.a.y r3 = r1.f683c
            if (r3 != 0) goto L_0x0311
            d.m.a.p r3 = r1.a
            if (r3 == 0) goto L_0x030f
            d.m.a.a r4 = new d.m.a.a
            r4.<init>(r3)
            r1.f683c = r4
            goto L_0x0311
        L_0x030f:
            r3 = 0
            throw r3
        L_0x0311:
            r3 = 0
            d.m.a.y r4 = r1.f683c
            d.o.g$b r6 = d.o.g.b.RESUMED
            r4.a(r2, r6)
            goto L_0x031e
        L_0x031a:
            r3 = 0
            r2.setUserVisibleHint(r14)
        L_0x031e:
            r1.f686f = r2
            goto L_0x0325
        L_0x0321:
            r3 = 0
            throw r3
        L_0x0323:
            r3 = 0
            throw r3
        L_0x0325:
            d.a0.a.a r1 = r0.B
            r1.a((android.view.ViewGroup) r0)
            int r1 = r17.getChildCount()
            r2 = 0
        L_0x032f:
            if (r2 >= r1) goto L_0x0359
            android.view.View r3 = r0.getChildAt(r2)
            android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()
            d.a0.a.b$g r4 = (d.a0.a.b.g) r4
            r4.f190f = r2
            boolean r6 = r4.a
            if (r6 != 0) goto L_0x0356
            float r6 = r4.f187c
            r7 = 0
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 != 0) goto L_0x0356
            d.a0.a.b$f r3 = r0.a((android.view.View) r3)
            if (r3 == 0) goto L_0x0356
            float r6 = r3.f185d
            r4.f187c = r6
            int r3 = r3.b
            r4.f189e = r3
        L_0x0356:
            int r2 = r2 + 1
            goto L_0x032f
        L_0x0359:
            boolean r1 = r17.hasFocus()
            if (r1 == 0) goto L_0x03a5
            android.view.View r1 = r17.findFocus()
            if (r1 == 0) goto L_0x037b
        L_0x0365:
            android.view.ViewParent r2 = r1.getParent()
            if (r2 == r0) goto L_0x0376
            if (r2 == 0) goto L_0x037b
            boolean r1 = r2 instanceof android.view.View
            if (r1 != 0) goto L_0x0372
            goto L_0x037b
        L_0x0372:
            r1 = r2
            android.view.View r1 = (android.view.View) r1
            goto L_0x0365
        L_0x0376:
            d.a0.a.b$f r3 = r0.a((android.view.View) r1)
            goto L_0x037c
        L_0x037b:
            r3 = 0
        L_0x037c:
            if (r3 == 0) goto L_0x0384
            int r1 = r3.b
            int r2 = r0.C
            if (r1 == r2) goto L_0x03a5
        L_0x0384:
            int r1 = r17.getChildCount()
            if (r5 >= r1) goto L_0x03a5
            android.view.View r1 = r0.getChildAt(r5)
            d.a0.a.b$f r2 = r0.a((android.view.View) r1)
            if (r2 == 0) goto L_0x03a2
            int r2 = r2.b
            int r3 = r0.C
            if (r2 != r3) goto L_0x03a2
            r2 = 2
            boolean r1 = r1.requestFocus(r2)
            if (r1 == 0) goto L_0x03a2
            goto L_0x03a5
        L_0x03a2:
            int r5 = r5 + 1
            goto L_0x0384
        L_0x03a5:
            return
        L_0x03a6:
            android.content.res.Resources r1 = r17.getResources()     // Catch:{ NotFoundException -> 0x03b3 }
            int r2 = r17.getId()     // Catch:{ NotFoundException -> 0x03b3 }
            java.lang.String r1 = r1.getResourceName(r2)     // Catch:{ NotFoundException -> 0x03b3 }
            goto L_0x03bb
        L_0x03b3:
            int r1 = r17.getId()
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
        L_0x03bb:
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
            java.lang.String r3 = "The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "
            java.lang.StringBuilder r3 = e.a.a.a.a.a(r3)
            int r4 = r0.x
            r3.append(r4)
            java.lang.String r4 = ", found: "
            r3.append(r4)
            r3.append(r6)
            java.lang.String r4 = " Pager id: "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r1 = " Pager class: "
            r3.append(r1)
            java.lang.Class r1 = r17.getClass()
            r3.append(r1)
            java.lang.String r1 = " Problematic adapter: "
            r3.append(r1)
            d.a0.a.a r1 = r0.B
            java.lang.Class r1 = r1.getClass()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L_0x03fa:
            r1 = 0
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a0.a.b.e(int):void");
    }

    public final boolean f() {
        this.g0 = -1;
        this.U = false;
        this.V = false;
        VelocityTracker velocityTracker = this.h0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.h0 = null;
        }
        this.m0.onRelease();
        this.n0.onRelease();
        if (this.m0.isFinished() || this.n0.isFinished()) {
            return true;
        }
        return false;
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new g();
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new g();
    }

    public a getAdapter() {
        return this.B;
    }

    public int getChildDrawingOrder(int i2, int i3) {
        return ((g) this.t0.get(i3).getLayoutParams()).f190f;
    }

    public int getCurrentItem() {
        return this.C;
    }

    public int getOffscreenPageLimit() {
        return this.T;
    }

    public int getPageMargin() {
        return this.J;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.o0 = true;
    }

    public void onDetachedFromWindow() {
        removeCallbacks(this.u0);
        Scroller scroller = this.G;
        if (scroller != null && !scroller.isFinished()) {
            this.G.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    public void onDraw(Canvas canvas) {
        float f2;
        float f3;
        super.onDraw(canvas);
        if (this.J > 0 && this.K != null && this.y.size() > 0 && this.B != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f4 = (float) width;
            float f5 = ((float) this.J) / f4;
            int i2 = 0;
            f fVar = this.y.get(0);
            float f6 = fVar.f186e;
            int size = this.y.size();
            int i3 = fVar.b;
            int i4 = this.y.get(size - 1).b;
            while (i3 < i4) {
                while (i3 > fVar.b && i2 < size) {
                    i2++;
                    fVar = this.y.get(i2);
                }
                if (i3 == fVar.b) {
                    float f7 = fVar.f186e;
                    float f8 = fVar.f185d;
                    f2 = (f7 + f8) * f4;
                    f6 = f7 + f8 + f5;
                } else if (this.B != null) {
                    f2 = (f6 + 1.0f) * f4;
                    f6 = 1.0f + f5 + f6;
                } else {
                    throw null;
                }
                if (((float) this.J) + f2 > ((float) scrollX)) {
                    f3 = f5;
                    this.K.setBounds(Math.round(f2), this.L, Math.round(((float) this.J) + f2), this.M);
                    this.K.draw(canvas);
                } else {
                    Canvas canvas2 = canvas;
                    f3 = f5;
                }
                if (f2 <= ((float) (scrollX + width))) {
                    i3++;
                    f5 = f3;
                } else {
                    return;
                }
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            f();
            return false;
        }
        if (action != 0) {
            if (this.U) {
                return true;
            }
            if (this.V) {
                return false;
            }
        }
        if (action == 0) {
            float x2 = motionEvent.getX();
            this.e0 = x2;
            this.c0 = x2;
            float y2 = motionEvent.getY();
            this.f0 = y2;
            this.d0 = y2;
            this.g0 = motionEvent2.getPointerId(0);
            this.V = false;
            this.H = true;
            this.G.computeScrollOffset();
            if (this.v0 != 2 || Math.abs(this.G.getFinalX() - this.G.getCurrX()) <= this.l0) {
                a(false);
                this.U = false;
            } else {
                this.G.abortAnimation();
                this.S = false;
                e(this.C);
                this.U = true;
                b(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i2 = this.g0;
            if (i2 != -1) {
                int findPointerIndex = motionEvent2.findPointerIndex(i2);
                float x3 = motionEvent2.getX(findPointerIndex);
                float f2 = x3 - this.c0;
                float abs = Math.abs(f2);
                float y3 = motionEvent2.getY(findPointerIndex);
                float abs2 = Math.abs(y3 - this.f0);
                int i3 = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
                if (i3 != 0) {
                    float f3 = this.c0;
                    if (!((f3 < ((float) this.a0) && i3 > 0) || (f3 > ((float) (getWidth() - this.a0)) && f2 < 0.0f))) {
                        if (a(this, false, (int) f2, (int) x3, (int) y3)) {
                            this.c0 = x3;
                            this.d0 = y3;
                            this.V = true;
                            return false;
                        }
                    }
                }
                if (abs > ((float) this.b0) && abs * 0.5f > abs2) {
                    this.U = true;
                    b(true);
                    setScrollState(1);
                    float f4 = this.e0;
                    float f5 = (float) this.b0;
                    this.c0 = i3 > 0 ? f4 + f5 : f4 - f5;
                    this.d0 = y3;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > ((float) this.b0)) {
                    this.V = true;
                }
                if (this.U && a(x3)) {
                    n.x(this);
                }
            }
        } else if (action == 6) {
            a(motionEvent);
        }
        if (this.h0 == null) {
            this.h0 = VelocityTracker.obtain();
        }
        this.h0.addMovement(motionEvent2);
        return this.U;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x008e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            r18 = this;
            r0 = r18
            int r1 = r18.getChildCount()
            int r2 = r22 - r20
            int r3 = r23 - r21
            int r4 = r18.getPaddingLeft()
            int r5 = r18.getPaddingTop()
            int r6 = r18.getPaddingRight()
            int r7 = r18.getPaddingBottom()
            int r8 = r18.getScrollX()
            r10 = 0
            r11 = 0
        L_0x0020:
            r12 = 8
            if (r10 >= r1) goto L_0x00b6
            android.view.View r13 = r0.getChildAt(r10)
            int r14 = r13.getVisibility()
            if (r14 == r12) goto L_0x00b2
            android.view.ViewGroup$LayoutParams r12 = r13.getLayoutParams()
            d.a0.a.b$g r12 = (d.a0.a.b.g) r12
            boolean r14 = r12.a
            if (r14 == 0) goto L_0x00b2
            int r12 = r12.b
            r14 = r12 & 7
            r12 = r12 & 112(0x70, float:1.57E-43)
            r15 = 1
            if (r14 == r15) goto L_0x005c
            r15 = 3
            if (r14 == r15) goto L_0x0056
            r15 = 5
            if (r14 == r15) goto L_0x0049
            r14 = r4
            goto L_0x006d
        L_0x0049:
            int r14 = r2 - r6
            int r15 = r13.getMeasuredWidth()
            int r14 = r14 - r15
            int r15 = r13.getMeasuredWidth()
            int r6 = r6 + r15
            goto L_0x0068
        L_0x0056:
            int r14 = r13.getMeasuredWidth()
            int r14 = r14 + r4
            goto L_0x006d
        L_0x005c:
            int r14 = r13.getMeasuredWidth()
            int r14 = r2 - r14
            int r14 = r14 / 2
            int r14 = java.lang.Math.max(r14, r4)
        L_0x0068:
            r17 = r14
            r14 = r4
            r4 = r17
        L_0x006d:
            r15 = 16
            if (r12 == r15) goto L_0x008e
            r15 = 48
            if (r12 == r15) goto L_0x0088
            r15 = 80
            if (r12 == r15) goto L_0x007b
            r12 = r5
            goto L_0x009f
        L_0x007b:
            int r12 = r3 - r7
            int r15 = r13.getMeasuredHeight()
            int r12 = r12 - r15
            int r15 = r13.getMeasuredHeight()
            int r7 = r7 + r15
            goto L_0x009a
        L_0x0088:
            int r12 = r13.getMeasuredHeight()
            int r12 = r12 + r5
            goto L_0x009f
        L_0x008e:
            int r12 = r13.getMeasuredHeight()
            int r12 = r3 - r12
            int r12 = r12 / 2
            int r12 = java.lang.Math.max(r12, r5)
        L_0x009a:
            r17 = r12
            r12 = r5
            r5 = r17
        L_0x009f:
            int r4 = r4 + r8
            int r15 = r13.getMeasuredWidth()
            int r15 = r15 + r4
            int r16 = r13.getMeasuredHeight()
            int r9 = r16 + r5
            r13.layout(r4, r5, r15, r9)
            int r11 = r11 + 1
            r5 = r12
            r4 = r14
        L_0x00b2:
            int r10 = r10 + 1
            goto L_0x0020
        L_0x00b6:
            int r2 = r2 - r4
            int r2 = r2 - r6
            r6 = 0
        L_0x00b9:
            if (r6 >= r1) goto L_0x0108
            android.view.View r8 = r0.getChildAt(r6)
            int r9 = r8.getVisibility()
            if (r9 == r12) goto L_0x0105
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            d.a0.a.b$g r9 = (d.a0.a.b.g) r9
            boolean r10 = r9.a
            if (r10 != 0) goto L_0x0105
            d.a0.a.b$f r10 = r0.a((android.view.View) r8)
            if (r10 == 0) goto L_0x0105
            float r13 = (float) r2
            float r10 = r10.f186e
            float r10 = r10 * r13
            int r10 = (int) r10
            int r10 = r10 + r4
            boolean r14 = r9.f188d
            if (r14 == 0) goto L_0x00f8
            r14 = 0
            r9.f188d = r14
            float r9 = r9.f187c
            float r13 = r13 * r9
            int r9 = (int) r13
            r13 = 1073741824(0x40000000, float:2.0)
            int r9 = android.view.View.MeasureSpec.makeMeasureSpec(r9, r13)
            int r14 = r3 - r5
            int r14 = r14 - r7
            int r13 = android.view.View.MeasureSpec.makeMeasureSpec(r14, r13)
            r8.measure(r9, r13)
        L_0x00f8:
            int r9 = r8.getMeasuredWidth()
            int r9 = r9 + r10
            int r13 = r8.getMeasuredHeight()
            int r13 = r13 + r5
            r8.layout(r10, r5, r9, r13)
        L_0x0105:
            int r6 = r6 + 1
            goto L_0x00b9
        L_0x0108:
            r0.L = r5
            int r3 = r3 - r7
            r0.M = r3
            r0.q0 = r11
            boolean r1 = r0.o0
            if (r1 == 0) goto L_0x011a
            int r1 = r0.C
            r2 = 0
            r0.a((int) r1, (boolean) r2, (int) r2, (boolean) r2)
            goto L_0x011b
        L_0x011a:
            r2 = 0
        L_0x011b:
            r0.o0 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a0.a.b.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00a8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r14, int r15) {
        /*
            r13 = this;
            r0 = 0
            int r14 = android.view.ViewGroup.getDefaultSize(r0, r14)
            int r15 = android.view.ViewGroup.getDefaultSize(r0, r15)
            r13.setMeasuredDimension(r14, r15)
            int r14 = r13.getMeasuredWidth()
            int r15 = r14 / 10
            int r1 = r13.W
            int r15 = java.lang.Math.min(r15, r1)
            r13.a0 = r15
            int r15 = r13.getPaddingLeft()
            int r14 = r14 - r15
            int r15 = r13.getPaddingRight()
            int r14 = r14 - r15
            int r15 = r13.getMeasuredHeight()
            int r1 = r13.getPaddingTop()
            int r15 = r15 - r1
            int r1 = r13.getPaddingBottom()
            int r15 = r15 - r1
            int r1 = r13.getChildCount()
            r2 = 0
        L_0x0037:
            r3 = 8
            r4 = 1
            r5 = 1073741824(0x40000000, float:2.0)
            if (r2 >= r1) goto L_0x00b2
            android.view.View r6 = r13.getChildAt(r2)
            int r7 = r6.getVisibility()
            if (r7 == r3) goto L_0x00af
            android.view.ViewGroup$LayoutParams r3 = r6.getLayoutParams()
            d.a0.a.b$g r3 = (d.a0.a.b.g) r3
            if (r3 == 0) goto L_0x00af
            boolean r7 = r3.a
            if (r7 == 0) goto L_0x00af
            int r7 = r3.b
            r8 = r7 & 7
            r7 = r7 & 112(0x70, float:1.57E-43)
            r9 = 48
            if (r7 == r9) goto L_0x0065
            r9 = 80
            if (r7 != r9) goto L_0x0063
            goto L_0x0065
        L_0x0063:
            r7 = 0
            goto L_0x0066
        L_0x0065:
            r7 = 1
        L_0x0066:
            r9 = 3
            if (r8 == r9) goto L_0x006e
            r9 = 5
            if (r8 != r9) goto L_0x006d
            goto L_0x006e
        L_0x006d:
            r4 = 0
        L_0x006e:
            r8 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r7 == 0) goto L_0x0075
            r8 = 1073741824(0x40000000, float:2.0)
            goto L_0x007a
        L_0x0075:
            if (r4 == 0) goto L_0x007a
            r9 = 1073741824(0x40000000, float:2.0)
            goto L_0x007c
        L_0x007a:
            r9 = -2147483648(0xffffffff80000000, float:-0.0)
        L_0x007c:
            int r10 = r3.width
            r11 = -1
            r12 = -2
            if (r10 == r12) goto L_0x0089
            if (r10 == r11) goto L_0x0085
            goto L_0x0086
        L_0x0085:
            r10 = r14
        L_0x0086:
            r8 = 1073741824(0x40000000, float:2.0)
            goto L_0x008a
        L_0x0089:
            r10 = r14
        L_0x008a:
            int r3 = r3.height
            if (r3 == r12) goto L_0x0093
            if (r3 == r11) goto L_0x0091
            goto L_0x0095
        L_0x0091:
            r3 = r15
            goto L_0x0095
        L_0x0093:
            r3 = r15
            r5 = r9
        L_0x0095:
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r10, r8)
            int r3 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r5)
            r6.measure(r8, r3)
            if (r7 == 0) goto L_0x00a8
            int r3 = r6.getMeasuredHeight()
            int r15 = r15 - r3
            goto L_0x00af
        L_0x00a8:
            if (r4 == 0) goto L_0x00af
            int r3 = r6.getMeasuredWidth()
            int r14 = r14 - r3
        L_0x00af:
            int r2 = r2 + 1
            goto L_0x0037
        L_0x00b2:
            android.view.View.MeasureSpec.makeMeasureSpec(r14, r5)
            int r15 = android.view.View.MeasureSpec.makeMeasureSpec(r15, r5)
            r13.P = r15
            r13.Q = r4
            int r15 = r13.C
            r13.e(r15)
            r13.Q = r0
            int r15 = r13.getChildCount()
        L_0x00c8:
            if (r0 >= r15) goto L_0x00f2
            android.view.View r1 = r13.getChildAt(r0)
            int r2 = r1.getVisibility()
            if (r2 == r3) goto L_0x00ef
            android.view.ViewGroup$LayoutParams r2 = r1.getLayoutParams()
            d.a0.a.b$g r2 = (d.a0.a.b.g) r2
            if (r2 == 0) goto L_0x00e0
            boolean r4 = r2.a
            if (r4 != 0) goto L_0x00ef
        L_0x00e0:
            float r4 = (float) r14
            float r2 = r2.f187c
            float r4 = r4 * r2
            int r2 = (int) r4
            int r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r5)
            int r4 = r13.P
            r1.measure(r2, r4)
        L_0x00ef:
            int r0 = r0 + 1
            goto L_0x00c8
        L_0x00f2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a0.a.b.onMeasure(int, int):void");
    }

    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        f a2;
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i4 = 0;
            i3 = 1;
        } else {
            i4 = childCount - 1;
            i3 = -1;
        }
        while (i4 != i5) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() == 0 && (a2 = a(childAt)) != null && a2.b == this.C && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i4 += i3;
        }
        return false;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof k)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        k kVar = (k) parcelable;
        super.onRestoreInstanceState(kVar.x);
        a aVar = this.B;
        if (aVar != null) {
            aVar.a(kVar.A, kVar.B);
            a(kVar.z, false, true, 0);
            return;
        }
        this.D = kVar.z;
        this.E = kVar.A;
        this.F = kVar.B;
    }

    public Parcelable onSaveInstanceState() {
        Bundle bundle;
        k kVar = new k(super.onSaveInstanceState());
        kVar.z = this.C;
        a aVar = this.B;
        if (aVar != null) {
            d.m.a.w wVar = (d.m.a.w) aVar;
            if (wVar.f684d.size() > 0) {
                bundle = new Bundle();
                Fragment.g[] gVarArr = new Fragment.g[wVar.f684d.size()];
                wVar.f684d.toArray(gVarArr);
                bundle.putParcelableArray("states", gVarArr);
            } else {
                bundle = null;
            }
            for (int i2 = 0; i2 < wVar.f685e.size(); i2++) {
                Fragment fragment = wVar.f685e.get(i2);
                if (fragment != null && fragment.isAdded()) {
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    String a2 = e.a.a.a.a.a(CommonSchemaDataUtils.METADATA_FIELDS, i2);
                    p pVar = wVar.a;
                    if (pVar == null) {
                        throw null;
                    } else if (fragment.mFragmentManager == pVar) {
                        bundle.putString(a2, fragment.mWho);
                    } else {
                        pVar.a((RuntimeException) new IllegalStateException(e.a.a.a.a.a("Fragment ", fragment, " is not currently in the FragmentManager")));
                        throw null;
                    }
                }
            }
            kVar.A = bundle;
        }
        return kVar;
    }

    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.J;
            a(i2, i4, i6, i6);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        a aVar;
        boolean z2 = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.B) == null) {
            return false;
        }
        if (((OnboardingActivity.b) aVar) != null) {
            if (this.h0 == null) {
                this.h0 = VelocityTracker.obtain();
            }
            this.h0.addMovement(motionEvent);
            int action = motionEvent.getAction() & 255;
            if (action == 0) {
                this.G.abortAnimation();
                this.S = false;
                e(this.C);
                float x2 = motionEvent.getX();
                this.e0 = x2;
                this.c0 = x2;
                float y2 = motionEvent.getY();
                this.f0 = y2;
                this.d0 = y2;
                this.g0 = motionEvent.getPointerId(0);
            } else if (action != 1) {
                if (action == 2) {
                    if (!this.U) {
                        int findPointerIndex = motionEvent.findPointerIndex(this.g0);
                        if (findPointerIndex == -1) {
                            z2 = f();
                        } else {
                            float x3 = motionEvent.getX(findPointerIndex);
                            float abs = Math.abs(x3 - this.c0);
                            float y3 = motionEvent.getY(findPointerIndex);
                            float abs2 = Math.abs(y3 - this.d0);
                            if (abs > ((float) this.b0) && abs > abs2) {
                                this.U = true;
                                b(true);
                                float f2 = this.e0;
                                this.c0 = x3 - f2 > 0.0f ? f2 + ((float) this.b0) : f2 - ((float) this.b0);
                                this.d0 = y3;
                                setScrollState(1);
                                setScrollingCacheEnabled(true);
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                    if (this.U) {
                        z2 = false | a(motionEvent.getX(motionEvent.findPointerIndex(this.g0)));
                    }
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.c0 = motionEvent.getX(actionIndex);
                        this.g0 = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        a(motionEvent);
                        this.c0 = motionEvent.getX(motionEvent.findPointerIndex(this.g0));
                    }
                } else if (this.U) {
                    a(this.C, true, 0, false);
                    z2 = f();
                }
            } else if (this.U) {
                VelocityTracker velocityTracker = this.h0;
                velocityTracker.computeCurrentVelocity(1000, (float) this.j0);
                int xVelocity = (int) velocityTracker.getXVelocity(this.g0);
                this.S = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                f b = b();
                float f3 = (float) clientWidth;
                float f4 = ((float) this.J) / f3;
                int i2 = b.b;
                float f5 = ((((float) scrollX) / f3) - b.f186e) / (b.f185d + f4);
                if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.g0)) - this.e0)) <= this.k0 || Math.abs(xVelocity) <= this.i0) {
                    i2 += (int) (f5 + (i2 >= this.C ? 0.4f : 0.6f));
                } else if (xVelocity <= 0) {
                    i2++;
                }
                if (this.y.size() > 0) {
                    ArrayList<f> arrayList = this.y;
                    i2 = Math.max(this.y.get(0).b, Math.min(i2, arrayList.get(arrayList.size() - 1).b));
                }
                a(i2, true, true, xVelocity);
                z2 = f();
            }
            if (z2) {
                n.x(this);
            }
            return true;
        }
        throw null;
    }

    public void removeView(View view) {
        if (this.Q) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(a aVar) {
        a aVar2 = this.B;
        if (aVar2 != null) {
            aVar2.a((DataSetObserver) null);
            this.B.b(this);
            for (int i2 = 0; i2 < this.y.size(); i2++) {
                f fVar = this.y.get(i2);
                this.B.a(this, fVar.b, fVar.a);
            }
            this.B.a((ViewGroup) this);
            this.y.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((g) getChildAt(i3).getLayoutParams()).a) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.C = 0;
            scrollTo(0, 0);
        }
        this.B = aVar;
        this.x = 0;
        if (aVar != null) {
            if (this.I == null) {
                this.I = new j();
            }
            this.B.a((DataSetObserver) this.I);
            this.S = false;
            boolean z2 = this.o0;
            this.o0 = true;
            a aVar3 = this.B;
            if (((OnboardingActivity.b) aVar3) != null) {
                this.x = 4;
                if (this.D >= 0) {
                    aVar3.a(this.E, this.F);
                    a(this.D, false, true, 0);
                    this.D = -1;
                    this.E = null;
                    this.F = null;
                } else if (!z2) {
                    e(this.C);
                } else {
                    requestLayout();
                }
            } else {
                throw null;
            }
        }
    }

    public void setCurrentItem(int i2) {
        this.S = false;
        a(i2, !this.o0, false, 0);
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i2 + " too small; defaulting to " + 1);
            i2 = 1;
        }
        if (i2 != this.T) {
            this.T = i2;
            e(this.C);
        }
    }

    @Deprecated
    public void setOnPageChangeListener(i iVar) {
        this.s0 = iVar;
    }

    public void setPageMargin(int i2) {
        int i3 = this.J;
        this.J = i2;
        int width = getWidth();
        a(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.K = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i2) {
        if (this.v0 != i2) {
            this.v0 = i2;
            i iVar = this.s0;
            if (iVar != null) {
                iVar.a(i2);
            }
            List<i> list = this.r0;
            if (list != null) {
                int size = list.size();
                for (int i3 = 0; i3 < size; i3++) {
                    i iVar2 = this.r0.get(i3);
                    if (iVar2 != null) {
                        iVar2.a(i2);
                    }
                }
            }
        }
    }

    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.K;
    }

    public static class g extends ViewGroup.LayoutParams {
        public boolean a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public float f187c = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        public boolean f188d;

        /* renamed from: e  reason: collision with root package name */
        public int f189e;

        /* renamed from: f  reason: collision with root package name */
        public int f190f;

        public g() {
            super(-1, -1);
        }

        public g(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.w0);
            this.b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new g(getContext(), attributeSet);
    }

    public void a(int i2, boolean z2, boolean z3, int i3) {
        a aVar = this.B;
        boolean z4 = false;
        if (aVar == null) {
            setScrollingCacheEnabled(false);
        } else if (((OnboardingActivity.b) aVar) == null) {
            throw null;
        } else if (z3 || this.C != i2 || this.y.size() == 0) {
            if (i2 < 0) {
                i2 = 0;
            } else {
                a aVar2 = this.B;
                if (((OnboardingActivity.b) aVar2) == null) {
                    throw null;
                } else if (i2 >= 4) {
                    if (((OnboardingActivity.b) aVar2) != null) {
                        i2 = 3;
                    } else {
                        throw null;
                    }
                }
            }
            int i4 = this.T;
            int i5 = this.C;
            if (i2 > i5 + i4 || i2 < i5 - i4) {
                for (int i6 = 0; i6 < this.y.size(); i6++) {
                    this.y.get(i6).f184c = true;
                }
            }
            if (this.C != i2) {
                z4 = true;
            }
            if (this.o0) {
                this.C = i2;
                if (z4) {
                    b(i2);
                }
                requestLayout();
                return;
            }
            e(i2);
            a(i2, z2, i3, z4);
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    public void setPageMarginDrawable(int i2) {
        setPageMarginDrawable(d.i.b.a.c(getContext(), i2));
    }

    public final void b(boolean z2) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z2);
        }
    }

    public class h extends d.i.i.a {
        public h() {
        }

        public void a(View view, AccessibilityEvent accessibilityEvent) {
            a aVar;
            this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(b.class.getName());
            accessibilityEvent.setScrollable(a());
            if (accessibilityEvent.getEventType() == 4096 && (aVar = b.this.B) != null) {
                if (((OnboardingActivity.b) aVar) != null) {
                    accessibilityEvent.setItemCount(4);
                    accessibilityEvent.setFromIndex(b.this.C);
                    accessibilityEvent.setToIndex(b.this.C);
                    return;
                }
                throw null;
            }
        }

        public void a(View view, d.i.i.x.d dVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
            dVar.a.setClassName(b.class.getName());
            dVar.a.setScrollable(a());
            if (b.this.canScrollHorizontally(1)) {
                dVar.a.addAction(4096);
            }
            if (b.this.canScrollHorizontally(-1)) {
                dVar.a.addAction(8192);
            }
        }

        public boolean a(View view, int i2, Bundle bundle) {
            if (super.a(view, i2, bundle)) {
                return true;
            }
            if (i2 != 4096) {
                if (i2 != 8192 || !b.this.canScrollHorizontally(-1)) {
                    return false;
                }
                b bVar = b.this;
                bVar.setCurrentItem(bVar.C - 1);
                return true;
            } else if (!b.this.canScrollHorizontally(1)) {
                return false;
            } else {
                b bVar2 = b.this;
                bVar2.setCurrentItem(bVar2.C + 1);
                return true;
            }
        }

        public final boolean a() {
            a aVar = b.this.B;
            if (aVar == null) {
                return false;
            }
            if (((OnboardingActivity.b) aVar) != null) {
                return true;
            }
            throw null;
        }
    }

    public final f b() {
        int i2;
        int clientWidth = getClientWidth();
        float f2 = 0.0f;
        float scrollX = clientWidth > 0 ? ((float) getScrollX()) / ((float) clientWidth) : 0.0f;
        float f3 = clientWidth > 0 ? ((float) this.J) / ((float) clientWidth) : 0.0f;
        f fVar = null;
        float f4 = 0.0f;
        int i3 = -1;
        int i4 = 0;
        boolean z2 = true;
        while (i4 < this.y.size()) {
            f fVar2 = this.y.get(i4);
            if (!z2 && fVar2.b != (i2 = i3 + 1)) {
                fVar2 = this.z;
                fVar2.f186e = f2 + f4 + f3;
                fVar2.b = i2;
                if (this.B != null) {
                    fVar2.f185d = 1.0f;
                    i4--;
                } else {
                    throw null;
                }
            }
            f2 = fVar2.f186e;
            float f5 = fVar2.f185d + f2 + f3;
            if (!z2 && scrollX < f2) {
                return fVar;
            }
            if (scrollX < f5 || i4 == this.y.size() - 1) {
                return fVar2;
            }
            i3 = fVar2.b;
            f4 = fVar2.f185d;
            i4++;
            fVar = fVar2;
            z2 = false;
        }
        return fVar;
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        c();
    }

    public boolean d() {
        int i2 = this.C;
        if (i2 <= 0) {
            return false;
        }
        a(i2 - 1, true);
        return true;
    }

    public f c(int i2) {
        for (int i3 = 0; i3 < this.y.size(); i3++) {
            f fVar = this.y.get(i3);
            if (fVar.b == i2) {
                return fVar;
            }
        }
        return null;
    }

    public final void a(int i2, boolean z2, int i3, boolean z3) {
        int i4;
        int i5;
        f c2 = c(i2);
        int max = c2 != null ? (int) (Math.max(this.N, Math.min(c2.f186e, this.O)) * ((float) getClientWidth())) : 0;
        if (z2) {
            if (getChildCount() == 0) {
                setScrollingCacheEnabled(false);
            } else {
                Scroller scroller = this.G;
                if (scroller != null && !scroller.isFinished()) {
                    i4 = this.H ? this.G.getCurrX() : this.G.getStartX();
                    this.G.abortAnimation();
                    setScrollingCacheEnabled(false);
                } else {
                    i4 = getScrollX();
                }
                int i6 = i4;
                int scrollY = getScrollY();
                int i7 = max - i6;
                int i8 = 0 - scrollY;
                if (i7 == 0 && i8 == 0) {
                    a(false);
                    e(this.C);
                    setScrollState(0);
                } else {
                    setScrollingCacheEnabled(true);
                    setScrollState(2);
                    int clientWidth = getClientWidth();
                    int i9 = clientWidth / 2;
                    float f2 = (float) clientWidth;
                    float f3 = (float) i9;
                    float sin = (((float) Math.sin((double) ((Math.min(1.0f, (((float) Math.abs(i7)) * 1.0f) / f2) - 0.5f) * 0.47123894f))) * f3) + f3;
                    int abs = Math.abs(i3);
                    if (abs > 0) {
                        i5 = Math.round(Math.abs(sin / ((float) abs)) * 1000.0f) * 4;
                    } else if (this.B != null) {
                        i5 = (int) (((((float) Math.abs(i7)) / ((f2 * 1.0f) + ((float) this.J))) + 1.0f) * 100.0f);
                    } else {
                        throw null;
                    }
                    int min = Math.min(i5, 600);
                    this.H = false;
                    this.G.startScroll(i6, scrollY, i7, i8, min);
                    n.x(this);
                }
            }
            if (z3) {
                b(i2);
                return;
            }
            return;
        }
        if (z3) {
            b(i2);
        }
        a(false);
        scrollTo(max, 0);
        d(max);
    }

    public f a(int i2, int i3) {
        Fragment fragment;
        Fragment.g gVar;
        f fVar = new f();
        fVar.b = i2;
        d.m.a.w wVar = (d.m.a.w) this.B;
        if (wVar.f685e.size() <= i2 || (fragment = wVar.f685e.get(i2)) == null) {
            if (wVar.f683c == null) {
                p pVar = wVar.a;
                if (pVar != null) {
                    wVar.f683c = new d.m.a.a(pVar);
                } else {
                    throw null;
                }
            }
            OnboardingActivity.b bVar = (OnboardingActivity.b) wVar;
            if (i2 == 0) {
                String string = bVar.f2460h.getString(R$string.title1);
                h.k.b.g.a((Object) string, "getString(R.string.title1)");
                String string2 = bVar.f2460h.getString(R$string.next);
                h.k.b.g.a((Object) string2, "getString(R.string.next)");
                fragment = OnboardingFragment.a(i2, string, R$string.onboarding1, R$drawable.ic_covid_19, string2);
            } else if (i2 == 1) {
                String string3 = bVar.f2460h.getString(R$string.title2);
                h.k.b.g.a((Object) string3, "getString(R.string.title2)");
                String string4 = bVar.f2460h.getString(R$string.next);
                h.k.b.g.a((Object) string4, "getString(R.string.next)");
                fragment = OnboardingFragment.a(i2, string3, R$string.onboarding2, R$drawable.ic_vector, string4);
            } else if (i2 == 2) {
                String string5 = bVar.f2460h.getString(R$string.title3);
                h.k.b.g.a((Object) string5, "getString(R.string.title3)");
                String string6 = bVar.f2460h.getString(R$string.read_privavcy);
                h.k.b.g.a((Object) string6, "getString(R.string.read_privavcy)");
                PrivavcyOnboardingFragment privavcyOnboardingFragment = new PrivavcyOnboardingFragment();
                Bundle bundle = new Bundle();
                bundle.putString("mainText", string5);
                bundle.putInt("pageNo", i2);
                bundle.putString("buttonTextRId", string6);
                privavcyOnboardingFragment.setArguments(bundle);
                fragment = privavcyOnboardingFragment;
            } else if (i2 != 3) {
                String string7 = bVar.f2460h.getString(R$string.title1);
                h.k.b.g.a((Object) string7, "getString(R.string.title1)");
                String string8 = bVar.f2460h.getString(R$string.register);
                h.k.b.g.a((Object) string8, "getString(R.string.register)");
                fragment = OnboardingFragment.a(i2, string7, R$string.onboarding1, R$drawable.ic_covid_19, string8);
            } else {
                String string9 = bVar.f2460h.getString(R$string.title4);
                h.k.b.g.a((Object) string9, "getString(R.string.title4)");
                String string10 = bVar.f2460h.getString(R$string.register);
                h.k.b.g.a((Object) string10, "getString(R.string.register)");
                fragment = OnboardingFragment.a(i2, string9, R$string.onboarding4, R$drawable.ic_sms, string10);
            }
            if (wVar.f684d.size() > i2 && (gVar = wVar.f684d.get(i2)) != null) {
                fragment.setInitialSavedState(gVar);
            }
            while (wVar.f685e.size() <= i2) {
                wVar.f685e.add((Object) null);
            }
            fragment.setMenuVisibility(false);
            if (wVar.b == 0) {
                fragment.setUserVisibleHint(false);
            }
            wVar.f685e.set(i2, fragment);
            wVar.f683c.a(getId(), fragment, (String) null, 1);
            if (wVar.b == 1) {
                wVar.f683c.a(fragment, g.b.STARTED);
            }
        }
        fVar.a = fragment;
        if (this.B != null) {
            fVar.f185d = 1.0f;
            if (i3 < 0 || i3 >= this.y.size()) {
                this.y.add(fVar);
            } else {
                this.y.add(i3, fVar);
            }
            return fVar;
        }
        throw null;
    }

    public void a() {
        if (((OnboardingActivity.b) this.B) != null) {
            this.x = 4;
            boolean z2 = this.y.size() < (this.T * 2) + 1 && this.y.size() < 4;
            int i2 = this.C;
            int i3 = 0;
            while (i3 < this.y.size()) {
                a aVar = this.B;
                Object obj = this.y.get(i3).a;
                if (aVar != null) {
                    i3++;
                } else {
                    throw null;
                }
            }
            Collections.sort(this.y, x0);
            if (z2) {
                int childCount = getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    g gVar = (g) getChildAt(i4).getLayoutParams();
                    if (!gVar.a) {
                        gVar.f187c = 0.0f;
                    }
                }
                a(i2, false, true, 0);
                requestLayout();
                return;
            }
            return;
        }
        throw null;
    }

    public f a(View view) {
        int i2 = 0;
        while (i2 < this.y.size()) {
            f fVar = this.y.get(i2);
            a aVar = this.B;
            Object obj = fVar.a;
            if (((d.m.a.w) aVar) != null) {
                if (((Fragment) obj).getView() == view) {
                    return fVar;
                }
                i2++;
            } else {
                throw null;
            }
        }
        return null;
    }

    public final void a(int i2, int i3, int i4, int i5) {
        if (i3 <= 0 || this.y.isEmpty()) {
            f c2 = c(this.C);
            int min = (int) ((c2 != null ? Math.min(c2.f186e, this.O) : 0.0f) * ((float) ((i2 - getPaddingLeft()) - getPaddingRight())));
            if (min != getScrollX()) {
                a(false);
                scrollTo(min, getScrollY());
            }
        } else if (!this.G.isFinished()) {
            this.G.setFinalX(getCurrentItem() * getClientWidth());
        } else {
            scrollTo((int) ((((float) getScrollX()) / ((float) (((i3 - getPaddingLeft()) - getPaddingRight()) + i5))) * ((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))), getScrollY());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0064  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.q0
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L_0x006b
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = 0
        L_0x001b:
            if (r7 >= r6) goto L_0x006b
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            d.a0.a.b$g r9 = (d.a0.a.b.g) r9
            boolean r10 = r9.a
            if (r10 != 0) goto L_0x002c
            goto L_0x0068
        L_0x002c:
            int r9 = r9.b
            r9 = r9 & 7
            if (r9 == r2) goto L_0x004d
            r10 = 3
            if (r9 == r10) goto L_0x0047
            r10 = 5
            if (r9 == r10) goto L_0x003a
            r9 = r3
            goto L_0x005c
        L_0x003a:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
            goto L_0x0059
        L_0x0047:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L_0x005c
        L_0x004d:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
        L_0x0059:
            r11 = r9
            r9 = r3
            r3 = r11
        L_0x005c:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L_0x0067
            r8.offsetLeftAndRight(r3)
        L_0x0067:
            r3 = r9
        L_0x0068:
            int r7 = r7 + 1
            goto L_0x001b
        L_0x006b:
            d.a0.a.b$i r0 = r12.s0
            if (r0 == 0) goto L_0x0072
            r0.a(r13, r14, r15)
        L_0x0072:
            java.util.List<d.a0.a.b$i> r0 = r12.r0
            if (r0 == 0) goto L_0x008c
            int r0 = r0.size()
        L_0x007a:
            if (r1 >= r0) goto L_0x008c
            java.util.List<d.a0.a.b$i> r3 = r12.r0
            java.lang.Object r3 = r3.get(r1)
            d.a0.a.b$i r3 = (d.a0.a.b.i) r3
            if (r3 == 0) goto L_0x0089
            r3.a(r13, r14, r15)
        L_0x0089:
            int r1 = r1 + 1
            goto L_0x007a
        L_0x008c:
            r12.p0 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a0.a.b.a(int, float, int):void");
    }

    public boolean e() {
        a aVar = this.B;
        if (aVar == null) {
            return false;
        }
        int i2 = this.C;
        if (((OnboardingActivity.b) aVar) == null) {
            throw null;
        } else if (i2 >= 3) {
            return false;
        } else {
            a(i2 + 1, true);
            return true;
        }
    }

    public final void a(boolean z2) {
        boolean z3 = this.v0 == 2;
        if (z3) {
            setScrollingCacheEnabled(false);
            if (!this.G.isFinished()) {
                this.G.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.G.getCurrX();
                int currY = this.G.getCurrY();
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        d(currX);
                    }
                }
            }
        }
        this.S = false;
        for (int i2 = 0; i2 < this.y.size(); i2++) {
            f fVar = this.y.get(i2);
            if (fVar.f184c) {
                fVar.f184c = false;
                z3 = true;
            }
        }
        if (!z3) {
            return;
        }
        if (z2) {
            n.a((View) this, this.u0);
        } else {
            this.u0.run();
        }
    }

    public final boolean a(float f2) {
        boolean z2;
        boolean z3;
        float f3 = this.c0 - f2;
        this.c0 = f2;
        float scrollX = ((float) getScrollX()) + f3;
        float clientWidth = (float) getClientWidth();
        float f4 = this.N * clientWidth;
        float f5 = this.O * clientWidth;
        boolean z4 = false;
        f fVar = this.y.get(0);
        ArrayList<f> arrayList = this.y;
        f fVar2 = arrayList.get(arrayList.size() - 1);
        if (fVar.b != 0) {
            f4 = fVar.f186e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        int i2 = fVar2.b;
        if (((OnboardingActivity.b) this.B) != null) {
            if (i2 != 3) {
                f5 = fVar2.f186e * clientWidth;
                z3 = false;
            } else {
                z3 = true;
            }
            if (scrollX < f4) {
                if (z2) {
                    this.m0.onPull(Math.abs(f4 - scrollX) / clientWidth);
                    z4 = true;
                }
                scrollX = f4;
            } else if (scrollX > f5) {
                if (z3) {
                    this.n0.onPull(Math.abs(scrollX - f5) / clientWidth);
                    z4 = true;
                }
                scrollX = f5;
            }
            int i3 = (int) scrollX;
            this.c0 = (scrollX - ((float) i3)) + this.c0;
            scrollTo(i3, getScrollY());
            d(i3);
            return z4;
        }
        throw null;
    }

    public final void a(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.g0) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.c0 = motionEvent.getX(i2);
            this.g0 = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.h0;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public boolean a(View view, boolean z2, int i2, int i3, int i4) {
        int i5;
        View view2 = view;
        if (view2 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view2;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom()) {
                    if (a(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                        return true;
                    }
                }
            }
        }
        if (!z2 || !view.canScrollHorizontally(-i2)) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:41:0x00ca  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(int r7) {
        /*
            r6 = this;
            android.view.View r0 = r6.findFocus()
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 != r6) goto L_0x000a
            goto L_0x0063
        L_0x000a:
            if (r0 == 0) goto L_0x0064
            android.view.ViewParent r4 = r0.getParent()
        L_0x0010:
            boolean r5 = r4 instanceof android.view.ViewGroup
            if (r5 == 0) goto L_0x001d
            if (r4 != r6) goto L_0x0018
            r4 = 1
            goto L_0x001e
        L_0x0018:
            android.view.ViewParent r4 = r4.getParent()
            goto L_0x0010
        L_0x001d:
            r4 = 0
        L_0x001e:
            if (r4 != 0) goto L_0x0064
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.Class r5 = r0.getClass()
            java.lang.String r5 = r5.getSimpleName()
            r4.append(r5)
            android.view.ViewParent r0 = r0.getParent()
        L_0x0034:
            boolean r5 = r0 instanceof android.view.ViewGroup
            if (r5 == 0) goto L_0x004d
            java.lang.String r5 = " => "
            r4.append(r5)
            java.lang.Class r5 = r0.getClass()
            java.lang.String r5 = r5.getSimpleName()
            r4.append(r5)
            android.view.ViewParent r0 = r0.getParent()
            goto L_0x0034
        L_0x004d:
            java.lang.String r0 = "arrowScroll tried to find focus based on non-child current focused view "
            java.lang.StringBuilder r0 = e.a.a.a.a.a(r0)
            java.lang.String r4 = r4.toString()
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            java.lang.String r4 = "ViewPager"
            android.util.Log.e(r4, r0)
        L_0x0063:
            r0 = r3
        L_0x0064:
            android.view.FocusFinder r3 = android.view.FocusFinder.getInstance()
            android.view.View r3 = r3.findNextFocus(r6, r0, r7)
            r4 = 66
            r5 = 17
            if (r3 == 0) goto L_0x00b5
            if (r3 == r0) goto L_0x00b5
            if (r7 != r5) goto L_0x0095
            android.graphics.Rect r1 = r6.A
            android.graphics.Rect r1 = r6.a((android.graphics.Rect) r1, (android.view.View) r3)
            int r1 = r1.left
            android.graphics.Rect r2 = r6.A
            android.graphics.Rect r2 = r6.a((android.graphics.Rect) r2, (android.view.View) r0)
            int r2 = r2.left
            if (r0 == 0) goto L_0x008f
            if (r1 < r2) goto L_0x008f
            boolean r0 = r6.d()
            goto L_0x0093
        L_0x008f:
            boolean r0 = r3.requestFocus()
        L_0x0093:
            r2 = r0
            goto L_0x00c8
        L_0x0095:
            if (r7 != r4) goto L_0x00c8
            android.graphics.Rect r1 = r6.A
            android.graphics.Rect r1 = r6.a((android.graphics.Rect) r1, (android.view.View) r3)
            int r1 = r1.left
            android.graphics.Rect r2 = r6.A
            android.graphics.Rect r2 = r6.a((android.graphics.Rect) r2, (android.view.View) r0)
            int r2 = r2.left
            if (r0 == 0) goto L_0x00b0
            if (r1 > r2) goto L_0x00b0
            boolean r0 = r6.e()
            goto L_0x0093
        L_0x00b0:
            boolean r0 = r3.requestFocus()
            goto L_0x0093
        L_0x00b5:
            if (r7 == r5) goto L_0x00c4
            if (r7 != r1) goto L_0x00ba
            goto L_0x00c4
        L_0x00ba:
            if (r7 == r4) goto L_0x00bf
            r0 = 2
            if (r7 != r0) goto L_0x00c8
        L_0x00bf:
            boolean r2 = r6.e()
            goto L_0x00c8
        L_0x00c4:
            boolean r2 = r6.d()
        L_0x00c8:
            if (r2 == 0) goto L_0x00d1
            int r7 = android.view.SoundEffectConstants.getContantForFocusDirection(r7)
            r6.playSoundEffect(r7)
        L_0x00d1:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a0.a.b.a(int):boolean");
    }

    public final Rect a(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }
}
