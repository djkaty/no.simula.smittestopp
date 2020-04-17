package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import e.c.a.b.a.i;

public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c  reason: collision with root package name */
    public final Rect f143c = new Rect();

    /* renamed from: d  reason: collision with root package name */
    public final RectF f144d = new RectF();

    /* renamed from: e  reason: collision with root package name */
    public final RectF f145e = new RectF();

    /* renamed from: f  reason: collision with root package name */
    public final int[] f146f = new int[2];

    public class a extends AnimatorListenerAdapter {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ View b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ View f147c;

        public a(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
            this.a = z;
            this.b = view;
            this.f147c = view2;
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.a) {
                this.b.setVisibility(4);
                this.f147c.setAlpha(1.0f);
                this.f147c.setVisibility(0);
            }
        }

        public void onAnimationStart(Animator animator) {
            if (this.a) {
                this.b.setVisibility(0);
                this.f147c.setAlpha(0.0f);
                this.f147c.setVisibility(4);
            }
        }
    }

    public FabTransformationBehavior() {
    }

    public boolean a(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        } else if (!(view2 instanceof FloatingActionButton)) {
            return false;
        } else {
            int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
            if (expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId()) {
                return true;
            }
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:116:0x040e A[LOOP:1: B:115:0x040c->B:116:0x040e, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x01db  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x01e3  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0333  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0338  */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x038c  */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x0390  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.animation.AnimatorSet b(android.view.View r27, android.view.View r28, boolean r29, boolean r30) {
        /*
            r26 = this;
            r0 = r26
            r1 = r27
            r2 = r28
            r3 = r29
            android.content.Context r4 = r28.getContext()
            if (r3 == 0) goto L_0x0011
            int r5 = com.google.android.material.R$animator.mtrl_fab_transformation_sheet_expand_spec
            goto L_0x0013
        L_0x0011:
            int r5 = com.google.android.material.R$animator.mtrl_fab_transformation_sheet_collapse_spec
        L_0x0013:
            e.c.a.b.a.g r4 = e.c.a.b.a.g.a(r4, r5)
            e.c.a.b.a.i r5 = new e.c.a.b.a.i
            r6 = 17
            r7 = 0
            r5.<init>(r6, r7, r7)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            float r9 = d.i.i.n.f(r28)
            float r10 = r27.getElevation()
            float r9 = r9 - r10
            r10 = 1
            r11 = 0
            if (r3 == 0) goto L_0x0047
            if (r30 != 0) goto L_0x003c
            float r9 = -r9
            r2.setTranslationZ(r9)
        L_0x003c:
            android.util.Property r9 = android.view.View.TRANSLATION_Z
            float[] r12 = new float[r10]
            r12[r11] = r7
            android.animation.ObjectAnimator r9 = android.animation.ObjectAnimator.ofFloat(r2, r9, r12)
            goto L_0x0052
        L_0x0047:
            android.util.Property r12 = android.view.View.TRANSLATION_Z
            float[] r13 = new float[r10]
            float r9 = -r9
            r13[r11] = r9
            android.animation.ObjectAnimator r9 = android.animation.ObjectAnimator.ofFloat(r2, r12, r13)
        L_0x0052:
            java.lang.String r12 = "elevation"
            e.c.a.b.a.h r12 = r4.a((java.lang.String) r12)
            r12.a(r9)
            r6.add(r9)
            android.graphics.RectF r9 = r0.f144d
            float r12 = r0.a((android.view.View) r1, (android.view.View) r2, (e.c.a.b.a.i) r5)
            float r13 = r0.b(r1, r2, r5)
            int r14 = (r12 > r7 ? 1 : (r12 == r7 ? 0 : -1))
            if (r14 == 0) goto L_0x0095
            int r14 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
            if (r14 != 0) goto L_0x0071
            goto L_0x0095
        L_0x0071:
            if (r3 == 0) goto L_0x0077
            int r15 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
            if (r15 < 0) goto L_0x007b
        L_0x0077:
            if (r3 != 0) goto L_0x0088
            if (r14 <= 0) goto L_0x0088
        L_0x007b:
            java.lang.String r14 = "translationXCurveUpwards"
            e.c.a.b.a.h r14 = r4.a((java.lang.String) r14)
            java.lang.String r15 = "translationYCurveUpwards"
            e.c.a.b.a.h r15 = r4.a((java.lang.String) r15)
            goto L_0x00a1
        L_0x0088:
            java.lang.String r14 = "translationXCurveDownwards"
            e.c.a.b.a.h r14 = r4.a((java.lang.String) r14)
            java.lang.String r15 = "translationYCurveDownwards"
            e.c.a.b.a.h r15 = r4.a((java.lang.String) r15)
            goto L_0x00a1
        L_0x0095:
            java.lang.String r14 = "translationXLinear"
            e.c.a.b.a.h r14 = r4.a((java.lang.String) r14)
            java.lang.String r15 = "translationYLinear"
            e.c.a.b.a.h r15 = r4.a((java.lang.String) r15)
        L_0x00a1:
            java.lang.String r7 = "expansion"
            if (r3 == 0) goto L_0x013e
            if (r30 != 0) goto L_0x00af
            float r11 = -r12
            r2.setTranslationX(r11)
            float r11 = -r13
            r2.setTranslationY(r11)
        L_0x00af:
            android.util.Property r11 = android.view.View.TRANSLATION_X
            r18 = r5
            float[] r5 = new float[r10]
            r16 = 0
            r17 = 0
            r5[r17] = r16
            android.animation.ObjectAnimator r5 = android.animation.ObjectAnimator.ofFloat(r2, r11, r5)
            android.util.Property r11 = android.view.View.TRANSLATION_Y
            r19 = r5
            float[] r5 = new float[r10]
            r5[r17] = r16
            android.animation.ObjectAnimator r5 = android.animation.ObjectAnimator.ofFloat(r2, r11, r5)
            float r11 = -r12
            float r12 = -r13
            r20 = r11
            long r10 = r14.a
            r22 = r5
            r21 = r6
            long r5 = r14.b
            e.c.a.b.a.h r13 = r4.a((java.lang.String) r7)
            r23 = r8
            r24 = r9
            long r8 = r13.a
            long r1 = r13.b
            long r8 = r8 + r1
            r1 = 17
            long r8 = r8 + r1
            long r8 = r8 - r10
            float r8 = (float) r8
            float r5 = (float) r5
            float r8 = r8 / r5
            android.animation.TimeInterpolator r5 = r14.a()
            float r5 = r5.getInterpolation(r8)
            r6 = r20
            r8 = 0
            float r5 = e.c.a.b.a.a.a(r6, r8, r5)
            long r8 = r15.a
            long r10 = r15.b
            e.c.a.b.a.h r6 = r4.a((java.lang.String) r7)
            long r1 = r6.a
            r20 = r7
            long r6 = r6.b
            long r1 = r1 + r6
            r6 = 17
            long r1 = r1 + r6
            long r1 = r1 - r8
            float r1 = (float) r1
            float r2 = (float) r10
            float r1 = r1 / r2
            android.animation.TimeInterpolator r2 = r15.a()
            float r1 = r2.getInterpolation(r1)
            r2 = 0
            float r1 = e.c.a.b.a.a.a(r12, r2, r1)
            android.graphics.Rect r2 = r0.f143c
            r6 = r28
            r6.getWindowVisibleDisplayFrame(r2)
            android.graphics.RectF r7 = r0.f144d
            r7.set(r2)
            android.graphics.RectF r2 = r0.f145e
            r0.a(r6, r2)
            r2.offset(r5, r1)
            r2.intersect(r7)
            r1 = r24
            r1.set(r2)
            r5 = r19
            r2 = r22
            goto L_0x0165
        L_0x013e:
            r18 = r5
            r21 = r6
            r20 = r7
            r23 = r8
            r1 = r9
            r6 = r2
            android.util.Property r2 = android.view.View.TRANSLATION_X
            r5 = 1
            float[] r7 = new float[r5]
            float r8 = -r12
            r9 = 0
            r7[r9] = r8
            android.animation.ObjectAnimator r2 = android.animation.ObjectAnimator.ofFloat(r6, r2, r7)
            android.util.Property r7 = android.view.View.TRANSLATION_Y
            float[] r8 = new float[r5]
            float r5 = -r13
            r8[r9] = r5
            android.animation.ObjectAnimator r5 = android.animation.ObjectAnimator.ofFloat(r6, r7, r8)
            r25 = r5
            r5 = r2
            r2 = r25
        L_0x0165:
            r14.a(r5)
            r15.a(r2)
            r7 = r21
            r7.add(r5)
            r7.add(r2)
            float r2 = r1.width()
            float r1 = r1.height()
            boolean r5 = r6 instanceof e.c.a.b.g.c
            r8 = r27
            if (r5 == 0) goto L_0x01d7
            boolean r9 = r8 instanceof android.widget.ImageView
            if (r9 != 0) goto L_0x0186
            goto L_0x0192
        L_0x0186:
            r9 = r6
            e.c.a.b.g.c r9 = (e.c.a.b.g.c) r9
            r10 = r8
            android.widget.ImageView r10 = (android.widget.ImageView) r10
            android.graphics.drawable.Drawable r10 = r10.getDrawable()
            if (r10 != 0) goto L_0x0193
        L_0x0192:
            goto L_0x01d7
        L_0x0193:
            r10.mutate()
            r11 = 255(0xff, float:3.57E-43)
            if (r3 == 0) goto L_0x01ac
            if (r30 != 0) goto L_0x019f
            r10.setAlpha(r11)
        L_0x019f:
            android.util.Property<android.graphics.drawable.Drawable, java.lang.Integer> r11 = e.c.a.b.a.d.b
            r12 = 1
            int[] r13 = new int[r12]
            r14 = 0
            r13[r14] = r14
            android.animation.ObjectAnimator r11 = android.animation.ObjectAnimator.ofInt(r10, r11, r13)
            goto L_0x01b8
        L_0x01ac:
            r12 = 1
            r14 = 0
            android.util.Property<android.graphics.drawable.Drawable, java.lang.Integer> r13 = e.c.a.b.a.d.b
            int[] r15 = new int[r12]
            r15[r14] = r11
            android.animation.ObjectAnimator r11 = android.animation.ObjectAnimator.ofInt(r10, r13, r15)
        L_0x01b8:
            e.c.a.b.o.a r12 = new e.c.a.b.o.a
            r12.<init>(r0, r6)
            r11.addUpdateListener(r12)
            java.lang.String r12 = "iconFade"
            e.c.a.b.a.h r12 = r4.a((java.lang.String) r12)
            r12.a(r11)
            r7.add(r11)
            e.c.a.b.o.b r11 = new e.c.a.b.o.b
            r11.<init>(r0, r9, r10)
            r9 = r23
            r9.add(r11)
            goto L_0x01d9
        L_0x01d7:
            r9 = r23
        L_0x01d9:
            if (r5 != 0) goto L_0x01e3
            r22 = r4
            r24 = r5
            r0 = r6
            r2 = r9
            goto L_0x0331
        L_0x01e3:
            r10 = r6
            e.c.a.b.g.c r10 = (e.c.a.b.g.c) r10
            android.graphics.RectF r11 = r0.f144d
            android.graphics.RectF r12 = r0.f145e
            r0.a(r8, r11)
            r0.a(r6, r12)
            r13 = r18
            float r14 = r0.a((android.view.View) r8, (android.view.View) r6, (e.c.a.b.a.i) r13)
            float r14 = -r14
            r15 = 0
            r12.offset(r14, r15)
            float r11 = r11.centerX()
            float r12 = r12.left
            float r11 = r11 - r12
            android.graphics.RectF r12 = r0.f144d
            android.graphics.RectF r14 = r0.f145e
            r0.a(r8, r12)
            r0.a(r6, r14)
            float r13 = r0.b(r8, r6, r13)
            float r13 = -r13
            r14.offset(r15, r13)
            float r12 = r12.centerY()
            float r13 = r14.top
            float r12 = r12 - r13
            r13 = r8
            com.google.android.material.floatingactionbutton.FloatingActionButton r13 = (com.google.android.material.floatingactionbutton.FloatingActionButton) r13
            android.graphics.Rect r14 = r0.f143c
            r13.a((android.graphics.Rect) r14)
            android.graphics.Rect r13 = r0.f143c
            int r13 = r13.width()
            float r13 = (float) r13
            r14 = 1073741824(0x40000000, float:2.0)
            float r13 = r13 / r14
            r14 = r20
            e.c.a.b.a.h r14 = r4.a((java.lang.String) r14)
            r23 = r9
            if (r3 == 0) goto L_0x02a6
            if (r30 != 0) goto L_0x0241
            e.c.a.b.g.c$e r15 = new e.c.a.b.g.c$e
            r15.<init>(r11, r12, r13)
            r10.setRevealInfo(r15)
        L_0x0241:
            if (r30 == 0) goto L_0x0249
            e.c.a.b.g.c$e r13 = r10.getRevealInfo()
            float r13 = r13.f1267c
        L_0x0249:
            r15 = 0
            float r18 = e.c.a.a.b.l.c.a((float) r11, (float) r12, (float) r15, (float) r15)
            float r19 = e.c.a.a.b.l.c.a((float) r11, (float) r12, (float) r2, (float) r15)
            float r2 = e.c.a.a.b.l.c.a((float) r11, (float) r12, (float) r2, (float) r1)
            float r1 = e.c.a.a.b.l.c.a((float) r11, (float) r12, (float) r15, (float) r1)
            int r15 = (r18 > r19 ? 1 : (r18 == r19 ? 0 : -1))
            if (r15 <= 0) goto L_0x0269
            int r15 = (r18 > r2 ? 1 : (r18 == r2 ? 0 : -1))
            if (r15 <= 0) goto L_0x0269
            int r15 = (r18 > r1 ? 1 : (r18 == r1 ? 0 : -1))
            if (r15 <= 0) goto L_0x0269
            r1 = r18
            goto L_0x0279
        L_0x0269:
            int r15 = (r19 > r2 ? 1 : (r19 == r2 ? 0 : -1))
            if (r15 <= 0) goto L_0x0274
            int r15 = (r19 > r1 ? 1 : (r19 == r1 ? 0 : -1))
            if (r15 <= 0) goto L_0x0274
            r1 = r19
            goto L_0x0279
        L_0x0274:
            int r15 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r15 <= 0) goto L_0x0279
            r1 = r2
        L_0x0279:
            android.animation.Animator r1 = e.c.a.a.b.l.c.a((e.c.a.b.g.c) r10, (float) r11, (float) r12, (float) r1)
            e.c.a.b.o.c r2 = new e.c.a.b.o.c
            r2.<init>(r0, r10)
            r1.addListener(r2)
            long r8 = r14.a
            int r2 = (int) r11
            int r11 = (int) r12
            r15 = r1
            r0 = 0
            int r12 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r12 <= 0) goto L_0x029d
            android.animation.Animator r2 = android.view.ViewAnimationUtils.createCircularReveal(r6, r2, r11, r13, r13)
            r2.setStartDelay(r0)
            r2.setDuration(r8)
            r7.add(r2)
        L_0x029d:
            r22 = r4
            r24 = r5
            r0 = r6
            r2 = r14
            r1 = r15
            goto L_0x0321
        L_0x02a6:
            e.c.a.b.g.c$e r0 = r10.getRevealInfo()
            float r0 = r0.f1267c
            android.animation.Animator r1 = e.c.a.a.b.l.c.a((e.c.a.b.g.c) r10, (float) r11, (float) r12, (float) r13)
            long r8 = r14.a
            int r2 = (int) r11
            int r11 = (int) r12
            r15 = r13
            r12 = 0
            int r18 = (r8 > r12 ? 1 : (r8 == r12 ? 0 : -1))
            if (r18 <= 0) goto L_0x02c8
            android.animation.Animator r0 = android.view.ViewAnimationUtils.createCircularReveal(r6, r2, r11, r0, r0)
            r0.setStartDelay(r12)
            r0.setDuration(r8)
            r7.add(r0)
        L_0x02c8:
            long r8 = r14.a
            long r12 = r14.b
            d.f.h<java.lang.String, e.c.a.b.a.h> r0 = r4.a
            int r0 = r0.z
            r18 = r1
            r20 = r14
            r21 = r15
            r1 = 0
            r14 = 0
        L_0x02d9:
            if (r1 >= r0) goto L_0x02ff
            r19 = r0
            d.f.h<java.lang.String, e.c.a.b.a.h> r0 = r4.a
            java.lang.Object r0 = r0.e(r1)
            e.c.a.b.a.h r0 = (e.c.a.b.a.h) r0
            r22 = r4
            long r3 = r0.a
            r24 = r5
            long r5 = r0.b
            long r3 = r3 + r5
            long r14 = java.lang.Math.max(r14, r3)
            int r1 = r1 + 1
            r6 = r28
            r3 = r29
            r0 = r19
            r4 = r22
            r5 = r24
            goto L_0x02d9
        L_0x02ff:
            r22 = r4
            r24 = r5
            long r8 = r8 + r12
            int r0 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            if (r0 >= 0) goto L_0x031b
            r0 = r28
            r13 = r21
            android.animation.Animator r1 = android.view.ViewAnimationUtils.createCircularReveal(r0, r2, r11, r13, r13)
            r1.setStartDelay(r8)
            long r14 = r14 - r8
            r1.setDuration(r14)
            r7.add(r1)
            goto L_0x031d
        L_0x031b:
            r0 = r28
        L_0x031d:
            r1 = r18
            r2 = r20
        L_0x0321:
            r2.a(r1)
            r7.add(r1)
            e.c.a.b.g.a r1 = new e.c.a.b.g.a
            r1.<init>(r10)
            r2 = r23
            r2.add(r1)
        L_0x0331:
            if (r24 != 0) goto L_0x0338
            r5 = r29
            r4 = r22
            goto L_0x0388
        L_0x0338:
            r1 = r0
            e.c.a.b.g.c r1 = (e.c.a.b.g.c) r1
            android.content.res.ColorStateList r3 = r27.getBackgroundTintList()
            if (r3 == 0) goto L_0x034e
            int[] r4 = r27.getDrawableState()
            int r5 = r3.getDefaultColor()
            int r3 = r3.getColorForState(r4, r5)
            goto L_0x034f
        L_0x034e:
            r3 = 0
        L_0x034f:
            r4 = 16777215(0xffffff, float:2.3509886E-38)
            r4 = r4 & r3
            r5 = r29
            if (r5 == 0) goto L_0x0369
            if (r30 != 0) goto L_0x035c
            r1.setCircularRevealScrimColor(r3)
        L_0x035c:
            android.util.Property<e.c.a.b.g.c, java.lang.Integer> r3 = e.c.a.b.g.c.d.a
            r6 = 1
            int[] r8 = new int[r6]
            r9 = 0
            r8[r9] = r4
            android.animation.ObjectAnimator r1 = android.animation.ObjectAnimator.ofInt(r1, r3, r8)
            goto L_0x0375
        L_0x0369:
            r6 = 1
            r9 = 0
            android.util.Property<e.c.a.b.g.c, java.lang.Integer> r4 = e.c.a.b.g.c.d.a
            int[] r8 = new int[r6]
            r8[r9] = r3
            android.animation.ObjectAnimator r1 = android.animation.ObjectAnimator.ofInt(r1, r4, r8)
        L_0x0375:
            e.c.a.b.a.b r3 = e.c.a.b.a.b.a
            r1.setEvaluator(r3)
            java.lang.String r3 = "color"
            r4 = r22
            e.c.a.b.a.h r3 = r4.a((java.lang.String) r3)
            r3.a(r1)
            r7.add(r1)
        L_0x0388:
            boolean r1 = r0 instanceof android.view.ViewGroup
            if (r1 != 0) goto L_0x0390
            r10 = 0
            r3 = r26
            goto L_0x03f5
        L_0x0390:
            int r1 = com.google.android.material.R$id.mtrl_child_content_container
            android.view.View r1 = r0.findViewById(r1)
            if (r1 == 0) goto L_0x039f
            r3 = r26
            android.view.ViewGroup r1 = r3.a((android.view.View) r1)
            goto L_0x03bb
        L_0x039f:
            r3 = r26
            boolean r1 = r0 instanceof e.c.a.b.o.e
            if (r1 != 0) goto L_0x03af
            boolean r1 = r0 instanceof e.c.a.b.o.d
            if (r1 == 0) goto L_0x03aa
            goto L_0x03af
        L_0x03aa:
            android.view.ViewGroup r1 = r3.a((android.view.View) r0)
            goto L_0x03bb
        L_0x03af:
            r1 = r0
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            r6 = 0
            android.view.View r1 = r1.getChildAt(r6)
            android.view.ViewGroup r1 = r3.a((android.view.View) r1)
        L_0x03bb:
            if (r1 != 0) goto L_0x03bf
            r10 = 0
            goto L_0x03f5
        L_0x03bf:
            if (r5 == 0) goto L_0x03dc
            if (r30 != 0) goto L_0x03cd
            android.util.Property<android.view.ViewGroup, java.lang.Float> r6 = e.c.a.b.a.c.a
            r8 = 0
            java.lang.Float r8 = java.lang.Float.valueOf(r8)
            r6.set(r1, r8)
        L_0x03cd:
            android.util.Property<android.view.ViewGroup, java.lang.Float> r6 = e.c.a.b.a.c.a
            r8 = 1
            float[] r8 = new float[r8]
            r9 = 1065353216(0x3f800000, float:1.0)
            r10 = 0
            r8[r10] = r9
            android.animation.ObjectAnimator r1 = android.animation.ObjectAnimator.ofFloat(r1, r6, r8)
            goto L_0x03e9
        L_0x03dc:
            r8 = 1
            r10 = 0
            android.util.Property<android.view.ViewGroup, java.lang.Float> r6 = e.c.a.b.a.c.a
            float[] r8 = new float[r8]
            r9 = 0
            r8[r10] = r9
            android.animation.ObjectAnimator r1 = android.animation.ObjectAnimator.ofFloat(r1, r6, r8)
        L_0x03e9:
            java.lang.String r6 = "contentFade"
            e.c.a.b.a.h r4 = r4.a((java.lang.String) r6)
            r4.a(r1)
            r7.add(r1)
        L_0x03f5:
            android.animation.AnimatorSet r1 = new android.animation.AnimatorSet
            r1.<init>()
            e.c.a.a.b.l.c.a((android.animation.AnimatorSet) r1, (java.util.List<android.animation.Animator>) r7)
            com.google.android.material.transformation.FabTransformationBehavior$a r4 = new com.google.android.material.transformation.FabTransformationBehavior$a
            r6 = r27
            r4.<init>(r3, r5, r0, r6)
            r1.addListener(r4)
            int r0 = r2.size()
            r11 = 0
        L_0x040c:
            if (r11 >= r0) goto L_0x041a
            java.lang.Object r4 = r2.get(r11)
            android.animation.Animator$AnimatorListener r4 = (android.animation.Animator.AnimatorListener) r4
            r1.addListener(r4)
            int r11 = r11 + 1
            goto L_0x040c
        L_0x041a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.b(android.view.View, android.view.View, boolean, boolean):android.animation.AnimatorSet");
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void a(CoordinatorLayout.f fVar) {
        if (fVar.f46h == 0) {
            fVar.f46h = 80;
        }
    }

    public final float a(View view, View view2, i iVar) {
        float f2;
        float f3;
        float f4;
        RectF rectF = this.f144d;
        RectF rectF2 = this.f145e;
        a(view, rectF);
        a(view2, rectF2);
        int i2 = iVar.a & 7;
        if (i2 == 1) {
            f4 = rectF2.centerX();
            f3 = rectF.centerX();
        } else if (i2 == 3) {
            f4 = rectF2.left;
            f3 = rectF.left;
        } else if (i2 != 5) {
            f2 = 0.0f;
            return f2 + iVar.b;
        } else {
            f4 = rectF2.right;
            f3 = rectF.right;
        }
        f2 = f4 - f3;
        return f2 + iVar.b;
    }

    public final void a(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, (float) view.getWidth(), (float) view.getHeight());
        int[] iArr = this.f146f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo((float) iArr[0], (float) iArr[1]);
        rectF.offset((float) ((int) (-view.getTranslationX())), (float) ((int) (-view.getTranslationY())));
    }

    public final ViewGroup a(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    public final float b(View view, View view2, i iVar) {
        float f2;
        float f3;
        float f4;
        RectF rectF = this.f144d;
        RectF rectF2 = this.f145e;
        a(view, rectF);
        a(view2, rectF2);
        int i2 = iVar.a & 112;
        if (i2 == 16) {
            f4 = rectF2.centerY();
            f3 = rectF.centerY();
        } else if (i2 == 48) {
            f4 = rectF2.top;
            f3 = rectF.top;
        } else if (i2 != 80) {
            f2 = 0.0f;
            return f2 + iVar.f1236c;
        } else {
            f4 = rectF2.bottom;
            f3 = rectF.bottom;
        }
        f2 = f4 - f3;
        return f2 + iVar.f1236c;
    }
}
