package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$dimen;
import com.google.android.material.R$styleable;
import d.b.a.r;
import d.i.i.n;
import d.k.b.a;
import e.c.a.b.e.b;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.c<V> {
    public boolean a = true;
    public float b;

    /* renamed from: c  reason: collision with root package name */
    public int f130c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f131d;

    /* renamed from: e  reason: collision with root package name */
    public int f132e;

    /* renamed from: f  reason: collision with root package name */
    public int f133f;

    /* renamed from: g  reason: collision with root package name */
    public int f134g;

    /* renamed from: h  reason: collision with root package name */
    public int f135h;

    /* renamed from: i  reason: collision with root package name */
    public int f136i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f137j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f138k;

    /* renamed from: l  reason: collision with root package name */
    public int f139l = 4;
    public d.k.b.a m;
    public boolean n;
    public int o;
    public boolean p;
    public int q;
    public WeakReference<V> r;
    public WeakReference<View> s;
    public b t;
    public VelocityTracker u;
    public int v;
    public int w;
    public boolean x;
    public Map<View, Integer> y;
    public final a.c z = new a();

    public class a extends a.c {
        public a() {
        }

        public void a(View view, int i2, int i3, int i4, int i5) {
            BottomSheetBehavior.this.a(i3);
        }

        public boolean b(View view, int i2) {
            WeakReference<V> weakReference;
            View view2;
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i3 = bottomSheetBehavior.f139l;
            if (i3 == 1 || bottomSheetBehavior.x) {
                return false;
            }
            if ((i3 != 3 || bottomSheetBehavior.v != i2 || (view2 = (View) bottomSheetBehavior.s.get()) == null || !view2.canScrollVertically(-1)) && (weakReference = BottomSheetBehavior.this.r) != null && weakReference.get() == view) {
                return true;
            }
            return false;
        }

        public void a(int i2) {
            if (i2 == 1) {
                BottomSheetBehavior.this.c(1);
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x0019, code lost:
            if (r7 > r8) goto L_0x00ae;
         */
        /* JADX WARNING: Removed duplicated region for block: B:41:0x00c5  */
        /* JADX WARNING: Removed duplicated region for block: B:42:0x00d6  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(android.view.View r6, float r7, float r8) {
            /*
                r5 = this;
                r0 = 3
                r1 = 0
                r2 = 4
                int r3 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                if (r3 >= 0) goto L_0x001d
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r8 = r7.a
                if (r8 == 0) goto L_0x0011
                int r7 = r7.f134g
                goto L_0x00b7
            L_0x0011:
                int r7 = r6.getTop()
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r8 = r8.f135h
                if (r7 <= r8) goto L_0x0092
                goto L_0x00ae
            L_0x001d:
                com.google.android.material.bottomsheet.BottomSheetBehavior r3 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r4 = r3.f137j
                if (r4 == 0) goto L_0x0046
                boolean r3 = r3.a((android.view.View) r6, (float) r8)
                if (r3 == 0) goto L_0x0046
                int r3 = r6.getTop()
                com.google.android.material.bottomsheet.BottomSheetBehavior r4 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r4 = r4.f136i
                if (r3 > r4) goto L_0x003f
                float r3 = java.lang.Math.abs(r7)
                float r4 = java.lang.Math.abs(r8)
                int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
                if (r3 >= 0) goto L_0x0046
            L_0x003f:
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r7 = r7.q
                r0 = 5
                goto L_0x00b7
            L_0x0046:
                int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
                if (r1 == 0) goto L_0x005d
                float r7 = java.lang.Math.abs(r7)
                float r8 = java.lang.Math.abs(r8)
                int r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
                if (r7 <= 0) goto L_0x0057
                goto L_0x005d
            L_0x0057:
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r7 = r7.f136i
            L_0x005b:
                r0 = 4
                goto L_0x00b7
            L_0x005d:
                int r7 = r6.getTop()
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r1 = r8.a
                if (r1 == 0) goto L_0x0084
                int r8 = r8.f134g
                int r8 = r7 - r8
                int r8 = java.lang.Math.abs(r8)
                com.google.android.material.bottomsheet.BottomSheetBehavior r1 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r1 = r1.f136i
                int r7 = r7 - r1
                int r7 = java.lang.Math.abs(r7)
                if (r8 >= r7) goto L_0x007f
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r7 = r7.f134g
                goto L_0x00b7
            L_0x007f:
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r7 = r7.f136i
                goto L_0x005b
            L_0x0084:
                int r1 = r8.f135h
                if (r7 >= r1) goto L_0x0099
                int r8 = r8.f136i
                int r8 = r7 - r8
                int r8 = java.lang.Math.abs(r8)
                if (r7 >= r8) goto L_0x0094
            L_0x0092:
                r7 = 0
                goto L_0x00b7
            L_0x0094:
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r8 = r7.f135h
                goto L_0x00ae
            L_0x0099:
                int r8 = r7 - r1
                int r8 = java.lang.Math.abs(r8)
                com.google.android.material.bottomsheet.BottomSheetBehavior r0 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r0 = r0.f136i
                int r7 = r7 - r0
                int r7 = java.lang.Math.abs(r7)
                if (r8 >= r7) goto L_0x00b2
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r8 = r7.f135h
            L_0x00ae:
                r7 = 6
                r7 = r8
                r0 = 6
                goto L_0x00b7
            L_0x00b2:
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r7 = r7.f136i
                goto L_0x005b
            L_0x00b7:
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                d.k.b.a r8 = r8.m
                int r1 = r6.getLeft()
                boolean r7 = r8.b((int) r1, (int) r7)
                if (r7 == 0) goto L_0x00d6
                com.google.android.material.bottomsheet.BottomSheetBehavior r7 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r8 = 2
                r7.c(r8)
                com.google.android.material.bottomsheet.BottomSheetBehavior$d r7 = new com.google.android.material.bottomsheet.BottomSheetBehavior$d
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r7.<init>(r6, r0)
                d.i.i.n.a((android.view.View) r6, (java.lang.Runnable) r7)
                goto L_0x00db
            L_0x00d6:
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                r6.c(r0)
            L_0x00db:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.a.a(android.view.View, float, float):void");
        }

        public int b(View view, int i2, int i3) {
            int b = BottomSheetBehavior.this.b();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return r.a(i2, b, bottomSheetBehavior.f137j ? bottomSheetBehavior.q : bottomSheetBehavior.f136i);
        }

        public int b(View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            if (bottomSheetBehavior.f137j) {
                return bottomSheetBehavior.q;
            }
            return bottomSheetBehavior.f136i;
        }

        public int a(View view, int i2, int i3) {
            return view.getLeft();
        }
    }

    public static abstract class b {
    }

    public class d implements Runnable {
        public final View x;
        public final int y;

        public d(View view, int i2) {
            this.x = view;
            this.y = i2;
        }

        public void run() {
            d.k.b.a aVar = BottomSheetBehavior.this.m;
            if (aVar == null || !aVar.a(true)) {
                BottomSheetBehavior.this.c(this.y);
            } else {
                n.a(this.x, (Runnable) this);
            }
        }
    }

    public BottomSheetBehavior() {
    }

    public Parcelable a(CoordinatorLayout coordinatorLayout, V v2) {
        return new c((Parcelable) View.BaseSavedState.EMPTY_STATE, this.f139l);
    }

    public boolean b(CoordinatorLayout coordinatorLayout, V v2, MotionEvent motionEvent) {
        if (!v2.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f139l == 1 && actionMasked == 0) {
            return true;
        }
        d.k.b.a aVar = this.m;
        if (aVar != null) {
            aVar.a(motionEvent);
        }
        if (actionMasked == 0) {
            this.v = -1;
            VelocityTracker velocityTracker = this.u;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.u = null;
            }
        }
        if (this.u == null) {
            this.u = VelocityTracker.obtain();
        }
        this.u.addMovement(motionEvent);
        if (actionMasked == 2 && !this.n) {
            float abs = Math.abs(((float) this.w) - motionEvent.getY());
            d.k.b.a aVar2 = this.m;
            if (abs > ((float) aVar2.b)) {
                aVar2.a((View) v2, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.n;
    }

    public void c(int i2) {
        b bVar;
        if (this.f139l != i2) {
            this.f139l = i2;
            if (i2 == 6 || i2 == 3) {
                a(true);
            } else if (i2 == 5 || i2 == 4) {
                a(false);
            }
            if (((View) this.r.get()) != null && (bVar = this.t) != null) {
                b.d dVar = (b.d) bVar;
                if (dVar == null) {
                    throw null;
                } else if (i2 == 5) {
                    e.c.a.b.e.b.this.cancel();
                }
            }
        }
    }

    public static class c extends d.k.a.a {
        public static final Parcelable.Creator<c> CREATOR = new a();
        public final int z;

        public static class a implements Parcelable.ClassLoaderCreator<c> {
            public Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new c(parcel, classLoader);
            }

            public Object[] newArray(int i2) {
                return new c[i2];
            }

            public Object createFromParcel(Parcel parcel) {
                return new c(parcel, (ClassLoader) null);
            }
        }

        public c(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.z = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.x, i2);
            parcel.writeInt(this.z);
        }

        public c(Parcelable parcelable, int i2) {
            super(parcelable);
            this.z = i2;
        }
    }

    public void a(CoordinatorLayout coordinatorLayout, V v2, Parcelable parcelable) {
        c cVar = (c) parcelable;
        Parcelable parcelable2 = cVar.x;
        int i2 = cVar.z;
        if (i2 == 1 || i2 == 2) {
            this.f139l = 4;
        } else {
            this.f139l = i2;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BottomSheetBehavior_Layout);
        TypedValue peekValue = obtainStyledAttributes.peekValue(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue == null || (i2 = peekValue.data) != -1) {
            b(obtainStyledAttributes.getDimensionPixelSize(R$styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        } else {
            b(i2);
        }
        this.f137j = obtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_hideable, false);
        boolean z2 = obtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true);
        if (this.a != z2) {
            this.a = z2;
            if (this.r != null) {
                a();
            }
            c((!this.a || this.f139l != 6) ? this.f139l : 3);
        }
        this.f138k = obtainStyledAttributes.getBoolean(R$styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false);
        obtainStyledAttributes.recycle();
        this.b = (float) ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public boolean a(CoordinatorLayout coordinatorLayout, V v2, int i2) {
        if (n.g(coordinatorLayout) && !v2.getFitsSystemWindows()) {
            v2.setFitsSystemWindows(true);
        }
        int top = v2.getTop();
        coordinatorLayout.b(v2, i2);
        this.q = coordinatorLayout.getHeight();
        if (this.f131d) {
            if (this.f132e == 0) {
                this.f132e = coordinatorLayout.getResources().getDimensionPixelSize(R$dimen.design_bottom_sheet_peek_height_min);
            }
            this.f133f = Math.max(this.f132e, this.q - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            this.f133f = this.f130c;
        }
        this.f134g = Math.max(0, this.q - v2.getHeight());
        this.f135h = this.q / 2;
        a();
        int i3 = this.f139l;
        if (i3 == 3) {
            n.d(v2, b());
        } else if (i3 == 6) {
            n.d(v2, this.f135h);
        } else if (!this.f137j || i3 != 5) {
            int i4 = this.f139l;
            if (i4 == 4) {
                n.d(v2, this.f136i);
            } else if (i4 == 1 || i4 == 2) {
                n.d(v2, top - v2.getTop());
            }
        } else {
            n.d(v2, this.q);
        }
        if (this.m == null) {
            this.m = new d.k.b.a(coordinatorLayout.getContext(), coordinatorLayout, this.z);
        }
        this.r = new WeakReference<>(v2);
        this.s = new WeakReference<>(a((View) v2));
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(int r4) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            r2 = -1
            if (r4 != r2) goto L_0x000c
            boolean r4 = r3.f131d
            if (r4 != 0) goto L_0x0015
            r3.f131d = r0
            goto L_0x0024
        L_0x000c:
            boolean r2 = r3.f131d
            if (r2 != 0) goto L_0x0017
            int r2 = r3.f130c
            if (r2 == r4) goto L_0x0015
            goto L_0x0017
        L_0x0015:
            r0 = 0
            goto L_0x0024
        L_0x0017:
            r3.f131d = r1
            int r1 = java.lang.Math.max(r1, r4)
            r3.f130c = r1
            int r1 = r3.q
            int r1 = r1 - r4
            r3.f136i = r1
        L_0x0024:
            if (r0 == 0) goto L_0x003a
            int r4 = r3.f139l
            r0 = 4
            if (r4 != r0) goto L_0x003a
            java.lang.ref.WeakReference<V> r4 = r3.r
            if (r4 == 0) goto L_0x003a
            java.lang.Object r4 = r4.get()
            android.view.View r4 = (android.view.View) r4
            if (r4 == 0) goto L_0x003a
            r4.requestLayout()
        L_0x003a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.b(int):void");
    }

    public final int b() {
        if (this.a) {
            return this.f134g;
        }
        return 0;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v12, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: android.view.View} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(androidx.coordinatorlayout.widget.CoordinatorLayout r9, V r10, android.view.MotionEvent r11) {
        /*
            r8 = this;
            boolean r0 = r10.isShown()
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x000b
            r8.n = r2
            return r1
        L_0x000b:
            int r0 = r11.getActionMasked()
            r3 = 0
            r4 = -1
            if (r0 != 0) goto L_0x001e
            r8.v = r4
            android.view.VelocityTracker r5 = r8.u
            if (r5 == 0) goto L_0x001e
            r5.recycle()
            r8.u = r3
        L_0x001e:
            android.view.VelocityTracker r5 = r8.u
            if (r5 != 0) goto L_0x0028
            android.view.VelocityTracker r5 = android.view.VelocityTracker.obtain()
            r8.u = r5
        L_0x0028:
            android.view.VelocityTracker r5 = r8.u
            r5.addMovement(r11)
            if (r0 == 0) goto L_0x0040
            if (r0 == r2) goto L_0x0035
            r10 = 3
            if (r0 == r10) goto L_0x0035
            goto L_0x007f
        L_0x0035:
            r8.x = r1
            r8.v = r4
            boolean r10 = r8.n
            if (r10 == 0) goto L_0x007f
            r8.n = r1
            return r1
        L_0x0040:
            float r5 = r11.getX()
            int r5 = (int) r5
            float r6 = r11.getY()
            int r6 = (int) r6
            r8.w = r6
            java.lang.ref.WeakReference<android.view.View> r6 = r8.s
            if (r6 == 0) goto L_0x0057
            java.lang.Object r6 = r6.get()
            android.view.View r6 = (android.view.View) r6
            goto L_0x0058
        L_0x0057:
            r6 = r3
        L_0x0058:
            if (r6 == 0) goto L_0x006e
            int r7 = r8.w
            boolean r6 = r9.a((android.view.View) r6, (int) r5, (int) r7)
            if (r6 == 0) goto L_0x006e
            int r6 = r11.getActionIndex()
            int r6 = r11.getPointerId(r6)
            r8.v = r6
            r8.x = r2
        L_0x006e:
            int r6 = r8.v
            if (r6 != r4) goto L_0x007c
            int r4 = r8.w
            boolean r10 = r9.a((android.view.View) r10, (int) r5, (int) r4)
            if (r10 != 0) goto L_0x007c
            r10 = 1
            goto L_0x007d
        L_0x007c:
            r10 = 0
        L_0x007d:
            r8.n = r10
        L_0x007f:
            boolean r10 = r8.n
            if (r10 != 0) goto L_0x008e
            d.k.b.a r10 = r8.m
            if (r10 == 0) goto L_0x008e
            boolean r10 = r10.c((android.view.MotionEvent) r11)
            if (r10 == 0) goto L_0x008e
            return r2
        L_0x008e:
            java.lang.ref.WeakReference<android.view.View> r10 = r8.s
            if (r10 == 0) goto L_0x0099
            java.lang.Object r10 = r10.get()
            r3 = r10
            android.view.View r3 = (android.view.View) r3
        L_0x0099:
            r10 = 2
            if (r0 != r10) goto L_0x00d0
            if (r3 == 0) goto L_0x00d0
            boolean r10 = r8.n
            if (r10 != 0) goto L_0x00d0
            int r10 = r8.f139l
            if (r10 == r2) goto L_0x00d0
            float r10 = r11.getX()
            int r10 = (int) r10
            float r0 = r11.getY()
            int r0 = (int) r0
            boolean r9 = r9.a((android.view.View) r3, (int) r10, (int) r0)
            if (r9 != 0) goto L_0x00d0
            d.k.b.a r9 = r8.m
            if (r9 == 0) goto L_0x00d0
            int r9 = r8.w
            float r9 = (float) r9
            float r10 = r11.getY()
            float r9 = r9 - r10
            float r9 = java.lang.Math.abs(r9)
            d.k.b.a r10 = r8.m
            int r10 = r10.b
            float r10 = (float) r10
            int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r9 <= 0) goto L_0x00d0
            r1 = 1
        L_0x00d0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.a(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public boolean a(CoordinatorLayout coordinatorLayout, V v2, View view, View view2, int i2, int i3) {
        this.o = 0;
        this.p = false;
        if ((i2 & 2) != 0) {
            return true;
        }
        return false;
    }

    public void a(CoordinatorLayout coordinatorLayout, V v2, View view, int i2, int i3, int[] iArr, int i4) {
        if (i4 != 1 && view == ((View) this.s.get())) {
            int top = v2.getTop();
            int i5 = top - i3;
            if (i3 > 0) {
                if (i5 < b()) {
                    iArr[1] = top - b();
                    n.d(v2, -iArr[1]);
                    c(3);
                } else {
                    iArr[1] = i3;
                    n.d(v2, -i3);
                    c(1);
                }
            } else if (i3 < 0 && !view.canScrollVertically(-1)) {
                int i6 = this.f136i;
                if (i5 <= i6 || this.f137j) {
                    iArr[1] = i3;
                    n.d(v2, -i3);
                    c(1);
                } else {
                    iArr[1] = top - i6;
                    n.d(v2, -iArr[1]);
                    c(4);
                }
            }
            a(v2.getTop());
            this.o = i3;
            this.p = true;
        }
    }

    public void a(CoordinatorLayout coordinatorLayout, V v2, View view, int i2) {
        int i3;
        int i4;
        float f2;
        int i5 = 3;
        if (v2.getTop() == b()) {
            c(3);
        } else if (view == this.s.get() && this.p) {
            if (this.o > 0) {
                i3 = b();
            } else {
                if (this.f137j) {
                    VelocityTracker velocityTracker = this.u;
                    if (velocityTracker == null) {
                        f2 = 0.0f;
                    } else {
                        velocityTracker.computeCurrentVelocity(1000, this.b);
                        f2 = this.u.getYVelocity(this.v);
                    }
                    if (a((View) v2, f2)) {
                        i3 = this.q;
                        i5 = 5;
                    }
                }
                if (this.o == 0) {
                    int top = v2.getTop();
                    if (!this.a) {
                        int i6 = this.f135h;
                        if (top < i6) {
                            if (top < Math.abs(top - this.f136i)) {
                                i3 = 0;
                            } else {
                                i3 = this.f135h;
                            }
                        } else if (Math.abs(top - i6) < Math.abs(top - this.f136i)) {
                            i3 = this.f135h;
                        } else {
                            i4 = this.f136i;
                        }
                        i5 = 6;
                    } else if (Math.abs(top - this.f134g) < Math.abs(top - this.f136i)) {
                        i3 = this.f134g;
                    } else {
                        i4 = this.f136i;
                    }
                } else {
                    i4 = this.f136i;
                }
                i5 = 4;
            }
            if (this.m.a((View) v2, v2.getLeft(), i3)) {
                c(2);
                n.a((View) v2, (Runnable) new d(v2, i5));
            } else {
                c(i5);
            }
            this.p = false;
        }
    }

    public boolean a(CoordinatorLayout coordinatorLayout, V v2, View view, float f2, float f3) {
        return view == this.s.get() && this.f139l != 3;
    }

    public final void a() {
        if (this.a) {
            this.f136i = Math.max(this.q - this.f133f, this.f134g);
        } else {
            this.f136i = this.q - this.f133f;
        }
    }

    public boolean a(View view, float f2) {
        if (this.f138k) {
            return true;
        }
        if (view.getTop() < this.f136i) {
            return false;
        }
        if (Math.abs(((f2 * 0.1f) + ((float) view.getTop())) - ((float) this.f136i)) / ((float) this.f130c) > 0.5f) {
            return true;
        }
        return false;
    }

    public View a(View view) {
        if (n.u(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View a2 = a(viewGroup.getChildAt(i2));
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }

    public void a(View view, int i2) {
        int i3;
        int i4;
        if (i2 == 4) {
            i3 = this.f136i;
        } else if (i2 == 6) {
            i3 = this.f135h;
            if (this.a && i3 <= (i4 = this.f134g)) {
                i2 = 3;
                i3 = i4;
            }
        } else if (i2 == 3) {
            i3 = b();
        } else if (!this.f137j || i2 != 5) {
            throw new IllegalArgumentException(e.a.a.a.a.a("Illegal state argument: ", i2));
        } else {
            i3 = this.q;
        }
        if (this.m.a(view, view.getLeft(), i3)) {
            c(2);
            n.a(view, (Runnable) new d(view, i2));
            return;
        }
        c(i2);
    }

    public void a(int i2) {
        b bVar;
        if (((View) this.r.get()) != null && (bVar = this.t) != null) {
            if (i2 > this.f136i) {
                b.d dVar = (b.d) bVar;
            } else {
                b.d dVar2 = (b.d) bVar;
            }
        }
    }

    public final void a(boolean z2) {
        WeakReference<V> weakReference = this.r;
        if (weakReference != null) {
            ViewParent parent = ((View) weakReference.get()).getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (z2) {
                    if (this.y == null) {
                        this.y = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = coordinatorLayout.getChildAt(i2);
                    if (childAt != this.r.get()) {
                        if (!z2) {
                            Map<View, Integer> map = this.y;
                            if (map != null && map.containsKey(childAt)) {
                                n.e(childAt, this.y.get(childAt).intValue());
                            }
                        } else {
                            this.y.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                            n.e(childAt, 4);
                        }
                    }
                }
                if (!z2) {
                    this.y = null;
                }
            }
        }
    }
}
