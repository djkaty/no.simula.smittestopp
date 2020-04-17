package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import d.g.a.h.d;
import d.g.a.h.e;
import d.g.a.h.g;
import d.g.b.b;
import d.g.b.c;
import d.g.b.f;
import java.util.ArrayList;
import java.util.HashMap;

public class ConstraintLayout extends ViewGroup {
    public e A = new e();
    public int B = 0;
    public int C = 0;
    public int D = Integer.MAX_VALUE;
    public int E = Integer.MAX_VALUE;
    public boolean F = true;
    public int G = 7;
    public c H = null;
    public int I = -1;
    public HashMap<String, Integer> J = new HashMap<>();
    public int K = -1;
    public int L = -1;
    public SparseArray<View> x = new SparseArray<>();
    public ArrayList<b> y = new ArrayList<>(4);
    public final ArrayList<d> z = new ArrayList<>(100);

    public ConstraintLayout(Context context) {
        super(context);
        a((AttributeSet) null);
    }

    public void a(int i2, Object obj, Object obj2) {
        if (i2 == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.J == null) {
                this.J = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            if (indexOf != -1) {
                str = str.substring(indexOf + 1);
            }
            this.J.put(str, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
    }

    /* JADX WARNING: Removed duplicated region for block: B:109:0x01e0  */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x0231  */
    /* JADX WARNING: Removed duplicated region for block: B:142:0x0264  */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x0268  */
    /* JADX WARNING: Removed duplicated region for block: B:147:0x026d  */
    /* JADX WARNING: Removed duplicated region for block: B:148:0x0275  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x027d  */
    /* JADX WARNING: Removed duplicated region for block: B:151:0x0285  */
    /* JADX WARNING: Removed duplicated region for block: B:154:0x0291  */
    /* JADX WARNING: Removed duplicated region for block: B:157:0x029b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(int r24, int r25) {
        /*
            r23 = this;
            r0 = r23
            r1 = r24
            r2 = r25
            int r3 = r23.getPaddingTop()
            int r4 = r23.getPaddingBottom()
            int r4 = r4 + r3
            int r3 = r23.getPaddingLeft()
            int r5 = r23.getPaddingRight()
            int r5 = r5 + r3
            int r3 = r23.getChildCount()
            r7 = 0
        L_0x001d:
            r8 = 8
            r9 = -1
            r10 = -2
            if (r7 >= r3) goto L_0x00b2
            android.view.View r12 = r0.getChildAt(r7)
            int r13 = r12.getVisibility()
            if (r13 != r8) goto L_0x002f
            goto L_0x00ae
        L_0x002f:
            android.view.ViewGroup$LayoutParams r8 = r12.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r8 = (androidx.constraintlayout.widget.ConstraintLayout.a) r8
            d.g.a.h.d r13 = r8.k0
            boolean r14 = r8.X
            if (r14 != 0) goto L_0x00ae
            boolean r14 = r8.Y
            if (r14 == 0) goto L_0x0041
            goto L_0x00ae
        L_0x0041:
            int r14 = r12.getVisibility()
            r13.Y = r14
            int r14 = r8.width
            int r15 = r8.height
            if (r14 == 0) goto L_0x00a0
            if (r15 != 0) goto L_0x0050
            goto L_0x00a0
        L_0x0050:
            if (r14 != r10) goto L_0x0055
            r16 = 1
            goto L_0x0057
        L_0x0055:
            r16 = 0
        L_0x0057:
            int r14 = android.view.ViewGroup.getChildMeasureSpec(r1, r5, r14)
            if (r15 != r10) goto L_0x005f
            r11 = 1
            goto L_0x0060
        L_0x005f:
            r11 = 0
        L_0x0060:
            int r10 = android.view.ViewGroup.getChildMeasureSpec(r2, r4, r15)
            r12.measure(r14, r10)
            int r10 = r12.getMeasuredWidth()
            int r14 = r12.getMeasuredHeight()
            r13.f(r10)
            r13.e(r14)
            if (r16 == 0) goto L_0x0079
            r13.T = r10
        L_0x0079:
            if (r11 == 0) goto L_0x007d
            r13.U = r14
        L_0x007d:
            boolean r11 = r8.W
            if (r11 == 0) goto L_0x0089
            int r11 = r12.getBaseline()
            if (r11 == r9) goto L_0x0089
            r13.Q = r11
        L_0x0089:
            boolean r9 = r8.U
            if (r9 == 0) goto L_0x00ae
            boolean r8 = r8.V
            if (r8 == 0) goto L_0x00ae
            d.g.a.h.k r8 = r13.g()
            r8.a(r10)
            d.g.a.h.k r8 = r13.f()
            r8.a(r14)
            goto L_0x00ae
        L_0x00a0:
            d.g.a.h.k r8 = r13.g()
            r8.b()
            d.g.a.h.k r8 = r13.f()
            r8.b()
        L_0x00ae:
            int r7 = r7 + 1
            goto L_0x001d
        L_0x00b2:
            d.g.a.h.e r7 = r0.A
            r7.r()
            r7 = 0
        L_0x00b8:
            if (r7 >= r3) goto L_0x02b2
            android.view.View r12 = r0.getChildAt(r7)
            int r13 = r12.getVisibility()
            if (r13 != r8) goto L_0x00c6
            goto L_0x029d
        L_0x00c6:
            android.view.ViewGroup$LayoutParams r13 = r12.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r13 = (androidx.constraintlayout.widget.ConstraintLayout.a) r13
            d.g.a.h.d r14 = r13.k0
            boolean r15 = r13.X
            if (r15 != 0) goto L_0x029d
            boolean r15 = r13.Y
            if (r15 == 0) goto L_0x00d8
            goto L_0x029d
        L_0x00d8:
            int r15 = r12.getVisibility()
            r14.Y = r15
            int r15 = r13.width
            int r8 = r13.height
            if (r15 == 0) goto L_0x00e8
            if (r8 == 0) goto L_0x00e8
            goto L_0x029d
        L_0x00e8:
            d.g.a.h.c$c r11 = d.g.a.h.c.C0020c.LEFT
            d.g.a.h.c r11 = r14.a((d.g.a.h.c.C0020c) r11)
            d.g.a.h.j r11 = r11.a
            d.g.a.h.c$c r9 = d.g.a.h.c.C0020c.RIGHT
            d.g.a.h.c r9 = r14.a((d.g.a.h.c.C0020c) r9)
            d.g.a.h.j r9 = r9.a
            d.g.a.h.c$c r10 = d.g.a.h.c.C0020c.LEFT
            d.g.a.h.c r10 = r14.a((d.g.a.h.c.C0020c) r10)
            d.g.a.h.c r10 = r10.f477d
            if (r10 == 0) goto L_0x010e
            d.g.a.h.c$c r10 = d.g.a.h.c.C0020c.RIGHT
            d.g.a.h.c r10 = r14.a((d.g.a.h.c.C0020c) r10)
            d.g.a.h.c r10 = r10.f477d
            if (r10 == 0) goto L_0x010e
            r10 = 1
            goto L_0x010f
        L_0x010e:
            r10 = 0
        L_0x010f:
            d.g.a.h.c$c r6 = d.g.a.h.c.C0020c.TOP
            d.g.a.h.c r6 = r14.a((d.g.a.h.c.C0020c) r6)
            d.g.a.h.j r6 = r6.a
            r18 = r3
            d.g.a.h.c$c r3 = d.g.a.h.c.C0020c.BOTTOM
            d.g.a.h.c r3 = r14.a((d.g.a.h.c.C0020c) r3)
            d.g.a.h.j r3 = r3.a
            r19 = r7
            d.g.a.h.c$c r7 = d.g.a.h.c.C0020c.TOP
            d.g.a.h.c r7 = r14.a((d.g.a.h.c.C0020c) r7)
            d.g.a.h.c r7 = r7.f477d
            if (r7 == 0) goto L_0x0139
            d.g.a.h.c$c r7 = d.g.a.h.c.C0020c.BOTTOM
            d.g.a.h.c r7 = r14.a((d.g.a.h.c.C0020c) r7)
            d.g.a.h.c r7 = r7.f477d
            if (r7 == 0) goto L_0x0139
            r7 = 1
            goto L_0x013a
        L_0x0139:
            r7 = 0
        L_0x013a:
            if (r15 != 0) goto L_0x0144
            if (r8 != 0) goto L_0x0144
            if (r10 == 0) goto L_0x0144
            if (r7 == 0) goto L_0x0144
            goto L_0x02a1
        L_0x0144:
            r20 = r13
            d.g.a.h.e r13 = r0.A
            d.g.a.h.d$a r13 = r13.e()
            r21 = r12
            d.g.a.h.d$a r12 = d.g.a.h.d.a.WRAP_CONTENT
            if (r13 == r12) goto L_0x0154
            r12 = 1
            goto L_0x0155
        L_0x0154:
            r12 = 0
        L_0x0155:
            d.g.a.h.e r13 = r0.A
            d.g.a.h.d$a r13 = r13.h()
            d.g.a.h.d$a r0 = d.g.a.h.d.a.WRAP_CONTENT
            if (r13 == r0) goto L_0x0161
            r0 = 1
            goto L_0x0162
        L_0x0161:
            r0 = 0
        L_0x0162:
            if (r12 != 0) goto L_0x016b
            d.g.a.h.k r13 = r14.g()
            r13.b()
        L_0x016b:
            if (r0 != 0) goto L_0x0174
            d.g.a.h.k r13 = r14.f()
            r13.b()
        L_0x0174:
            r13 = 0
            if (r15 != 0) goto L_0x01c8
            if (r12 == 0) goto L_0x01be
            int r15 = r14.f485e
            if (r15 != 0) goto L_0x0197
            float r15 = r14.G
            int r15 = (r15 > r13 ? 1 : (r15 == r13 ? 0 : -1))
            if (r15 != 0) goto L_0x0197
            int r15 = r14.f488h
            if (r15 != 0) goto L_0x0197
            int r15 = r14.f489i
            if (r15 != 0) goto L_0x0197
            d.g.a.h.d$a[] r15 = r14.C
            r17 = 0
            r15 = r15[r17]
            d.g.a.h.d$a r13 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r15 != r13) goto L_0x0199
            r13 = 1
            goto L_0x019a
        L_0x0197:
            r17 = 0
        L_0x0199:
            r13 = 0
        L_0x019a:
            if (r13 == 0) goto L_0x01c0
            if (r10 == 0) goto L_0x01c0
            boolean r10 = r11.c()
            if (r10 == 0) goto L_0x01c0
            boolean r10 = r9.c()
            if (r10 == 0) goto L_0x01c0
            float r9 = r9.f506g
            float r10 = r11.f506g
            float r9 = r9 - r10
            int r9 = (int) r9
            d.g.a.h.k r10 = r14.g()
            r10.a(r9)
            int r9 = android.view.ViewGroup.getChildMeasureSpec(r1, r5, r9)
            r11 = r9
            r9 = -2
            goto L_0x01d2
        L_0x01be:
            r17 = 0
        L_0x01c0:
            r9 = -2
            int r10 = android.view.ViewGroup.getChildMeasureSpec(r1, r5, r9)
            r9 = 1
            r12 = 0
            goto L_0x01de
        L_0x01c8:
            r9 = -2
            r10 = -1
            r17 = 0
            if (r15 != r10) goto L_0x01d5
            int r11 = android.view.ViewGroup.getChildMeasureSpec(r1, r5, r10)
        L_0x01d2:
            r10 = r11
            r9 = 0
            goto L_0x01de
        L_0x01d5:
            if (r15 != r9) goto L_0x01d9
            r9 = 1
            goto L_0x01da
        L_0x01d9:
            r9 = 0
        L_0x01da:
            int r10 = android.view.ViewGroup.getChildMeasureSpec(r1, r5, r15)
        L_0x01de:
            if (r8 != 0) goto L_0x0231
            if (r0 == 0) goto L_0x0226
            int r8 = r14.f486f
            if (r8 != 0) goto L_0x0200
            float r8 = r14.G
            r11 = 0
            int r8 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r8 != 0) goto L_0x0200
            int r8 = r14.f491k
            if (r8 != 0) goto L_0x0200
            int r8 = r14.f492l
            if (r8 != 0) goto L_0x0200
            d.g.a.h.d$a[] r8 = r14.C
            r11 = 1
            r8 = r8[r11]
            d.g.a.h.d$a r13 = d.g.a.h.d.a.MATCH_CONSTRAINT
            if (r8 != r13) goto L_0x0201
            r8 = 1
            goto L_0x0202
        L_0x0200:
            r11 = 1
        L_0x0201:
            r8 = 0
        L_0x0202:
            if (r8 == 0) goto L_0x0227
            if (r7 == 0) goto L_0x0227
            boolean r7 = r6.c()
            if (r7 == 0) goto L_0x0227
            boolean r7 = r3.c()
            if (r7 == 0) goto L_0x0227
            float r3 = r3.f506g
            float r6 = r6.f506g
            float r3 = r3 - r6
            int r3 = (int) r3
            d.g.a.h.k r6 = r14.f()
            r6.a(r3)
            int r3 = android.view.ViewGroup.getChildMeasureSpec(r2, r4, r3)
            r7 = r3
            r3 = -2
            goto L_0x023a
        L_0x0226:
            r11 = 1
        L_0x0227:
            r3 = -2
            int r0 = android.view.ViewGroup.getChildMeasureSpec(r2, r4, r3)
            r8 = r21
            r6 = 0
            r7 = 1
            goto L_0x0251
        L_0x0231:
            r3 = -2
            r6 = -1
            r11 = 1
            if (r8 != r6) goto L_0x0240
            int r7 = android.view.ViewGroup.getChildMeasureSpec(r2, r4, r6)
        L_0x023a:
            r6 = r0
            r0 = r7
            r8 = r21
            r7 = 0
            goto L_0x0251
        L_0x0240:
            if (r8 != r3) goto L_0x0244
            r6 = 1
            goto L_0x0245
        L_0x0244:
            r6 = 0
        L_0x0245:
            int r7 = android.view.ViewGroup.getChildMeasureSpec(r2, r4, r8)
            r8 = r21
            r22 = r6
            r6 = r0
            r0 = r7
            r7 = r22
        L_0x0251:
            r8.measure(r10, r0)
            int r0 = r8.getMeasuredWidth()
            int r10 = r8.getMeasuredHeight()
            r14.f(r0)
            r14.e(r10)
            if (r9 == 0) goto L_0x0266
            r14.T = r0
        L_0x0266:
            if (r7 == 0) goto L_0x026a
            r14.U = r10
        L_0x026a:
            r7 = 2
            if (r12 == 0) goto L_0x0275
            d.g.a.h.k r9 = r14.g()
            r9.a(r0)
            goto L_0x027b
        L_0x0275:
            d.g.a.h.k r0 = r14.g()
            r0.b = r7
        L_0x027b:
            if (r6 == 0) goto L_0x0285
            d.g.a.h.k r0 = r14.f()
            r0.a(r10)
            goto L_0x028b
        L_0x0285:
            d.g.a.h.k r0 = r14.f()
            r0.b = r7
        L_0x028b:
            r13 = r20
            boolean r0 = r13.W
            if (r0 == 0) goto L_0x029b
            int r0 = r8.getBaseline()
            r6 = -1
            if (r0 == r6) goto L_0x02a6
            r14.Q = r0
            goto L_0x02a6
        L_0x029b:
            r6 = -1
            goto L_0x02a6
        L_0x029d:
            r18 = r3
            r19 = r7
        L_0x02a1:
            r3 = -2
            r6 = -1
            r11 = 1
            r17 = 0
        L_0x02a6:
            int r7 = r19 + 1
            r3 = r18
            r8 = 8
            r9 = -1
            r10 = -2
            r0 = r23
            goto L_0x00b8
        L_0x02b2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.b(int, int):void");
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public void dispatchDraw(Canvas canvas) {
        Object tag;
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = (float) getWidth();
            float height = (float) getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (!(childAt.getVisibility() == 8 || (tag = childAt.getTag()) == null || !(tag instanceof String))) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((((float) parseInt) / 1080.0f) * width);
                        int i4 = (int) ((((float) parseInt2) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f2 = (float) i3;
                        float f3 = (float) (i3 + ((int) ((((float) parseInt3) / 1080.0f) * width)));
                        Canvas canvas2 = canvas;
                        float f4 = (float) i4;
                        float f5 = f2;
                        float f6 = f2;
                        float f7 = f4;
                        Paint paint2 = paint;
                        float f8 = f3;
                        Paint paint3 = paint2;
                        canvas2.drawLine(f5, f7, f8, f4, paint3);
                        float parseInt4 = (float) (i4 + ((int) ((((float) Integer.parseInt(split[3])) / 1920.0f) * height)));
                        float f9 = f3;
                        float f10 = parseInt4;
                        canvas2.drawLine(f9, f7, f8, f10, paint3);
                        float f11 = parseInt4;
                        float f12 = f6;
                        canvas2.drawLine(f9, f11, f12, f10, paint3);
                        float f13 = f6;
                        canvas2.drawLine(f13, f11, f12, f4, paint3);
                        Paint paint4 = paint2;
                        paint4.setColor(-16711936);
                        Paint paint5 = paint4;
                        float f14 = f3;
                        Paint paint6 = paint5;
                        canvas2.drawLine(f13, f4, f14, parseInt4, paint6);
                        canvas2.drawLine(f13, parseInt4, f14, f4, paint6);
                    }
                }
            }
        }
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public int getMaxHeight() {
        return this.E;
    }

    public int getMaxWidth() {
        return this.D;
    }

    public int getMinHeight() {
        return this.C;
    }

    public int getMinWidth() {
        return this.B;
    }

    public int getOptimizationLevel() {
        return this.A.C0;
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            a aVar = (a) childAt.getLayoutParams();
            d dVar = aVar.k0;
            if ((childAt.getVisibility() != 8 || aVar.X || aVar.Y || isInEditMode) && !aVar.Z) {
                int i8 = dVar.M + dVar.O;
                int i9 = dVar.N + dVar.P;
                int i10 = dVar.i() + i8;
                int d2 = dVar.d() + i9;
                childAt.layout(i8, i9, i10, d2);
                if ((childAt instanceof f) && (content = ((f) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(i8, i9, i10, d2);
                }
            }
        }
        int size = this.y.size();
        if (size > 0) {
            while (i6 < size) {
                if (this.y.get(i6) != null) {
                    i6++;
                } else {
                    throw null;
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:224:0x04e3  */
    /* JADX WARNING: Removed duplicated region for block: B:227:0x04f9 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:233:0x0515  */
    /* JADX WARNING: Removed duplicated region for block: B:236:0x052d  */
    /* JADX WARNING: Removed duplicated region for block: B:243:0x054e  */
    /* JADX WARNING: Removed duplicated region for block: B:246:0x0566  */
    /* JADX WARNING: Removed duplicated region for block: B:253:0x0587  */
    /* JADX WARNING: Removed duplicated region for block: B:333:0x0709  */
    /* JADX WARNING: Removed duplicated region for block: B:435:0x08de  */
    /* JADX WARNING: Removed duplicated region for block: B:438:0x08f7  */
    /* JADX WARNING: Removed duplicated region for block: B:537:0x0aeb  */
    /* JADX WARNING: Removed duplicated region for block: B:540:0x0b24  */
    /* JADX WARNING: Removed duplicated region for block: B:543:0x0b2b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r40, int r41) {
        /*
            r39 = this;
            r0 = r39
            r1 = r40
            r2 = r41
            java.lang.System.currentTimeMillis()
            int r3 = android.view.View.MeasureSpec.getMode(r40)
            int r4 = android.view.View.MeasureSpec.getSize(r40)
            int r5 = android.view.View.MeasureSpec.getMode(r41)
            int r6 = android.view.View.MeasureSpec.getSize(r41)
            int r7 = r39.getPaddingLeft()
            int r8 = r39.getPaddingTop()
            d.g.a.h.e r9 = r0.A
            r9.I = r7
            r9.J = r8
            int r10 = r0.D
            int[] r11 = r9.q
            r12 = 0
            r11[r12] = r10
            int r10 = r0.E
            r13 = 1
            r11[r13] = r10
            int r10 = r39.getLayoutDirection()
            if (r10 != r13) goto L_0x003b
            r10 = 1
            goto L_0x003c
        L_0x003b:
            r10 = 0
        L_0x003c:
            r9.l0 = r10
            int r9 = android.view.View.MeasureSpec.getMode(r40)
            int r10 = android.view.View.MeasureSpec.getSize(r40)
            int r11 = android.view.View.MeasureSpec.getMode(r41)
            int r14 = android.view.View.MeasureSpec.getSize(r41)
            int r15 = r39.getPaddingTop()
            int r16 = r39.getPaddingBottom()
            int r16 = r16 + r15
            int r15 = r39.getPaddingLeft()
            int r17 = r39.getPaddingRight()
            int r17 = r17 + r15
            d.g.a.h.d$a r15 = d.g.a.h.d.a.FIXED
            r39.getLayoutParams()
            r13 = -2147483648(0xffffffff80000000, float:-0.0)
            r12 = 1073741824(0x40000000, float:2.0)
            if (r9 == r13) goto L_0x0081
            if (r9 == 0) goto L_0x007d
            if (r9 == r12) goto L_0x0073
            r9 = r15
            goto L_0x007f
        L_0x0073:
            int r9 = r0.D
            int r9 = java.lang.Math.min(r9, r10)
            int r10 = r9 - r17
            r9 = r15
            goto L_0x0083
        L_0x007d:
            d.g.a.h.d$a r9 = d.g.a.h.d.a.WRAP_CONTENT
        L_0x007f:
            r10 = 0
            goto L_0x0083
        L_0x0081:
            d.g.a.h.d$a r9 = d.g.a.h.d.a.WRAP_CONTENT
        L_0x0083:
            if (r11 == r13) goto L_0x0098
            if (r11 == 0) goto L_0x0093
            if (r11 == r12) goto L_0x008a
            goto L_0x0096
        L_0x008a:
            int r11 = r0.E
            int r11 = java.lang.Math.min(r11, r14)
            int r14 = r11 - r16
            goto L_0x009a
        L_0x0093:
            d.g.a.h.d$a r11 = d.g.a.h.d.a.WRAP_CONTENT
            r15 = r11
        L_0x0096:
            r14 = 0
            goto L_0x009a
        L_0x0098:
            d.g.a.h.d$a r15 = d.g.a.h.d.a.WRAP_CONTENT
        L_0x009a:
            d.g.a.h.e r11 = r0.A
            r12 = 0
            r11.R = r12
            r11.S = r12
            r11.a((d.g.a.h.d.a) r9)
            d.g.a.h.e r9 = r0.A
            r9.f(r10)
            d.g.a.h.e r9 = r0.A
            r9.b((d.g.a.h.d.a) r15)
            d.g.a.h.e r9 = r0.A
            r9.e(r14)
            d.g.a.h.e r9 = r0.A
            int r10 = r0.B
            int r11 = r39.getPaddingLeft()
            int r10 = r10 - r11
            int r11 = r39.getPaddingRight()
            int r10 = r10 - r11
            if (r10 >= 0) goto L_0x00c7
            r11 = 0
            r9.R = r11
            goto L_0x00ca
        L_0x00c7:
            r11 = 0
            r9.R = r10
        L_0x00ca:
            d.g.a.h.e r9 = r0.A
            int r10 = r0.C
            int r12 = r39.getPaddingTop()
            int r10 = r10 - r12
            int r12 = r39.getPaddingBottom()
            int r10 = r10 - r12
            if (r10 >= 0) goto L_0x00dd
            r9.S = r11
            goto L_0x00df
        L_0x00dd:
            r9.S = r10
        L_0x00df:
            d.g.a.h.e r9 = r0.A
            int r9 = r9.i()
            d.g.a.h.e r10 = r0.A
            int r10 = r10.d()
            boolean r11 = r0.F
            if (r11 == 0) goto L_0x0771
            r11 = 0
            r0.F = r11
            int r11 = r39.getChildCount()
            r13 = 0
        L_0x00f7:
            if (r13 >= r11) goto L_0x0108
            android.view.View r18 = r0.getChildAt(r13)
            boolean r18 = r18.isLayoutRequested()
            if (r18 == 0) goto L_0x0105
            r11 = 1
            goto L_0x0109
        L_0x0105:
            int r13 = r13 + 1
            goto L_0x00f7
        L_0x0108:
            r11 = 0
        L_0x0109:
            if (r11 == 0) goto L_0x0763
            java.util.ArrayList<d.g.a.h.d> r11 = r0.z
            r11.clear()
            boolean r11 = r39.isInEditMode()
            int r13 = r39.getChildCount()
            if (r11 == 0) goto L_0x0157
            r12 = 0
        L_0x011b:
            if (r12 >= r13) goto L_0x0157
            android.view.View r19 = r0.getChildAt(r12)
            android.content.res.Resources r14 = r39.getResources()     // Catch:{ NotFoundException -> 0x0152 }
            int r15 = r19.getId()     // Catch:{ NotFoundException -> 0x0152 }
            java.lang.String r14 = r14.getResourceName(r15)     // Catch:{ NotFoundException -> 0x0152 }
            int r15 = r19.getId()     // Catch:{ NotFoundException -> 0x0152 }
            java.lang.Integer r15 = java.lang.Integer.valueOf(r15)     // Catch:{ NotFoundException -> 0x0152 }
            r2 = 0
            r0.a(r2, r14, r15)     // Catch:{ NotFoundException -> 0x0152 }
            r2 = 47
            int r2 = r14.indexOf(r2)     // Catch:{ NotFoundException -> 0x0152 }
            r15 = -1
            if (r2 == r15) goto L_0x0148
            int r2 = r2 + 1
            java.lang.String r14 = r14.substring(r2)     // Catch:{ NotFoundException -> 0x0152 }
        L_0x0148:
            int r2 = r19.getId()     // Catch:{ NotFoundException -> 0x0152 }
            d.g.a.h.d r2 = r0.a((int) r2)     // Catch:{ NotFoundException -> 0x0152 }
            r2.Z = r14     // Catch:{ NotFoundException -> 0x0152 }
        L_0x0152:
            int r12 = r12 + 1
            r2 = r41
            goto L_0x011b
        L_0x0157:
            r2 = 0
        L_0x0158:
            if (r2 >= r13) goto L_0x016b
            android.view.View r12 = r0.getChildAt(r2)
            d.g.a.h.d r12 = r0.a((android.view.View) r12)
            if (r12 != 0) goto L_0x0165
            goto L_0x0168
        L_0x0165:
            r12.k()
        L_0x0168:
            int r2 = r2 + 1
            goto L_0x0158
        L_0x016b:
            int r2 = r0.I
            r12 = -1
            if (r2 == r12) goto L_0x018e
            r2 = 0
        L_0x0171:
            if (r2 >= r13) goto L_0x018e
            android.view.View r12 = r0.getChildAt(r2)
            int r14 = r12.getId()
            int r15 = r0.I
            if (r14 != r15) goto L_0x018b
            boolean r14 = r12 instanceof d.g.b.d
            if (r14 == 0) goto L_0x018b
            d.g.b.d r12 = (d.g.b.d) r12
            d.g.b.c r12 = r12.getConstraintSet()
            r0.H = r12
        L_0x018b:
            int r2 = r2 + 1
            goto L_0x0171
        L_0x018e:
            d.g.b.c r2 = r0.H
            if (r2 == 0) goto L_0x030b
            int r12 = r39.getChildCount()
            java.util.HashSet r14 = new java.util.HashSet
            java.util.HashMap<java.lang.Integer, d.g.b.c$a> r15 = r2.a
            java.util.Set r15 = r15.keySet()
            r14.<init>(r15)
            r15 = 0
        L_0x01a2:
            if (r15 >= r12) goto L_0x028c
            r19 = r12
            android.view.View r12 = r0.getChildAt(r15)
            int r1 = r12.getId()
            r20 = r7
            r7 = -1
            if (r1 == r7) goto L_0x0284
            java.util.HashMap<java.lang.Integer, d.g.b.c$a> r7 = r2.a
            r21 = r8
            java.lang.Integer r8 = java.lang.Integer.valueOf(r1)
            boolean r7 = r7.containsKey(r8)
            if (r7 == 0) goto L_0x0270
            java.lang.Integer r7 = java.lang.Integer.valueOf(r1)
            r14.remove(r7)
            java.util.HashMap<java.lang.Integer, d.g.b.c$a> r7 = r2.a
            java.lang.Integer r8 = java.lang.Integer.valueOf(r1)
            java.lang.Object r7 = r7.get(r8)
            d.g.b.c$a r7 = (d.g.b.c.a) r7
            boolean r8 = r12 instanceof d.g.b.a
            if (r8 == 0) goto L_0x01dc
            r8 = 1
            r7.t0 = r8
            goto L_0x01dd
        L_0x01dc:
            r8 = 1
        L_0x01dd:
            r22 = r6
            int r6 = r7.t0
            r23 = r5
            r5 = -1
            if (r6 == r5) goto L_0x020e
            if (r6 == r8) goto L_0x01e9
            goto L_0x020e
        L_0x01e9:
            r5 = r12
            d.g.b.a r5 = (d.g.b.a) r5
            r5.setId(r1)
            int r1 = r7.s0
            r5.setType(r1)
            boolean r1 = r7.r0
            r5.setAllowsGoneWidget(r1)
            int[] r1 = r7.u0
            if (r1 == 0) goto L_0x0201
            r5.setReferencedIds(r1)
            goto L_0x020e
        L_0x0201:
            java.lang.String r1 = r7.v0
            if (r1 == 0) goto L_0x020e
            int[] r1 = r2.a((android.view.View) r5, (java.lang.String) r1)
            r7.u0 = r1
            r5.setReferencedIds(r1)
        L_0x020e:
            android.view.ViewGroup$LayoutParams r1 = r12.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r1 = (androidx.constraintlayout.widget.ConstraintLayout.a) r1
            r7.a(r1)
            r12.setLayoutParams(r1)
            int r1 = r7.J
            r12.setVisibility(r1)
            float r1 = r7.U
            r12.setAlpha(r1)
            float r1 = r7.X
            r12.setRotation(r1)
            float r1 = r7.Y
            r12.setRotationX(r1)
            float r1 = r7.Z
            r12.setRotationY(r1)
            float r1 = r7.a0
            r12.setScaleX(r1)
            float r1 = r7.b0
            r12.setScaleY(r1)
            float r1 = r7.c0
            boolean r1 = java.lang.Float.isNaN(r1)
            if (r1 != 0) goto L_0x024a
            float r1 = r7.c0
            r12.setPivotX(r1)
        L_0x024a:
            float r1 = r7.d0
            boolean r1 = java.lang.Float.isNaN(r1)
            if (r1 != 0) goto L_0x0257
            float r1 = r7.d0
            r12.setPivotY(r1)
        L_0x0257:
            float r1 = r7.e0
            r12.setTranslationX(r1)
            float r1 = r7.f0
            r12.setTranslationY(r1)
            float r1 = r7.g0
            r12.setTranslationZ(r1)
            boolean r1 = r7.V
            if (r1 == 0) goto L_0x0274
            float r1 = r7.W
            r12.setElevation(r1)
            goto L_0x0274
        L_0x0270:
            r23 = r5
            r22 = r6
        L_0x0274:
            int r15 = r15 + 1
            r1 = r40
            r12 = r19
            r7 = r20
            r8 = r21
            r6 = r22
            r5 = r23
            goto L_0x01a2
        L_0x0284:
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            java.lang.String r2 = "All children of ConstraintLayout must have ids to use ConstraintSet"
            r1.<init>(r2)
            throw r1
        L_0x028c:
            r23 = r5
            r22 = r6
            r20 = r7
            r21 = r8
            java.util.Iterator r1 = r14.iterator()
        L_0x0298:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L_0x0313
            java.lang.Object r5 = r1.next()
            java.lang.Integer r5 = (java.lang.Integer) r5
            java.util.HashMap<java.lang.Integer, d.g.b.c$a> r6 = r2.a
            java.lang.Object r6 = r6.get(r5)
            d.g.b.c$a r6 = (d.g.b.c.a) r6
            int r7 = r6.t0
            r8 = -1
            if (r7 == r8) goto L_0x02ec
            r8 = 1
            if (r7 == r8) goto L_0x02b5
            goto L_0x02ec
        L_0x02b5:
            d.g.b.a r7 = new d.g.b.a
            android.content.Context r8 = r39.getContext()
            r7.<init>(r8)
            int r8 = r5.intValue()
            r7.setId(r8)
            int[] r8 = r6.u0
            if (r8 == 0) goto L_0x02cd
            r7.setReferencedIds(r8)
            goto L_0x02da
        L_0x02cd:
            java.lang.String r8 = r6.v0
            if (r8 == 0) goto L_0x02da
            int[] r8 = r2.a((android.view.View) r7, (java.lang.String) r8)
            r6.u0 = r8
            r7.setReferencedIds(r8)
        L_0x02da:
            int r8 = r6.s0
            r7.setType(r8)
            androidx.constraintlayout.widget.ConstraintLayout$a r8 = r39.generateDefaultLayoutParams()
            r7.a()
            r6.a(r8)
            r0.addView(r7, r8)
        L_0x02ec:
            boolean r7 = r6.a
            if (r7 == 0) goto L_0x0298
            d.g.b.e r7 = new d.g.b.e
            android.content.Context r8 = r39.getContext()
            r7.<init>(r8)
            int r5 = r5.intValue()
            r7.setId(r5)
            androidx.constraintlayout.widget.ConstraintLayout$a r5 = r39.generateDefaultLayoutParams()
            r6.a(r5)
            r0.addView(r7, r5)
            goto L_0x0298
        L_0x030b:
            r23 = r5
            r22 = r6
            r20 = r7
            r21 = r8
        L_0x0313:
            d.g.a.h.e r1 = r0.A
            java.util.ArrayList<d.g.a.h.d> r1 = r1.k0
            r1.clear()
            java.util.ArrayList<d.g.b.b> r1 = r0.y
            int r1 = r1.size()
            if (r1 <= 0) goto L_0x0333
            r2 = 0
        L_0x0323:
            if (r2 >= r1) goto L_0x0333
            java.util.ArrayList<d.g.b.b> r5 = r0.y
            java.lang.Object r5 = r5.get(r2)
            d.g.b.b r5 = (d.g.b.b) r5
            r5.a((androidx.constraintlayout.widget.ConstraintLayout) r0)
            int r2 = r2 + 1
            goto L_0x0323
        L_0x0333:
            r1 = 0
        L_0x0334:
            if (r1 >= r13) goto L_0x036f
            android.view.View r2 = r0.getChildAt(r1)
            boolean r5 = r2 instanceof d.g.b.f
            if (r5 == 0) goto L_0x036c
            d.g.b.f r2 = (d.g.b.f) r2
            int r5 = r2.x
            r6 = -1
            if (r5 != r6) goto L_0x0350
            boolean r5 = r2.isInEditMode()
            if (r5 != 0) goto L_0x0350
            int r5 = r2.z
            r2.setVisibility(r5)
        L_0x0350:
            int r5 = r2.x
            android.view.View r5 = r0.findViewById(r5)
            r2.y = r5
            if (r5 == 0) goto L_0x036c
            android.view.ViewGroup$LayoutParams r5 = r5.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r5 = (androidx.constraintlayout.widget.ConstraintLayout.a) r5
            r6 = 1
            r5.Z = r6
            android.view.View r5 = r2.y
            r6 = 0
            r5.setVisibility(r6)
            r2.setVisibility(r6)
        L_0x036c:
            int r1 = r1 + 1
            goto L_0x0334
        L_0x036f:
            r1 = 0
        L_0x0370:
            if (r1 >= r13) goto L_0x075e
            android.view.View r2 = r0.getChildAt(r1)
            d.g.a.h.d r5 = r0.a((android.view.View) r2)
            if (r5 != 0) goto L_0x037e
            goto L_0x0473
        L_0x037e:
            android.view.ViewGroup$LayoutParams r6 = r2.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r6 = (androidx.constraintlayout.widget.ConstraintLayout.a) r6
            r6.a()
            boolean r7 = r6.l0
            if (r7 == 0) goto L_0x038f
            r7 = 0
            r6.l0 = r7
            goto L_0x03c1
        L_0x038f:
            if (r11 == 0) goto L_0x03c1
            android.content.res.Resources r7 = r39.getResources()     // Catch:{ NotFoundException -> 0x03c0 }
            int r8 = r2.getId()     // Catch:{ NotFoundException -> 0x03c0 }
            java.lang.String r7 = r7.getResourceName(r8)     // Catch:{ NotFoundException -> 0x03c0 }
            int r8 = r2.getId()     // Catch:{ NotFoundException -> 0x03c0 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ NotFoundException -> 0x03c0 }
            r12 = 0
            r0.a(r12, r7, r8)     // Catch:{ NotFoundException -> 0x03c0 }
            java.lang.String r8 = "id/"
            int r8 = r7.indexOf(r8)     // Catch:{ NotFoundException -> 0x03c0 }
            int r8 = r8 + 3
            java.lang.String r7 = r7.substring(r8)     // Catch:{ NotFoundException -> 0x03c0 }
            int r8 = r2.getId()     // Catch:{ NotFoundException -> 0x03c0 }
            d.g.a.h.d r8 = r0.a((int) r8)     // Catch:{ NotFoundException -> 0x03c0 }
            r8.Z = r7     // Catch:{ NotFoundException -> 0x03c0 }
            goto L_0x03c1
        L_0x03c0:
        L_0x03c1:
            int r7 = r2.getVisibility()
            r5.Y = r7
            boolean r7 = r6.Z
            if (r7 == 0) goto L_0x03cf
            r7 = 8
            r5.Y = r7
        L_0x03cf:
            r5.X = r2
            d.g.a.h.e r2 = r0.A
            java.util.ArrayList<d.g.a.h.d> r7 = r2.k0
            r7.add(r5)
            d.g.a.h.d r7 = r5.D
            if (r7 == 0) goto L_0x03e6
            d.g.a.h.n r7 = (d.g.a.h.n) r7
            java.util.ArrayList<d.g.a.h.d> r7 = r7.k0
            r7.remove(r5)
            r7 = 0
            r5.D = r7
        L_0x03e6:
            r5.D = r2
            boolean r2 = r6.V
            if (r2 == 0) goto L_0x03f0
            boolean r2 = r6.U
            if (r2 != 0) goto L_0x03f5
        L_0x03f0:
            java.util.ArrayList<d.g.a.h.d> r2 = r0.z
            r2.add(r5)
        L_0x03f5:
            boolean r2 = r6.X
            if (r2 == 0) goto L_0x0429
            d.g.a.h.g r5 = (d.g.a.h.g) r5
            int r2 = r6.h0
            int r7 = r6.i0
            float r6 = r6.j0
            r8 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r12 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r12 == 0) goto L_0x0412
            if (r12 <= 0) goto L_0x0473
            r5.k0 = r6
            r12 = -1
            r5.l0 = r12
            r5.m0 = r12
            goto L_0x0473
        L_0x0412:
            r12 = -1
            if (r2 == r12) goto L_0x041e
            if (r2 <= r12) goto L_0x0473
            r5.k0 = r8
            r5.l0 = r2
            r5.m0 = r12
            goto L_0x0473
        L_0x041e:
            if (r7 == r12) goto L_0x0473
            if (r7 <= r12) goto L_0x0473
            r5.k0 = r8
            r5.l0 = r12
            r5.m0 = r7
            goto L_0x0473
        L_0x0429:
            r12 = -1
            int r2 = r6.f32d
            if (r2 != r12) goto L_0x047b
            int r2 = r6.f33e
            if (r2 != r12) goto L_0x047b
            int r2 = r6.f34f
            if (r2 != r12) goto L_0x047b
            int r2 = r6.f35g
            if (r2 != r12) goto L_0x047b
            int r2 = r6.q
            if (r2 != r12) goto L_0x047b
            int r2 = r6.p
            if (r2 != r12) goto L_0x047b
            int r2 = r6.r
            if (r2 != r12) goto L_0x047b
            int r2 = r6.s
            if (r2 != r12) goto L_0x047b
            int r2 = r6.f36h
            if (r2 != r12) goto L_0x047b
            int r2 = r6.f37i
            if (r2 != r12) goto L_0x047b
            int r2 = r6.f38j
            if (r2 != r12) goto L_0x047b
            int r2 = r6.f39k
            if (r2 != r12) goto L_0x047b
            int r2 = r6.f40l
            if (r2 != r12) goto L_0x047b
            int r2 = r6.P
            if (r2 != r12) goto L_0x047b
            int r2 = r6.Q
            if (r2 != r12) goto L_0x047b
            int r2 = r6.m
            if (r2 != r12) goto L_0x047b
            int r2 = r6.width
            if (r2 == r12) goto L_0x047b
            int r2 = r6.height
            if (r2 != r12) goto L_0x0473
            goto L_0x047b
        L_0x0473:
            r31 = r3
            r30 = r4
            r19 = r13
            goto L_0x0754
        L_0x047b:
            int r2 = r6.a0
            int r7 = r6.b0
            int r8 = r6.c0
            int r12 = r6.d0
            int r14 = r6.e0
            int r15 = r6.f0
            r19 = r13
            float r13 = r6.g0
            r30 = r4
            int r4 = r6.m
            r31 = r3
            r3 = -1
            if (r4 == r3) goto L_0x04af
            d.g.a.h.d r26 = r0.a((int) r4)
            if (r26 == 0) goto L_0x05f0
            float r2 = r6.o
            int r3 = r6.n
            d.g.a.h.c$c r27 = d.g.a.h.c.C0020c.CENTER
            r29 = 0
            r24 = r5
            r25 = r27
            r28 = r3
            r24.a(r25, r26, r27, r28, r29)
            r5.r = r2
            goto L_0x05f0
        L_0x04af:
            if (r2 == r3) goto L_0x04c8
            d.g.a.h.d r26 = r0.a((int) r2)
            if (r26 == 0) goto L_0x04c6
            d.g.a.h.c$c r27 = d.g.a.h.c.C0020c.LEFT
            int r2 = r6.leftMargin
            r24 = r5
            r25 = r27
            r28 = r2
            r29 = r14
            r24.a(r25, r26, r27, r28, r29)
        L_0x04c6:
            r2 = -1
            goto L_0x04e1
        L_0x04c8:
            r2 = -1
            if (r7 == r2) goto L_0x04e1
            d.g.a.h.d r26 = r0.a((int) r7)
            if (r26 == 0) goto L_0x04c6
            d.g.a.h.c$c r25 = d.g.a.h.c.C0020c.LEFT
            d.g.a.h.c$c r27 = d.g.a.h.c.C0020c.RIGHT
            int r2 = r6.leftMargin
            r24 = r5
            r28 = r2
            r29 = r14
            r24.a(r25, r26, r27, r28, r29)
            goto L_0x04c6
        L_0x04e1:
            if (r8 == r2) goto L_0x04f9
            d.g.a.h.d r26 = r0.a((int) r8)
            if (r26 == 0) goto L_0x0510
            d.g.a.h.c$c r25 = d.g.a.h.c.C0020c.RIGHT
            d.g.a.h.c$c r27 = d.g.a.h.c.C0020c.LEFT
            int r2 = r6.rightMargin
            r24 = r5
            r28 = r2
            r29 = r15
            r24.a(r25, r26, r27, r28, r29)
            goto L_0x0510
        L_0x04f9:
            if (r12 == r2) goto L_0x0510
            d.g.a.h.d r26 = r0.a((int) r12)
            if (r26 == 0) goto L_0x0510
            d.g.a.h.c$c r27 = d.g.a.h.c.C0020c.RIGHT
            int r2 = r6.rightMargin
            r24 = r5
            r25 = r27
            r28 = r2
            r29 = r15
            r24.a(r25, r26, r27, r28, r29)
        L_0x0510:
            int r2 = r6.f36h
            r3 = -1
            if (r2 == r3) goto L_0x052d
            d.g.a.h.d r26 = r0.a((int) r2)
            if (r26 == 0) goto L_0x0549
            d.g.a.h.c$c r27 = d.g.a.h.c.C0020c.TOP
            int r2 = r6.topMargin
            int r3 = r6.u
            r24 = r5
            r25 = r27
            r28 = r2
            r29 = r3
            r24.a(r25, r26, r27, r28, r29)
            goto L_0x0549
        L_0x052d:
            int r2 = r6.f37i
            r3 = -1
            if (r2 == r3) goto L_0x0549
            d.g.a.h.d r26 = r0.a((int) r2)
            if (r26 == 0) goto L_0x0549
            d.g.a.h.c$c r25 = d.g.a.h.c.C0020c.TOP
            d.g.a.h.c$c r27 = d.g.a.h.c.C0020c.BOTTOM
            int r2 = r6.topMargin
            int r3 = r6.u
            r24 = r5
            r28 = r2
            r29 = r3
            r24.a(r25, r26, r27, r28, r29)
        L_0x0549:
            int r2 = r6.f38j
            r3 = -1
            if (r2 == r3) goto L_0x0566
            d.g.a.h.d r26 = r0.a((int) r2)
            if (r26 == 0) goto L_0x0582
            d.g.a.h.c$c r25 = d.g.a.h.c.C0020c.BOTTOM
            d.g.a.h.c$c r27 = d.g.a.h.c.C0020c.TOP
            int r2 = r6.bottomMargin
            int r3 = r6.w
            r24 = r5
            r28 = r2
            r29 = r3
            r24.a(r25, r26, r27, r28, r29)
            goto L_0x0582
        L_0x0566:
            int r2 = r6.f39k
            r3 = -1
            if (r2 == r3) goto L_0x0582
            d.g.a.h.d r26 = r0.a((int) r2)
            if (r26 == 0) goto L_0x0582
            d.g.a.h.c$c r27 = d.g.a.h.c.C0020c.BOTTOM
            int r2 = r6.bottomMargin
            int r3 = r6.w
            r24 = r5
            r25 = r27
            r28 = r2
            r29 = r3
            r24.a(r25, r26, r27, r28, r29)
        L_0x0582:
            int r2 = r6.f40l
            r3 = -1
            if (r2 == r3) goto L_0x05d7
            android.util.SparseArray<android.view.View> r3 = r0.x
            java.lang.Object r2 = r3.get(r2)
            android.view.View r2 = (android.view.View) r2
            int r3 = r6.f40l
            d.g.a.h.d r3 = r0.a((int) r3)
            if (r3 == 0) goto L_0x05d7
            if (r2 == 0) goto L_0x05d7
            android.view.ViewGroup$LayoutParams r4 = r2.getLayoutParams()
            boolean r4 = r4 instanceof androidx.constraintlayout.widget.ConstraintLayout.a
            if (r4 == 0) goto L_0x05d7
            android.view.ViewGroup$LayoutParams r2 = r2.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r2 = (androidx.constraintlayout.widget.ConstraintLayout.a) r2
            r4 = 1
            r6.W = r4
            r2.W = r4
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.BASELINE
            d.g.a.h.c r32 = r5.a((d.g.a.h.c.C0020c) r2)
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.BASELINE
            d.g.a.h.c r33 = r3.a((d.g.a.h.c.C0020c) r2)
            r34 = 0
            r35 = -1
            d.g.a.h.c$b r36 = d.g.a.h.c.b.STRONG
            r37 = 0
            r38 = 1
            r32.a(r33, r34, r35, r36, r37, r38)
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.TOP
            d.g.a.h.c r2 = r5.a((d.g.a.h.c.C0020c) r2)
            r2.c()
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.BOTTOM
            d.g.a.h.c r2 = r5.a((d.g.a.h.c.C0020c) r2)
            r2.c()
        L_0x05d7:
            r2 = 1056964608(0x3f000000, float:0.5)
            r3 = 0
            int r4 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1))
            if (r4 < 0) goto L_0x05e4
            int r4 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r4 == 0) goto L_0x05e4
            r5.V = r13
        L_0x05e4:
            float r4 = r6.A
            int r7 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r7 < 0) goto L_0x05f0
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 == 0) goto L_0x05f0
            r5.W = r4
        L_0x05f0:
            if (r11 == 0) goto L_0x0603
            int r2 = r6.P
            r3 = -1
            if (r2 != r3) goto L_0x05fb
            int r2 = r6.Q
            if (r2 == r3) goto L_0x0603
        L_0x05fb:
            int r2 = r6.P
            int r3 = r6.Q
            r5.I = r2
            r5.J = r3
        L_0x0603:
            boolean r2 = r6.U
            if (r2 != 0) goto L_0x0630
            int r2 = r6.width
            r3 = -1
            if (r2 != r3) goto L_0x0626
            d.g.a.h.d$a r2 = d.g.a.h.d.a.MATCH_PARENT
            r5.a((d.g.a.h.d.a) r2)
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.LEFT
            d.g.a.h.c r2 = r5.a((d.g.a.h.c.C0020c) r2)
            int r3 = r6.leftMargin
            r2.f478e = r3
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.RIGHT
            d.g.a.h.c r2 = r5.a((d.g.a.h.c.C0020c) r2)
            int r3 = r6.rightMargin
            r2.f478e = r3
            goto L_0x063a
        L_0x0626:
            d.g.a.h.d$a r2 = d.g.a.h.d.a.MATCH_CONSTRAINT
            r5.a((d.g.a.h.d.a) r2)
            r2 = 0
            r5.f(r2)
            goto L_0x063a
        L_0x0630:
            d.g.a.h.d$a r2 = d.g.a.h.d.a.FIXED
            r5.a((d.g.a.h.d.a) r2)
            int r2 = r6.width
            r5.f(r2)
        L_0x063a:
            boolean r2 = r6.V
            if (r2 != 0) goto L_0x0667
            int r2 = r6.height
            r3 = -1
            if (r2 != r3) goto L_0x065d
            d.g.a.h.d$a r2 = d.g.a.h.d.a.MATCH_PARENT
            r5.b((d.g.a.h.d.a) r2)
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.TOP
            d.g.a.h.c r2 = r5.a((d.g.a.h.c.C0020c) r2)
            int r3 = r6.topMargin
            r2.f478e = r3
            d.g.a.h.c$c r2 = d.g.a.h.c.C0020c.BOTTOM
            d.g.a.h.c r2 = r5.a((d.g.a.h.c.C0020c) r2)
            int r3 = r6.bottomMargin
            r2.f478e = r3
            goto L_0x0671
        L_0x065d:
            d.g.a.h.d$a r2 = d.g.a.h.d.a.MATCH_CONSTRAINT
            r5.b((d.g.a.h.d.a) r2)
            r2 = 0
            r5.e(r2)
            goto L_0x0671
        L_0x0667:
            d.g.a.h.d$a r2 = d.g.a.h.d.a.FIXED
            r5.b((d.g.a.h.d.a) r2)
            int r2 = r6.height
            r5.e(r2)
        L_0x0671:
            java.lang.String r2 = r6.B
            if (r2 == 0) goto L_0x070d
            int r3 = r2.length()
            if (r3 != 0) goto L_0x0680
            r3 = 0
            r5.G = r3
            goto L_0x070d
        L_0x0680:
            int r3 = r2.length()
            r4 = 44
            int r4 = r2.indexOf(r4)
            if (r4 <= 0) goto L_0x06ae
            int r7 = r3 + -1
            if (r4 >= r7) goto L_0x06ae
            r7 = 0
            java.lang.String r8 = r2.substring(r7, r4)
            java.lang.String r7 = "W"
            boolean r7 = r8.equalsIgnoreCase(r7)
            if (r7 == 0) goto L_0x069f
            r7 = 0
            goto L_0x06aa
        L_0x069f:
            java.lang.String r7 = "H"
            boolean r7 = r8.equalsIgnoreCase(r7)
            if (r7 == 0) goto L_0x06a9
            r7 = 1
            goto L_0x06aa
        L_0x06a9:
            r7 = -1
        L_0x06aa:
            int r4 = r4 + 1
            r15 = r7
            goto L_0x06b0
        L_0x06ae:
            r4 = 0
            r15 = -1
        L_0x06b0:
            r7 = 58
            int r7 = r2.indexOf(r7)
            if (r7 < 0) goto L_0x06f2
            int r3 = r3 + -1
            if (r7 >= r3) goto L_0x06f2
            java.lang.String r3 = r2.substring(r4, r7)
            int r7 = r7 + 1
            java.lang.String r2 = r2.substring(r7)
            int r4 = r3.length()
            if (r4 <= 0) goto L_0x0703
            int r4 = r2.length()
            if (r4 <= 0) goto L_0x0703
            float r3 = java.lang.Float.parseFloat(r3)     // Catch:{ NumberFormatException -> 0x0703 }
            float r2 = java.lang.Float.parseFloat(r2)     // Catch:{ NumberFormatException -> 0x0703 }
            r4 = 0
            int r7 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r7 <= 0) goto L_0x0703
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 <= 0) goto L_0x0703
            r4 = 1
            if (r15 != r4) goto L_0x06ec
            float r2 = r2 / r3
            float r2 = java.lang.Math.abs(r2)     // Catch:{ NumberFormatException -> 0x0703 }
            goto L_0x0700
        L_0x06ec:
            float r3 = r3 / r2
            float r2 = java.lang.Math.abs(r3)     // Catch:{ NumberFormatException -> 0x0703 }
            goto L_0x0700
        L_0x06f2:
            java.lang.String r2 = r2.substring(r4)
            int r3 = r2.length()
            if (r3 <= 0) goto L_0x0703
            float r2 = java.lang.Float.parseFloat(r2)     // Catch:{ NumberFormatException -> 0x0703 }
        L_0x0700:
            r3 = r2
            r2 = 0
            goto L_0x0705
        L_0x0703:
            r2 = 0
            r3 = 0
        L_0x0705:
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 <= 0) goto L_0x070d
            r5.G = r3
            r5.H = r15
        L_0x070d:
            float r2 = r6.D
            float[] r3 = r5.g0
            r4 = 0
            r3[r4] = r2
            float r2 = r6.E
            r4 = 1
            r3[r4] = r2
            int r2 = r6.F
            r5.e0 = r2
            int r2 = r6.G
            r5.f0 = r2
            int r2 = r6.H
            int r3 = r6.J
            int r4 = r6.L
            float r7 = r6.N
            r5.f485e = r2
            r5.f488h = r3
            r5.f489i = r4
            r5.f490j = r7
            r3 = 2
            r4 = 1065353216(0x3f800000, float:1.0)
            int r7 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r7 >= 0) goto L_0x073c
            if (r2 != 0) goto L_0x073c
            r5.f485e = r3
        L_0x073c:
            int r2 = r6.I
            int r7 = r6.K
            int r8 = r6.M
            float r6 = r6.O
            r5.f486f = r2
            r5.f491k = r7
            r5.f492l = r8
            r5.m = r6
            int r4 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r4 >= 0) goto L_0x0754
            if (r2 != 0) goto L_0x0754
            r5.f486f = r3
        L_0x0754:
            int r1 = r1 + 1
            r13 = r19
            r4 = r30
            r3 = r31
            goto L_0x0370
        L_0x075e:
            r31 = r3
            r30 = r4
            goto L_0x076f
        L_0x0763:
            r31 = r3
            r30 = r4
            r23 = r5
            r22 = r6
            r20 = r7
            r21 = r8
        L_0x076f:
            r1 = 1
            goto L_0x077e
        L_0x0771:
            r31 = r3
            r30 = r4
            r23 = r5
            r22 = r6
            r20 = r7
            r21 = r8
            r1 = 0
        L_0x077e:
            int r2 = r0.G
            r3 = 8
            r2 = r2 & r3
            if (r2 != r3) goto L_0x0787
            r12 = 1
            goto L_0x0788
        L_0x0787:
            r12 = 0
        L_0x0788:
            if (r12 == 0) goto L_0x07ba
            d.g.a.h.e r2 = r0.A
            r2.p()
            int r3 = r2.C0
            r2.a(r3)
            d.g.a.h.e r2 = r0.A
            d.g.a.h.d$a[] r3 = r2.C
            r4 = 0
            r3 = r3[r4]
            d.g.a.h.d$a r4 = d.g.a.h.d.a.WRAP_CONTENT
            if (r3 == r4) goto L_0x07a6
            d.g.a.h.k r3 = r2.f483c
            if (r3 == 0) goto L_0x07a6
            r3.a(r9)
        L_0x07a6:
            d.g.a.h.d$a[] r3 = r2.C
            r4 = 1
            r3 = r3[r4]
            d.g.a.h.d$a r4 = d.g.a.h.d.a.WRAP_CONTENT
            if (r3 == r4) goto L_0x07b6
            d.g.a.h.k r2 = r2.f484d
            if (r2 == 0) goto L_0x07b6
            r2.a(r10)
        L_0x07b6:
            r39.b(r40, r41)
            goto L_0x07bd
        L_0x07ba:
            r39.a((int) r40, (int) r41)
        L_0x07bd:
            int r2 = r39.getChildCount()
            r3 = 0
        L_0x07c2:
            if (r3 >= r2) goto L_0x0803
            android.view.View r4 = r0.getChildAt(r3)
            boolean r5 = r4 instanceof d.g.b.f
            if (r5 == 0) goto L_0x0800
            d.g.b.f r4 = (d.g.b.f) r4
            android.view.View r5 = r4.y
            if (r5 != 0) goto L_0x07d3
            goto L_0x0800
        L_0x07d3:
            android.view.ViewGroup$LayoutParams r5 = r4.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r5 = (androidx.constraintlayout.widget.ConstraintLayout.a) r5
            android.view.View r4 = r4.y
            android.view.ViewGroup$LayoutParams r4 = r4.getLayoutParams()
            androidx.constraintlayout.widget.ConstraintLayout$a r4 = (androidx.constraintlayout.widget.ConstraintLayout.a) r4
            d.g.a.h.d r6 = r4.k0
            r7 = 0
            r6.Y = r7
            d.g.a.h.d r7 = r5.k0
            int r6 = r6.i()
            r7.f(r6)
            d.g.a.h.d r5 = r5.k0
            d.g.a.h.d r6 = r4.k0
            int r6 = r6.d()
            r5.e(r6)
            d.g.a.h.d r4 = r4.k0
            r5 = 8
            r4.Y = r5
        L_0x0800:
            int r3 = r3 + 1
            goto L_0x07c2
        L_0x0803:
            java.util.ArrayList<d.g.b.b> r2 = r0.y
            int r2 = r2.size()
            if (r2 <= 0) goto L_0x081d
            r3 = 0
        L_0x080c:
            if (r3 >= r2) goto L_0x081d
            java.util.ArrayList<d.g.b.b> r4 = r0.y
            java.lang.Object r4 = r4.get(r3)
            d.g.b.b r4 = (d.g.b.b) r4
            if (r4 == 0) goto L_0x081b
            int r3 = r3 + 1
            goto L_0x080c
        L_0x081b:
            r3 = 0
            throw r3
        L_0x081d:
            int r2 = r39.getChildCount()
            if (r2 <= 0) goto L_0x082a
            if (r1 == 0) goto L_0x082a
            d.g.a.h.e r1 = r0.A
            d.b.a.r.a((d.g.a.h.e) r1)
        L_0x082a:
            d.g.a.h.e r1 = r0.A
            boolean r2 = r1.x0
            if (r2 == 0) goto L_0x0877
            boolean r2 = r1.y0
            if (r2 == 0) goto L_0x084e
            r2 = r31
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r2 != r3) goto L_0x084b
            int r3 = r1.A0
            r4 = r30
            if (r3 >= r4) goto L_0x0843
            r1.f(r3)
        L_0x0843:
            d.g.a.h.e r1 = r0.A
            d.g.a.h.d$a r3 = d.g.a.h.d.a.FIXED
            r1.a((d.g.a.h.d.a) r3)
            goto L_0x0852
        L_0x084b:
            r4 = r30
            goto L_0x0852
        L_0x084e:
            r4 = r30
            r2 = r31
        L_0x0852:
            d.g.a.h.e r1 = r0.A
            boolean r3 = r1.z0
            if (r3 == 0) goto L_0x0872
            r3 = r23
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r3 != r5) goto L_0x086f
            int r5 = r1.B0
            r6 = r22
            if (r5 >= r6) goto L_0x0867
            r1.e(r5)
        L_0x0867:
            d.g.a.h.e r1 = r0.A
            d.g.a.h.d$a r5 = d.g.a.h.d.a.FIXED
            r1.b((d.g.a.h.d.a) r5)
            goto L_0x087f
        L_0x086f:
            r6 = r22
            goto L_0x087f
        L_0x0872:
            r6 = r22
            r3 = r23
            goto L_0x087f
        L_0x0877:
            r6 = r22
            r3 = r23
            r4 = r30
            r2 = r31
        L_0x087f:
            int r1 = r0.G
            r5 = 32
            r1 = r1 & r5
            if (r1 != r5) goto L_0x08d6
            d.g.a.h.e r1 = r0.A
            int r1 = r1.i()
            d.g.a.h.e r5 = r0.A
            int r5 = r5.d()
            int r7 = r0.K
            if (r7 == r1) goto L_0x08a3
            r7 = 1073741824(0x40000000, float:2.0)
            if (r2 != r7) goto L_0x08a5
            d.g.a.h.e r2 = r0.A
            java.util.List<d.g.a.h.f> r2 = r2.w0
            r8 = 0
            d.b.a.r.a((java.util.List<d.g.a.h.f>) r2, (int) r8, (int) r1)
            goto L_0x08a5
        L_0x08a3:
            r7 = 1073741824(0x40000000, float:2.0)
        L_0x08a5:
            int r1 = r0.L
            if (r1 == r5) goto L_0x08b3
            if (r3 != r7) goto L_0x08b3
            d.g.a.h.e r1 = r0.A
            java.util.List<d.g.a.h.f> r1 = r1.w0
            r2 = 1
            d.b.a.r.a((java.util.List<d.g.a.h.f>) r1, (int) r2, (int) r5)
        L_0x08b3:
            d.g.a.h.e r1 = r0.A
            boolean r2 = r1.y0
            if (r2 == 0) goto L_0x08c4
            int r2 = r1.A0
            if (r2 <= r4) goto L_0x08c4
            java.util.List<d.g.a.h.f> r1 = r1.w0
            r2 = 0
            d.b.a.r.a((java.util.List<d.g.a.h.f>) r1, (int) r2, (int) r4)
            goto L_0x08c5
        L_0x08c4:
            r2 = 0
        L_0x08c5:
            d.g.a.h.e r1 = r0.A
            boolean r3 = r1.z0
            if (r3 == 0) goto L_0x08d7
            int r3 = r1.B0
            if (r3 <= r6) goto L_0x08d7
            java.util.List<d.g.a.h.f> r1 = r1.w0
            r3 = 1
            d.b.a.r.a((java.util.List<d.g.a.h.f>) r1, (int) r3, (int) r6)
            goto L_0x08d8
        L_0x08d6:
            r2 = 0
        L_0x08d7:
            r3 = 1
        L_0x08d8:
            int r1 = r39.getChildCount()
            if (r1 <= 0) goto L_0x08e3
            d.g.a.h.e r1 = r0.A
            r1.o()
        L_0x08e3:
            java.util.ArrayList<d.g.a.h.d> r1 = r0.z
            int r1 = r1.size()
            int r4 = r39.getPaddingBottom()
            int r4 = r4 + r21
            int r5 = r39.getPaddingRight()
            int r5 = r5 + r20
            if (r1 <= 0) goto L_0x0aeb
            d.g.a.h.e r6 = r0.A
            d.g.a.h.d$a r6 = r6.e()
            d.g.a.h.d$a r7 = d.g.a.h.d.a.WRAP_CONTENT
            if (r6 != r7) goto L_0x0903
            r6 = 1
            goto L_0x0904
        L_0x0903:
            r6 = 0
        L_0x0904:
            d.g.a.h.e r7 = r0.A
            d.g.a.h.d$a r7 = r7.h()
            d.g.a.h.d$a r8 = d.g.a.h.d.a.WRAP_CONTENT
            if (r7 != r8) goto L_0x0910
            r7 = 1
            goto L_0x0911
        L_0x0910:
            r7 = 0
        L_0x0911:
            d.g.a.h.e r8 = r0.A
            int r8 = r8.i()
            int r11 = r0.B
            int r8 = java.lang.Math.max(r8, r11)
            d.g.a.h.e r11 = r0.A
            int r11 = r11.d()
            int r13 = r0.C
            int r11 = java.lang.Math.max(r11, r13)
            r13 = 0
            r14 = 0
            r15 = 0
        L_0x092c:
            if (r13 >= r1) goto L_0x0a52
            java.util.ArrayList<d.g.a.h.d> r2 = r0.z
            java.lang.Object r2 = r2.get(r13)
            d.g.a.h.d r2 = (d.g.a.h.d) r2
            java.lang.Object r3 = r2.X
            android.view.View r3 = (android.view.View) r3
            if (r3 != 0) goto L_0x0946
            r18 = r1
            r21 = r5
            r19 = r9
            r17 = r10
            goto L_0x0a43
        L_0x0946:
            android.view.ViewGroup$LayoutParams r17 = r3.getLayoutParams()
            r18 = r1
            r1 = r17
            androidx.constraintlayout.widget.ConstraintLayout$a r1 = (androidx.constraintlayout.widget.ConstraintLayout.a) r1
            r17 = r10
            boolean r10 = r1.Y
            if (r10 != 0) goto L_0x0a3f
            boolean r10 = r1.X
            if (r10 == 0) goto L_0x095c
            goto L_0x0a3f
        L_0x095c:
            int r10 = r3.getVisibility()
            r19 = r9
            r9 = 8
            if (r10 != r9) goto L_0x0967
            goto L_0x097d
        L_0x0967:
            if (r12 == 0) goto L_0x0981
            d.g.a.h.k r9 = r2.g()
            boolean r9 = r9.c()
            if (r9 == 0) goto L_0x0981
            d.g.a.h.k r9 = r2.f()
            boolean r9 = r9.c()
            if (r9 == 0) goto L_0x0981
        L_0x097d:
            r21 = r5
            goto L_0x0a43
        L_0x0981:
            int r9 = r1.width
            r10 = -2
            if (r9 != r10) goto L_0x0991
            boolean r10 = r1.U
            if (r10 == 0) goto L_0x0991
            r10 = r40
            int r9 = android.view.ViewGroup.getChildMeasureSpec(r10, r5, r9)
            goto L_0x099d
        L_0x0991:
            r10 = r40
            int r9 = r2.i()
            r10 = 1073741824(0x40000000, float:2.0)
            int r9 = android.view.View.MeasureSpec.makeMeasureSpec(r9, r10)
        L_0x099d:
            int r10 = r1.height
            r21 = r5
            r5 = -2
            if (r10 != r5) goto L_0x09af
            boolean r5 = r1.V
            if (r5 == 0) goto L_0x09af
            r5 = r41
            int r10 = android.view.ViewGroup.getChildMeasureSpec(r5, r4, r10)
            goto L_0x09bb
        L_0x09af:
            r5 = r41
            int r10 = r2.d()
            r5 = 1073741824(0x40000000, float:2.0)
            int r10 = android.view.View.MeasureSpec.makeMeasureSpec(r10, r5)
        L_0x09bb:
            r3.measure(r9, r10)
            int r5 = r3.getMeasuredWidth()
            int r9 = r3.getMeasuredHeight()
            int r10 = r2.i()
            if (r5 == r10) goto L_0x09f1
            r2.f(r5)
            if (r12 == 0) goto L_0x09d8
            d.g.a.h.k r10 = r2.g()
            r10.a(r5)
        L_0x09d8:
            if (r6 == 0) goto L_0x09f0
            int r5 = r2.I
            int r10 = r2.E
            int r5 = r5 + r10
            if (r5 <= r8) goto L_0x09f0
            d.g.a.h.c$c r10 = d.g.a.h.c.C0020c.RIGHT
            d.g.a.h.c r10 = r2.a((d.g.a.h.c.C0020c) r10)
            int r10 = r10.a()
            int r10 = r10 + r5
            int r8 = java.lang.Math.max(r8, r10)
        L_0x09f0:
            r14 = 1
        L_0x09f1:
            int r5 = r2.d()
            if (r9 == r5) goto L_0x0a21
            r2.e(r9)
            if (r12 == 0) goto L_0x0a03
            d.g.a.h.k r5 = r2.f()
            r5.a(r9)
        L_0x0a03:
            if (r7 == 0) goto L_0x0a20
            int r5 = r2.J
            int r9 = r2.F
            int r5 = r5 + r9
            if (r5 <= r11) goto L_0x0a20
            int r5 = r2.c()
            d.g.a.h.c$c r9 = d.g.a.h.c.C0020c.BOTTOM
            d.g.a.h.c r9 = r2.a((d.g.a.h.c.C0020c) r9)
            int r9 = r9.a()
            int r9 = r9 + r5
            int r5 = java.lang.Math.max(r11, r9)
            r11 = r5
        L_0x0a20:
            r14 = 1
        L_0x0a21:
            boolean r1 = r1.W
            if (r1 == 0) goto L_0x0a34
            int r1 = r3.getBaseline()
            r5 = -1
            if (r1 == r5) goto L_0x0a35
            int r9 = r2.Q
            if (r1 == r9) goto L_0x0a35
            r2.Q = r1
            r14 = 1
            goto L_0x0a35
        L_0x0a34:
            r5 = -1
        L_0x0a35:
            int r1 = r3.getMeasuredState()
            int r1 = android.view.ViewGroup.combineMeasuredStates(r15, r1)
            r15 = r1
            goto L_0x0a44
        L_0x0a3f:
            r21 = r5
            r19 = r9
        L_0x0a43:
            r5 = -1
        L_0x0a44:
            int r13 = r13 + 1
            r10 = r17
            r1 = r18
            r9 = r19
            r5 = r21
            r2 = 0
            r3 = 1
            goto L_0x092c
        L_0x0a52:
            r18 = r1
            r21 = r5
            r19 = r9
            r17 = r10
            if (r14 == 0) goto L_0x0a9d
            d.g.a.h.e r1 = r0.A
            r2 = r19
            r1.f(r2)
            d.g.a.h.e r1 = r0.A
            r2 = r17
            r1.e(r2)
            if (r12 == 0) goto L_0x0a71
            d.g.a.h.e r1 = r0.A
            r1.r()
        L_0x0a71:
            d.g.a.h.e r1 = r0.A
            r1.o()
            d.g.a.h.e r1 = r0.A
            int r1 = r1.i()
            if (r1 >= r8) goto L_0x0a85
            d.g.a.h.e r1 = r0.A
            r1.f(r8)
            r12 = 1
            goto L_0x0a86
        L_0x0a85:
            r12 = 0
        L_0x0a86:
            d.g.a.h.e r1 = r0.A
            int r1 = r1.d()
            if (r1 >= r11) goto L_0x0a95
            d.g.a.h.e r1 = r0.A
            r1.e(r11)
            r13 = 1
            goto L_0x0a96
        L_0x0a95:
            r13 = r12
        L_0x0a96:
            if (r13 == 0) goto L_0x0a9d
            d.g.a.h.e r1 = r0.A
            r1.o()
        L_0x0a9d:
            r1 = r18
            r12 = 0
        L_0x0aa0:
            if (r12 >= r1) goto L_0x0ae9
            java.util.ArrayList<d.g.a.h.d> r2 = r0.z
            java.lang.Object r2 = r2.get(r12)
            d.g.a.h.d r2 = (d.g.a.h.d) r2
            java.lang.Object r3 = r2.X
            android.view.View r3 = (android.view.View) r3
            if (r3 != 0) goto L_0x0ab1
            goto L_0x0ac6
        L_0x0ab1:
            int r5 = r3.getMeasuredWidth()
            int r6 = r2.i()
            if (r5 != r6) goto L_0x0acb
            int r5 = r3.getMeasuredHeight()
            int r6 = r2.d()
            if (r5 == r6) goto L_0x0ac6
            goto L_0x0acb
        L_0x0ac6:
            r6 = 8
        L_0x0ac8:
            r7 = 1073741824(0x40000000, float:2.0)
            goto L_0x0ae6
        L_0x0acb:
            int r5 = r2.Y
            r6 = 8
            if (r5 == r6) goto L_0x0ac8
            int r5 = r2.i()
            r7 = 1073741824(0x40000000, float:2.0)
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r7)
            int r2 = r2.d()
            int r2 = android.view.View.MeasureSpec.makeMeasureSpec(r2, r7)
            r3.measure(r5, r2)
        L_0x0ae6:
            int r12 = r12 + 1
            goto L_0x0aa0
        L_0x0ae9:
            r12 = r15
            goto L_0x0aee
        L_0x0aeb:
            r21 = r5
            r12 = 0
        L_0x0aee:
            d.g.a.h.e r1 = r0.A
            int r1 = r1.i()
            int r1 = r1 + r21
            d.g.a.h.e r2 = r0.A
            int r2 = r2.d()
            int r2 = r2 + r4
            r3 = r40
            int r1 = android.view.ViewGroup.resolveSizeAndState(r1, r3, r12)
            int r3 = r12 << 16
            r4 = r41
            int r2 = android.view.ViewGroup.resolveSizeAndState(r2, r4, r3)
            r3 = 16777215(0xffffff, float:2.3509886E-38)
            r1 = r1 & r3
            r2 = r2 & r3
            int r3 = r0.D
            int r1 = java.lang.Math.min(r3, r1)
            int r3 = r0.E
            int r2 = java.lang.Math.min(r3, r2)
            d.g.a.h.e r3 = r0.A
            boolean r3 = r3.E0
            r4 = 16777216(0x1000000, float:2.3509887E-38)
            if (r3 == 0) goto L_0x0b25
            r1 = r1 | r4
        L_0x0b25:
            d.g.a.h.e r3 = r0.A
            boolean r3 = r3.F0
            if (r3 == 0) goto L_0x0b2c
            r2 = r2 | r4
        L_0x0b2c:
            r0.setMeasuredDimension(r1, r2)
            r0.K = r1
            r0.L = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    public void onViewAdded(View view) {
        super.onViewAdded(view);
        d a2 = a(view);
        if ((view instanceof d.g.b.e) && !(a2 instanceof g)) {
            a aVar = (a) view.getLayoutParams();
            g gVar = new g();
            aVar.k0 = gVar;
            aVar.X = true;
            gVar.g(aVar.R);
        }
        if (view instanceof b) {
            b bVar = (b) view;
            bVar.a();
            ((a) view.getLayoutParams()).Y = true;
            if (!this.y.contains(bVar)) {
                this.y.add(bVar);
            }
        }
        this.x.put(view.getId(), view);
        this.F = true;
    }

    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.x.remove(view.getId());
        d a2 = a(view);
        this.A.k0.remove(a2);
        a2.D = null;
        this.y.remove(view);
        this.z.remove(a2);
        this.F = true;
    }

    public void removeView(View view) {
        super.removeView(view);
    }

    public void requestLayout() {
        super.requestLayout();
        this.F = true;
        this.K = -1;
        this.L = -1;
    }

    public void setConstraintSet(c cVar) {
        this.H = cVar;
    }

    public void setId(int i2) {
        this.x.remove(getId());
        super.setId(i2);
        this.x.put(getId(), this);
    }

    public void setMaxHeight(int i2) {
        if (i2 != this.E) {
            this.E = i2;
            requestLayout();
        }
    }

    public void setMaxWidth(int i2) {
        if (i2 != this.D) {
            this.D = i2;
            requestLayout();
        }
    }

    public void setMinHeight(int i2) {
        if (i2 != this.C) {
            this.C = i2;
            requestLayout();
        }
    }

    public void setMinWidth(int i2) {
        if (i2 != this.B) {
            this.B = i2;
            requestLayout();
        }
    }

    public void setOptimizationLevel(int i2) {
        this.A.C0 = i2;
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    public Object a(int i2, Object obj) {
        if (i2 != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.J;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.J.get(str);
    }

    public final void a(AttributeSet attributeSet) {
        this.A.X = this;
        this.x.put(getId(), this);
        this.H = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R$styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.B = obtainStyledAttributes.getDimensionPixelOffset(index, this.B);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.C = obtainStyledAttributes.getDimensionPixelOffset(index, this.C);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.D = obtainStyledAttributes.getDimensionPixelOffset(index, this.D);
                } else if (index == R$styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.E = obtainStyledAttributes.getDimensionPixelOffset(index, this.E);
                } else if (index == R$styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.G = obtainStyledAttributes.getInt(index, this.G);
                } else if (index == R$styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        c cVar = new c();
                        this.H = cVar;
                        cVar.a(getContext(), resourceId);
                    } catch (Resources.NotFoundException unused) {
                        this.H = null;
                    }
                    this.I = resourceId;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.A.C0 = this.G;
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(attributeSet);
    }

    public final d a(int i2) {
        if (i2 == 0) {
            return this.A;
        }
        View view = this.x.get(i2);
        if (view == null && (view = findViewById(i2)) != null && view != this && view.getParent() == this) {
            onViewAdded(view);
        }
        if (view == this) {
            return this.A;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).k0;
    }

    public final d a(View view) {
        if (view == this) {
            return this.A;
        }
        if (view == null) {
            return null;
        }
        return ((a) view.getLayoutParams()).k0;
    }

    public final void a(int i2, int i3) {
        boolean z2;
        int baseline;
        int i4;
        int i5;
        int childMeasureSpec;
        int i6 = i2;
        int i7 = i3;
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                a aVar = (a) childAt.getLayoutParams();
                d dVar = aVar.k0;
                if (!aVar.X && !aVar.Y) {
                    dVar.Y = childAt.getVisibility();
                    int i9 = aVar.width;
                    int i10 = aVar.height;
                    boolean z3 = aVar.U;
                    boolean z4 = true;
                    if (z3 || aVar.V || (!z3 && aVar.H == 1) || aVar.width == -1 || (!aVar.V && (aVar.I == 1 || aVar.height == -1))) {
                        if (i9 == 0) {
                            i4 = ViewGroup.getChildMeasureSpec(i6, paddingRight, -2);
                            z2 = true;
                        } else if (i9 == -1) {
                            i4 = ViewGroup.getChildMeasureSpec(i6, paddingRight, -1);
                            z2 = false;
                        } else {
                            z2 = i9 == -2;
                            i4 = ViewGroup.getChildMeasureSpec(i6, paddingRight, i9);
                        }
                        if (i10 == 0) {
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i7, paddingBottom, -2);
                        } else if (i10 == -1) {
                            i5 = ViewGroup.getChildMeasureSpec(i7, paddingBottom, -1);
                            z4 = false;
                            childAt.measure(i4, i5);
                            i9 = childAt.getMeasuredWidth();
                            i10 = childAt.getMeasuredHeight();
                        } else {
                            if (i10 != -2) {
                                z4 = false;
                            }
                            childMeasureSpec = ViewGroup.getChildMeasureSpec(i7, paddingBottom, i10);
                        }
                        i5 = childMeasureSpec;
                        childAt.measure(i4, i5);
                        i9 = childAt.getMeasuredWidth();
                        i10 = childAt.getMeasuredHeight();
                    } else {
                        z4 = false;
                        z2 = false;
                    }
                    dVar.f(i9);
                    dVar.e(i10);
                    if (z2) {
                        dVar.T = i9;
                    }
                    if (z4) {
                        dVar.U = i10;
                    }
                    if (aVar.W && (baseline = childAt.getBaseline()) != -1) {
                        dVar.Q = baseline;
                    }
                }
            }
        }
    }

    public static class a extends ViewGroup.MarginLayoutParams {
        public float A = 0.5f;
        public String B = null;
        public int C = 1;
        public float D = -1.0f;
        public float E = -1.0f;
        public int F = 0;
        public int G = 0;
        public int H = 0;
        public int I = 0;
        public int J = 0;
        public int K = 0;
        public int L = 0;
        public int M = 0;
        public float N = 1.0f;
        public float O = 1.0f;
        public int P = -1;
        public int Q = -1;
        public int R = -1;
        public boolean S = false;
        public boolean T = false;
        public boolean U = true;
        public boolean V = true;
        public boolean W = false;
        public boolean X = false;
        public boolean Y = false;
        public boolean Z = false;
        public int a = -1;
        public int a0 = -1;
        public int b = -1;
        public int b0 = -1;

        /* renamed from: c  reason: collision with root package name */
        public float f31c = -1.0f;
        public int c0 = -1;

        /* renamed from: d  reason: collision with root package name */
        public int f32d = -1;
        public int d0 = -1;

        /* renamed from: e  reason: collision with root package name */
        public int f33e = -1;
        public int e0 = -1;

        /* renamed from: f  reason: collision with root package name */
        public int f34f = -1;
        public int f0 = -1;

        /* renamed from: g  reason: collision with root package name */
        public int f35g = -1;
        public float g0 = 0.5f;

        /* renamed from: h  reason: collision with root package name */
        public int f36h = -1;
        public int h0;

        /* renamed from: i  reason: collision with root package name */
        public int f37i = -1;
        public int i0;

        /* renamed from: j  reason: collision with root package name */
        public int f38j = -1;
        public float j0;

        /* renamed from: k  reason: collision with root package name */
        public int f39k = -1;
        public d k0 = new d();

        /* renamed from: l  reason: collision with root package name */
        public int f40l = -1;
        public boolean l0 = false;
        public int m = -1;
        public int n = 0;
        public float o = 0.0f;
        public int p = -1;
        public int q = -1;
        public int r = -1;
        public int s = -1;
        public int t = -1;
        public int u = -1;
        public int v = -1;
        public int w = -1;
        public int x = -1;
        public int y = -1;
        public float z = 0.5f;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a$a  reason: collision with other inner class name */
        public static class C0000a {
            public static final SparseIntArray a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                a = sparseIntArray;
                sparseIntArray.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                a.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                a.append(R$styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                a.append(R$styleable.ConstraintLayout_Layout_android_orientation, 1);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                a.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                a.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                a.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                a.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                a.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                a.append(R$styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                a.append(R$styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i2;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                int i4 = C0000a.a.get(index);
                switch (i4) {
                    case 1:
                        this.R = obtainStyledAttributes.getInt(index, this.R);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.m);
                        this.m = resourceId;
                        if (resourceId != -1) {
                            break;
                        } else {
                            this.m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 3:
                        this.n = obtainStyledAttributes.getDimensionPixelSize(index, this.n);
                        break;
                    case 4:
                        float f2 = obtainStyledAttributes.getFloat(index, this.o) % 360.0f;
                        this.o = f2;
                        if (f2 >= 0.0f) {
                            break;
                        } else {
                            this.o = (360.0f - f2) % 360.0f;
                            break;
                        }
                    case 5:
                        this.a = obtainStyledAttributes.getDimensionPixelOffset(index, this.a);
                        break;
                    case 6:
                        this.b = obtainStyledAttributes.getDimensionPixelOffset(index, this.b);
                        break;
                    case 7:
                        this.f31c = obtainStyledAttributes.getFloat(index, this.f31c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f32d);
                        this.f32d = resourceId2;
                        if (resourceId2 != -1) {
                            break;
                        } else {
                            this.f32d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f33e);
                        this.f33e = resourceId3;
                        if (resourceId3 != -1) {
                            break;
                        } else {
                            this.f33e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f34f);
                        this.f34f = resourceId4;
                        if (resourceId4 != -1) {
                            break;
                        } else {
                            this.f34f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f35g);
                        this.f35g = resourceId5;
                        if (resourceId5 != -1) {
                            break;
                        } else {
                            this.f35g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f36h);
                        this.f36h = resourceId6;
                        if (resourceId6 != -1) {
                            break;
                        } else {
                            this.f36h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f37i);
                        this.f37i = resourceId7;
                        if (resourceId7 != -1) {
                            break;
                        } else {
                            this.f37i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f38j);
                        this.f38j = resourceId8;
                        if (resourceId8 != -1) {
                            break;
                        } else {
                            this.f38j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f39k);
                        this.f39k = resourceId9;
                        if (resourceId9 != -1) {
                            break;
                        } else {
                            this.f39k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f40l);
                        this.f40l = resourceId10;
                        if (resourceId10 != -1) {
                            break;
                        } else {
                            this.f40l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.p);
                        this.p = resourceId11;
                        if (resourceId11 != -1) {
                            break;
                        } else {
                            this.p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.q);
                        this.q = resourceId12;
                        if (resourceId12 != -1) {
                            break;
                        } else {
                            this.q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.r);
                        this.r = resourceId13;
                        if (resourceId13 != -1) {
                            break;
                        } else {
                            this.r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId14;
                        if (resourceId14 != -1) {
                            break;
                        } else {
                            this.s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        }
                    case 21:
                        this.t = obtainStyledAttributes.getDimensionPixelSize(index, this.t);
                        break;
                    case 22:
                        this.u = obtainStyledAttributes.getDimensionPixelSize(index, this.u);
                        break;
                    case 23:
                        this.v = obtainStyledAttributes.getDimensionPixelSize(index, this.v);
                        break;
                    case 24:
                        this.w = obtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 25:
                        this.x = obtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 26:
                        this.y = obtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 27:
                        this.S = obtainStyledAttributes.getBoolean(index, this.S);
                        break;
                    case 28:
                        this.T = obtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 29:
                        this.z = obtainStyledAttributes.getFloat(index, this.z);
                        break;
                    case 30:
                        this.A = obtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.H = i5;
                        if (i5 != 1) {
                            break;
                        } else {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        }
                    case 32:
                        int i6 = obtainStyledAttributes.getInt(index, 0);
                        this.I = i6;
                        if (i6 != 1) {
                            break;
                        } else {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        }
                    case 33:
                        try {
                            this.J = obtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            break;
                        } catch (Exception unused) {
                            if (obtainStyledAttributes.getInt(index, this.J) != -2) {
                                break;
                            } else {
                                this.J = -2;
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        } catch (Exception unused2) {
                            if (obtainStyledAttributes.getInt(index, this.L) != -2) {
                                break;
                            } else {
                                this.L = -2;
                                break;
                            }
                        }
                    case 35:
                        this.N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.N));
                        break;
                    case 36:
                        try {
                            this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        } catch (Exception unused3) {
                            if (obtainStyledAttributes.getInt(index, this.K) != -2) {
                                break;
                            } else {
                                this.K = -2;
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception unused4) {
                            if (obtainStyledAttributes.getInt(index, this.M) != -2) {
                                break;
                            } else {
                                this.M = -2;
                                break;
                            }
                        }
                    case 38:
                        this.O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.O));
                        break;
                    default:
                        switch (i4) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.B = string;
                                this.C = -1;
                                if (string == null) {
                                    break;
                                } else {
                                    int length = string.length();
                                    int indexOf = this.B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i2 = 0;
                                    } else {
                                        String substring = this.B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.C = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.C = 1;
                                        }
                                        i2 = indexOf + 1;
                                    }
                                    int indexOf2 = this.B.indexOf(58);
                                    if (indexOf2 >= 0 && indexOf2 < length - 1) {
                                        String substring2 = this.B.substring(i2, indexOf2);
                                        String substring3 = this.B.substring(indexOf2 + 1);
                                        if (substring2.length() > 0 && substring3.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring2);
                                                float parseFloat2 = Float.parseFloat(substring3);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.C != 1) {
                                                        Math.abs(parseFloat / parseFloat2);
                                                        break;
                                                    } else {
                                                        Math.abs(parseFloat2 / parseFloat);
                                                        break;
                                                    }
                                                }
                                            } catch (NumberFormatException unused5) {
                                                break;
                                            }
                                        }
                                    } else {
                                        String substring4 = this.B.substring(i2);
                                        if (substring4.length() <= 0) {
                                            break;
                                        } else {
                                            Float.parseFloat(substring4);
                                            break;
                                        }
                                    }
                                }
                                break;
                            case 45:
                                this.D = obtainStyledAttributes.getFloat(index, this.D);
                                break;
                            case 46:
                                this.E = obtainStyledAttributes.getFloat(index, this.E);
                                break;
                            case 47:
                                this.F = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.G = obtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.P = obtainStyledAttributes.getDimensionPixelOffset(index, this.P);
                                break;
                            case 50:
                                this.Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                                break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.X = false;
            this.U = true;
            this.V = true;
            if (this.width == -2 && this.S) {
                this.U = false;
                this.H = 1;
            }
            if (this.height == -2 && this.T) {
                this.V = false;
                this.I = 1;
            }
            int i2 = this.width;
            if (i2 == 0 || i2 == -1) {
                this.U = false;
                if (this.width == 0 && this.H == 1) {
                    this.width = -2;
                    this.S = true;
                }
            }
            int i3 = this.height;
            if (i3 == 0 || i3 == -1) {
                this.V = false;
                if (this.height == 0 && this.I == 1) {
                    this.height = -2;
                    this.T = true;
                }
            }
            if (this.f31c != -1.0f || this.a != -1 || this.b != -1) {
                this.X = true;
                this.U = true;
                this.V = true;
                if (!(this.k0 instanceof g)) {
                    this.k0 = new g();
                }
                ((g) this.k0).g(this.R);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x004c  */
        /* JADX WARNING: Removed duplicated region for block: B:17:0x0053  */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x005a  */
        /* JADX WARNING: Removed duplicated region for block: B:23:0x0060  */
        /* JADX WARNING: Removed duplicated region for block: B:26:0x0066  */
        /* JADX WARNING: Removed duplicated region for block: B:33:0x007c  */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x0084  */
        @android.annotation.TargetApi(17)
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void resolveLayoutDirection(int r7) {
            /*
                r6 = this;
                int r0 = r6.leftMargin
                int r1 = r6.rightMargin
                super.resolveLayoutDirection(r7)
                r7 = -1
                r6.c0 = r7
                r6.d0 = r7
                r6.a0 = r7
                r6.b0 = r7
                r6.e0 = r7
                r6.f0 = r7
                int r2 = r6.t
                r6.e0 = r2
                int r2 = r6.v
                r6.f0 = r2
                float r2 = r6.z
                r6.g0 = r2
                int r2 = r6.a
                r6.h0 = r2
                int r2 = r6.b
                r6.i0 = r2
                float r2 = r6.f31c
                r6.j0 = r2
                int r2 = r6.getLayoutDirection()
                r3 = 0
                r4 = 1
                if (r4 != r2) goto L_0x0036
                r2 = 1
                goto L_0x0037
            L_0x0036:
                r2 = 0
            L_0x0037:
                if (r2 == 0) goto L_0x009a
                int r2 = r6.p
                if (r2 == r7) goto L_0x0041
                r6.c0 = r2
            L_0x003f:
                r3 = 1
                goto L_0x0048
            L_0x0041:
                int r2 = r6.q
                if (r2 == r7) goto L_0x0048
                r6.d0 = r2
                goto L_0x003f
            L_0x0048:
                int r2 = r6.r
                if (r2 == r7) goto L_0x004f
                r6.b0 = r2
                r3 = 1
            L_0x004f:
                int r2 = r6.s
                if (r2 == r7) goto L_0x0056
                r6.a0 = r2
                r3 = 1
            L_0x0056:
                int r2 = r6.x
                if (r2 == r7) goto L_0x005c
                r6.f0 = r2
            L_0x005c:
                int r2 = r6.y
                if (r2 == r7) goto L_0x0062
                r6.e0 = r2
            L_0x0062:
                r2 = 1065353216(0x3f800000, float:1.0)
                if (r3 == 0) goto L_0x006c
                float r3 = r6.z
                float r3 = r2 - r3
                r6.g0 = r3
            L_0x006c:
                boolean r3 = r6.X
                if (r3 == 0) goto L_0x00be
                int r3 = r6.R
                if (r3 != r4) goto L_0x00be
                float r3 = r6.f31c
                r4 = -1082130432(0xffffffffbf800000, float:-1.0)
                int r5 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
                if (r5 == 0) goto L_0x0084
                float r2 = r2 - r3
                r6.j0 = r2
                r6.h0 = r7
                r6.i0 = r7
                goto L_0x00be
            L_0x0084:
                int r2 = r6.a
                if (r2 == r7) goto L_0x008f
                r6.i0 = r2
                r6.h0 = r7
                r6.j0 = r4
                goto L_0x00be
            L_0x008f:
                int r2 = r6.b
                if (r2 == r7) goto L_0x00be
                r6.h0 = r2
                r6.i0 = r7
                r6.j0 = r4
                goto L_0x00be
            L_0x009a:
                int r2 = r6.p
                if (r2 == r7) goto L_0x00a0
                r6.b0 = r2
            L_0x00a0:
                int r2 = r6.q
                if (r2 == r7) goto L_0x00a6
                r6.a0 = r2
            L_0x00a6:
                int r2 = r6.r
                if (r2 == r7) goto L_0x00ac
                r6.c0 = r2
            L_0x00ac:
                int r2 = r6.s
                if (r2 == r7) goto L_0x00b2
                r6.d0 = r2
            L_0x00b2:
                int r2 = r6.x
                if (r2 == r7) goto L_0x00b8
                r6.e0 = r2
            L_0x00b8:
                int r2 = r6.y
                if (r2 == r7) goto L_0x00be
                r6.f0 = r2
            L_0x00be:
                int r2 = r6.r
                if (r2 != r7) goto L_0x0108
                int r2 = r6.s
                if (r2 != r7) goto L_0x0108
                int r2 = r6.q
                if (r2 != r7) goto L_0x0108
                int r2 = r6.p
                if (r2 != r7) goto L_0x0108
                int r2 = r6.f34f
                if (r2 == r7) goto L_0x00dd
                r6.c0 = r2
                int r2 = r6.rightMargin
                if (r2 > 0) goto L_0x00eb
                if (r1 <= 0) goto L_0x00eb
                r6.rightMargin = r1
                goto L_0x00eb
            L_0x00dd:
                int r2 = r6.f35g
                if (r2 == r7) goto L_0x00eb
                r6.d0 = r2
                int r2 = r6.rightMargin
                if (r2 > 0) goto L_0x00eb
                if (r1 <= 0) goto L_0x00eb
                r6.rightMargin = r1
            L_0x00eb:
                int r1 = r6.f32d
                if (r1 == r7) goto L_0x00fa
                r6.a0 = r1
                int r7 = r6.leftMargin
                if (r7 > 0) goto L_0x0108
                if (r0 <= 0) goto L_0x0108
                r6.leftMargin = r0
                goto L_0x0108
            L_0x00fa:
                int r1 = r6.f33e
                if (r1 == r7) goto L_0x0108
                r6.b0 = r1
                int r7 = r6.leftMargin
                if (r7 > 0) goto L_0x0108
                if (r0 <= 0) goto L_0x0108
                r6.leftMargin = r0
            L_0x0108:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.a.resolveLayoutDirection(int):void");
        }

        public a(int i2, int i3) {
            super(i2, i3);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
