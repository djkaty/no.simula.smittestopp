package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import d.b.a.r;
import d.b.d.i.i;
import d.b.d.i.n;
import d.b.e.i0;
import d.i.i.x.d;
import e.c.a.b.j.b;

public class NavigationMenuItemView extends b implements n.a {
    public static final int[] f0 = {16842912};
    public final int S;
    public boolean T;
    public boolean U;
    public final CheckedTextView V;
    public FrameLayout W;
    public i a0;
    public ColorStateList b0;
    public boolean c0;
    public Drawable d0;
    public final d.i.i.a e0;

    public class a extends d.i.i.a {
        public a() {
        }

        public void a(View view, d dVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
            dVar.a.setCheckable(NavigationMenuItemView.this.U);
        }
    }

    public NavigationMenuItemView(Context context) {
        this(context, (AttributeSet) null);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.W == null) {
                this.W = (FrameLayout) ((ViewStub) findViewById(R$id.design_menu_item_action_area_stub)).inflate();
            }
            this.W.removeAllViews();
            this.W.addView(view);
        }
    }

    public void a(i iVar, int i2) {
        StateListDrawable stateListDrawable;
        this.a0 = iVar;
        setVisibility(iVar.isVisible() ? 0 : 8);
        boolean z = true;
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(R$attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f0, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            d.i.i.n.a((View) this, (Drawable) stateListDrawable);
        }
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setTitle(iVar.f306e);
        setIcon(iVar.getIcon());
        setActionView(iVar.getActionView());
        setContentDescription(iVar.q);
        r.a((View) this, iVar.r);
        i iVar2 = this.a0;
        if (!(iVar2.f306e == null && iVar2.getIcon() == null && this.a0.getActionView() != null)) {
            z = false;
        }
        if (z) {
            this.V.setVisibility(8);
            FrameLayout frameLayout = this.W;
            if (frameLayout != null) {
                i0.a aVar = (i0.a) frameLayout.getLayoutParams();
                aVar.width = -1;
                this.W.setLayoutParams(aVar);
                return;
            }
            return;
        }
        this.V.setVisibility(0);
        FrameLayout frameLayout2 = this.W;
        if (frameLayout2 != null) {
            i0.a aVar2 = (i0.a) frameLayout2.getLayoutParams();
            aVar2.width = -2;
            this.W.setLayoutParams(aVar2);
        }
    }

    public boolean c() {
        return false;
    }

    public i getItemData() {
        return this.a0;
    }

    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        i iVar = this.a0;
        if (iVar != null && iVar.isCheckable() && this.a0.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, f0);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.U != z) {
            this.U = z;
            d.i.i.a aVar = this.e0;
            aVar.a.sendAccessibilityEvent(this.V, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.V.setChecked(z);
    }

    public void setHorizontalPadding(int i2) {
        setPadding(i2, 0, i2, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.c0) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = r.c(drawable).mutate();
                drawable.setTintList(this.b0);
            }
            int i2 = this.S;
            drawable.setBounds(0, 0, i2, i2);
        } else if (this.T) {
            if (this.d0 == null) {
                Drawable drawable2 = getResources().getDrawable(R$drawable.navigation_empty_icon, getContext().getTheme());
                this.d0 = drawable2;
                if (drawable2 != null) {
                    int i3 = this.S;
                    drawable2.setBounds(0, 0, i3, i3);
                }
            }
            drawable = this.d0;
        }
        this.V.setCompoundDrawablesRelative(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public void setIconPadding(int i2) {
        this.V.setCompoundDrawablePadding(i2);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.b0 = colorStateList;
        this.c0 = colorStateList != null;
        i iVar = this.a0;
        if (iVar != null) {
            setIcon(iVar.getIcon());
        }
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.T = z;
    }

    public void setTextAppearance(int i2) {
        r.d((TextView) this.V, i2);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.V.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.V.setText(charSequence);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.e0 = new a();
        setOrientation(0);
        LayoutInflater.from(context).inflate(R$layout.design_navigation_menu_item, this, true);
        this.S = context.getResources().getDimensionPixelSize(R$dimen.design_navigation_icon_size);
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(R$id.design_menu_item_text);
        this.V = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        d.i.i.n.a((View) this.V, this.e0);
    }
}
