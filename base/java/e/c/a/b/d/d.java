package e.c.a.b.d;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import com.google.android.material.R$dimen;
import com.microsoft.azure.storage.Constants;
import d.b.d.i.g;
import d.b.d.i.i;
import d.b.d.i.n;
import d.i.h.b;
import d.i.h.c;
import d.x.a;
import d.x.h;

public class d extends ViewGroup implements n {
    public static final int[] V = {16842912};
    public static final int[] W = {-16842910};
    public final int A;
    public final int B;
    public final int C;
    public final View.OnClickListener D;
    public final b<a> E = new c(5);
    public boolean F;
    public int G;
    public a[] H;
    public int I = 0;
    public int J = 0;
    public ColorStateList K;
    public int L;
    public ColorStateList M;
    public final ColorStateList N;
    public int O;
    public int P;
    public Drawable Q;
    public int R;
    public int[] S;
    public e T;
    public g U;
    public final d.x.n x;
    public final int y;
    public final int z;

    public d(Context context) {
        super(context, (AttributeSet) null);
        Resources resources = getResources();
        this.y = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_item_max_width);
        this.z = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_item_min_width);
        this.A = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_active_item_max_width);
        this.B = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_active_item_min_width);
        this.C = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_height);
        this.N = a(16842808);
        a aVar = new a();
        this.x = aVar;
        aVar.b(0);
        this.x.a(115);
        this.x.a((TimeInterpolator) new d.n.a.a.b());
        this.x.a((h) new e.c.a.b.j.d());
        this.D = new c(this);
        this.S = new int[5];
    }

    private a getNewItem() {
        a a = this.E.a();
        return a == null ? new a(getContext()) : a;
    }

    public void a(g gVar) {
        this.U = gVar;
    }

    public final boolean a(int i2, int i3) {
        if (i2 == -1) {
            if (i3 > 3) {
                return true;
            }
        } else if (i2 == 0) {
            return true;
        }
        return false;
    }

    public ColorStateList getIconTintList() {
        return this.K;
    }

    public Drawable getItemBackground() {
        a[] aVarArr = this.H;
        if (aVarArr == null || aVarArr.length <= 0) {
            return this.Q;
        }
        return aVarArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.R;
    }

    public int getItemIconSize() {
        return this.L;
    }

    public int getItemTextAppearanceActive() {
        return this.P;
    }

    public int getItemTextAppearanceInactive() {
        return this.O;
    }

    public ColorStateList getItemTextColor() {
        return this.M;
    }

    public int getLabelVisibilityMode() {
        return this.G;
    }

    public int getSelectedItemId() {
        return this.I;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                if (d.i.i.n.i(this) == 1) {
                    int i10 = i6 - i8;
                    childAt.layout(i10 - childAt.getMeasuredWidth(), 0, i10, i7);
                } else {
                    childAt.layout(i8, 0, childAt.getMeasuredWidth() + i8, i7);
                }
                i8 += childAt.getMeasuredWidth();
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.U.d().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.C, Constants.GB);
        if (!a(this.G, size2) || !this.F) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.A);
            int i4 = size - (size2 * min);
            for (int i5 = 0; i5 < childCount; i5++) {
                if (getChildAt(i5).getVisibility() != 8) {
                    int[] iArr = this.S;
                    iArr[i5] = min;
                    if (i4 > 0) {
                        iArr[i5] = iArr[i5] + 1;
                        i4--;
                    }
                } else {
                    this.S[i5] = 0;
                }
            }
        } else {
            View childAt = getChildAt(this.J);
            int i6 = this.B;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.A, Integer.MIN_VALUE), makeMeasureSpec);
                i6 = Math.max(i6, childAt.getMeasuredWidth());
            }
            int i7 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.z * i7), Math.min(i6, this.A));
            int i8 = size - min2;
            int min3 = Math.min(i8 / (i7 == 0 ? 1 : i7), this.y);
            int i9 = i8 - (i7 * min3);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    this.S[i10] = i10 == this.J ? min2 : min3;
                    if (i9 > 0) {
                        int[] iArr2 = this.S;
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.S[i10] = 0;
                }
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.S[i12], Constants.GB), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, Constants.GB), 0), View.resolveSizeAndState(this.C, makeMeasureSpec, 0));
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.K = colorStateList;
        a[] aVarArr = this.H;
        if (aVarArr != null) {
            for (a iconTintList : aVarArr) {
                iconTintList.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.Q = drawable;
        a[] aVarArr = this.H;
        if (aVarArr != null) {
            for (a itemBackground : aVarArr) {
                itemBackground.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i2) {
        this.R = i2;
        a[] aVarArr = this.H;
        if (aVarArr != null) {
            for (a itemBackground : aVarArr) {
                itemBackground.setItemBackground(i2);
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z2) {
        this.F = z2;
    }

    public void setItemIconSize(int i2) {
        this.L = i2;
        a[] aVarArr = this.H;
        if (aVarArr != null) {
            for (a iconSize : aVarArr) {
                iconSize.setIconSize(i2);
            }
        }
    }

    public void setItemTextAppearanceActive(int i2) {
        this.P = i2;
        a[] aVarArr = this.H;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.setTextAppearanceActive(i2);
                ColorStateList colorStateList = this.M;
                if (colorStateList != null) {
                    aVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i2) {
        this.O = i2;
        a[] aVarArr = this.H;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.setTextAppearanceInactive(i2);
                ColorStateList colorStateList = this.M;
                if (colorStateList != null) {
                    aVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.M = colorStateList;
        a[] aVarArr = this.H;
        if (aVarArr != null) {
            for (a textColor : aVarArr) {
                textColor.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i2) {
        this.G = i2;
    }

    public void setPresenter(e eVar) {
        this.T = eVar;
    }

    public ColorStateList a(int i2) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            return null;
        }
        ColorStateList b = d.b.b.a.a.b(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i3 = typedValue.data;
        int defaultColor = b.getDefaultColor();
        return new ColorStateList(new int[][]{W, V, ViewGroup.EMPTY_STATE_SET}, new int[]{b.getColorForState(W, defaultColor), i3, defaultColor});
    }

    public void a() {
        removeAllViews();
        a[] aVarArr = this.H;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                if (aVar != null) {
                    this.E.a(aVar);
                }
            }
        }
        if (this.U.size() == 0) {
            this.I = 0;
            this.J = 0;
            this.H = null;
            return;
        }
        this.H = new a[this.U.size()];
        boolean a = a(this.G, this.U.d().size());
        for (int i2 = 0; i2 < this.U.size(); i2++) {
            this.T.z = true;
            this.U.getItem(i2).setCheckable(true);
            this.T.z = false;
            a newItem = getNewItem();
            this.H[i2] = newItem;
            newItem.setIconTintList(this.K);
            newItem.setIconSize(this.L);
            newItem.setTextColor(this.N);
            newItem.setTextAppearanceInactive(this.O);
            newItem.setTextAppearanceActive(this.P);
            newItem.setTextColor(this.M);
            Drawable drawable = this.Q;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.R);
            }
            newItem.setShifting(a);
            newItem.setLabelVisibilityMode(this.G);
            newItem.a((i) this.U.getItem(i2), 0);
            newItem.setItemPosition(i2);
            newItem.setOnClickListener(this.D);
            addView(newItem);
        }
        int min = Math.min(this.U.size() - 1, this.J);
        this.J = min;
        this.U.getItem(min).setChecked(true);
    }
}
