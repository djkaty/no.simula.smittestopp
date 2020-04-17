package d.b.e;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R$attr;
import com.microsoft.azure.storage.Constants;
import d.i.i.s;
import d.i.j.c;
import java.lang.reflect.Field;

public class f0 extends ListView {
    public int A = 0;
    public int B = 0;
    public int C;
    public Field D;
    public a E;
    public boolean F;
    public boolean G;
    public boolean H;
    public s I;
    public c J;
    public b K;
    public final Rect x = new Rect();
    public int y = 0;
    public int z = 0;

    public static class a extends d.b.c.a.c {
        public boolean y = true;

        public a(Drawable drawable) {
            super(drawable);
        }

        public void draw(Canvas canvas) {
            if (this.y) {
                this.x.draw(canvas);
            }
        }

        public void setHotspot(float f2, float f3) {
            if (this.y) {
                this.x.setHotspot(f2, f3);
            }
        }

        public void setHotspotBounds(int i2, int i3, int i4, int i5) {
            if (this.y) {
                this.x.setHotspotBounds(i2, i3, i4, i5);
            }
        }

        public boolean setState(int[] iArr) {
            if (this.y) {
                return this.x.setState(iArr);
            }
            return false;
        }

        public boolean setVisible(boolean z, boolean z2) {
            if (this.y) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        public void run() {
            f0 f0Var = f0.this;
            f0Var.K = null;
            f0Var.drawableStateChanged();
        }
    }

    public f0(Context context, boolean z2) {
        super(context, (AttributeSet) null, R$attr.dropDownListViewStyle);
        this.G = z2;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.D = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z2) {
        a aVar = this.E;
        if (aVar != null) {
            aVar.y = z2;
        }
    }

    public int a(int i2, int i3, int i4) {
        int i5;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i6 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < count) {
            int itemViewType = adapter.getItemViewType(i7);
            if (itemViewType != i8) {
                view = null;
                i8 = itemViewType;
            }
            view = adapter.getView(i7, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i10 = layoutParams.height;
            if (i10 > 0) {
                i5 = View.MeasureSpec.makeMeasureSpec(i10, Constants.GB);
            } else {
                i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i2, i5);
            view.forceLayout();
            if (i7 > 0) {
                i6 += dividerHeight;
            }
            i6 += view.getMeasuredHeight();
            if (i6 >= i3) {
                return (i4 < 0 || i7 <= i4 || i9 <= 0 || i6 == i3) ? i3 : i9;
            }
            if (i4 >= 0 && i7 >= i4) {
                i9 = i6;
            }
            i7++;
        }
        return i6;
    }

    public void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.x.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.x);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    public void drawableStateChanged() {
        if (this.K == null) {
            super.drawableStateChanged();
            setSelectorEnabled(true);
            a();
        }
    }

    public boolean hasFocus() {
        return this.G || super.hasFocus();
    }

    public boolean hasWindowFocus() {
        return this.G || super.hasWindowFocus();
    }

    public boolean isFocused() {
        return this.G || super.isFocused();
    }

    public boolean isInTouchMode() {
        return (this.G && this.F) || super.isInTouchMode();
    }

    public void onDetachedFromWindow() {
        this.K = null;
        super.onDetachedFromWindow();
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.K == null) {
            b bVar = new b();
            this.K = bVar;
            f0.this.post(bVar);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (!(pointToPosition == -1 || pointToPosition == getSelectedItemPosition())) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                a();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.C = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        b bVar = this.K;
        if (bVar != null) {
            f0 f0Var = f0.this;
            f0Var.K = null;
            f0Var.removeCallbacks(bVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z2) {
        this.F = z2;
    }

    public void setSelector(Drawable drawable) {
        a aVar = drawable != null ? new a(drawable) : null;
        this.E = aVar;
        super.setSelector(aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.y = rect.left;
        this.z = rect.top;
        this.A = rect.right;
        this.B = rect.bottom;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0010, code lost:
        if (r3 != 3) goto L_0x0121;
     */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x013c  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0143  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x014b  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x0161  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(android.view.MotionEvent r17, int r18) {
        /*
            r16 = this;
            r1 = r16
            r2 = r17
            int r3 = r17.getActionMasked()
            r4 = 0
            r5 = 1
            if (r3 == r5) goto L_0x0016
            r0 = 2
            if (r3 == r0) goto L_0x0014
            r0 = 3
            if (r3 == r0) goto L_0x001d
            goto L_0x0121
        L_0x0014:
            r0 = 1
            goto L_0x0017
        L_0x0016:
            r0 = 0
        L_0x0017:
            int r6 = r17.findPointerIndex(r18)
            if (r6 >= 0) goto L_0x0020
        L_0x001d:
            r0 = 0
            goto L_0x0122
        L_0x0020:
            float r7 = r2.getX(r6)
            int r7 = (int) r7
            float r6 = r2.getY(r6)
            int r6 = (int) r6
            int r8 = r1.pointToPosition(r7, r6)
            r9 = -1
            if (r8 != r9) goto L_0x0033
            goto L_0x0123
        L_0x0033:
            int r0 = r16.getFirstVisiblePosition()
            int r0 = r8 - r0
            android.view.View r10 = r1.getChildAt(r0)
            float r7 = (float) r7
            float r6 = (float) r6
            r1.H = r5
            r1.drawableHotspotChanged(r7, r6)
            boolean r0 = r16.isPressed()
            if (r0 != 0) goto L_0x004d
            r1.setPressed(r5)
        L_0x004d:
            r16.layoutChildren()
            int r0 = r1.C
            if (r0 == r9) goto L_0x006a
            int r11 = r16.getFirstVisiblePosition()
            int r0 = r0 - r11
            android.view.View r0 = r1.getChildAt(r0)
            if (r0 == 0) goto L_0x006a
            if (r0 == r10) goto L_0x006a
            boolean r11 = r0.isPressed()
            if (r11 == 0) goto L_0x006a
            r0.setPressed(r4)
        L_0x006a:
            r1.C = r8
            int r0 = r10.getLeft()
            float r0 = (float) r0
            float r0 = r7 - r0
            int r11 = r10.getTop()
            float r11 = (float) r11
            float r11 = r6 - r11
            r10.drawableHotspotChanged(r0, r11)
            boolean r0 = r10.isPressed()
            if (r0 != 0) goto L_0x0086
            r10.setPressed(r5)
        L_0x0086:
            android.graphics.drawable.Drawable r11 = r16.getSelector()
            if (r11 == 0) goto L_0x0090
            if (r8 == r9) goto L_0x0090
            r12 = 1
            goto L_0x0091
        L_0x0090:
            r12 = 0
        L_0x0091:
            if (r12 == 0) goto L_0x0096
            r11.setVisible(r4, r4)
        L_0x0096:
            android.graphics.Rect r0 = r1.x
            int r13 = r10.getLeft()
            int r14 = r10.getTop()
            int r15 = r10.getRight()
            int r5 = r10.getBottom()
            r0.set(r13, r14, r15, r5)
            int r5 = r0.left
            int r13 = r1.y
            int r5 = r5 - r13
            r0.left = r5
            int r5 = r0.top
            int r13 = r1.z
            int r5 = r5 - r13
            r0.top = r5
            int r5 = r0.right
            int r13 = r1.A
            int r5 = r5 + r13
            r0.right = r5
            int r5 = r0.bottom
            int r13 = r1.B
            int r5 = r5 + r13
            r0.bottom = r5
            java.lang.reflect.Field r0 = r1.D     // Catch:{ IllegalAccessException -> 0x00e7 }
            boolean r0 = r0.getBoolean(r1)     // Catch:{ IllegalAccessException -> 0x00e7 }
            boolean r5 = r10.isEnabled()     // Catch:{ IllegalAccessException -> 0x00e7 }
            if (r5 == r0) goto L_0x00eb
            java.lang.reflect.Field r5 = r1.D     // Catch:{ IllegalAccessException -> 0x00e7 }
            if (r0 != 0) goto L_0x00d9
            r0 = 1
            goto L_0x00da
        L_0x00d9:
            r0 = 0
        L_0x00da:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch:{ IllegalAccessException -> 0x00e7 }
            r5.set(r1, r0)     // Catch:{ IllegalAccessException -> 0x00e7 }
            if (r8 == r9) goto L_0x00eb
            r16.refreshDrawableState()     // Catch:{ IllegalAccessException -> 0x00e7 }
            goto L_0x00eb
        L_0x00e7:
            r0 = move-exception
            r0.printStackTrace()
        L_0x00eb:
            if (r12 == 0) goto L_0x0106
            android.graphics.Rect r0 = r1.x
            float r5 = r0.exactCenterX()
            float r0 = r0.exactCenterY()
            int r12 = r16.getVisibility()
            if (r12 != 0) goto L_0x00ff
            r12 = 1
            goto L_0x0100
        L_0x00ff:
            r12 = 0
        L_0x0100:
            r11.setVisible(r12, r4)
            r11.setHotspot(r5, r0)
        L_0x0106:
            android.graphics.drawable.Drawable r0 = r16.getSelector()
            if (r0 == 0) goto L_0x0111
            if (r8 == r9) goto L_0x0111
            r0.setHotspot(r7, r6)
        L_0x0111:
            r1.setSelectorEnabled(r4)
            r16.refreshDrawableState()
            r5 = 1
            if (r3 != r5) goto L_0x0121
            long r5 = r1.getItemIdAtPosition(r8)
            r1.performItemClick(r10, r8, r5)
        L_0x0121:
            r0 = 1
        L_0x0122:
            r5 = 0
        L_0x0123:
            if (r0 == 0) goto L_0x0127
            if (r5 == 0) goto L_0x0149
        L_0x0127:
            r1.H = r4
            r1.setPressed(r4)
            r16.drawableStateChanged()
            int r3 = r1.C
            int r5 = r16.getFirstVisiblePosition()
            int r3 = r3 - r5
            android.view.View r3 = r1.getChildAt(r3)
            if (r3 == 0) goto L_0x013f
            r3.setPressed(r4)
        L_0x013f:
            d.i.i.s r3 = r1.I
            if (r3 == 0) goto L_0x0149
            r3.a()
            r3 = 0
            r1.I = r3
        L_0x0149:
            if (r0 == 0) goto L_0x0161
            d.i.j.c r3 = r1.J
            if (r3 != 0) goto L_0x0156
            d.i.j.c r3 = new d.i.j.c
            r3.<init>(r1)
            r1.J = r3
        L_0x0156:
            d.i.j.c r3 = r1.J
            boolean r4 = r3.M
            r5 = 1
            r3.M = r5
            r3.onTouch(r1, r2)
            goto L_0x016e
        L_0x0161:
            d.i.j.c r2 = r1.J
            if (r2 == 0) goto L_0x016e
            boolean r3 = r2.M
            if (r3 == 0) goto L_0x016c
            r2.a()
        L_0x016c:
            r2.M = r4
        L_0x016e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.f0.a(android.view.MotionEvent, int):boolean");
    }

    public final void a() {
        Drawable selector = getSelector();
        if (selector != null && this.H && isPressed()) {
            selector.setState(getDrawableState());
        }
    }
}
