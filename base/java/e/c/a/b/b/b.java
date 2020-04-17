package e.c.a.b.b;

import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import d.i.i.n;

public abstract class b<V extends View> extends d<V> {

    /* renamed from: d  reason: collision with root package name */
    public Runnable f1238d;

    /* renamed from: e  reason: collision with root package name */
    public OverScroller f1239e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1240f;

    /* renamed from: g  reason: collision with root package name */
    public int f1241g = -1;

    /* renamed from: h  reason: collision with root package name */
    public int f1242h;

    /* renamed from: i  reason: collision with root package name */
    public int f1243i = -1;

    /* renamed from: j  reason: collision with root package name */
    public VelocityTracker f1244j;

    public class a implements Runnable {
        public final CoordinatorLayout x;
        public final V y;

        public a(CoordinatorLayout coordinatorLayout, V v) {
            this.x = coordinatorLayout;
            this.y = v;
        }

        public void run() {
            OverScroller overScroller;
            if (this.y != null && (overScroller = b.this.f1239e) != null) {
                if (overScroller.computeScrollOffset()) {
                    b bVar = b.this;
                    bVar.c(this.x, this.y, bVar.f1239e.getCurrY());
                    n.a((View) this.y, (Runnable) this);
                    return;
                }
                b bVar2 = b.this;
                CoordinatorLayout coordinatorLayout = this.x;
                V v = this.y;
                AppBarLayout.BaseBehavior baseBehavior = (AppBarLayout.BaseBehavior) bVar2;
                if (baseBehavior != null) {
                    baseBehavior.a(coordinatorLayout, (AppBarLayout) v);
                    return;
                }
                throw null;
            }
        }
    }

    public b() {
    }

    public abstract boolean a(V v);

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002c, code lost:
        if (r0 != 3) goto L_0x008a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(androidx.coordinatorlayout.widget.CoordinatorLayout r5, V r6, android.view.MotionEvent r7) {
        /*
            r4 = this;
            int r0 = r4.f1243i
            if (r0 >= 0) goto L_0x0012
            android.content.Context r0 = r5.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r4.f1243i = r0
        L_0x0012:
            int r0 = r7.getAction()
            r1 = 2
            r2 = 1
            if (r0 != r1) goto L_0x001f
            boolean r0 = r4.f1240f
            if (r0 == 0) goto L_0x001f
            return r2
        L_0x001f:
            int r0 = r7.getActionMasked()
            r3 = 0
            if (r0 == 0) goto L_0x0060
            r5 = -1
            if (r0 == r2) goto L_0x0051
            if (r0 == r1) goto L_0x002f
            r6 = 3
            if (r0 == r6) goto L_0x0051
            goto L_0x008a
        L_0x002f:
            int r6 = r4.f1241g
            if (r6 != r5) goto L_0x0034
            goto L_0x008a
        L_0x0034:
            int r6 = r7.findPointerIndex(r6)
            if (r6 != r5) goto L_0x003b
            goto L_0x008a
        L_0x003b:
            float r5 = r7.getY(r6)
            int r5 = (int) r5
            int r6 = r4.f1242h
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r0 = r4.f1243i
            if (r6 <= r0) goto L_0x008a
            r4.f1240f = r2
            r4.f1242h = r5
            goto L_0x008a
        L_0x0051:
            r4.f1240f = r3
            r4.f1241g = r5
            android.view.VelocityTracker r5 = r4.f1244j
            if (r5 == 0) goto L_0x008a
            r5.recycle()
            r5 = 0
            r4.f1244j = r5
            goto L_0x008a
        L_0x0060:
            r4.f1240f = r3
            float r0 = r7.getX()
            int r0 = (int) r0
            float r1 = r7.getY()
            int r1 = (int) r1
            boolean r2 = r4.a(r6)
            if (r2 == 0) goto L_0x008a
            boolean r5 = r5.a((android.view.View) r6, (int) r0, (int) r1)
            if (r5 == 0) goto L_0x008a
            r4.f1242h = r1
            int r5 = r7.getPointerId(r3)
            r4.f1241g = r5
            android.view.VelocityTracker r5 = r4.f1244j
            if (r5 != 0) goto L_0x008a
            android.view.VelocityTracker r5 = android.view.VelocityTracker.obtain()
            r4.f1244j = r5
        L_0x008a:
            android.view.VelocityTracker r5 = r4.f1244j
            if (r5 == 0) goto L_0x0091
            r5.addMovement(r7)
        L_0x0091:
            boolean r5 = r4.f1240f
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.b.b.b.a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract int b();

    public abstract int b(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, int i4);

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r0 != 3) goto L_0x0108;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean b(androidx.coordinatorlayout.widget.CoordinatorLayout r21, V r22, android.view.MotionEvent r23) {
        /*
            r20 = this;
            r6 = r20
            r1 = r21
            r2 = r22
            r7 = r23
            int r0 = r6.f1243i
            if (r0 >= 0) goto L_0x001a
            android.content.Context r0 = r21.getContext()
            android.view.ViewConfiguration r0 = android.view.ViewConfiguration.get(r0)
            int r0 = r0.getScaledTouchSlop()
            r6.f1243i = r0
        L_0x001a:
            int r0 = r23.getActionMasked()
            r8 = 1
            r3 = 0
            if (r0 == 0) goto L_0x00e0
            r4 = 0
            r5 = -1
            if (r0 == r8) goto L_0x006c
            r9 = 2
            if (r0 == r9) goto L_0x002e
            r1 = 3
            if (r0 == r1) goto L_0x00d2
            goto L_0x0108
        L_0x002e:
            int r0 = r6.f1241g
            int r0 = r7.findPointerIndex(r0)
            if (r0 != r5) goto L_0x0037
            return r3
        L_0x0037:
            float r0 = r7.getY(r0)
            int r0 = (int) r0
            int r3 = r6.f1242h
            int r3 = r3 - r0
            boolean r4 = r6.f1240f
            if (r4 != 0) goto L_0x0052
            int r4 = java.lang.Math.abs(r3)
            int r5 = r6.f1243i
            if (r4 <= r5) goto L_0x0052
            r6.f1240f = r8
            if (r3 <= 0) goto L_0x0051
            int r3 = r3 - r5
            goto L_0x0052
        L_0x0051:
            int r3 = r3 + r5
        L_0x0052:
            boolean r4 = r6.f1240f
            if (r4 == 0) goto L_0x0108
            r6.f1242h = r0
            r0 = r2
            com.google.android.material.appbar.AppBarLayout r0 = (com.google.android.material.appbar.AppBarLayout) r0
            int r0 = r0.getDownNestedScrollRange()
            int r4 = -r0
            r5 = 0
            r0 = r20
            r1 = r21
            r2 = r22
            r0.a(r1, r2, r3, r4, r5)
            goto L_0x0108
        L_0x006c:
            android.view.VelocityTracker r0 = r6.f1244j
            if (r0 == 0) goto L_0x00d2
            r0.addMovement(r7)
            android.view.VelocityTracker r0 = r6.f1244j
            r9 = 1000(0x3e8, float:1.401E-42)
            r0.computeCurrentVelocity(r9)
            android.view.VelocityTracker r0 = r6.f1244j
            int r9 = r6.f1241g
            float r0 = r0.getYVelocity(r9)
            r9 = r2
            com.google.android.material.appbar.AppBarLayout r9 = (com.google.android.material.appbar.AppBarLayout) r9
            int r10 = r9.getTotalScrollRange()
            int r10 = -r10
            r19 = 0
            java.lang.Runnable r11 = r6.f1238d
            if (r11 == 0) goto L_0x0095
            r2.removeCallbacks(r11)
            r6.f1238d = r4
        L_0x0095:
            android.widget.OverScroller r11 = r6.f1239e
            if (r11 != 0) goto L_0x00a4
            android.widget.OverScroller r11 = new android.widget.OverScroller
            android.content.Context r12 = r22.getContext()
            r11.<init>(r12)
            r6.f1239e = r11
        L_0x00a4:
            android.widget.OverScroller r11 = r6.f1239e
            r12 = 0
            int r13 = r20.a()
            r14 = 0
            int r15 = java.lang.Math.round(r0)
            r16 = 0
            r17 = 0
            r18 = r10
            r11.fling(r12, r13, r14, r15, r16, r17, r18, r19)
            android.widget.OverScroller r0 = r6.f1239e
            boolean r0 = r0.computeScrollOffset()
            if (r0 == 0) goto L_0x00cc
            e.c.a.b.b.b$a r0 = new e.c.a.b.b.b$a
            r0.<init>(r1, r2)
            r6.f1238d = r0
            d.i.i.n.a((android.view.View) r2, (java.lang.Runnable) r0)
            goto L_0x00d2
        L_0x00cc:
            r0 = r6
            com.google.android.material.appbar.AppBarLayout$BaseBehavior r0 = (com.google.android.material.appbar.AppBarLayout.BaseBehavior) r0
            r0.a((androidx.coordinatorlayout.widget.CoordinatorLayout) r1, r9)
        L_0x00d2:
            r6.f1240f = r3
            r6.f1241g = r5
            android.view.VelocityTracker r0 = r6.f1244j
            if (r0 == 0) goto L_0x0108
            r0.recycle()
            r6.f1244j = r4
            goto L_0x0108
        L_0x00e0:
            float r0 = r23.getX()
            int r0 = (int) r0
            float r4 = r23.getY()
            int r4 = (int) r4
            boolean r0 = r1.a((android.view.View) r2, (int) r0, (int) r4)
            if (r0 == 0) goto L_0x0110
            boolean r0 = r6.a(r2)
            if (r0 == 0) goto L_0x0110
            r6.f1242h = r4
            int r0 = r7.getPointerId(r3)
            r6.f1241g = r0
            android.view.VelocityTracker r0 = r6.f1244j
            if (r0 != 0) goto L_0x0108
            android.view.VelocityTracker r0 = android.view.VelocityTracker.obtain()
            r6.f1244j = r0
        L_0x0108:
            android.view.VelocityTracker r0 = r6.f1244j
            if (r0 == 0) goto L_0x010f
            r0.addMovement(r7)
        L_0x010f:
            return r8
        L_0x0110:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.b.b.b.b(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public int c(CoordinatorLayout coordinatorLayout, V v, int i2) {
        return b(coordinatorLayout, v, i2, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final int a(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, int i4) {
        return b(coordinatorLayout, v, b() - i2, i3, i4);
    }
}
