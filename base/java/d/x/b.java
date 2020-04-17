package d.x;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import d.b.a.r;
import d.i.i.n;
import d.x.h;

public class b extends h {
    public static final String[] i0 = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    public static final Property<Drawable, PointF> j0 = new C0052b(PointF.class, "boundsOrigin");
    public static final Property<k, PointF> k0 = new c(PointF.class, "topLeft");
    public static final Property<k, PointF> l0 = new d(PointF.class, "bottomRight");
    public static final Property<View, PointF> m0 = new e(PointF.class, "bottomRight");
    public static final Property<View, PointF> n0 = new f(PointF.class, "topLeft");
    public static final Property<View, PointF> o0 = new g(PointF.class, "position");
    public static f p0 = new f();
    public int[] f0 = new int[2];
    public boolean g0 = false;
    public boolean h0 = false;

    public class a extends AnimatorListenerAdapter {
        public final /* synthetic */ ViewGroup a;
        public final /* synthetic */ BitmapDrawable b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ View f944c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ float f945d;

        public a(b bVar, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f2) {
            this.a = viewGroup;
            this.b = bitmapDrawable;
            this.f944c = view;
            this.f945d = f2;
        }

        public void onAnimationEnd(Animator animator) {
            u a2 = v.a(this.a);
            ((t) a2).a.remove(this.b);
            v.a.a(this.f944c, this.f945d);
        }
    }

    /* renamed from: d.x.b$b  reason: collision with other inner class name */
    public static class C0052b extends Property<Drawable, PointF> {
        public Rect a = new Rect();

        public C0052b(Class cls, String str) {
            super(cls, str);
        }

        public Object get(Object obj) {
            ((Drawable) obj).copyBounds(this.a);
            Rect rect = this.a;
            return new PointF((float) rect.left, (float) rect.top);
        }

        public void set(Object obj, Object obj2) {
            Drawable drawable = (Drawable) obj;
            PointF pointF = (PointF) obj2;
            drawable.copyBounds(this.a);
            this.a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.a);
        }
    }

    public static class c extends Property<k, PointF> {
        public c(Class cls, String str) {
            super(cls, str);
        }

        public Object get(Object obj) {
            k kVar = (k) obj;
            return null;
        }

        public void set(Object obj, Object obj2) {
            k kVar = (k) obj;
            PointF pointF = (PointF) obj2;
            if (kVar != null) {
                kVar.a = Math.round(pointF.x);
                int round = Math.round(pointF.y);
                kVar.b = round;
                int i2 = kVar.f954f + 1;
                kVar.f954f = i2;
                if (i2 == kVar.f955g) {
                    v.a(kVar.f953e, kVar.a, round, kVar.f951c, kVar.f952d);
                    kVar.f954f = 0;
                    kVar.f955g = 0;
                    return;
                }
                return;
            }
            throw null;
        }
    }

    public static class d extends Property<k, PointF> {
        public d(Class cls, String str) {
            super(cls, str);
        }

        public Object get(Object obj) {
            k kVar = (k) obj;
            return null;
        }

        public void set(Object obj, Object obj2) {
            k kVar = (k) obj;
            PointF pointF = (PointF) obj2;
            if (kVar != null) {
                kVar.f951c = Math.round(pointF.x);
                int round = Math.round(pointF.y);
                kVar.f952d = round;
                int i2 = kVar.f955g + 1;
                kVar.f955g = i2;
                if (kVar.f954f == i2) {
                    v.a(kVar.f953e, kVar.a, kVar.b, kVar.f951c, round);
                    kVar.f954f = 0;
                    kVar.f955g = 0;
                    return;
                }
                return;
            }
            throw null;
        }
    }

    public static class e extends Property<View, PointF> {
        public e(Class cls, String str) {
            super(cls, str);
        }

        public Object get(Object obj) {
            View view = (View) obj;
            return null;
        }

        public void set(Object obj, Object obj2) {
            View view = (View) obj;
            PointF pointF = (PointF) obj2;
            v.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    public static class f extends Property<View, PointF> {
        public f(Class cls, String str) {
            super(cls, str);
        }

        public Object get(Object obj) {
            View view = (View) obj;
            return null;
        }

        public void set(Object obj, Object obj2) {
            View view = (View) obj;
            PointF pointF = (PointF) obj2;
            v.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    public static class g extends Property<View, PointF> {
        public g(Class cls, String str) {
            super(cls, str);
        }

        public Object get(Object obj) {
            View view = (View) obj;
            return null;
        }

        public void set(Object obj, Object obj2) {
            View view = (View) obj;
            PointF pointF = (PointF) obj2;
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            v.a(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    }

    public class h extends AnimatorListenerAdapter {
        public final /* synthetic */ k a;
        public k mViewBounds = this.a;

        public h(b bVar, k kVar) {
            this.a = kVar;
        }
    }

    public class i extends AnimatorListenerAdapter {
        public boolean a;
        public final /* synthetic */ View b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Rect f946c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f947d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ int f948e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f949f;

        /* renamed from: g  reason: collision with root package name */
        public final /* synthetic */ int f950g;

        public i(b bVar, View view, Rect rect, int i2, int i3, int i4, int i5) {
            this.b = view;
            this.f946c = rect;
            this.f947d = i2;
            this.f948e = i3;
            this.f949f = i4;
            this.f950g = i5;
        }

        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.a) {
                n.a(this.b, this.f946c);
                v.a(this.b, this.f947d, this.f948e, this.f949f, this.f950g);
            }
        }
    }

    public class j extends k {
        public boolean a = false;
        public final /* synthetic */ ViewGroup b;

        public j(b bVar, ViewGroup viewGroup) {
            this.b = viewGroup;
        }

        public void a(h hVar) {
            r.a(this.b, false);
        }

        public void b(h hVar) {
            r.a(this.b, true);
        }

        public void d(h hVar) {
            if (!this.a) {
                r.a(this.b, false);
            }
            hVar.b((h.d) this);
        }
    }

    public static class k {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public int f951c;

        /* renamed from: d  reason: collision with root package name */
        public int f952d;

        /* renamed from: e  reason: collision with root package name */
        public View f953e;

        /* renamed from: f  reason: collision with root package name */
        public int f954f;

        /* renamed from: g  reason: collision with root package name */
        public int f955g;

        public k(View view) {
            this.f953e = view;
        }
    }

    public void a(p pVar) {
        d(pVar);
    }

    public String[] b() {
        return i0;
    }

    public void c(p pVar) {
        d(pVar);
    }

    public final void d(p pVar) {
        View view = pVar.b;
        if (n.t(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            pVar.a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            pVar.a.put("android:changeBounds:parent", pVar.b.getParent());
            if (this.h0) {
                pVar.b.getLocationInWindow(this.f0);
                pVar.a.put("android:changeBounds:windowX", Integer.valueOf(this.f0[0]));
                pVar.a.put("android:changeBounds:windowY", Integer.valueOf(this.f0[1]));
            }
            if (this.g0) {
                pVar.a.put("android:changeBounds:clip", view.getClipBounds());
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002b, code lost:
        r5 = b(r3, true);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.animation.Animator a(android.view.ViewGroup r19, d.x.p r20, d.x.p r21) {
        /*
            r18 = this;
            r8 = r18
            r0 = r20
            r1 = r21
            if (r0 == 0) goto L_0x0268
            if (r1 != 0) goto L_0x000c
            goto L_0x0268
        L_0x000c:
            java.util.Map<java.lang.String, java.lang.Object> r3 = r0.a
            java.util.Map<java.lang.String, java.lang.Object> r4 = r1.a
            java.lang.String r5 = "android:changeBounds:parent"
            java.lang.Object r3 = r3.get(r5)
            android.view.ViewGroup r3 = (android.view.ViewGroup) r3
            java.lang.Object r4 = r4.get(r5)
            android.view.ViewGroup r4 = (android.view.ViewGroup) r4
            if (r3 == 0) goto L_0x0266
            if (r4 != 0) goto L_0x0024
            goto L_0x0266
        L_0x0024:
            android.view.View r9 = r1.b
            boolean r5 = r8.h0
            r10 = 1
            if (r5 == 0) goto L_0x003b
            d.x.p r5 = r8.b(r3, r10)
            if (r5 != 0) goto L_0x0034
            if (r3 != r4) goto L_0x0039
            goto L_0x003b
        L_0x0034:
            android.view.View r3 = r5.b
            if (r4 != r3) goto L_0x0039
            goto L_0x003b
        L_0x0039:
            r3 = 0
            goto L_0x003c
        L_0x003b:
            r3 = 1
        L_0x003c:
            if (r3 == 0) goto L_0x01bd
            java.util.Map<java.lang.String, java.lang.Object> r3 = r0.a
            java.lang.String r4 = "android:changeBounds:bounds"
            java.lang.Object r3 = r3.get(r4)
            android.graphics.Rect r3 = (android.graphics.Rect) r3
            java.util.Map<java.lang.String, java.lang.Object> r5 = r1.a
            java.lang.Object r4 = r5.get(r4)
            android.graphics.Rect r4 = (android.graphics.Rect) r4
            int r5 = r3.left
            int r7 = r4.left
            int r11 = r3.top
            int r12 = r4.top
            int r13 = r3.right
            int r14 = r4.right
            int r3 = r3.bottom
            int r15 = r4.bottom
            int r4 = r13 - r5
            int r2 = r3 - r11
            int r10 = r14 - r7
            int r6 = r15 - r12
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.a
            r16 = r9
            java.lang.String r9 = "android:changeBounds:clip"
            java.lang.Object r0 = r0.get(r9)
            android.graphics.Rect r0 = (android.graphics.Rect) r0
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.a
            java.lang.Object r1 = r1.get(r9)
            r9 = r1
            android.graphics.Rect r9 = (android.graphics.Rect) r9
            if (r4 == 0) goto L_0x0081
            if (r2 != 0) goto L_0x0085
        L_0x0081:
            if (r10 == 0) goto L_0x0094
            if (r6 == 0) goto L_0x0094
        L_0x0085:
            if (r5 != r7) goto L_0x008c
            if (r11 == r12) goto L_0x008a
            goto L_0x008c
        L_0x008a:
            r1 = 0
            goto L_0x008d
        L_0x008c:
            r1 = 1
        L_0x008d:
            if (r13 != r14) goto L_0x0091
            if (r3 == r15) goto L_0x0095
        L_0x0091:
            int r1 = r1 + 1
            goto L_0x0095
        L_0x0094:
            r1 = 0
        L_0x0095:
            if (r0 == 0) goto L_0x009d
            boolean r17 = r0.equals(r9)
            if (r17 == 0) goto L_0x00a1
        L_0x009d:
            if (r0 != 0) goto L_0x00a3
            if (r9 == 0) goto L_0x00a3
        L_0x00a1:
            int r1 = r1 + 1
        L_0x00a3:
            if (r1 <= 0) goto L_0x01f6
            r19 = r9
            boolean r9 = r8.g0
            r20 = r0
            r0 = 2
            if (r9 != 0) goto L_0x0134
            r9 = r16
            d.x.v.a(r9, r5, r11, r13, r3)
            if (r1 != r0) goto L_0x010b
            if (r4 != r10) goto L_0x00cb
            if (r2 != r6) goto L_0x00cb
            d.x.e r0 = r8.b0
            float r1 = (float) r5
            float r2 = (float) r11
            float r3 = (float) r7
            float r4 = (float) r12
            android.graphics.Path r0 = r0.a(r1, r2, r3, r4)
            android.util.Property<android.view.View, android.graphics.PointF> r1 = o0
            android.animation.ObjectAnimator r0 = d.b.a.r.a(r9, r1, (android.graphics.Path) r0)
            goto L_0x01a2
        L_0x00cb:
            d.x.b$k r1 = new d.x.b$k
            r1.<init>(r9)
            d.x.e r2 = r8.b0
            float r4 = (float) r5
            float r5 = (float) r11
            float r6 = (float) r7
            float r7 = (float) r12
            android.graphics.Path r2 = r2.a(r4, r5, r6, r7)
            android.util.Property<d.x.b$k, android.graphics.PointF> r4 = k0
            android.animation.ObjectAnimator r2 = d.b.a.r.a(r1, r4, (android.graphics.Path) r2)
            d.x.e r4 = r8.b0
            float r5 = (float) r13
            float r3 = (float) r3
            float r6 = (float) r14
            float r7 = (float) r15
            android.graphics.Path r3 = r4.a(r5, r3, r6, r7)
            android.util.Property<d.x.b$k, android.graphics.PointF> r4 = l0
            android.animation.ObjectAnimator r3 = d.b.a.r.a(r1, r4, (android.graphics.Path) r3)
            android.animation.AnimatorSet r4 = new android.animation.AnimatorSet
            r4.<init>()
            android.animation.Animator[] r0 = new android.animation.Animator[r0]
            r5 = 0
            r0[r5] = r2
            r2 = 1
            r0[r2] = r3
            r4.playTogether(r0)
            d.x.b$h r0 = new d.x.b$h
            r0.<init>(r8, r1)
            r4.addListener(r0)
            r0 = r4
            goto L_0x01a2
        L_0x010b:
            if (r5 != r7) goto L_0x0122
            if (r11 == r12) goto L_0x0110
            goto L_0x0122
        L_0x0110:
            d.x.e r0 = r8.b0
            float r1 = (float) r13
            float r2 = (float) r3
            float r3 = (float) r14
            float r4 = (float) r15
            android.graphics.Path r0 = r0.a(r1, r2, r3, r4)
            android.util.Property<android.view.View, android.graphics.PointF> r1 = m0
            android.animation.ObjectAnimator r0 = d.b.a.r.a(r9, r1, (android.graphics.Path) r0)
            goto L_0x01a2
        L_0x0122:
            d.x.e r0 = r8.b0
            float r1 = (float) r5
            float r2 = (float) r11
            float r3 = (float) r7
            float r4 = (float) r12
            android.graphics.Path r0 = r0.a(r1, r2, r3, r4)
            android.util.Property<android.view.View, android.graphics.PointF> r1 = n0
            android.animation.ObjectAnimator r0 = d.b.a.r.a(r9, r1, (android.graphics.Path) r0)
            goto L_0x01a2
        L_0x0134:
            r9 = r16
            int r1 = java.lang.Math.max(r4, r10)
            int r3 = java.lang.Math.max(r2, r6)
            int r1 = r1 + r5
            int r3 = r3 + r11
            d.x.v.a(r9, r5, r11, r1, r3)
            if (r5 != r7) goto L_0x014a
            if (r11 == r12) goto L_0x0148
            goto L_0x014a
        L_0x0148:
            r11 = 0
            goto L_0x015b
        L_0x014a:
            d.x.e r1 = r8.b0
            float r3 = (float) r5
            float r5 = (float) r11
            float r11 = (float) r7
            float r13 = (float) r12
            android.graphics.Path r1 = r1.a(r3, r5, r11, r13)
            android.util.Property<android.view.View, android.graphics.PointF> r3 = o0
            android.animation.ObjectAnimator r1 = d.b.a.r.a(r9, r3, (android.graphics.Path) r1)
            r11 = r1
        L_0x015b:
            if (r20 != 0) goto L_0x0164
            android.graphics.Rect r1 = new android.graphics.Rect
            r3 = 0
            r1.<init>(r3, r3, r4, r2)
            goto L_0x0167
        L_0x0164:
            r3 = 0
            r1 = r20
        L_0x0167:
            if (r19 != 0) goto L_0x016f
            android.graphics.Rect r2 = new android.graphics.Rect
            r2.<init>(r3, r3, r10, r6)
            goto L_0x0171
        L_0x016f:
            r2 = r19
        L_0x0171:
            boolean r4 = r1.equals(r2)
            if (r4 != 0) goto L_0x019d
            d.i.i.n.a((android.view.View) r9, (android.graphics.Rect) r1)
            d.x.f r4 = p0
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r3] = r1
            r1 = 1
            r0[r1] = r2
            java.lang.String r1 = "clipBounds"
            android.animation.ObjectAnimator r10 = android.animation.ObjectAnimator.ofObject(r9, r1, r4, r0)
            d.x.b$i r13 = new d.x.b$i
            r0 = r13
            r1 = r18
            r2 = r9
            r3 = r19
            r4 = r7
            r5 = r12
            r6 = r14
            r7 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r10.addListener(r13)
            r2 = r10
            goto L_0x019e
        L_0x019d:
            r2 = 0
        L_0x019e:
            android.animation.Animator r0 = d.x.o.a(r11, r2)
        L_0x01a2:
            android.view.ViewParent r1 = r9.getParent()
            boolean r1 = r1 instanceof android.view.ViewGroup
            if (r1 == 0) goto L_0x01bc
            android.view.ViewParent r1 = r9.getParent()
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            r2 = 1
            d.b.a.r.a((android.view.ViewGroup) r1, (boolean) r2)
            d.x.b$j r2 = new d.x.b$j
            r2.<init>(r8, r1)
            r8.a((d.x.h.d) r2)
        L_0x01bc:
            return r0
        L_0x01bd:
            java.util.Map<java.lang.String, java.lang.Object> r2 = r0.a
            java.lang.String r3 = "android:changeBounds:windowX"
            java.lang.Object r2 = r2.get(r3)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.a
            java.lang.String r4 = "android:changeBounds:windowY"
            java.lang.Object r0 = r0.get(r4)
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            java.util.Map<java.lang.String, java.lang.Object> r5 = r1.a
            java.lang.Object r3 = r5.get(r3)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            java.util.Map<java.lang.String, java.lang.Object> r1 = r1.a
            java.lang.Object r1 = r1.get(r4)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            if (r2 != r3) goto L_0x01f8
            if (r0 == r1) goto L_0x01f6
            goto L_0x01f8
        L_0x01f6:
            r0 = 0
            return r0
        L_0x01f8:
            int[] r4 = r8.f0
            r5 = r19
            r5.getLocationInWindow(r4)
            int r4 = r9.getWidth()
            int r6 = r9.getHeight()
            android.graphics.Bitmap$Config r7 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r4 = android.graphics.Bitmap.createBitmap(r4, r6, r7)
            android.graphics.Canvas r6 = new android.graphics.Canvas
            r6.<init>(r4)
            r9.draw(r6)
            android.graphics.drawable.BitmapDrawable r6 = new android.graphics.drawable.BitmapDrawable
            r6.<init>(r4)
            float r7 = d.x.v.b(r9)
            r4 = 0
            d.x.z r10 = d.x.v.a
            r10.a((android.view.View) r9, (float) r4)
            android.view.ViewOverlay r4 = r19.getOverlay()
            r4.add(r6)
            d.x.e r4 = r8.b0
            int[] r10 = r8.f0
            r11 = 0
            r12 = r10[r11]
            int r2 = r2 - r12
            float r2 = (float) r2
            r12 = 1
            r13 = r10[r12]
            int r0 = r0 - r13
            float r0 = (float) r0
            r13 = r10[r11]
            int r3 = r3 - r13
            float r3 = (float) r3
            r10 = r10[r12]
            int r1 = r1 - r10
            float r1 = (float) r1
            android.graphics.Path r0 = r4.a(r2, r0, r3, r1)
            android.util.Property<android.graphics.drawable.Drawable, android.graphics.PointF> r1 = j0
            r2 = 0
            android.animation.PropertyValuesHolder r0 = android.animation.PropertyValuesHolder.ofObject(r1, r2, r0)
            android.animation.PropertyValuesHolder[] r1 = new android.animation.PropertyValuesHolder[r12]
            r2 = 0
            r1[r2] = r0
            android.animation.ObjectAnimator r10 = android.animation.ObjectAnimator.ofPropertyValuesHolder(r6, r1)
            d.x.b$a r11 = new d.x.b$a
            r0 = r11
            r1 = r18
            r2 = r19
            r3 = r6
            r4 = r9
            r5 = r7
            r0.<init>(r1, r2, r3, r4, r5)
            r10.addListener(r11)
            return r10
        L_0x0266:
            r0 = 0
            return r0
        L_0x0268:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.x.b.a(android.view.ViewGroup, d.x.p, d.x.p):android.animation.Animator");
    }
}
