package d.b.e;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.R$styleable;
import com.microsoft.azure.storage.Constants;

public class i0 extends ViewGroup {
    public int A;
    public int B;
    public int C;
    public float D;
    public boolean E;
    public int[] F;
    public int[] G;
    public Drawable H;
    public int I;
    public int J;
    public int K;
    public int L;
    public boolean x;
    public int y;
    public int z;

    public i0(Context context) {
        this(context, (AttributeSet) null);
    }

    public void a(Canvas canvas, int i2) {
        this.H.setBounds(getPaddingLeft() + this.L, i2, (getWidth() - getPaddingRight()) - this.L, this.J + i2);
        this.H.draw(canvas);
    }

    public void b(Canvas canvas, int i2) {
        this.H.setBounds(i2, getPaddingTop() + this.L, this.I + i2, (getHeight() - getPaddingBottom()) - this.L);
        this.H.draw(canvas);
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public int getBaseline() {
        int i2;
        if (this.y < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i3 = this.y;
        if (childCount > i3) {
            View childAt = getChildAt(i3);
            int baseline = childAt.getBaseline();
            if (baseline != -1) {
                int i4 = this.z;
                if (this.A == 1 && (i2 = this.B & 112) != 48) {
                    if (i2 == 16) {
                        i4 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.C) / 2;
                    } else if (i2 == 80) {
                        i4 = ((getBottom() - getTop()) - getPaddingBottom()) - this.C;
                    }
                }
                return i4 + ((a) childAt.getLayoutParams()).topMargin + baseline;
            } else if (this.y == 0) {
                return -1;
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.y;
    }

    public Drawable getDividerDrawable() {
        return this.H;
    }

    public int getDividerPadding() {
        return this.L;
    }

    public int getDividerWidth() {
        return this.I;
    }

    public int getGravity() {
        return this.B;
    }

    public int getOrientation() {
        return this.A;
    }

    public int getShowDividers() {
        return this.K;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.D;
    }

    public void onDraw(Canvas canvas) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.H != null) {
            int i7 = 0;
            if (this.A == 1) {
                int virtualChildCount = getVirtualChildCount();
                while (i7 < virtualChildCount) {
                    View childAt = getChildAt(i7);
                    if (!(childAt == null || childAt.getVisibility() == 8 || !a(i7))) {
                        a(canvas, (childAt.getTop() - ((a) childAt.getLayoutParams()).topMargin) - this.J);
                    }
                    i7++;
                }
                if (a(virtualChildCount)) {
                    View childAt2 = getChildAt(virtualChildCount - 1);
                    if (childAt2 == null) {
                        i6 = (getHeight() - getPaddingBottom()) - this.J;
                    } else {
                        i6 = childAt2.getBottom() + ((a) childAt2.getLayoutParams()).bottomMargin;
                    }
                    a(canvas, i6);
                    return;
                }
                return;
            }
            int virtualChildCount2 = getVirtualChildCount();
            boolean a2 = d1.a(this);
            while (i7 < virtualChildCount2) {
                View childAt3 = getChildAt(i7);
                if (!(childAt3 == null || childAt3.getVisibility() == 8 || !a(i7))) {
                    a aVar = (a) childAt3.getLayoutParams();
                    if (a2) {
                        i5 = childAt3.getRight() + aVar.rightMargin;
                    } else {
                        i5 = (childAt3.getLeft() - aVar.leftMargin) - this.I;
                    }
                    b(canvas, i5);
                }
                i7++;
            }
            if (a(virtualChildCount2)) {
                View childAt4 = getChildAt(virtualChildCount2 - 1);
                if (childAt4 != null) {
                    a aVar2 = (a) childAt4.getLayoutParams();
                    if (a2) {
                        i4 = childAt4.getLeft() - aVar2.leftMargin;
                        i3 = this.I;
                    } else {
                        i2 = childAt4.getRight() + aVar2.rightMargin;
                        b(canvas, i2);
                    }
                } else if (a2) {
                    i2 = getPaddingLeft();
                    b(canvas, i2);
                } else {
                    i4 = getWidth() - getPaddingRight();
                    i3 = this.I;
                }
                i2 = i4 - i3;
                b(canvas, i2);
            }
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x009a  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0154  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x015e  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0189  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x019b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r18, int r19, int r20, int r21, int r22) {
        /*
            r17 = this;
            r0 = r17
            int r1 = r0.A
            r2 = 80
            r3 = 16
            r4 = 8
            r5 = 5
            r6 = 8388615(0x800007, float:1.1754953E-38)
            r7 = 1
            if (r1 != r7) goto L_0x00b6
            int r1 = r17.getPaddingLeft()
            int r8 = r21 - r19
            int r9 = r17.getPaddingRight()
            int r9 = r8 - r9
            int r8 = r8 - r1
            int r10 = r17.getPaddingRight()
            int r8 = r8 - r10
            int r10 = r17.getVirtualChildCount()
            int r11 = r0.B
            r12 = r11 & 112(0x70, float:1.57E-43)
            r6 = r6 & r11
            if (r12 == r3) goto L_0x0041
            if (r12 == r2) goto L_0x0035
            int r2 = r17.getPaddingTop()
            goto L_0x004d
        L_0x0035:
            int r2 = r17.getPaddingTop()
            int r2 = r2 + r22
            int r2 = r2 - r20
            int r3 = r0.C
            int r2 = r2 - r3
            goto L_0x004d
        L_0x0041:
            int r2 = r17.getPaddingTop()
            int r3 = r22 - r20
            int r11 = r0.C
            int r3 = r3 - r11
            int r3 = r3 / 2
            int r2 = r2 + r3
        L_0x004d:
            r3 = 0
        L_0x004e:
            if (r3 >= r10) goto L_0x01ca
            android.view.View r11 = r0.getChildAt(r3)
            if (r11 != 0) goto L_0x0059
            int r2 = r2 + 0
            goto L_0x00b1
        L_0x0059:
            int r12 = r11.getVisibility()
            if (r12 == r4) goto L_0x00b1
            int r4 = r11.getMeasuredWidth()
            int r12 = r11.getMeasuredHeight()
            android.view.ViewGroup$LayoutParams r13 = r11.getLayoutParams()
            d.b.e.i0$a r13 = (d.b.e.i0.a) r13
            int r14 = r13.b
            if (r14 >= 0) goto L_0x0072
            r14 = r6
        L_0x0072:
            int r15 = d.i.i.n.i(r17)
            int r14 = android.view.Gravity.getAbsoluteGravity(r14, r15)
            r14 = r14 & 7
            if (r14 == r7) goto L_0x0089
            if (r14 == r5) goto L_0x0084
            int r5 = r13.leftMargin
            int r5 = r5 + r1
            goto L_0x0094
        L_0x0084:
            int r5 = r9 - r4
            int r14 = r13.rightMargin
            goto L_0x0093
        L_0x0089:
            int r5 = r8 - r4
            int r5 = r5 / 2
            int r5 = r5 + r1
            int r14 = r13.leftMargin
            int r5 = r5 + r14
            int r14 = r13.rightMargin
        L_0x0093:
            int r5 = r5 - r14
        L_0x0094:
            boolean r14 = r0.a(r3)
            if (r14 == 0) goto L_0x009d
            int r14 = r0.J
            int r2 = r2 + r14
        L_0x009d:
            int r14 = r13.topMargin
            int r2 = r2 + r14
            int r14 = r2 + 0
            int r4 = r4 + r5
            int r15 = r12 + r14
            r11.layout(r5, r14, r4, r15)
            int r4 = r13.bottomMargin
            r5 = 0
            int r2 = e.a.a.a.a.a((int) r12, (int) r4, (int) r5, (int) r2)
            int r3 = r3 + 0
        L_0x00b1:
            int r3 = r3 + r7
            r4 = 8
            r5 = 5
            goto L_0x004e
        L_0x00b6:
            boolean r1 = d.b.e.d1.a(r17)
            int r2 = r17.getPaddingTop()
            int r3 = r22 - r20
            int r4 = r17.getPaddingBottom()
            int r4 = r3 - r4
            int r3 = r3 - r2
            int r5 = r17.getPaddingBottom()
            int r3 = r3 - r5
            int r5 = r17.getVirtualChildCount()
            int r8 = r0.B
            r6 = r6 & r8
            r8 = r8 & 112(0x70, float:1.57E-43)
            boolean r9 = r0.x
            int[] r10 = r0.F
            int[] r11 = r0.G
            int r12 = r17.getLayoutDirection()
            int r6 = android.view.Gravity.getAbsoluteGravity(r6, r12)
            if (r6 == r7) goto L_0x00f9
            r7 = 5
            if (r6 == r7) goto L_0x00ed
            int r6 = r17.getPaddingLeft()
            goto L_0x0105
        L_0x00ed:
            int r6 = r17.getPaddingLeft()
            int r6 = r6 + r21
            int r6 = r6 - r19
            int r7 = r0.C
            int r6 = r6 - r7
            goto L_0x0105
        L_0x00f9:
            int r6 = r17.getPaddingLeft()
            int r7 = r21 - r19
            int r12 = r0.C
            int r7 = r7 - r12
            int r7 = r7 / 2
            int r6 = r6 + r7
        L_0x0105:
            if (r1 == 0) goto L_0x010b
            int r1 = r5 + -1
            r7 = -1
            goto L_0x010d
        L_0x010b:
            r1 = 0
            r7 = 1
        L_0x010d:
            r12 = 0
        L_0x010e:
            if (r12 >= r5) goto L_0x01ca
            int r13 = r7 * r12
            int r13 = r13 + r1
            android.view.View r14 = r0.getChildAt(r13)
            if (r14 != 0) goto L_0x011f
            int r6 = r6 + 0
            r18 = r1
            goto L_0x01b4
        L_0x011f:
            int r15 = r14.getVisibility()
            r18 = r1
            r1 = 8
            if (r15 == r1) goto L_0x01b4
            int r1 = r14.getMeasuredWidth()
            int r15 = r14.getMeasuredHeight()
            android.view.ViewGroup$LayoutParams r16 = r14.getLayoutParams()
            r20 = r5
            r5 = r16
            d.b.e.i0$a r5 = (d.b.e.i0.a) r5
            if (r9 == 0) goto L_0x014b
            r19 = r7
            int r7 = r5.height
            r22 = r8
            r8 = -1
            if (r7 == r8) goto L_0x014f
            int r7 = r14.getBaseline()
            goto L_0x0150
        L_0x014b:
            r19 = r7
            r22 = r8
        L_0x014f:
            r7 = -1
        L_0x0150:
            int r8 = r5.b
            if (r8 >= 0) goto L_0x0156
            r8 = r22
        L_0x0156:
            r8 = r8 & 112(0x70, float:1.57E-43)
            r16 = r9
            r9 = 16
            if (r8 == r9) goto L_0x0189
            r9 = 48
            if (r8 == r9) goto L_0x017b
            r9 = 80
            if (r8 == r9) goto L_0x0168
            r8 = r2
            goto L_0x0195
        L_0x0168:
            int r8 = r4 - r15
            int r9 = r5.bottomMargin
            int r8 = r8 - r9
            r9 = -1
            if (r7 == r9) goto L_0x0195
            int r9 = r14.getMeasuredHeight()
            int r9 = r9 - r7
            r7 = 2
            r7 = r11[r7]
            int r7 = r7 - r9
            int r8 = r8 - r7
            goto L_0x0195
        L_0x017b:
            r8 = -1
            int r9 = r5.topMargin
            int r9 = r9 + r2
            if (r7 == r8) goto L_0x0187
            r8 = 1
            r8 = r10[r8]
            int r8 = r8 - r7
            int r8 = r8 + r9
            goto L_0x0195
        L_0x0187:
            r8 = r9
            goto L_0x0195
        L_0x0189:
            int r7 = r3 - r15
            int r7 = r7 / 2
            int r7 = r7 + r2
            int r8 = r5.topMargin
            int r7 = r7 + r8
            int r8 = r5.bottomMargin
            int r8 = r7 - r8
        L_0x0195:
            boolean r7 = r0.a(r13)
            if (r7 == 0) goto L_0x019e
            int r7 = r0.I
            int r6 = r6 + r7
        L_0x019e:
            int r7 = r5.leftMargin
            int r6 = r6 + r7
            int r7 = r6 + 0
            int r9 = r1 + r7
            int r15 = r15 + r8
            r14.layout(r7, r8, r9, r15)
            int r5 = r5.rightMargin
            r7 = 0
            int r1 = e.a.a.a.a.a((int) r1, (int) r5, (int) r7, (int) r6)
            int r12 = r12 + 0
            r6 = r1
            goto L_0x01bc
        L_0x01b4:
            r20 = r5
            r19 = r7
            r22 = r8
            r16 = r9
        L_0x01bc:
            int r12 = r12 + 1
            r1 = r18
            r7 = r19
            r5 = r20
            r8 = r22
            r9 = r16
            goto L_0x010e
        L_0x01ca:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.i0.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:144:0x0303  */
    /* JADX WARNING: Removed duplicated region for block: B:149:0x030e  */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0310  */
    /* JADX WARNING: Removed duplicated region for block: B:203:0x047b  */
    /* JADX WARNING: Removed duplicated region for block: B:204:0x0480  */
    /* JADX WARNING: Removed duplicated region for block: B:207:0x04a4  */
    /* JADX WARNING: Removed duplicated region for block: B:208:0x04a9  */
    /* JADX WARNING: Removed duplicated region for block: B:211:0x04b1  */
    /* JADX WARNING: Removed duplicated region for block: B:212:0x04c0  */
    /* JADX WARNING: Removed duplicated region for block: B:214:0x04d4  */
    /* JADX WARNING: Removed duplicated region for block: B:219:0x04e1  */
    /* JADX WARNING: Removed duplicated region for block: B:220:0x04e5  */
    /* JADX WARNING: Removed duplicated region for block: B:225:0x0501  */
    /* JADX WARNING: Removed duplicated region for block: B:229:0x0524  */
    /* JADX WARNING: Removed duplicated region for block: B:234:0x0533  */
    /* JADX WARNING: Removed duplicated region for block: B:235:0x0535  */
    /* JADX WARNING: Removed duplicated region for block: B:238:0x053d  */
    /* JADX WARNING: Removed duplicated region for block: B:241:0x054a  */
    /* JADX WARNING: Removed duplicated region for block: B:270:0x05e8  */
    /* JADX WARNING: Removed duplicated region for block: B:283:0x0650 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:303:0x06a4  */
    /* JADX WARNING: Removed duplicated region for block: B:306:0x06c2  */
    /* JADX WARNING: Removed duplicated region for block: B:351:0x07b1  */
    /* JADX WARNING: Removed duplicated region for block: B:362:0x0806  */
    /* JADX WARNING: Removed duplicated region for block: B:365:0x080e  */
    /* JADX WARNING: Removed duplicated region for block: B:373:0x0869  */
    /* JADX WARNING: Removed duplicated region for block: B:409:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r36, int r37) {
        /*
            r35 = this;
            r6 = r35
            r7 = r36
            r8 = r37
            int r0 = r6.A
            r1 = -2
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 8
            r4 = 0
            r5 = 1073741824(0x40000000, float:2.0)
            r9 = 1
            r10 = 0
            if (r0 != r9) goto L_0x036f
            r6.C = r10
            int r9 = r35.getVirtualChildCount()
            int r11 = android.view.View.MeasureSpec.getMode(r36)
            int r12 = android.view.View.MeasureSpec.getMode(r37)
            int r13 = r6.y
            boolean r14 = r6.E
            r0 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 1
            r23 = 0
            r0 = 0
            r2 = 0
            r7 = 0
            r8 = 0
            r10 = 0
            r15 = -2147483648(0xffffffff80000000, float:-0.0)
            r17 = 0
        L_0x0041:
            if (r10 >= r9) goto L_0x017b
            android.view.View r18 = r6.getChildAt(r10)
            if (r18 != 0) goto L_0x004f
            int r1 = r6.C
            int r1 = r1 + r0
            r6.C = r1
            goto L_0x0057
        L_0x004f:
            int r0 = r18.getVisibility()
            if (r0 != r3) goto L_0x005d
            int r10 = r10 + 0
        L_0x0057:
            r19 = r9
            r25 = r12
            goto L_0x016a
        L_0x005d:
            boolean r0 = r6.a(r10)
            if (r0 == 0) goto L_0x006a
            int r0 = r6.C
            int r3 = r6.J
            int r0 = r0 + r3
            r6.C = r0
        L_0x006a:
            android.view.ViewGroup$LayoutParams r0 = r18.getLayoutParams()
            r3 = r0
            d.b.e.i0$a r3 = (d.b.e.i0.a) r3
            float r0 = r3.a
            float r20 = r20 + r0
            if (r12 != r5) goto L_0x0096
            int r5 = r3.height
            if (r5 != 0) goto L_0x0096
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 <= 0) goto L_0x0096
            int r0 = r6.C
            int r1 = r3.topMargin
            int r1 = r1 + r0
            int r4 = r3.bottomMargin
            int r1 = r1 + r4
            int r0 = java.lang.Math.max(r0, r1)
            r6.C = r0
            r21 = 1
            r19 = r9
            r25 = r12
            r12 = r3
            goto L_0x00f5
        L_0x0096:
            int r0 = r3.height
            if (r0 != 0) goto L_0x00a5
            float r0 = r3.a
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 <= 0) goto L_0x00a5
            r3.height = r1
            r0 = 0
            r5 = 0
            goto L_0x00a9
        L_0x00a5:
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
        L_0x00a9:
            r19 = 0
            int r0 = (r20 > r4 ? 1 : (r20 == r4 ? 0 : -1))
            if (r0 != 0) goto L_0x00b4
            int r0 = r6.C
            r24 = r0
            goto L_0x00b7
        L_0x00b4:
            r0 = 0
            r24 = 0
        L_0x00b7:
            r0 = r35
            r1 = r18
            r4 = r2
            r2 = r36
            r25 = r12
            r12 = r3
            r3 = r19
            r26 = r4
            r4 = r37
            r19 = r9
            r9 = r5
            r5 = r24
            r0.a(r1, r2, r3, r4, r5)
            if (r9 == r15) goto L_0x00d3
            r12.height = r9
        L_0x00d3:
            int r0 = r18.getMeasuredHeight()
            int r1 = r6.C
            int r2 = r1 + r0
            int r3 = r12.topMargin
            int r2 = r2 + r3
            int r3 = r12.bottomMargin
            int r2 = r2 + r3
            int r2 = r2 + 0
            int r1 = java.lang.Math.max(r1, r2)
            r6.C = r1
            if (r14 == 0) goto L_0x00f2
            r15 = r26
            int r2 = java.lang.Math.max(r0, r15)
            goto L_0x00f5
        L_0x00f2:
            r15 = r26
            r2 = r15
        L_0x00f5:
            if (r13 < 0) goto L_0x00ff
            int r0 = r10 + 1
            if (r13 != r0) goto L_0x00ff
            int r0 = r6.C
            r6.z = r0
        L_0x00ff:
            if (r10 >= r13) goto L_0x0111
            float r0 = r12.a
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0109
            goto L_0x0111
        L_0x0109:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex."
            r0.<init>(r1)
            throw r0
        L_0x0111:
            r0 = 1073741824(0x40000000, float:2.0)
            if (r11 == r0) goto L_0x011e
            int r0 = r12.width
            r1 = -1
            if (r0 != r1) goto L_0x011e
            r0 = 1
            r23 = 1
            goto L_0x011f
        L_0x011e:
            r0 = 0
        L_0x011f:
            int r1 = r12.leftMargin
            int r3 = r12.rightMargin
            int r1 = r1 + r3
            int r3 = r18.getMeasuredWidth()
            int r3 = r3 + r1
            int r4 = java.lang.Math.max(r7, r3)
            int r5 = r18.getMeasuredState()
            int r5 = android.view.View.combineMeasuredStates(r8, r5)
            if (r22 == 0) goto L_0x013e
            int r7 = r12.width
            r8 = -1
            if (r7 != r8) goto L_0x013e
            r7 = 1
            goto L_0x013f
        L_0x013e:
            r7 = 0
        L_0x013f:
            float r8 = r12.a
            r9 = 0
            int r8 = (r8 > r9 ? 1 : (r8 == r9 ? 0 : -1))
            if (r8 <= 0) goto L_0x0154
            if (r0 == 0) goto L_0x0149
            goto L_0x014a
        L_0x0149:
            r1 = r3
        L_0x014a:
            r9 = r17
            int r0 = java.lang.Math.max(r9, r1)
            r9 = r0
            r0 = r16
            goto L_0x0160
        L_0x0154:
            r9 = r17
            if (r0 == 0) goto L_0x0159
            goto L_0x015a
        L_0x0159:
            r1 = r3
        L_0x015a:
            r0 = r16
            int r0 = java.lang.Math.max(r0, r1)
        L_0x0160:
            int r10 = r10 + 0
            r16 = r0
            r8 = r5
            r22 = r7
            r17 = r9
            r7 = r4
        L_0x016a:
            int r10 = r10 + 1
            r0 = 0
            r1 = -2
            r15 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 8
            r4 = 0
            r5 = 1073741824(0x40000000, float:2.0)
            r9 = r19
            r12 = r25
            goto L_0x0041
        L_0x017b:
            r15 = r2
            r19 = r9
            r25 = r12
            r0 = r16
            r9 = r17
            int r1 = r6.C
            if (r1 <= 0) goto L_0x0198
            r1 = r19
            boolean r2 = r6.a(r1)
            if (r2 == 0) goto L_0x019a
            int r2 = r6.C
            int r3 = r6.J
            int r2 = r2 + r3
            r6.C = r2
            goto L_0x019a
        L_0x0198:
            r1 = r19
        L_0x019a:
            if (r14 == 0) goto L_0x01dd
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r25
            if (r3 == r2) goto L_0x01a4
            if (r3 != 0) goto L_0x01df
        L_0x01a4:
            r2 = 0
            r6.C = r2
            r4 = 0
        L_0x01a8:
            if (r4 >= r1) goto L_0x01df
            android.view.View r5 = r6.getChildAt(r4)
            if (r5 != 0) goto L_0x01b6
            int r5 = r6.C
            int r5 = r5 + r2
            r6.C = r5
            goto L_0x01d9
        L_0x01b6:
            int r2 = r5.getVisibility()
            r10 = 8
            if (r2 != r10) goto L_0x01c1
            int r4 = r4 + 0
            goto L_0x01d9
        L_0x01c1:
            android.view.ViewGroup$LayoutParams r2 = r5.getLayoutParams()
            d.b.e.i0$a r2 = (d.b.e.i0.a) r2
            int r5 = r6.C
            int r10 = r5 + r15
            int r12 = r2.topMargin
            int r10 = r10 + r12
            int r2 = r2.bottomMargin
            int r10 = r10 + r2
            int r10 = r10 + 0
            int r2 = java.lang.Math.max(r5, r10)
            r6.C = r2
        L_0x01d9:
            int r4 = r4 + 1
            r2 = 0
            goto L_0x01a8
        L_0x01dd:
            r3 = r25
        L_0x01df:
            int r2 = r6.C
            int r4 = r35.getPaddingTop()
            int r5 = r35.getPaddingBottom()
            int r5 = r5 + r4
            int r5 = r5 + r2
            r6.C = r5
            int r2 = r35.getSuggestedMinimumHeight()
            int r2 = java.lang.Math.max(r5, r2)
            r4 = 0
            r10 = r37
            int r2 = android.view.View.resolveSizeAndState(r2, r10, r4)
            r4 = 16777215(0xffffff, float:2.3509886E-38)
            r4 = r4 & r2
            int r5 = r6.C
            int r4 = r4 - r5
            if (r21 != 0) goto L_0x024e
            if (r4 == 0) goto L_0x020d
            r5 = 0
            int r5 = (r20 > r5 ? 1 : (r20 == r5 ? 0 : -1))
            if (r5 <= 0) goto L_0x020d
            goto L_0x024e
        L_0x020d:
            int r0 = java.lang.Math.max(r0, r9)
            if (r14 == 0) goto L_0x024a
            r4 = 1073741824(0x40000000, float:2.0)
            if (r3 == r4) goto L_0x024a
            r3 = 0
        L_0x0218:
            if (r3 >= r1) goto L_0x024a
            android.view.View r4 = r6.getChildAt(r3)
            if (r4 == 0) goto L_0x0247
            int r5 = r4.getVisibility()
            r9 = 8
            if (r5 != r9) goto L_0x0229
            goto L_0x0247
        L_0x0229:
            android.view.ViewGroup$LayoutParams r5 = r4.getLayoutParams()
            d.b.e.i0$a r5 = (d.b.e.i0.a) r5
            float r5 = r5.a
            r9 = 0
            int r5 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r5 <= 0) goto L_0x0247
            int r5 = r4.getMeasuredWidth()
            r9 = 1073741824(0x40000000, float:2.0)
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r9)
            int r9 = android.view.View.MeasureSpec.makeMeasureSpec(r15, r9)
            r4.measure(r5, r9)
        L_0x0247:
            int r3 = r3 + 1
            goto L_0x0218
        L_0x024a:
            r4 = r36
            goto L_0x0347
        L_0x024e:
            float r5 = r6.D
            r9 = 0
            int r9 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r9 <= 0) goto L_0x0257
            r20 = r5
        L_0x0257:
            r5 = 0
            r6.C = r5
            r34 = r7
            r7 = r0
            r0 = r34
        L_0x025f:
            if (r5 >= r1) goto L_0x0332
            android.view.View r9 = r6.getChildAt(r5)
            int r12 = r9.getVisibility()
            r13 = 8
            if (r12 != r13) goto L_0x0274
            r25 = r3
            r13 = r4
            r4 = r36
            goto L_0x032b
        L_0x0274:
            android.view.ViewGroup$LayoutParams r12 = r9.getLayoutParams()
            d.b.e.i0$a r12 = (d.b.e.i0.a) r12
            float r13 = r12.a
            r14 = 0
            int r14 = (r13 > r14 ? 1 : (r13 == r14 ? 0 : -1))
            if (r14 <= 0) goto L_0x02dc
            float r14 = (float) r4
            float r14 = r14 * r13
            float r14 = r14 / r20
            int r14 = (int) r14
            float r20 = r20 - r13
            int r4 = r4 - r14
            int r13 = r35.getPaddingLeft()
            int r15 = r35.getPaddingRight()
            int r15 = r15 + r13
            int r13 = r12.leftMargin
            int r15 = r15 + r13
            int r13 = r12.rightMargin
            int r15 = r15 + r13
            int r13 = r12.width
            r16 = r4
            r4 = r36
            int r13 = android.view.ViewGroup.getChildMeasureSpec(r4, r15, r13)
            int r15 = r12.height
            if (r15 != 0) goto L_0x02b8
            r15 = 1073741824(0x40000000, float:2.0)
            if (r3 == r15) goto L_0x02ac
            goto L_0x02ba
        L_0x02ac:
            if (r14 <= 0) goto L_0x02af
            goto L_0x02b0
        L_0x02af:
            r14 = 0
        L_0x02b0:
            int r14 = android.view.View.MeasureSpec.makeMeasureSpec(r14, r15)
            r9.measure(r13, r14)
            goto L_0x02cf
        L_0x02b8:
            r15 = 1073741824(0x40000000, float:2.0)
        L_0x02ba:
            int r17 = r9.getMeasuredHeight()
            int r17 = r17 + r14
            if (r17 >= 0) goto L_0x02c6
            r17 = 0
            r14 = 0
            goto L_0x02c8
        L_0x02c6:
            r14 = r17
        L_0x02c8:
            int r14 = android.view.View.MeasureSpec.makeMeasureSpec(r14, r15)
            r9.measure(r13, r14)
        L_0x02cf:
            int r13 = r9.getMeasuredState()
            r13 = r13 & -256(0xffffffffffffff00, float:NaN)
            int r8 = android.view.View.combineMeasuredStates(r8, r13)
            r13 = r16
            goto L_0x02df
        L_0x02dc:
            r13 = r4
            r4 = r36
        L_0x02df:
            int r14 = r12.leftMargin
            int r15 = r12.rightMargin
            int r14 = r14 + r15
            int r15 = r9.getMeasuredWidth()
            int r15 = r15 + r14
            int r0 = java.lang.Math.max(r0, r15)
            r16 = r0
            r0 = 1073741824(0x40000000, float:2.0)
            if (r11 == r0) goto L_0x02fc
            int r0 = r12.width
            r25 = r3
            r3 = -1
            if (r0 != r3) goto L_0x02ff
            r0 = 1
            goto L_0x0300
        L_0x02fc:
            r25 = r3
            r3 = -1
        L_0x02ff:
            r0 = 0
        L_0x0300:
            if (r0 == 0) goto L_0x0303
            goto L_0x0304
        L_0x0303:
            r14 = r15
        L_0x0304:
            int r0 = java.lang.Math.max(r7, r14)
            if (r22 == 0) goto L_0x0310
            int r7 = r12.width
            if (r7 != r3) goto L_0x0310
            r3 = 1
            goto L_0x0311
        L_0x0310:
            r3 = 0
        L_0x0311:
            int r7 = r6.C
            int r9 = r9.getMeasuredHeight()
            int r9 = r9 + r7
            int r14 = r12.topMargin
            int r9 = r9 + r14
            int r12 = r12.bottomMargin
            int r9 = r9 + r12
            int r9 = r9 + 0
            int r7 = java.lang.Math.max(r7, r9)
            r6.C = r7
            r7 = r0
            r22 = r3
            r0 = r16
        L_0x032b:
            int r5 = r5 + 1
            r4 = r13
            r3 = r25
            goto L_0x025f
        L_0x0332:
            r4 = r36
            int r3 = r6.C
            int r5 = r35.getPaddingTop()
            int r9 = r35.getPaddingBottom()
            int r9 = r9 + r5
            int r9 = r9 + r3
            r6.C = r9
            r34 = r7
            r7 = r0
            r0 = r34
        L_0x0347:
            if (r22 != 0) goto L_0x034e
            r3 = 1073741824(0x40000000, float:2.0)
            if (r11 == r3) goto L_0x034e
            goto L_0x034f
        L_0x034e:
            r0 = r7
        L_0x034f:
            int r3 = r35.getPaddingLeft()
            int r5 = r35.getPaddingRight()
            int r5 = r5 + r3
            int r5 = r5 + r0
            int r0 = r35.getSuggestedMinimumWidth()
            int r0 = java.lang.Math.max(r5, r0)
            int r0 = android.view.View.resolveSizeAndState(r0, r4, r8)
            r6.setMeasuredDimension(r0, r2)
            if (r23 == 0) goto L_0x086e
            r6.b((int) r1, (int) r10)
            goto L_0x086e
        L_0x036f:
            r4 = r7
            r10 = r8
            r7 = 1
            r0 = 0
            r6.C = r0
            int r8 = r35.getVirtualChildCount()
            int r9 = android.view.View.MeasureSpec.getMode(r36)
            int r11 = android.view.View.MeasureSpec.getMode(r37)
            int[] r0 = r6.F
            r1 = 4
            if (r0 == 0) goto L_0x038a
            int[] r0 = r6.G
            if (r0 != 0) goto L_0x0392
        L_0x038a:
            int[] r0 = new int[r1]
            r6.F = r0
            int[] r0 = new int[r1]
            r6.G = r0
        L_0x0392:
            int[] r12 = r6.F
            int[] r13 = r6.G
            r0 = 3
            r1 = -1
            r12[r0] = r1
            r14 = 2
            r12[r14] = r1
            r12[r7] = r1
            r2 = 0
            r12[r2] = r1
            r13[r0] = r1
            r13[r14] = r1
            r13[r7] = r1
            r13[r2] = r1
            boolean r15 = r6.x
            boolean r5 = r6.E
            r0 = 1073741824(0x40000000, float:2.0)
            if (r9 != r0) goto L_0x03b6
            r0 = 1
            r16 = 1
            goto L_0x03b9
        L_0x03b6:
            r0 = 0
            r16 = 0
        L_0x03b9:
            r0 = 0
            r1 = 0
            r2 = 0
            r3 = 0
            r17 = 0
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 1
            r22 = 0
            r0 = 0
            r3 = 0
            r7 = 0
            r14 = 0
            r27 = 0
        L_0x03cf:
            if (r0 >= r8) goto L_0x0569
            r19 = r5
            android.view.View r5 = r6.getChildAt(r0)
            if (r5 != 0) goto L_0x03e4
            int r5 = r6.C
            int r5 = r5 + 0
            r6.C = r5
            r23 = r2
            r24 = r3
            goto L_0x03f2
        L_0x03e4:
            r23 = r2
            int r2 = r5.getVisibility()
            r24 = r3
            r3 = 8
            if (r2 != r3) goto L_0x03f9
            int r0 = r0 + 0
        L_0x03f2:
            r10 = r4
            r2 = r23
            r3 = r24
            goto L_0x0560
        L_0x03f9:
            boolean r2 = r6.a(r0)
            if (r2 == 0) goto L_0x0406
            int r2 = r6.C
            int r3 = r6.I
            int r2 = r2 + r3
            r6.C = r2
        L_0x0406:
            android.view.ViewGroup$LayoutParams r2 = r5.getLayoutParams()
            r3 = r2
            d.b.e.i0$a r3 = (d.b.e.i0.a) r3
            float r2 = r3.a
            float r25 = r1 + r2
            r1 = 1073741824(0x40000000, float:2.0)
            if (r9 != r1) goto L_0x045f
            int r1 = r3.width
            if (r1 != 0) goto L_0x045f
            r1 = 0
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 <= 0) goto L_0x045f
            if (r16 == 0) goto L_0x042d
            int r1 = r6.C
            int r2 = r3.leftMargin
            r26 = r0
            int r0 = r3.rightMargin
            int r2 = r2 + r0
            int r2 = r2 + r1
            r6.C = r2
            goto L_0x043d
        L_0x042d:
            r26 = r0
            int r0 = r6.C
            int r1 = r3.leftMargin
            int r1 = r1 + r0
            int r2 = r3.rightMargin
            int r1 = r1 + r2
            int r0 = java.lang.Math.max(r0, r1)
            r6.C = r0
        L_0x043d:
            if (r15 == 0) goto L_0x0451
            r0 = 0
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r0)
            r5.measure(r0, r0)
            r2 = r3
            r10 = r4
            r30 = r23
            r32 = r24
            r23 = r5
            goto L_0x04d8
        L_0x0451:
            r0 = 1073741824(0x40000000, float:2.0)
            r20 = 1
            r2 = r3
            r10 = r4
            r30 = r23
            r32 = r24
            r23 = r5
            goto L_0x04da
        L_0x045f:
            r26 = r0
            int r0 = r3.width
            if (r0 != 0) goto L_0x0472
            float r0 = r3.a
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0473
            r0 = -2
            r3.width = r0
            r0 = 0
            r2 = 0
            goto L_0x0477
        L_0x0472:
            r1 = 0
        L_0x0473:
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
        L_0x0477:
            int r0 = (r25 > r1 ? 1 : (r25 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0480
            int r0 = r6.C
            r28 = r0
            goto L_0x0483
        L_0x0480:
            r0 = 0
            r28 = 0
        L_0x0483:
            r29 = 0
            r0 = r35
            r1 = r5
            r31 = r2
            r30 = r23
            r2 = r36
            r33 = r3
            r32 = r24
            r3 = r28
            r10 = r4
            r4 = r37
            r23 = r5
            r5 = r29
            r0.a(r1, r2, r3, r4, r5)
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r31
            if (r1 == r0) goto L_0x04a9
            r2 = r33
            r2.width = r1
            goto L_0x04ab
        L_0x04a9:
            r2 = r33
        L_0x04ab:
            int r0 = r23.getMeasuredWidth()
            if (r16 == 0) goto L_0x04c0
            int r1 = r6.C
            int r3 = r2.leftMargin
            int r3 = r3 + r0
            int r4 = r2.rightMargin
            r5 = 0
            int r1 = e.a.a.a.a.a((int) r3, (int) r4, (int) r5, (int) r1)
            r6.C = r1
            goto L_0x04d2
        L_0x04c0:
            int r1 = r6.C
            int r3 = r1 + r0
            int r4 = r2.leftMargin
            int r3 = r3 + r4
            int r4 = r2.rightMargin
            int r3 = r3 + r4
            int r3 = r3 + 0
            int r1 = java.lang.Math.max(r1, r3)
            r6.C = r1
        L_0x04d2:
            if (r19 == 0) goto L_0x04d8
            int r14 = java.lang.Math.max(r0, r14)
        L_0x04d8:
            r0 = 1073741824(0x40000000, float:2.0)
        L_0x04da:
            if (r11 == r0) goto L_0x04e5
            int r0 = r2.height
            r1 = -1
            if (r0 != r1) goto L_0x04e5
            r0 = 1
            r22 = 1
            goto L_0x04e6
        L_0x04e5:
            r0 = 0
        L_0x04e6:
            int r1 = r2.topMargin
            int r3 = r2.bottomMargin
            int r1 = r1 + r3
            int r3 = r23.getMeasuredHeight()
            int r3 = r3 + r1
            int r4 = r23.getMeasuredState()
            int r4 = android.view.View.combineMeasuredStates(r7, r4)
            if (r15 == 0) goto L_0x0524
            int r5 = r23.getBaseline()
            r7 = -1
            if (r5 == r7) goto L_0x0524
            int r7 = r2.b
            if (r7 >= 0) goto L_0x0507
            int r7 = r6.B
        L_0x0507:
            r7 = r7 & 112(0x70, float:1.57E-43)
            int r7 = r7 >> 4
            r7 = r7 & -2
            int r7 = r7 >> 1
            r23 = r1
            r1 = r12[r7]
            int r1 = java.lang.Math.max(r1, r5)
            r12[r7] = r1
            r1 = r13[r7]
            int r5 = r3 - r5
            int r1 = java.lang.Math.max(r1, r5)
            r13[r7] = r1
            goto L_0x0526
        L_0x0524:
            r23 = r1
        L_0x0526:
            r5 = r30
            int r1 = java.lang.Math.max(r5, r3)
            if (r21 == 0) goto L_0x0535
            int r5 = r2.height
            r7 = -1
            if (r5 != r7) goto L_0x0535
            r5 = 1
            goto L_0x0536
        L_0x0535:
            r5 = 0
        L_0x0536:
            float r2 = r2.a
            r7 = 0
            int r2 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r2 <= 0) goto L_0x054a
            if (r0 == 0) goto L_0x0541
            r3 = r23
        L_0x0541:
            r2 = r27
            int r27 = java.lang.Math.max(r2, r3)
            r3 = r32
            goto L_0x0558
        L_0x054a:
            r2 = r27
            if (r0 == 0) goto L_0x0550
            r3 = r23
        L_0x0550:
            r0 = r32
            int r3 = java.lang.Math.max(r0, r3)
            r27 = r2
        L_0x0558:
            int r0 = r26 + 0
            r2 = r1
            r7 = r4
            r21 = r5
            r1 = r25
        L_0x0560:
            int r0 = r0 + 1
            r4 = r10
            r5 = r19
            r10 = r37
            goto L_0x03cf
        L_0x0569:
            r0 = r3
            r10 = r4
            r19 = r5
            r5 = r2
            r2 = r27
            int r3 = r6.C
            if (r3 <= 0) goto L_0x0581
            boolean r3 = r6.a(r8)
            if (r3 == 0) goto L_0x0581
            int r3 = r6.C
            int r4 = r6.I
            int r3 = r3 + r4
            r6.C = r3
        L_0x0581:
            r3 = 1
            r4 = r12[r3]
            r3 = -1
            if (r4 != r3) goto L_0x059f
            r4 = 0
            r4 = r12[r4]
            if (r4 != r3) goto L_0x059f
            r23 = r7
            r4 = 2
            r7 = r12[r4]
            if (r7 != r3) goto L_0x05a1
            r4 = 3
            r7 = r12[r4]
            if (r7 == r3) goto L_0x0599
            goto L_0x05a2
        L_0x0599:
            r3 = r5
            r25 = r11
            r24 = r15
            goto L_0x05da
        L_0x059f:
            r23 = r7
        L_0x05a1:
            r4 = 3
        L_0x05a2:
            r3 = r12[r4]
            r4 = 0
            r4 = r12[r4]
            r24 = r15
            r7 = 1
            r15 = r12[r7]
            r17 = 2
            r7 = r12[r17]
            int r7 = java.lang.Math.max(r15, r7)
            int r4 = java.lang.Math.max(r4, r7)
            int r3 = java.lang.Math.max(r3, r4)
            r4 = 3
            r4 = r13[r4]
            r7 = 0
            r7 = r13[r7]
            r25 = r11
            r15 = 1
            r11 = r13[r15]
            r15 = r13[r17]
            int r11 = java.lang.Math.max(r11, r15)
            int r7 = java.lang.Math.max(r7, r11)
            int r4 = java.lang.Math.max(r4, r7)
            int r4 = r4 + r3
            int r3 = java.lang.Math.max(r5, r4)
        L_0x05da:
            if (r19 == 0) goto L_0x062c
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r9 == r4) goto L_0x05e2
            if (r9 != 0) goto L_0x062c
        L_0x05e2:
            r4 = 0
            r6.C = r4
            r5 = 0
        L_0x05e6:
            if (r5 >= r8) goto L_0x062c
            android.view.View r7 = r6.getChildAt(r5)
            if (r7 != 0) goto L_0x05f4
            int r7 = r6.C
            int r7 = r7 + r4
            r6.C = r7
            goto L_0x0628
        L_0x05f4:
            int r4 = r7.getVisibility()
            r11 = 8
            if (r4 != r11) goto L_0x05ff
            int r5 = r5 + 0
            goto L_0x0628
        L_0x05ff:
            android.view.ViewGroup$LayoutParams r4 = r7.getLayoutParams()
            d.b.e.i0$a r4 = (d.b.e.i0.a) r4
            if (r16 == 0) goto L_0x0616
            int r7 = r6.C
            int r11 = r4.leftMargin
            int r11 = r11 + r14
            int r4 = r4.rightMargin
            r15 = 0
            int r4 = e.a.a.a.a.a((int) r11, (int) r4, (int) r15, (int) r7)
            r6.C = r4
            goto L_0x0628
        L_0x0616:
            int r7 = r6.C
            int r11 = r7 + r14
            int r15 = r4.leftMargin
            int r11 = r11 + r15
            int r4 = r4.rightMargin
            int r11 = r11 + r4
            int r11 = r11 + 0
            int r4 = java.lang.Math.max(r7, r11)
            r6.C = r4
        L_0x0628:
            int r5 = r5 + 1
            r4 = 0
            goto L_0x05e6
        L_0x062c:
            int r4 = r6.C
            int r5 = r35.getPaddingLeft()
            int r7 = r35.getPaddingRight()
            int r7 = r7 + r5
            int r7 = r7 + r4
            r6.C = r7
            int r4 = r35.getSuggestedMinimumWidth()
            int r4 = java.lang.Math.max(r7, r4)
            r5 = 0
            int r4 = android.view.View.resolveSizeAndState(r4, r10, r5)
            r5 = 16777215(0xffffff, float:2.3509886E-38)
            r5 = r5 & r4
            int r7 = r6.C
            int r5 = r5 - r7
            if (r20 != 0) goto L_0x069d
            if (r5 == 0) goto L_0x0658
            r7 = 0
            int r7 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r7 <= 0) goto L_0x0658
            goto L_0x069d
        L_0x0658:
            int r0 = java.lang.Math.max(r0, r2)
            if (r19 == 0) goto L_0x0695
            r1 = 1073741824(0x40000000, float:2.0)
            if (r9 == r1) goto L_0x0695
            r1 = 0
        L_0x0663:
            if (r1 >= r8) goto L_0x0695
            android.view.View r2 = r6.getChildAt(r1)
            if (r2 == 0) goto L_0x0692
            int r5 = r2.getVisibility()
            r7 = 8
            if (r5 != r7) goto L_0x0674
            goto L_0x0692
        L_0x0674:
            android.view.ViewGroup$LayoutParams r5 = r2.getLayoutParams()
            d.b.e.i0$a r5 = (d.b.e.i0.a) r5
            float r5 = r5.a
            r7 = 0
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r5 <= 0) goto L_0x0692
            r5 = 1073741824(0x40000000, float:2.0)
            int r7 = android.view.View.MeasureSpec.makeMeasureSpec(r14, r5)
            int r9 = r2.getMeasuredHeight()
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r9, r5)
            r2.measure(r7, r5)
        L_0x0692:
            int r1 = r1 + 1
            goto L_0x0663
        L_0x0695:
            r5 = r37
            r7 = r23
            r15 = r25
            goto L_0x0840
        L_0x069d:
            float r2 = r6.D
            r3 = 0
            int r3 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r3 <= 0) goto L_0x06a5
            r1 = r2
        L_0x06a5:
            r2 = 3
            r3 = -1
            r12[r2] = r3
            r7 = 2
            r12[r7] = r3
            r11 = 1
            r12[r11] = r3
            r14 = 0
            r12[r14] = r3
            r13[r2] = r3
            r13[r7] = r3
            r13[r11] = r3
            r13[r14] = r3
            r6.C = r14
            r2 = -1
            r3 = 0
            r7 = r23
        L_0x06c0:
            if (r3 >= r8) goto L_0x07e4
            android.view.View r11 = r6.getChildAt(r3)
            if (r11 == 0) goto L_0x07d3
            int r14 = r11.getVisibility()
            r15 = 8
            if (r14 != r15) goto L_0x06d2
            goto L_0x07d3
        L_0x06d2:
            android.view.ViewGroup$LayoutParams r14 = r11.getLayoutParams()
            d.b.e.i0$a r14 = (d.b.e.i0.a) r14
            float r15 = r14.a
            r19 = 0
            int r19 = (r15 > r19 ? 1 : (r15 == r19 ? 0 : -1))
            if (r19 <= 0) goto L_0x073f
            float r10 = (float) r5
            float r10 = r10 * r15
            float r10 = r10 / r1
            int r10 = (int) r10
            float r1 = r1 - r15
            int r5 = r5 - r10
            int r15 = r35.getPaddingTop()
            int r19 = r35.getPaddingBottom()
            int r19 = r19 + r15
            int r15 = r14.topMargin
            int r19 = r19 + r15
            int r15 = r14.bottomMargin
            int r15 = r19 + r15
            r19 = r1
            int r1 = r14.height
            r20 = r5
            r5 = r37
            int r1 = android.view.ViewGroup.getChildMeasureSpec(r5, r15, r1)
            int r15 = r14.width
            if (r15 != 0) goto L_0x071a
            r15 = 1073741824(0x40000000, float:2.0)
            if (r9 == r15) goto L_0x070e
            goto L_0x071c
        L_0x070e:
            if (r10 <= 0) goto L_0x0711
            goto L_0x0712
        L_0x0711:
            r10 = 0
        L_0x0712:
            int r10 = android.view.View.MeasureSpec.makeMeasureSpec(r10, r15)
            r11.measure(r10, r1)
            goto L_0x0731
        L_0x071a:
            r15 = 1073741824(0x40000000, float:2.0)
        L_0x071c:
            int r23 = r11.getMeasuredWidth()
            int r23 = r23 + r10
            if (r23 >= 0) goto L_0x0728
            r23 = 0
            r10 = 0
            goto L_0x072a
        L_0x0728:
            r10 = r23
        L_0x072a:
            int r10 = android.view.View.MeasureSpec.makeMeasureSpec(r10, r15)
            r11.measure(r10, r1)
        L_0x0731:
            int r1 = r11.getMeasuredState()
            r10 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r1 = r1 & r10
            int r7 = android.view.View.combineMeasuredStates(r7, r1)
            r1 = r19
            goto L_0x0744
        L_0x073f:
            r10 = r5
            r5 = r37
            r20 = r10
        L_0x0744:
            if (r16 == 0) goto L_0x075d
            int r10 = r6.C
            int r15 = r11.getMeasuredWidth()
            r19 = r1
            int r1 = r14.leftMargin
            int r15 = r15 + r1
            int r1 = r14.rightMargin
            r23 = r7
            r7 = 0
            int r1 = e.a.a.a.a.a((int) r15, (int) r1, (int) r7, (int) r10)
            r6.C = r1
            goto L_0x0776
        L_0x075d:
            r19 = r1
            r23 = r7
            int r1 = r6.C
            int r7 = r11.getMeasuredWidth()
            int r7 = r7 + r1
            int r10 = r14.leftMargin
            int r7 = r7 + r10
            int r10 = r14.rightMargin
            int r7 = r7 + r10
            int r7 = r7 + 0
            int r1 = java.lang.Math.max(r1, r7)
            r6.C = r1
        L_0x0776:
            r1 = 1073741824(0x40000000, float:2.0)
            r15 = r25
            if (r15 == r1) goto L_0x0783
            int r1 = r14.height
            r7 = -1
            if (r1 != r7) goto L_0x0783
            r1 = 1
            goto L_0x0784
        L_0x0783:
            r1 = 0
        L_0x0784:
            int r7 = r14.topMargin
            int r10 = r14.bottomMargin
            int r7 = r7 + r10
            int r10 = r11.getMeasuredHeight()
            int r10 = r10 + r7
            int r2 = java.lang.Math.max(r2, r10)
            if (r1 == 0) goto L_0x0795
            goto L_0x0796
        L_0x0795:
            r7 = r10
        L_0x0796:
            int r0 = java.lang.Math.max(r0, r7)
            if (r21 == 0) goto L_0x07a3
            int r1 = r14.height
            r7 = -1
            if (r1 != r7) goto L_0x07a4
            r1 = 1
            goto L_0x07a5
        L_0x07a3:
            r7 = -1
        L_0x07a4:
            r1 = 0
        L_0x07a5:
            if (r24 == 0) goto L_0x07cc
            int r11 = r11.getBaseline()
            if (r11 == r7) goto L_0x07cc
            int r7 = r14.b
            if (r7 >= 0) goto L_0x07b3
            int r7 = r6.B
        L_0x07b3:
            r7 = r7 & 112(0x70, float:1.57E-43)
            int r7 = r7 >> 4
            r7 = r7 & -2
            int r7 = r7 >> 1
            r14 = r12[r7]
            int r14 = java.lang.Math.max(r14, r11)
            r12[r7] = r14
            r14 = r13[r7]
            int r10 = r10 - r11
            int r10 = java.lang.Math.max(r14, r10)
            r13[r7] = r10
        L_0x07cc:
            r21 = r1
            r1 = r19
            r7 = r23
            goto L_0x07da
        L_0x07d3:
            r10 = r5
            r15 = r25
            r5 = r37
            r20 = r10
        L_0x07da:
            int r3 = r3 + 1
            r10 = r36
            r25 = r15
            r5 = r20
            goto L_0x06c0
        L_0x07e4:
            r5 = r37
            r15 = r25
            int r1 = r6.C
            int r3 = r35.getPaddingLeft()
            int r9 = r35.getPaddingRight()
            int r9 = r9 + r3
            int r9 = r9 + r1
            r6.C = r9
            r1 = 1
            r3 = r12[r1]
            r1 = -1
            if (r3 != r1) goto L_0x080e
            r3 = 0
            r3 = r12[r3]
            if (r3 != r1) goto L_0x080e
            r3 = 2
            r9 = r12[r3]
            if (r9 != r1) goto L_0x080e
            r3 = 3
            r9 = r12[r3]
            if (r9 == r1) goto L_0x080c
            goto L_0x080f
        L_0x080c:
            r3 = r2
            goto L_0x0840
        L_0x080e:
            r3 = 3
        L_0x080f:
            r1 = r12[r3]
            r9 = 0
            r10 = r12[r9]
            r11 = 1
            r14 = r12[r11]
            r16 = 2
            r12 = r12[r16]
            int r12 = java.lang.Math.max(r14, r12)
            int r10 = java.lang.Math.max(r10, r12)
            int r1 = java.lang.Math.max(r1, r10)
            r3 = r13[r3]
            r9 = r13[r9]
            r10 = r13[r11]
            r11 = r13[r16]
            int r10 = java.lang.Math.max(r10, r11)
            int r9 = java.lang.Math.max(r9, r10)
            int r3 = java.lang.Math.max(r3, r9)
            int r3 = r3 + r1
            int r3 = java.lang.Math.max(r2, r3)
        L_0x0840:
            if (r21 != 0) goto L_0x0847
            r1 = 1073741824(0x40000000, float:2.0)
            if (r15 == r1) goto L_0x0847
            goto L_0x0848
        L_0x0847:
            r0 = r3
        L_0x0848:
            int r1 = r35.getPaddingTop()
            int r2 = r35.getPaddingBottom()
            int r2 = r2 + r1
            int r2 = r2 + r0
            int r0 = r35.getSuggestedMinimumHeight()
            int r0 = java.lang.Math.max(r2, r0)
            r1 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r1 = r1 & r7
            r1 = r1 | r4
            int r2 = r7 << 16
            int r0 = android.view.View.resolveSizeAndState(r0, r5, r2)
            r6.setMeasuredDimension(r1, r0)
            if (r22 == 0) goto L_0x086e
            r0 = r36
            r6.a((int) r8, (int) r0)
        L_0x086e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.i0.onMeasure(int, int):void");
    }

    public void setBaselineAligned(boolean z2) {
        this.x = z2;
    }

    public void setBaselineAlignedChildIndex(int i2) {
        if (i2 < 0 || i2 >= getChildCount()) {
            StringBuilder a2 = e.a.a.a.a.a("base aligned child index out of range (0, ");
            a2.append(getChildCount());
            a2.append(")");
            throw new IllegalArgumentException(a2.toString());
        }
        this.y = i2;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.H) {
            this.H = drawable;
            boolean z2 = false;
            if (drawable != null) {
                this.I = drawable.getIntrinsicWidth();
                this.J = drawable.getIntrinsicHeight();
            } else {
                this.I = 0;
                this.J = 0;
            }
            if (drawable == null) {
                z2 = true;
            }
            setWillNotDraw(z2);
            requestLayout();
        }
    }

    public void setDividerPadding(int i2) {
        this.L = i2;
    }

    public void setGravity(int i2) {
        if (this.B != i2) {
            if ((8388615 & i2) == 0) {
                i2 |= 8388611;
            }
            if ((i2 & 112) == 0) {
                i2 |= 48;
            }
            this.B = i2;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i2) {
        int i3 = i2 & 8388615;
        int i4 = this.B;
        if ((8388615 & i4) != i3) {
            this.B = i3 | (-8388616 & i4);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z2) {
        this.E = z2;
    }

    public void setOrientation(int i2) {
        if (this.A != i2) {
            this.A = i2;
            requestLayout();
        }
    }

    public void setShowDividers(int i2) {
        if (i2 != this.K) {
            requestLayout();
        }
        this.K = i2;
    }

    public void setVerticalGravity(int i2) {
        int i3 = i2 & 112;
        int i4 = this.B;
        if ((i4 & 112) != i3) {
            this.B = i3 | (i4 & -113);
            requestLayout();
        }
    }

    public void setWeightSum(float f2) {
        this.D = Math.max(0.0f, f2);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public i0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a generateDefaultLayoutParams() {
        int i2 = this.A;
        if (i2 == 0) {
            return new a(-2, -2);
        }
        if (i2 == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    public i0(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Drawable drawable;
        int resourceId;
        this.x = true;
        this.y = -1;
        this.z = 0;
        this.B = 8388659;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LinearLayoutCompat, i2, 0);
        int i3 = obtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_orientation, -1);
        if (i3 >= 0) {
            setOrientation(i3);
        }
        int i4 = obtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_gravity, -1);
        if (i4 >= 0) {
            setGravity(i4);
        }
        boolean z2 = obtainStyledAttributes.getBoolean(R$styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z2) {
            setBaselineAligned(z2);
        }
        this.D = obtainStyledAttributes.getFloat(R$styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.y = obtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.E = obtainStyledAttributes.getBoolean(R$styleable.LinearLayoutCompat_measureWithLargestChild, false);
        int i5 = R$styleable.LinearLayoutCompat_divider;
        if (!obtainStyledAttributes.hasValue(i5) || (resourceId = obtainStyledAttributes.getResourceId(i5, 0)) == 0) {
            drawable = obtainStyledAttributes.getDrawable(i5);
        } else {
            drawable = d.b.b.a.a.c(context, resourceId);
        }
        setDividerDrawable(drawable);
        this.K = obtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_showDividers, 0);
        this.L = obtainStyledAttributes.getDimensionPixelSize(R$styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    public boolean a(int i2) {
        if (i2 == 0) {
            return (this.K & 1) != 0;
        }
        if (i2 == getChildCount()) {
            if ((this.K & 4) != 0) {
                return true;
            }
            return false;
        } else if ((this.K & 2) == 0) {
            return false;
        } else {
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                if (getChildAt(i3).getVisibility() != 8) {
                    return true;
                }
            }
            return false;
        }
    }

    public final void b(int i2, int i3) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), Constants.GB);
        for (int i4 = 0; i4 < i2; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                a aVar = (a) childAt.getLayoutParams();
                if (aVar.width == -1) {
                    int i5 = aVar.height;
                    aVar.height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i3, 0);
                    aVar.height = i5;
                }
            }
        }
    }

    public static class a extends ViewGroup.MarginLayoutParams {
        public float a;
        public int b;

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LinearLayoutCompat_Layout);
            this.a = obtainStyledAttributes.getFloat(R$styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.b = obtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public a(int i2, int i3) {
            super(i2, i3);
            this.b = -1;
            this.a = 0.0f;
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = -1;
        }
    }

    public final void a(int i2, int i3) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Constants.GB);
        for (int i4 = 0; i4 < i2; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                a aVar = (a) childAt.getLayoutParams();
                if (aVar.height == -1) {
                    int i5 = aVar.width;
                    aVar.width = childAt.getMeasuredWidth();
                    measureChildWithMargins(childAt, i3, 0, makeMeasureSpec, 0);
                    aVar.width = i5;
                }
            }
        }
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }
}
