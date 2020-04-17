package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import androidx.appcompat.R$layout;
import androidx.appcompat.R$styleable;
import com.microsoft.azure.storage.Constants;
import d.b.d.i.g;
import d.b.d.i.m;
import d.b.e.c;
import d.b.e.d1;
import d.i.i.n;

public class ActionBarContextView extends d.b.e.a {
    public CharSequence F;
    public CharSequence G;
    public View H;
    public View I;
    public LinearLayout J;
    public TextView K;
    public TextView L;
    public int M;
    public int N;
    public boolean O;
    public int P;

    public class a implements View.OnClickListener {
        public final /* synthetic */ d.b.d.a x;

        public a(ActionBarContextView actionBarContextView, d.b.d.a aVar) {
            this.x = aVar;
        }

        public void onClick(View view) {
            this.x.a();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, (AttributeSet) null);
    }

    public final void a() {
        if (this.J == null) {
            LayoutInflater.from(getContext()).inflate(R$layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.J = linearLayout;
            this.K = (TextView) linearLayout.findViewById(R$id.action_bar_title);
            this.L = (TextView) this.J.findViewById(R$id.action_bar_subtitle);
            if (this.M != 0) {
                this.K.setTextAppearance(getContext(), this.M);
            }
            if (this.N != 0) {
                this.L.setTextAppearance(getContext(), this.N);
            }
        }
        this.K.setText(this.F);
        this.L.setText(this.G);
        boolean z = !TextUtils.isEmpty(this.F);
        boolean z2 = !TextUtils.isEmpty(this.G);
        int i2 = 0;
        this.L.setVisibility(z2 ? 0 : 8);
        LinearLayout linearLayout2 = this.J;
        if (!z && !z2) {
            i2 = 8;
        }
        linearLayout2.setVisibility(i2);
        if (this.J.getParent() == null) {
            addView(this.J);
        }
    }

    public void b() {
        removeAllViews();
        this.I = null;
        this.z = null;
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.G;
    }

    public CharSequence getTitle() {
        return this.F;
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.A;
        if (cVar != null) {
            cVar.c();
            this.A.e();
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(ActionBarContextView.class.getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.F);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        boolean a2 = d1.a(this);
        int paddingRight = a2 ? (i4 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
        View view = this.H;
        if (!(view == null || view.getVisibility() == 8)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.H.getLayoutParams();
            int i6 = a2 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i7 = a2 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i8 = a2 ? paddingRight - i6 : paddingRight + i6;
            int a3 = i8 + a(this.H, i8, paddingTop, paddingTop2, a2);
            paddingRight = a2 ? a3 - i7 : a3 + i7;
        }
        int i9 = paddingRight;
        LinearLayout linearLayout = this.J;
        if (!(linearLayout == null || this.I != null || linearLayout.getVisibility() == 8)) {
            i9 += a(this.J, i9, paddingTop, paddingTop2, a2);
        }
        int i10 = i9;
        View view2 = this.I;
        if (view2 != null) {
            a(view2, i10, paddingTop, paddingTop2, a2);
        }
        int paddingLeft = a2 ? getPaddingLeft() : (i4 - i2) - getPaddingRight();
        ActionMenuView actionMenuView = this.z;
        if (actionMenuView != null) {
            a(actionMenuView, paddingLeft, paddingTop, paddingTop2, !a2);
        }
    }

    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int i4 = Constants.GB;
        if (mode != 1073741824) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i3) != 0) {
            int size = View.MeasureSpec.getSize(i2);
            int i5 = this.B;
            if (i5 <= 0) {
                i5 = View.MeasureSpec.getSize(i3);
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i6 = i5 - paddingBottom;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
            View view = this.H;
            if (view != null) {
                int a2 = a(view, paddingLeft, makeMeasureSpec, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.H.getLayoutParams();
                paddingLeft = a2 - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            ActionMenuView actionMenuView = this.z;
            if (actionMenuView != null && actionMenuView.getParent() == this) {
                paddingLeft = a(this.z, paddingLeft, makeMeasureSpec, 0);
            }
            LinearLayout linearLayout = this.J;
            if (linearLayout != null && this.I == null) {
                if (this.O) {
                    this.J.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                    int measuredWidth = this.J.getMeasuredWidth();
                    boolean z = measuredWidth <= paddingLeft;
                    if (z) {
                        paddingLeft -= measuredWidth;
                    }
                    this.J.setVisibility(z ? 0 : 8);
                } else {
                    paddingLeft = a(linearLayout, paddingLeft, makeMeasureSpec, 0);
                }
            }
            View view2 = this.I;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                int i7 = layoutParams.width != -2 ? Constants.GB : Integer.MIN_VALUE;
                int i8 = layoutParams.width;
                if (i8 >= 0) {
                    paddingLeft = Math.min(i8, paddingLeft);
                }
                if (layoutParams.height == -2) {
                    i4 = Integer.MIN_VALUE;
                }
                int i9 = layoutParams.height;
                if (i9 >= 0) {
                    i6 = Math.min(i9, i6);
                }
                this.I.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i7), View.MeasureSpec.makeMeasureSpec(i6, i4));
            }
            if (this.B <= 0) {
                int childCount = getChildCount();
                int i10 = 0;
                for (int i11 = 0; i11 < childCount; i11++) {
                    int measuredHeight = getChildAt(i11).getMeasuredHeight() + paddingBottom;
                    if (measuredHeight > i10) {
                        i10 = measuredHeight;
                    }
                }
                setMeasuredDimension(size, i10);
                return;
            }
            setMeasuredDimension(size, i5);
        } else {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
    }

    public void setContentHeight(int i2) {
        this.B = i2;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.I;
        if (view2 != null) {
            removeView(view2);
        }
        this.I = view;
        if (!(view == null || (linearLayout = this.J) == null)) {
            removeView(linearLayout);
            this.J = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.G = charSequence;
        a();
    }

    public void setTitle(CharSequence charSequence) {
        this.F = charSequence;
        a();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.O) {
            requestLayout();
        }
        this.O = z;
    }

    public /* bridge */ /* synthetic */ void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Drawable drawable;
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionMode, i2, 0);
        int i3 = R$styleable.ActionMode_background;
        if (!obtainStyledAttributes.hasValue(i3) || (resourceId = obtainStyledAttributes.getResourceId(i3, 0)) == 0) {
            drawable = obtainStyledAttributes.getDrawable(i3);
        } else {
            drawable = d.b.b.a.a.c(context, resourceId);
        }
        n.a((View) this, drawable);
        this.M = obtainStyledAttributes.getResourceId(R$styleable.ActionMode_titleTextStyle, 0);
        this.N = obtainStyledAttributes.getResourceId(R$styleable.ActionMode_subtitleTextStyle, 0);
        this.B = obtainStyledAttributes.getLayoutDimension(R$styleable.ActionMode_height, 0);
        this.P = obtainStyledAttributes.getResourceId(R$styleable.ActionMode_closeItemLayout, R$layout.abc_action_mode_close_item_material);
        obtainStyledAttributes.recycle();
    }

    public void a(d.b.d.a aVar) {
        View view = this.H;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.P, this, false);
            this.H = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.H);
        }
        this.H.findViewById(R$id.action_mode_close_button).setOnClickListener(new a(this, aVar));
        g gVar = (g) aVar.c();
        c cVar = this.A;
        if (cVar != null) {
            cVar.a();
        }
        c cVar2 = new c(getContext());
        this.A = cVar2;
        cVar2.J = true;
        cVar2.K = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        gVar.a((m) this.A, this.y);
        c cVar3 = this.A;
        d.b.d.i.n nVar = cVar3.E;
        if (nVar == null) {
            d.b.d.i.n nVar2 = (d.b.d.i.n) cVar3.A.inflate(cVar3.C, this, false);
            cVar3.E = nVar2;
            nVar2.a(cVar3.z);
            cVar3.a(true);
        }
        d.b.d.i.n nVar3 = cVar3.E;
        if (nVar != nVar3) {
            ((ActionMenuView) nVar3).setPresenter(cVar3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) nVar3;
        this.z = actionMenuView;
        n.a((View) actionMenuView, (Drawable) null);
        addView(this.z, layoutParams);
    }
}
