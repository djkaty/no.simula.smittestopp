package d.x;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import d.b.a.r;
import d.x.h;

public abstract class b0 extends h {
    public static final String[] g0 = {"android:visibility:visibility", "android:visibility:parent"};
    public int f0 = 3;

    public static class a extends AnimatorListenerAdapter implements h.d {
        public final View a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final ViewGroup f956c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f957d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f958e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f959f = false;

        public a(View view, int i2, boolean z) {
            this.a = view;
            this.b = i2;
            this.f956c = (ViewGroup) view.getParent();
            this.f957d = z;
            a(true);
        }

        public void a(h hVar) {
            a(false);
        }

        public void b(h hVar) {
            a(true);
        }

        public void c(h hVar) {
        }

        public void d(h hVar) {
            a();
            hVar.b((h.d) this);
        }

        public void onAnimationCancel(Animator animator) {
            this.f959f = true;
        }

        public void onAnimationEnd(Animator animator) {
            a();
        }

        public void onAnimationPause(Animator animator) {
            if (!this.f959f) {
                v.a(this.a, this.b);
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationResume(Animator animator) {
            if (!this.f959f) {
                v.a(this.a, 0);
            }
        }

        public void onAnimationStart(Animator animator) {
        }

        public final void a() {
            if (!this.f959f) {
                v.a(this.a, this.b);
                ViewGroup viewGroup = this.f956c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            a(false);
        }

        public final void a(boolean z) {
            ViewGroup viewGroup;
            if (this.f957d && this.f958e != z && (viewGroup = this.f956c) != null) {
                this.f958e = z;
                r.a(viewGroup, z);
            }
        }
    }

    public static class b {
        public boolean a;
        public boolean b;

        /* renamed from: c  reason: collision with root package name */
        public int f960c;

        /* renamed from: d  reason: collision with root package name */
        public int f961d;

        /* renamed from: e  reason: collision with root package name */
        public ViewGroup f962e;

        /* renamed from: f  reason: collision with root package name */
        public ViewGroup f963f;
    }

    public abstract Animator a(ViewGroup viewGroup, View view, p pVar, p pVar2);

    public void a(p pVar) {
        d(pVar);
    }

    public String[] b() {
        return g0;
    }

    public final void d(p pVar) {
        pVar.a.put("android:visibility:visibility", Integer.valueOf(pVar.b.getVisibility()));
        pVar.a.put("android:visibility:parent", pVar.b.getParent());
        int[] iArr = new int[2];
        pVar.b.getLocationOnScreen(iArr);
        pVar.a.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0042, code lost:
        r11 = (java.lang.Float) r11.a.get("android:fade:transitionAlpha");
     */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00e8 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0134  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.animation.Animator a(android.view.ViewGroup r10, d.x.p r11, d.x.p r12) {
        /*
            r9 = this;
            d.x.b0$b r0 = r9.b(r11, r12)
            boolean r1 = r0.a
            r2 = 0
            if (r1 == 0) goto L_0x0153
            android.view.ViewGroup r1 = r0.f962e
            if (r1 != 0) goto L_0x0011
            android.view.ViewGroup r1 = r0.f963f
            if (r1 == 0) goto L_0x0153
        L_0x0011:
            boolean r1 = r0.b
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L_0x0061
            int r10 = r9.f0
            r10 = r10 & r4
            if (r10 != r4) goto L_0x0060
            if (r12 != 0) goto L_0x001f
            goto L_0x0060
        L_0x001f:
            if (r11 != 0) goto L_0x003a
            android.view.View r10 = r12.b
            android.view.ViewParent r10 = r10.getParent()
            android.view.View r10 = (android.view.View) r10
            d.x.p r0 = r9.b(r10, r3)
            d.x.p r10 = r9.c(r10, r3)
            d.x.b0$b r10 = r9.b(r0, r10)
            boolean r10 = r10.a
            if (r10 == 0) goto L_0x003a
            goto L_0x0060
        L_0x003a:
            android.view.View r10 = r12.b
            r12 = r9
            d.x.c r12 = (d.x.c) r12
            r0 = 0
            if (r11 == 0) goto L_0x0053
            java.util.Map<java.lang.String, java.lang.Object> r11 = r11.a
            java.lang.String r1 = "android:fade:transitionAlpha"
            java.lang.Object r11 = r11.get(r1)
            java.lang.Float r11 = (java.lang.Float) r11
            if (r11 == 0) goto L_0x0053
            float r11 = r11.floatValue()
            goto L_0x0054
        L_0x0053:
            r11 = 0
        L_0x0054:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r2 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r2 != 0) goto L_0x005b
            goto L_0x005c
        L_0x005b:
            r0 = r11
        L_0x005c:
            android.animation.Animator r2 = r12.a(r10, r0, r1)
        L_0x0060:
            return r2
        L_0x0061:
            int r0 = r0.f961d
            int r1 = r9.f0
            r5 = 2
            r1 = r1 & r5
            if (r1 == r5) goto L_0x006b
            goto L_0x0153
        L_0x006b:
            if (r11 == 0) goto L_0x0070
            android.view.View r1 = r11.b
            goto L_0x0071
        L_0x0070:
            r1 = r2
        L_0x0071:
            if (r12 == 0) goto L_0x0076
            android.view.View r6 = r12.b
            goto L_0x0077
        L_0x0076:
            r6 = r2
        L_0x0077:
            if (r6 == 0) goto L_0x0099
            android.view.ViewParent r7 = r6.getParent()
            if (r7 != 0) goto L_0x0080
            goto L_0x0099
        L_0x0080:
            r7 = 4
            if (r0 != r7) goto L_0x0084
            goto L_0x0086
        L_0x0084:
            if (r1 != r6) goto L_0x0089
        L_0x0086:
            r1 = r2
            goto L_0x00e6
        L_0x0089:
            boolean r6 = r9.S
            if (r6 == 0) goto L_0x008e
            goto L_0x00e2
        L_0x008e:
            android.view.ViewParent r6 = r1.getParent()
            android.view.View r6 = (android.view.View) r6
            android.view.View r1 = d.x.o.a(r10, r1, r6)
            goto L_0x00e2
        L_0x0099:
            if (r6 == 0) goto L_0x009d
            r1 = r6
            goto L_0x00e2
        L_0x009d:
            if (r1 == 0) goto L_0x00e4
            android.view.ViewParent r6 = r1.getParent()
            if (r6 != 0) goto L_0x00a6
            goto L_0x00e2
        L_0x00a6:
            android.view.ViewParent r6 = r1.getParent()
            boolean r6 = r6 instanceof android.view.View
            if (r6 == 0) goto L_0x00e4
            android.view.ViewParent r6 = r1.getParent()
            android.view.View r6 = (android.view.View) r6
            d.x.p r7 = r9.c(r6, r4)
            d.x.p r8 = r9.b(r6, r4)
            d.x.b0$b r7 = r9.b(r7, r8)
            boolean r7 = r7.a
            if (r7 != 0) goto L_0x00c9
            android.view.View r1 = d.x.o.a(r10, r1, r6)
            goto L_0x00e2
        L_0x00c9:
            android.view.ViewParent r7 = r6.getParent()
            if (r7 != 0) goto L_0x00e1
            int r6 = r6.getId()
            r7 = -1
            if (r6 == r7) goto L_0x00e1
            android.view.View r6 = r10.findViewById(r6)
            if (r6 == 0) goto L_0x00e1
            boolean r6 = r9.S
            if (r6 == 0) goto L_0x00e1
            goto L_0x00e2
        L_0x00e1:
            r1 = r2
        L_0x00e2:
            r6 = r2
            goto L_0x00e6
        L_0x00e4:
            r1 = r2
            r6 = r1
        L_0x00e6:
            if (r1 == 0) goto L_0x0132
            if (r11 == 0) goto L_0x0132
            java.util.Map<java.lang.String, java.lang.Object> r0 = r11.a
            java.lang.String r2 = "android:visibility:screenLocation"
            java.lang.Object r0 = r0.get(r2)
            int[] r0 = (int[]) r0
            r2 = r0[r3]
            r0 = r0[r4]
            int[] r5 = new int[r5]
            r10.getLocationOnScreen(r5)
            r3 = r5[r3]
            int r2 = r2 - r3
            int r3 = r1.getLeft()
            int r2 = r2 - r3
            r1.offsetLeftAndRight(r2)
            r2 = r5[r4]
            int r0 = r0 - r2
            int r2 = r1.getTop()
            int r0 = r0 - r2
            r1.offsetTopAndBottom(r0)
            d.x.r r0 = new d.x.r
            r0.<init>(r10)
            android.view.ViewGroupOverlay r2 = r0.a
            r2.add(r1)
            android.animation.Animator r2 = r9.a(r10, r1, r11, r12)
            if (r2 != 0) goto L_0x0129
            android.view.ViewGroupOverlay r10 = r0.a
            r10.remove(r1)
            goto L_0x0153
        L_0x0129:
            d.x.a0 r10 = new d.x.a0
            r10.<init>(r9, r0, r1)
            r2.addListener(r10)
            goto L_0x0153
        L_0x0132:
            if (r6 == 0) goto L_0x0153
            int r1 = r6.getVisibility()
            d.x.v.a(r6, r3)
            android.animation.Animator r2 = r9.a(r10, r6, r11, r12)
            if (r2 == 0) goto L_0x0150
            d.x.b0$a r10 = new d.x.b0$a
            r10.<init>(r6, r0, r4)
            r2.addListener(r10)
            r2.addPauseListener(r10)
            r9.a((d.x.h.d) r10)
            goto L_0x0153
        L_0x0150:
            d.x.v.a(r6, r1)
        L_0x0153:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: d.x.b0.a(android.view.ViewGroup, d.x.p, d.x.p):android.animation.Animator");
    }

    public final b b(p pVar, p pVar2) {
        b bVar = new b();
        bVar.a = false;
        bVar.b = false;
        if (pVar == null || !pVar.a.containsKey("android:visibility:visibility")) {
            bVar.f960c = -1;
            bVar.f962e = null;
        } else {
            bVar.f960c = ((Integer) pVar.a.get("android:visibility:visibility")).intValue();
            bVar.f962e = (ViewGroup) pVar.a.get("android:visibility:parent");
        }
        if (pVar2 == null || !pVar2.a.containsKey("android:visibility:visibility")) {
            bVar.f961d = -1;
            bVar.f963f = null;
        } else {
            bVar.f961d = ((Integer) pVar2.a.get("android:visibility:visibility")).intValue();
            bVar.f963f = (ViewGroup) pVar2.a.get("android:visibility:parent");
        }
        if (pVar == null || pVar2 == null) {
            if (pVar == null && bVar.f961d == 0) {
                bVar.b = true;
                bVar.a = true;
            } else if (pVar2 == null && bVar.f960c == 0) {
                bVar.b = false;
                bVar.a = true;
            }
        } else if (bVar.f960c == bVar.f961d && bVar.f962e == bVar.f963f) {
            return bVar;
        } else {
            int i2 = bVar.f960c;
            int i3 = bVar.f961d;
            if (i2 != i3) {
                if (i2 == 0) {
                    bVar.b = false;
                    bVar.a = true;
                } else if (i3 == 0) {
                    bVar.b = true;
                    bVar.a = true;
                }
            } else if (bVar.f963f == null) {
                bVar.b = false;
                bVar.a = true;
            } else if (bVar.f962e == null) {
                bVar.b = true;
                bVar.a = true;
            }
        }
        return bVar;
    }

    public boolean a(p pVar, p pVar2) {
        if (pVar == null && pVar2 == null) {
            return false;
        }
        if (pVar != null && pVar2 != null && pVar2.a.containsKey("android:visibility:visibility") != pVar.a.containsKey("android:visibility:visibility")) {
            return false;
        }
        b b2 = b(pVar, pVar2);
        if (!b2.a) {
            return false;
        }
        if (b2.f960c == 0 || b2.f961d == 0) {
            return true;
        }
        return false;
    }
}
