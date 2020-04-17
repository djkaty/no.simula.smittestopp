package d.k.b;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import d.i.i.n;
import java.util.Arrays;

public class a {
    public static final Interpolator v = new C0032a();
    public int a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f633c = -1;

    /* renamed from: d  reason: collision with root package name */
    public float[] f634d;

    /* renamed from: e  reason: collision with root package name */
    public float[] f635e;

    /* renamed from: f  reason: collision with root package name */
    public float[] f636f;

    /* renamed from: g  reason: collision with root package name */
    public float[] f637g;

    /* renamed from: h  reason: collision with root package name */
    public int[] f638h;

    /* renamed from: i  reason: collision with root package name */
    public int[] f639i;

    /* renamed from: j  reason: collision with root package name */
    public int[] f640j;

    /* renamed from: k  reason: collision with root package name */
    public int f641k;

    /* renamed from: l  reason: collision with root package name */
    public VelocityTracker f642l;
    public float m;
    public float n;
    public int o;
    public OverScroller p;
    public final c q;
    public View r;
    public boolean s;
    public final ViewGroup t;
    public final Runnable u = new b();

    /* renamed from: d.k.b.a$a  reason: collision with other inner class name */
    public static class C0032a implements Interpolator {
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        public void run() {
            a.this.d(0);
        }
    }

    public static abstract class c {
        public int a(View view) {
            return 0;
        }

        public abstract int a(View view, int i2, int i3);

        public abstract void a(int i2);

        public abstract void a(View view, float f2, float f3);

        public void a(View view, int i2) {
        }

        public abstract void a(View view, int i2, int i3, int i4, int i5);

        public int b(View view) {
            return 0;
        }

        public abstract int b(View view, int i2, int i3);

        public abstract boolean b(View view, int i2);
    }

    public a(Context context, ViewGroup viewGroup, c cVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (cVar != null) {
            this.t = viewGroup;
            this.q = cVar;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.b = viewConfiguration.getScaledTouchSlop();
            this.m = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.n = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.p = new OverScroller(context, v);
        } else {
            throw new IllegalArgumentException("Callback may not be null");
        }
    }

    public void a(View view, int i2) {
        if (view.getParent() == this.t) {
            this.r = view;
            this.f633c = i2;
            this.q.a(view, i2);
            d(1);
            return;
        }
        StringBuilder a2 = e.a.a.a.a.a("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
        a2.append(this.t);
        a2.append(")");
        throw new IllegalArgumentException(a2.toString());
    }

    public boolean b(int i2, int i3) {
        if (this.s) {
            return a(i2, i3, (int) this.f642l.getXVelocity(this.f633c), (int) this.f642l.getYVelocity(this.f633c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00db, code lost:
        if (r12 != r11) goto L_0x00e4;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean c(android.view.MotionEvent r17) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            int r2 = r17.getActionMasked()
            int r3 = r17.getActionIndex()
            if (r2 != 0) goto L_0x0011
            r16.a()
        L_0x0011:
            android.view.VelocityTracker r4 = r0.f642l
            if (r4 != 0) goto L_0x001b
            android.view.VelocityTracker r4 = android.view.VelocityTracker.obtain()
            r0.f642l = r4
        L_0x001b:
            android.view.VelocityTracker r4 = r0.f642l
            r4.addMovement(r1)
            r4 = 0
            r5 = 2
            r6 = 0
            r7 = 1
            if (r2 == 0) goto L_0x0103
            if (r2 == r7) goto L_0x00fe
            if (r2 == r5) goto L_0x006e
            r8 = 3
            if (r2 == r8) goto L_0x00fe
            r8 = 5
            if (r2 == r8) goto L_0x003e
            r4 = 6
            if (r2 == r4) goto L_0x0036
        L_0x0033:
            r2 = 0
            goto L_0x0132
        L_0x0036:
            int r1 = r1.getPointerId(r3)
            r0.a((int) r1)
            goto L_0x0033
        L_0x003e:
            int r2 = r1.getPointerId(r3)
            float r8 = r1.getX(r3)
            float r1 = r1.getY(r3)
            r0.b((float) r8, (float) r1, (int) r2)
            int r3 = r0.a
            if (r3 != 0) goto L_0x005e
            int[] r1 = r0.f638h
            r1 = r1[r2]
            r1 = r1 & r6
            if (r1 == 0) goto L_0x0033
            d.k.b.a$c r1 = r0.q
            if (r1 == 0) goto L_0x005d
            goto L_0x0033
        L_0x005d:
            throw r4
        L_0x005e:
            if (r3 != r5) goto L_0x0033
            int r3 = (int) r8
            int r1 = (int) r1
            android.view.View r1 = r0.a((int) r3, (int) r1)
            android.view.View r3 = r0.r
            if (r1 != r3) goto L_0x0033
            r0.b((android.view.View) r1, (int) r2)
            goto L_0x0033
        L_0x006e:
            float[] r2 = r0.f634d
            if (r2 == 0) goto L_0x0033
            float[] r2 = r0.f635e
            if (r2 != 0) goto L_0x0077
            goto L_0x0033
        L_0x0077:
            int r2 = r17.getPointerCount()
            r3 = 0
        L_0x007c:
            if (r3 >= r2) goto L_0x00f9
            int r4 = r1.getPointerId(r3)
            boolean r5 = r0.c((int) r4)
            if (r5 != 0) goto L_0x008a
            goto L_0x00f5
        L_0x008a:
            float r5 = r1.getX(r3)
            float r8 = r1.getY(r3)
            float[] r9 = r0.f634d
            r9 = r9[r4]
            float r9 = r5 - r9
            float[] r10 = r0.f635e
            r10 = r10[r4]
            float r10 = r8 - r10
            int r5 = (int) r5
            int r8 = (int) r8
            android.view.View r5 = r0.a((int) r5, (int) r8)
            if (r5 == 0) goto L_0x00ae
            boolean r8 = r0.a((android.view.View) r5, (float) r9, (float) r10)
            if (r8 == 0) goto L_0x00ae
            r8 = 1
            goto L_0x00af
        L_0x00ae:
            r8 = 0
        L_0x00af:
            if (r8 == 0) goto L_0x00e4
            int r11 = r5.getLeft()
            int r12 = (int) r9
            int r13 = r11 + r12
            d.k.b.a$c r14 = r0.q
            int r12 = r14.a((android.view.View) r5, (int) r13, (int) r12)
            int r13 = r5.getTop()
            int r14 = (int) r10
            int r15 = r13 + r14
            d.k.b.a$c r6 = r0.q
            int r6 = r6.b(r5, r15, r14)
            d.k.b.a$c r14 = r0.q
            int r14 = r14.a((android.view.View) r5)
            d.k.b.a$c r15 = r0.q
            int r15 = r15.b(r5)
            if (r14 == 0) goto L_0x00dd
            if (r14 <= 0) goto L_0x00e4
            if (r12 != r11) goto L_0x00e4
        L_0x00dd:
            if (r15 == 0) goto L_0x00f9
            if (r15 <= 0) goto L_0x00e4
            if (r6 != r13) goto L_0x00e4
            goto L_0x00f9
        L_0x00e4:
            r0.a((float) r9, (float) r10, (int) r4)
            int r6 = r0.a
            if (r6 != r7) goto L_0x00ec
            goto L_0x00f9
        L_0x00ec:
            if (r8 == 0) goto L_0x00f5
            boolean r4 = r0.b((android.view.View) r5, (int) r4)
            if (r4 == 0) goto L_0x00f5
            goto L_0x00f9
        L_0x00f5:
            int r3 = r3 + 1
            r6 = 0
            goto L_0x007c
        L_0x00f9:
            r16.b((android.view.MotionEvent) r17)
            goto L_0x0033
        L_0x00fe:
            r16.a()
            goto L_0x0033
        L_0x0103:
            float r2 = r17.getX()
            float r3 = r17.getY()
            r6 = 0
            int r1 = r1.getPointerId(r6)
            r0.b((float) r2, (float) r3, (int) r1)
            int r2 = (int) r2
            int r3 = (int) r3
            android.view.View r2 = r0.a((int) r2, (int) r3)
            android.view.View r3 = r0.r
            if (r2 != r3) goto L_0x0124
            int r3 = r0.a
            if (r3 != r5) goto L_0x0124
            r0.b((android.view.View) r2, (int) r1)
        L_0x0124:
            int[] r2 = r0.f638h
            r1 = r2[r1]
            r2 = 0
            r1 = r1 & r2
            if (r1 == 0) goto L_0x0132
            d.k.b.a$c r1 = r0.q
            if (r1 == 0) goto L_0x0131
            goto L_0x0132
        L_0x0131:
            throw r4
        L_0x0132:
            int r1 = r0.a
            if (r1 != r7) goto L_0x0138
            r6 = 1
            goto L_0x0139
        L_0x0138:
            r6 = 0
        L_0x0139:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: d.k.b.a.c(android.view.MotionEvent):boolean");
    }

    public void d(int i2) {
        this.t.removeCallbacks(this.u);
        if (this.a != i2) {
            this.a = i2;
            this.q.a(i2);
            if (this.a == 0) {
                this.r = null;
            }
        }
    }

    public void a() {
        this.f633c = -1;
        float[] fArr = this.f634d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f635e, 0.0f);
            Arrays.fill(this.f636f, 0.0f);
            Arrays.fill(this.f637g, 0.0f);
            Arrays.fill(this.f638h, 0);
            Arrays.fill(this.f639i, 0);
            Arrays.fill(this.f640j, 0);
            this.f641k = 0;
        }
        VelocityTracker velocityTracker = this.f642l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f642l = null;
        }
    }

    public final int b(int i2, int i3, int i4) {
        int i5;
        if (i2 == 0) {
            return 0;
        }
        int width = this.t.getWidth();
        float f2 = (float) (width / 2);
        float sin = (((float) Math.sin((double) ((Math.min(1.0f, ((float) Math.abs(i2)) / ((float) width)) - 0.5f) * 0.47123894f))) * f2) + f2;
        int abs = Math.abs(i3);
        if (abs > 0) {
            i5 = Math.round(Math.abs(sin / ((float) abs)) * 1000.0f) * 4;
        } else {
            i5 = (int) (((((float) Math.abs(i2)) / ((float) i4)) + 1.0f) * 256.0f);
        }
        return Math.min(i5, 600);
    }

    public final void b(float f2, float f3, int i2) {
        float[] fArr = this.f634d;
        int i3 = 0;
        if (fArr == null || fArr.length <= i2) {
            int i4 = i2 + 1;
            float[] fArr2 = new float[i4];
            float[] fArr3 = new float[i4];
            float[] fArr4 = new float[i4];
            float[] fArr5 = new float[i4];
            int[] iArr = new int[i4];
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            float[] fArr6 = this.f634d;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.f635e;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f636f;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.f637g;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.f638h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f639i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f640j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f634d = fArr2;
            this.f635e = fArr3;
            this.f636f = fArr4;
            this.f637g = fArr5;
            this.f638h = iArr;
            this.f639i = iArr2;
            this.f640j = iArr3;
        }
        float[] fArr10 = this.f634d;
        this.f636f[i2] = f2;
        fArr10[i2] = f2;
        float[] fArr11 = this.f635e;
        this.f637g[i2] = f3;
        fArr11[i2] = f3;
        int[] iArr7 = this.f638h;
        int i5 = (int) f2;
        int i6 = (int) f3;
        if (i5 < this.t.getLeft() + this.o) {
            i3 = 1;
        }
        if (i6 < this.t.getTop() + this.o) {
            i3 |= 4;
        }
        if (i5 > this.t.getRight() - this.o) {
            i3 |= 2;
        }
        if (i6 > this.t.getBottom() - this.o) {
            i3 |= 8;
        }
        iArr7[i2] = i3;
        this.f641k |= 1 << i2;
    }

    public boolean a(View view, int i2, int i3) {
        this.r = view;
        this.f633c = -1;
        boolean a2 = a(i2, i3, 0, 0);
        if (!a2 && this.a == 0 && this.r != null) {
            this.r = null;
        }
        return a2;
    }

    public final boolean a(int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int left = this.r.getLeft();
        int top = this.r.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        if (i6 == 0 && i7 == 0) {
            this.p.abortAnimation();
            d(0);
            return false;
        }
        View view = this.r;
        int a2 = a(i4, (int) this.n, (int) this.m);
        int a3 = a(i5, (int) this.n, (int) this.m);
        int abs = Math.abs(i6);
        int abs2 = Math.abs(i7);
        int abs3 = Math.abs(a2);
        int abs4 = Math.abs(a3);
        int i8 = abs3 + abs4;
        int i9 = abs + abs2;
        if (a2 != 0) {
            f2 = (float) abs3;
            f3 = (float) i8;
        } else {
            f2 = (float) abs;
            f3 = (float) i9;
        }
        float f6 = f2 / f3;
        if (a3 != 0) {
            f5 = (float) abs4;
            f4 = (float) i8;
        } else {
            f5 = (float) abs2;
            f4 = (float) i9;
        }
        int b2 = b(i6, a2, this.q.a(view));
        float b3 = ((float) b(i7, a3, this.q.b(view))) * (f5 / f4);
        this.p.startScroll(left, top, i6, i7, (int) (b3 + (((float) b2) * f6)));
        d(2);
        return true;
    }

    public final int a(int i2, int i3, int i4) {
        int abs = Math.abs(i2);
        if (abs < i3) {
            return 0;
        }
        if (abs > i4) {
            return i2 > 0 ? i4 : -i4;
        }
        return i2;
    }

    public final float a(float f2, float f3, float f4) {
        float abs = Math.abs(f2);
        if (abs < f3) {
            return 0.0f;
        }
        if (abs > f4) {
            return f2 > 0.0f ? f4 : -f4;
        }
        return f2;
    }

    public boolean a(boolean z) {
        if (this.a == 2) {
            boolean computeScrollOffset = this.p.computeScrollOffset();
            int currX = this.p.getCurrX();
            int currY = this.p.getCurrY();
            int left = currX - this.r.getLeft();
            int top = currY - this.r.getTop();
            if (left != 0) {
                n.c(this.r, left);
            }
            if (top != 0) {
                n.d(this.r, top);
            }
            if (!(left == 0 && top == 0)) {
                this.q.a(this.r, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.p.getFinalX() && currY == this.p.getFinalY()) {
                this.p.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.t.post(this.u);
                } else {
                    d(0);
                }
            }
        }
        if (this.a == 2) {
            return true;
        }
        return false;
    }

    public final void b(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if (c(pointerId)) {
                float x = motionEvent.getX(i2);
                float y = motionEvent.getY(i2);
                this.f636f[pointerId] = x;
                this.f637g[pointerId] = y;
            }
        }
    }

    public final boolean c(int i2) {
        if (b(i2)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i2 + " because ACTION_DOWN was not received " + "for this pointer before ACTION_MOVE. It likely happened because " + " ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public boolean b(int i2) {
        return ((1 << i2) & this.f641k) != 0;
    }

    public boolean b(View view, int i2) {
        if (view == this.r && this.f633c == i2) {
            return true;
        }
        if (view == null || !this.q.b(view, i2)) {
            return false;
        }
        this.f633c = i2;
        a(view, i2);
        return true;
    }

    public final void a(float f2, float f3) {
        this.s = true;
        this.q.a(this.r, f2, f3);
        this.s = false;
        if (this.a == 1) {
            d(0);
        }
    }

    public final void b() {
        this.f642l.computeCurrentVelocity(1000, this.m);
        a(a(this.f642l.getXVelocity(this.f633c), this.n, this.m), a(this.f642l.getYVelocity(this.f633c), this.n, this.m));
    }

    public final void a(int i2) {
        if (this.f634d != null && b(i2)) {
            this.f634d[i2] = 0.0f;
            this.f635e[i2] = 0.0f;
            this.f636f[i2] = 0.0f;
            this.f637g[i2] = 0.0f;
            this.f638h[i2] = 0;
            this.f639i[i2] = 0;
            this.f640j[i2] = 0;
            this.f641k = (~(1 << i2)) & this.f641k;
        }
    }

    public void a(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f642l == null) {
            this.f642l = VelocityTracker.obtain();
        }
        this.f642l.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View a2 = a((int) x, (int) y);
            b(x, y, pointerId);
            b(a2, pointerId);
            if ((this.f638h[pointerId] & 0) != 0 && this.q == null) {
                throw null;
            }
        } else if (actionMasked == 1) {
            if (this.a == 1) {
                b();
            }
            a();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.a == 1) {
                    a(0.0f, 0.0f);
                }
                a();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                b(x2, y2, pointerId2);
                if (this.a == 0) {
                    b(a((int) x2, (int) y2), pointerId2);
                    if ((this.f638h[pointerId2] & 0) != 0 && this.q == null) {
                        throw null;
                    }
                    return;
                }
                int i4 = (int) x2;
                int i5 = (int) y2;
                View view = this.r;
                if (view != null && i4 >= view.getLeft() && i4 < view.getRight() && i5 >= view.getTop() && i5 < view.getBottom()) {
                    i3 = 1;
                }
                if (i3 != 0) {
                    b(this.r, pointerId2);
                }
            } else if (actionMasked == 6) {
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                if (this.a == 1 && pointerId3 == this.f633c) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (true) {
                        if (i3 >= pointerCount) {
                            i2 = -1;
                            break;
                        }
                        int pointerId4 = motionEvent.getPointerId(i3);
                        if (pointerId4 != this.f633c) {
                            View a3 = a((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                            View view2 = this.r;
                            if (a3 == view2 && b(view2, pointerId4)) {
                                i2 = this.f633c;
                                break;
                            }
                        }
                        i3++;
                    }
                    if (i2 == -1) {
                        b();
                    }
                }
                a(pointerId3);
            }
        } else if (this.a != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (i3 < pointerCount2) {
                int pointerId5 = motionEvent.getPointerId(i3);
                if (c(pointerId5)) {
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f2 = x3 - this.f634d[pointerId5];
                    float f3 = y3 - this.f635e[pointerId5];
                    a(f2, f3, pointerId5);
                    if (this.a != 1) {
                        View a4 = a((int) x3, (int) y3);
                        if (a(a4, f2, f3) && b(a4, pointerId5)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i3++;
            }
            b(motionEvent);
        } else if (c(this.f633c)) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f633c);
            float x4 = motionEvent.getX(findPointerIndex);
            float y4 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.f636f;
            int i6 = this.f633c;
            int i7 = (int) (x4 - fArr[i6]);
            int i8 = (int) (y4 - this.f637g[i6]);
            int left = this.r.getLeft() + i7;
            int top = this.r.getTop() + i8;
            int left2 = this.r.getLeft();
            int top2 = this.r.getTop();
            if (i7 != 0) {
                left = this.q.a(this.r, left, i7);
                n.c(this.r, left - left2);
            }
            int i9 = left;
            if (i8 != 0) {
                top = this.q.b(this.r, top, i8);
                n.d(this.r, top - top2);
            }
            int i10 = top;
            if (!(i7 == 0 && i8 == 0)) {
                this.q.a(this.r, i9, i10, i9 - left2, i10 - top2);
            }
            b(motionEvent);
        }
    }

    public final void a(float f2, float f3, int i2) {
        int i3 = 1;
        if (!a(f2, f3, i2, 1)) {
            i3 = 0;
        }
        if (a(f3, f2, i2, 4)) {
            i3 |= 4;
        }
        if (a(f2, f3, i2, 2)) {
            i3 |= 2;
        }
        if (a(f3, f2, i2, 8)) {
            i3 |= 8;
        }
        if (i3 != 0) {
            int[] iArr = this.f639i;
            iArr[i2] = iArr[i2] | i3;
            if (this.q == null) {
                throw null;
            }
        }
    }

    public final boolean a(float f2, float f3, int i2, int i3) {
        float abs = Math.abs(f2);
        float abs2 = Math.abs(f3);
        if ((this.f638h[i2] & i3) != i3 || (0 & i3) == 0 || (this.f640j[i2] & i3) == i3 || (this.f639i[i2] & i3) == i3) {
            return false;
        }
        int i4 = this.b;
        if (abs <= ((float) i4) && abs2 <= ((float) i4)) {
            return false;
        }
        if (abs < abs2 * 0.5f && this.q == null) {
            throw null;
        } else if ((this.f639i[i2] & i3) != 0 || abs <= ((float) this.b)) {
            return false;
        } else {
            return true;
        }
    }

    public final boolean a(View view, float f2, float f3) {
        if (view == null) {
            return false;
        }
        boolean z = this.q.a(view) > 0;
        boolean z2 = this.q.b(view) > 0;
        if (z && z2) {
            float f4 = f3 * f3;
            int i2 = this.b;
            if (f4 + (f2 * f2) > ((float) (i2 * i2))) {
                return true;
            }
            return false;
        } else if (z) {
            if (Math.abs(f2) > ((float) this.b)) {
                return true;
            }
            return false;
        } else if (!z2 || Math.abs(f3) <= ((float) this.b)) {
            return false;
        } else {
            return true;
        }
    }

    public View a(int i2, int i3) {
        int childCount = this.t.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return null;
            }
            ViewGroup viewGroup = this.t;
            if (this.q != null) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                    return childAt;
                }
            } else {
                throw null;
            }
        }
    }
}
