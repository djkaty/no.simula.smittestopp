package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import d.i.i.n;
import d.k.b.a;

public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c<V> {
    public d.k.b.a a;
    public b b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f121c;

    /* renamed from: d  reason: collision with root package name */
    public float f122d = 0.0f;

    /* renamed from: e  reason: collision with root package name */
    public int f123e = 2;

    /* renamed from: f  reason: collision with root package name */
    public float f124f = 0.5f;

    /* renamed from: g  reason: collision with root package name */
    public float f125g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    public float f126h = 0.5f;

    /* renamed from: i  reason: collision with root package name */
    public final a.c f127i = new a();

    public class a extends a.c {
        public int a;
        public int b = -1;

        public a() {
        }

        public void a(View view, int i2) {
            this.b = i2;
            this.a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        public boolean b(View view, int i2) {
            return this.b == -1 && SwipeDismissBehavior.this.a(view);
        }

        public int b(View view, int i2, int i3) {
            return view.getTop();
        }

        public void a(int i2) {
            b bVar = SwipeDismissBehavior.this.b;
            if (bVar != null) {
                bVar.a(i2);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0054, code lost:
            if (java.lang.Math.abs(r8.getLeft() - r7.a) >= java.lang.Math.round(((float) r8.getWidth()) * r7.f128c.f124f)) goto L_0x002a;
         */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0059  */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x0066  */
        /* JADX WARNING: Removed duplicated region for block: B:31:0x0076  */
        /* JADX WARNING: Removed duplicated region for block: B:32:0x0081  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(android.view.View r8, float r9, float r10) {
            /*
                r7 = this;
                r10 = -1
                r7.b = r10
                int r10 = r8.getWidth()
                r0 = 0
                r1 = 0
                r2 = 1
                int r3 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
                if (r3 == 0) goto L_0x003a
                int r4 = d.i.i.n.i(r8)
                if (r4 != r2) goto L_0x0016
                r4 = 1
                goto L_0x0017
            L_0x0016:
                r4 = 0
            L_0x0017:
                com.google.android.material.behavior.SwipeDismissBehavior r5 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r5 = r5.f123e
                r6 = 2
                if (r5 != r6) goto L_0x001f
                goto L_0x002a
            L_0x001f:
                if (r5 != 0) goto L_0x002e
                if (r4 == 0) goto L_0x0028
                int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
                if (r9 >= 0) goto L_0x002c
                goto L_0x002a
            L_0x0028:
                if (r3 <= 0) goto L_0x002c
            L_0x002a:
                r9 = 1
                goto L_0x0057
            L_0x002c:
                r9 = 0
                goto L_0x0057
            L_0x002e:
                if (r5 != r2) goto L_0x002c
                if (r4 == 0) goto L_0x0035
                if (r3 <= 0) goto L_0x002c
                goto L_0x0039
            L_0x0035:
                int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
                if (r9 >= 0) goto L_0x002c
            L_0x0039:
                goto L_0x002a
            L_0x003a:
                int r9 = r8.getLeft()
                int r0 = r7.a
                int r9 = r9 - r0
                int r0 = r8.getWidth()
                float r0 = (float) r0
                com.google.android.material.behavior.SwipeDismissBehavior r3 = com.google.android.material.behavior.SwipeDismissBehavior.this
                float r3 = r3.f124f
                float r0 = r0 * r3
                int r0 = java.lang.Math.round(r0)
                int r9 = java.lang.Math.abs(r9)
                if (r9 < r0) goto L_0x002c
                goto L_0x002a
            L_0x0057:
                if (r9 == 0) goto L_0x0066
                int r9 = r8.getLeft()
                int r0 = r7.a
                if (r9 >= r0) goto L_0x0063
                int r0 = r0 - r10
                goto L_0x0064
            L_0x0063:
                int r0 = r0 + r10
            L_0x0064:
                r1 = 1
                goto L_0x0068
            L_0x0066:
                int r0 = r7.a
            L_0x0068:
                com.google.android.material.behavior.SwipeDismissBehavior r9 = com.google.android.material.behavior.SwipeDismissBehavior.this
                d.k.b.a r9 = r9.a
                int r10 = r8.getTop()
                boolean r9 = r9.b((int) r0, (int) r10)
                if (r9 == 0) goto L_0x0081
                com.google.android.material.behavior.SwipeDismissBehavior$c r9 = new com.google.android.material.behavior.SwipeDismissBehavior$c
                com.google.android.material.behavior.SwipeDismissBehavior r10 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r9.<init>(r8, r1)
                d.i.i.n.a((android.view.View) r8, (java.lang.Runnable) r9)
                goto L_0x008c
            L_0x0081:
                if (r1 == 0) goto L_0x008c
                com.google.android.material.behavior.SwipeDismissBehavior r9 = com.google.android.material.behavior.SwipeDismissBehavior.this
                com.google.android.material.behavior.SwipeDismissBehavior$b r9 = r9.b
                if (r9 == 0) goto L_0x008c
                r9.a((android.view.View) r8)
            L_0x008c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.a.a(android.view.View, float, float):void");
        }

        public int a(View view) {
            return view.getWidth();
        }

        public int a(View view, int i2, int i3) {
            int i4;
            int i5;
            int width;
            boolean z = n.i(view) == 1;
            int i6 = SwipeDismissBehavior.this.f123e;
            if (i6 != 0) {
                if (i6 != 1) {
                    i4 = this.a - view.getWidth();
                    i5 = view.getWidth() + this.a;
                } else if (z) {
                    i4 = this.a;
                    width = view.getWidth();
                } else {
                    i4 = this.a - view.getWidth();
                    i5 = this.a;
                }
                return Math.min(Math.max(i4, i2), i5);
            } else if (z) {
                i4 = this.a - view.getWidth();
                i5 = this.a;
                return Math.min(Math.max(i4, i2), i5);
            } else {
                i4 = this.a;
                width = view.getWidth();
            }
            i5 = width + i4;
            return Math.min(Math.max(i4, i2), i5);
        }

        public void a(View view, int i2, int i3, int i4, int i5) {
            float width = (((float) view.getWidth()) * SwipeDismissBehavior.this.f125g) + ((float) this.a);
            float width2 = (((float) view.getWidth()) * SwipeDismissBehavior.this.f126h) + ((float) this.a);
            float f2 = (float) i2;
            if (f2 <= width) {
                view.setAlpha(1.0f);
            } else if (f2 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.a(0.0f, 1.0f - ((f2 - width) / (width2 - width)), 1.0f));
            }
        }
    }

    public interface b {
        void a(int i2);

        void a(View view);
    }

    public class c implements Runnable {
        public final View x;
        public final boolean y;

        public c(View view, boolean z2) {
            this.x = view;
            this.y = z2;
        }

        public void run() {
            b bVar;
            d.k.b.a aVar = SwipeDismissBehavior.this.a;
            if (aVar != null && aVar.a(true)) {
                n.a(this.x, (Runnable) this);
            } else if (this.y && (bVar = SwipeDismissBehavior.this.b) != null) {
                bVar.a(this.x);
            }
        }
    }

    public boolean a(View view) {
        return true;
    }

    public boolean a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.f121c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.a((View) v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f121c = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f121c = false;
        }
        if (!z) {
            return false;
        }
        if (this.a == null) {
            this.a = new d.k.b.a(coordinatorLayout.getContext(), coordinatorLayout, this.f127i);
        }
        return this.a.c(motionEvent);
    }

    public boolean b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        d.k.b.a aVar = this.a;
        if (aVar == null) {
            return false;
        }
        aVar.a(motionEvent);
        return true;
    }

    public static float a(float f2, float f3, float f4) {
        return Math.min(Math.max(f2, f3), f4);
    }
}
