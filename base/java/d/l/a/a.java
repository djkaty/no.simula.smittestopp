package d.l.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.microsoft.azure.storage.Constants;
import d.i.i.n;
import java.util.ArrayList;
import java.util.List;

public class a extends ViewGroup {
    public static final int[] N = {16842931};
    public boolean A;
    public boolean B;
    public int C;
    public int D;
    public int E;
    public int F;
    public C0033a G;
    public List<C0033a> H;
    public Drawable I;
    public Drawable J;
    public Drawable K;
    public Rect L;
    public Matrix M;
    public float x;
    public int y;
    public float z;

    /* renamed from: d.l.a.a$a  reason: collision with other inner class name */
    public interface C0033a {
        void a(View view, float f2);
    }

    /* JADX WARNING: type inference failed for: r6v1, types: [java.lang.Throwable, d.k.b.a] */
    public void a(int i2, int i3) {
        View a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i3, n.i(this));
        if (i3 == 3) {
            this.C = i2;
        } else if (i3 == 5) {
            this.D = i2;
        } else if (i3 == 8388611) {
            this.E = i2;
        } else if (i3 == 8388613) {
            this.F = i2;
        }
        ? r6 = 0;
        if (i2 != 0) {
            r6.a();
        }
        if (i2 == 1) {
            View a2 = a(absoluteGravity);
            if (a2 == null) {
                return;
            }
            if (d(a2)) {
                b bVar = (b) a2.getLayoutParams();
                if (this.B) {
                    bVar.b = 0.0f;
                    bVar.f644d = 0;
                    invalidate();
                    return;
                }
                bVar.f644d |= 4;
                if (a(a2, 3)) {
                    a2.getWidth();
                    a2.getTop();
                    throw r6;
                }
                getWidth();
                a2.getTop();
                throw r6;
            }
            throw new IllegalArgumentException("View " + a2 + " is not a sliding drawer");
        } else if (i2 == 2 && (a = a(absoluteGravity)) != null) {
            e(a);
        }
    }

    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            int i4 = 0;
            boolean z2 = false;
            while (i4 < childCount) {
                View childAt = getChildAt(i4);
                if (!d(childAt)) {
                    throw null;
                } else if (d(childAt)) {
                    if ((((b) childAt.getLayoutParams()).f644d & 1) == 1) {
                        childAt.addFocusables(arrayList, i2, i3);
                        z2 = true;
                    }
                    i4++;
                } else {
                    throw new IllegalArgumentException("View " + childAt + " is not a drawer");
                }
            }
            if (!z2) {
                throw null;
            }
            throw null;
        }
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (a() != null || d(view)) {
            n.e(view, 4);
        } else {
            view.setImportantForAccessibility(1);
        }
    }

    public int b(View view) {
        return Gravity.getAbsoluteGravity(((b) view.getLayoutParams()).a, n.i(this));
    }

    public boolean c(View view) {
        return ((b) view.getLayoutParams()).a == 0;
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof b) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        int childCount = getChildCount();
        float f2 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            f2 = Math.max(f2, ((b) getChildAt(i2).getLayoutParams()).b);
        }
        this.z = f2;
        throw null;
    }

    public boolean d(View view) {
        int absoluteGravity = Gravity.getAbsoluteGravity(((b) view.getLayoutParams()).a, n.i(view));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean z2;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.z <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            View childAt = getChildAt(i2);
            if (this.L == null) {
                this.L = new Rect();
            }
            childAt.getHitRect(this.L);
            if (this.L.contains((int) x2, (int) y2) && !c(childAt)) {
                if (!childAt.getMatrix().isIdentity()) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation((float) (getScrollX() - childAt.getLeft()), (float) (getScrollY() - childAt.getTop()));
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.M == null) {
                            this.M = new Matrix();
                        }
                        matrix.invert(this.M);
                        obtain.transform(this.M);
                    }
                    z2 = childAt.dispatchGenericMotionEvent(obtain);
                    obtain.recycle();
                } else {
                    float scrollX = (float) (getScrollX() - childAt.getLeft());
                    float scrollY = (float) (getScrollY() - childAt.getTop());
                    motionEvent.offsetLocation(scrollX, scrollY);
                    z2 = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX, -scrollY);
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        Canvas canvas2 = canvas;
        View view2 = view;
        int height = getHeight();
        boolean c2 = c(view2);
        int width = getWidth();
        int save = canvas.save();
        if (c2) {
            int childCount = getChildCount();
            int i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt != view2 && childAt.getVisibility() == 0) {
                    Drawable background = childAt.getBackground();
                    if ((background != null && background.getOpacity() == -1) && d(childAt) && childAt.getHeight() >= height) {
                        if (a(childAt, 3)) {
                            int right = childAt.getRight();
                            if (right > i2) {
                                i2 = right;
                            }
                        } else {
                            int left = childAt.getLeft();
                            if (left < width) {
                                width = left;
                            }
                        }
                    }
                }
            }
            canvas2.clipRect(i2, 0, width, getHeight());
        }
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas2.restoreToCount(save);
        if (this.z > 0.0f && c2) {
            throw null;
        } else if (this.J != null && a(view2, 3)) {
            this.J.getIntrinsicWidth();
            view.getRight();
            throw null;
        } else if (this.K == null || !a(view2, 5)) {
            return drawChild;
        } else {
            this.K.getIntrinsicWidth();
            view.getLeft();
            getWidth();
            throw null;
        }
    }

    public void e(View view) {
        if (d(view)) {
            b bVar = (b) view.getLayoutParams();
            if (this.B) {
                bVar.b = 1.0f;
                bVar.f644d = 1;
                a(view, true);
                invalidate();
                return;
            }
            bVar.f644d |= 2;
            if (a(view, 3)) {
                view.getTop();
                throw null;
            }
            getWidth();
            view.getWidth();
            view.getTop();
            throw null;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new b(-1, -1);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof b) {
            return new b((b) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new b((ViewGroup.MarginLayoutParams) layoutParams) : new b(layoutParams);
    }

    public float getDrawerElevation() {
        return this.x;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.I;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.B = true;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.B = true;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        motionEvent.getActionMasked();
        throw null;
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            if (b() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        View b2 = b();
        if (b2 != null && a(b2) == 0) {
            a(false);
            throw null;
        } else if (b2 != null) {
            return true;
        } else {
            return false;
        }
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        float f2;
        int i6;
        this.A = true;
        int i7 = i4 - i2;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                b bVar = (b) childAt.getLayoutParams();
                if (c(childAt)) {
                    int i9 = bVar.leftMargin;
                    childAt.layout(i9, bVar.topMargin, childAt.getMeasuredWidth() + i9, childAt.getMeasuredHeight() + bVar.topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        float f3 = (float) measuredWidth;
                        i6 = (-measuredWidth) + ((int) (bVar.b * f3));
                        f2 = ((float) (measuredWidth + i6)) / f3;
                    } else {
                        float f4 = (float) measuredWidth;
                        int i10 = i7 - ((int) (bVar.b * f4));
                        f2 = ((float) (i7 - i10)) / f4;
                        i6 = i10;
                    }
                    boolean z3 = f2 != bVar.b;
                    int i11 = bVar.a & 112;
                    if (i11 == 16) {
                        int i12 = i5 - i3;
                        int i13 = (i12 - measuredHeight) / 2;
                        int i14 = bVar.topMargin;
                        if (i13 < i14) {
                            i13 = i14;
                        } else {
                            int i15 = i13 + measuredHeight;
                            int i16 = bVar.bottomMargin;
                            if (i15 > i12 - i16) {
                                i13 = (i12 - i16) - measuredHeight;
                            }
                        }
                        childAt.layout(i6, i13, measuredWidth + i6, measuredHeight + i13);
                    } else if (i11 != 80) {
                        int i17 = bVar.topMargin;
                        childAt.layout(i6, i17, measuredWidth + i6, measuredHeight + i17);
                    } else {
                        int i18 = i5 - i3;
                        childAt.layout(i6, (i18 - bVar.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i6, i18 - bVar.bottomMargin);
                    }
                    if (z3) {
                        a(childAt, f2);
                    }
                    int i19 = bVar.b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i19) {
                        childAt.setVisibility(i19);
                    }
                }
            }
        }
        this.A = false;
        this.B = false;
    }

    @SuppressLint({"WrongConstant"})
    public void onMeasure(int i2, int i3) {
        String str;
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        if (!(mode == 1073741824 && mode2 == 1073741824)) {
            if (isInEditMode()) {
                if (mode != Integer.MIN_VALUE && mode == 0) {
                    size = 300;
                }
                if (mode2 != Integer.MIN_VALUE && mode2 == 0) {
                    size2 = 300;
                }
            } else {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
        }
        setMeasuredDimension(size, size2);
        n.i(this);
        int childCount = getChildCount();
        boolean z2 = false;
        boolean z3 = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                b bVar = (b) childAt.getLayoutParams();
                if (c(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - bVar.leftMargin) - bVar.rightMargin, Constants.GB), View.MeasureSpec.makeMeasureSpec((size2 - bVar.topMargin) - bVar.bottomMargin, Constants.GB));
                } else if (d(childAt)) {
                    float elevation = childAt.getElevation();
                    float f2 = this.x;
                    if (elevation != f2) {
                        childAt.setElevation(f2);
                    }
                    int b2 = b(childAt) & 7;
                    boolean z4 = b2 == 3;
                    if ((!z4 || !z2) && (z4 || !z3)) {
                        if (z4) {
                            z2 = true;
                        } else {
                            z3 = true;
                        }
                        childAt.measure(ViewGroup.getChildMeasureSpec(i2, bVar.leftMargin + 0 + bVar.rightMargin, bVar.width), ViewGroup.getChildMeasureSpec(i3, bVar.topMargin + bVar.bottomMargin, bVar.height));
                    } else {
                        StringBuilder a = e.a.a.a.a.a("Child drawer has absolute gravity ");
                        if ((b2 & 3) != 3) {
                            str = (b2 & 5) == 5 ? "RIGHT" : Integer.toHexString(b2);
                        } else {
                            str = "LEFT";
                        }
                        a.append(str);
                        a.append(" but this ");
                        a.append("DrawerLayout");
                        a.append(" already has a ");
                        a.append("drawer view along that edge");
                        throw new IllegalStateException(a.toString());
                    }
                } else {
                    throw new IllegalStateException("Child " + childAt + " at index " + i4 + " does not have a valid layout_gravity - must be Gravity.LEFT, " + "Gravity.RIGHT or Gravity.NO_GRAVITY");
                }
            }
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        View a;
        if (!(parcelable instanceof c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.onRestoreInstanceState(cVar.x);
        int i2 = cVar.z;
        if (!(i2 == 0 || (a = a(i2)) == null)) {
            e(a);
        }
        int i3 = cVar.A;
        if (i3 != 3) {
            a(i3, 3);
        }
        int i4 = cVar.B;
        if (i4 != 3) {
            a(i4, 5);
        }
        int i5 = cVar.C;
        if (i5 != 3) {
            a(i5, 8388611);
        }
        int i6 = cVar.D;
        if (i6 != 3) {
            a(i6, 8388613);
        }
    }

    public void onRtlPropertiesChanged(int i2) {
    }

    public Parcelable onSaveInstanceState() {
        c cVar = new c(super.onSaveInstanceState());
        int childCount = getChildCount();
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            b bVar = (b) getChildAt(i2).getLayoutParams();
            boolean z2 = true;
            boolean z3 = bVar.f644d == 1;
            if (bVar.f644d != 2) {
                z2 = false;
            }
            if (z3 || z2) {
                cVar.z = bVar.a;
            } else {
                i2++;
            }
        }
        cVar.A = this.C;
        cVar.B = this.D;
        cVar.C = this.E;
        cVar.D = this.F;
        return cVar;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        throw null;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        if (z2) {
            a(true);
            throw null;
        }
    }

    public void requestLayout() {
        if (!this.A) {
            super.requestLayout();
        }
    }

    public void setDrawerElevation(float f2) {
        this.x = f2;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (d(childAt)) {
                childAt.setElevation(this.x);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(C0033a aVar) {
        List<C0033a> list;
        C0033a aVar2 = this.G;
        if (!(aVar2 == null || aVar2 == null || (list = this.H) == null)) {
            list.remove(aVar2);
        }
        if (aVar != null) {
            if (this.H == null) {
                this.H = new ArrayList();
            }
            this.H.add(aVar);
        }
        this.G = aVar;
    }

    public void setDrawerLockMode(int i2) {
        a(i2, 3);
        a(i2, 5);
    }

    public void setScrimColor(int i2) {
        this.y = i2;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.I = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i2) {
        this.I = new ColorDrawable(i2);
        invalidate();
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public void setStatusBarBackground(int i2) {
        this.I = i2 != 0 ? d.i.b.a.c(getContext(), i2) : null;
        invalidate();
    }

    public View b() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (d(childAt)) {
                if (d(childAt)) {
                    if (((b) childAt.getLayoutParams()).b > 0.0f) {
                        return childAt;
                    }
                } else {
                    throw new IllegalArgumentException("View " + childAt + " is not a drawer");
                }
            }
        }
        return null;
    }

    public static class b extends ViewGroup.MarginLayoutParams {
        public int a = 0;
        public float b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f643c;

        /* renamed from: d  reason: collision with root package name */
        public int f644d;

        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.N);
            this.a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public b(int i2, int i3) {
            super(i2, i3);
        }

        public b(b bVar) {
            super(bVar);
            this.a = bVar.a;
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public static class c extends d.k.a.a {
        public static final Parcelable.Creator<c> CREATOR = new C0034a();
        public int A;
        public int B;
        public int C;
        public int D;
        public int z = 0;

        /* renamed from: d.l.a.a$c$a  reason: collision with other inner class name */
        public static class C0034a implements Parcelable.ClassLoaderCreator<c> {
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
            this.A = parcel.readInt();
            this.B = parcel.readInt();
            this.C = parcel.readInt();
            this.D = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.x, i2);
            parcel.writeInt(this.z);
            parcel.writeInt(this.A);
            parcel.writeInt(this.B);
            parcel.writeInt(this.C);
            parcel.writeInt(this.D);
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public int a(View view) {
        if (d(view)) {
            int i2 = ((b) view.getLayoutParams()).a;
            int i3 = n.i(this);
            if (i2 == 3) {
                int i4 = this.C;
                if (i4 != 3) {
                    return i4;
                }
                int i5 = i3 == 0 ? this.E : this.F;
                if (i5 != 3) {
                    return i5;
                }
            } else if (i2 == 5) {
                int i6 = this.D;
                if (i6 != 3) {
                    return i6;
                }
                int i7 = i3 == 0 ? this.F : this.E;
                if (i7 != 3) {
                    return i7;
                }
            } else if (i2 == 8388611) {
                int i8 = this.E;
                if (i8 != 3) {
                    return i8;
                }
                int i9 = i3 == 0 ? this.C : this.D;
                if (i9 != 3) {
                    return i9;
                }
            } else if (i2 == 8388613) {
                int i10 = this.F;
                if (i10 != 3) {
                    return i10;
                }
                int i11 = i3 == 0 ? this.D : this.C;
                if (i11 != 3) {
                    return i11;
                }
            }
            return 0;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public final void a(View view, boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((z2 || d(childAt)) && (!z2 || childAt != view)) {
                n.e(childAt, 4);
            } else {
                n.e(childAt, 1);
            }
        }
    }

    public void a(View view, float f2) {
        b bVar = (b) view.getLayoutParams();
        if (f2 != bVar.b) {
            bVar.b = f2;
            List<C0033a> list = this.H;
            if (list != null) {
                int size = list.size();
                while (true) {
                    size--;
                    if (size >= 0) {
                        this.H.get(size).a(view, f2);
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public boolean a(View view, int i2) {
        return (b(view) & i2) == i2;
    }

    public View a() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((((b) childAt.getLayoutParams()).f644d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    public View a(int i2) {
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, n.i(this)) & 7;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if ((b(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    public void a(boolean z2) {
        int childCount = getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            View childAt = getChildAt(i2);
            b bVar = (b) childAt.getLayoutParams();
            if (!d(childAt) || (z2 && !bVar.f643c)) {
                i2++;
            } else {
                childAt.getWidth();
                if (a(childAt, 3)) {
                    childAt.getTop();
                    throw null;
                }
                getWidth();
                childAt.getTop();
                throw null;
            }
        }
        throw null;
    }
}
