package e.c.a.b.d;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.PointerIcon;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import d.b.a.r;
import d.b.d.i.i;
import d.b.d.i.n;
import d.i.i.m;

public class a extends FrameLayout implements n.a {
    public static final int[] J = {16842912};
    public float A;
    public int B;
    public boolean C;
    public ImageView D;
    public final TextView E;
    public final TextView F;
    public int G = -1;
    public i H;
    public ColorStateList I;
    public final int x;
    public float y;
    public float z;

    public a(Context context) {
        super(context, (AttributeSet) null, 0);
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(R$layout.design_bottom_navigation_item, this, true);
        setBackgroundResource(R$drawable.design_bottom_navigation_item_background);
        this.x = resources.getDimensionPixelSize(R$dimen.design_bottom_navigation_margin);
        this.D = (ImageView) findViewById(R$id.icon);
        this.E = (TextView) findViewById(R$id.smallLabel);
        this.F = (TextView) findViewById(R$id.largeLabel);
        d.i.i.n.e(this.E, 2);
        this.F.setImportantForAccessibility(2);
        setFocusable(true);
        a(this.E.getTextSize(), this.F.getTextSize());
    }

    public void a(i iVar, int i2) {
        this.H = iVar;
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setIcon(iVar.getIcon());
        setTitle(iVar.f306e);
        setId(iVar.a);
        if (!TextUtils.isEmpty(iVar.q)) {
            setContentDescription(iVar.q);
        }
        r.a((View) this, iVar.r);
        setVisibility(iVar.isVisible() ? 0 : 8);
    }

    public boolean c() {
        return false;
    }

    public i getItemData() {
        return this.H;
    }

    public int getItemPosition() {
        return this.G;
    }

    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        i iVar = this.H;
        if (iVar != null && iVar.isCheckable() && this.H.isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, J);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z2) {
        refreshDrawableState();
    }

    public void setChecked(boolean z2) {
        TextView textView = this.F;
        textView.setPivotX((float) (textView.getWidth() / 2));
        TextView textView2 = this.F;
        textView2.setPivotY((float) textView2.getBaseline());
        TextView textView3 = this.E;
        textView3.setPivotX((float) (textView3.getWidth() / 2));
        TextView textView4 = this.E;
        textView4.setPivotY((float) textView4.getBaseline());
        int i2 = this.B;
        if (i2 != -1) {
            if (i2 == 0) {
                if (z2) {
                    a(this.D, this.x, 49);
                    a(this.F, 1.0f, 1.0f, 0);
                } else {
                    a(this.D, this.x, 17);
                    a(this.F, 0.5f, 0.5f, 4);
                }
                this.E.setVisibility(4);
            } else if (i2 != 1) {
                if (i2 == 2) {
                    a(this.D, this.x, 17);
                    this.F.setVisibility(8);
                    this.E.setVisibility(8);
                }
            } else if (z2) {
                a(this.D, (int) (((float) this.x) + this.y), 49);
                a(this.F, 1.0f, 1.0f, 0);
                TextView textView5 = this.E;
                float f2 = this.z;
                a(textView5, f2, f2, 4);
            } else {
                a(this.D, this.x, 49);
                TextView textView6 = this.F;
                float f3 = this.A;
                a(textView6, f3, f3, 4);
                a(this.E, 1.0f, 1.0f, 0);
            }
        } else if (this.C) {
            if (z2) {
                a(this.D, this.x, 49);
                a(this.F, 1.0f, 1.0f, 0);
            } else {
                a(this.D, this.x, 17);
                a(this.F, 0.5f, 0.5f, 4);
            }
            this.E.setVisibility(4);
        } else if (z2) {
            a(this.D, (int) (((float) this.x) + this.y), 49);
            a(this.F, 1.0f, 1.0f, 0);
            TextView textView7 = this.E;
            float f4 = this.z;
            a(textView7, f4, f4, 4);
        } else {
            a(this.D, this.x, 49);
            TextView textView8 = this.F;
            float f5 = this.A;
            a(textView8, f5, f5, 4);
            a(this.E, 1.0f, 1.0f, 0);
        }
        refreshDrawableState();
        setSelected(z2);
    }

    public void setEnabled(boolean z2) {
        m mVar;
        super.setEnabled(z2);
        this.E.setEnabled(z2);
        this.F.setEnabled(z2);
        this.D.setEnabled(z2);
        if (z2) {
            Context context = getContext();
            if (Build.VERSION.SDK_INT >= 24) {
                mVar = new m(PointerIcon.getSystemIcon(context, 1002));
            } else {
                mVar = new m((Object) null);
            }
            d.i.i.n.a((View) this, mVar);
            return;
        }
        d.i.i.n.a((View) this, (m) null);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = r.c(drawable).mutate();
            drawable.setTintList(this.I);
        }
        this.D.setImageDrawable(drawable);
    }

    public void setIconSize(int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.D.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.D.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.I = colorStateList;
        i iVar = this.H;
        if (iVar != null) {
            setIcon(iVar.getIcon());
        }
    }

    public void setItemBackground(int i2) {
        setItemBackground(i2 == 0 ? null : d.i.b.a.c(getContext(), i2));
    }

    public void setItemPosition(int i2) {
        this.G = i2;
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.B != i2) {
            this.B = i2;
            if (this.H != null) {
                setChecked(this.H.isChecked());
            }
        }
    }

    public void setShifting(boolean z2) {
        if (this.C != z2) {
            this.C = z2;
            if (this.H != null) {
                setChecked(this.H.isChecked());
            }
        }
    }

    public void setTextAppearanceActive(int i2) {
        r.d(this.F, i2);
        a(this.E.getTextSize(), this.F.getTextSize());
    }

    public void setTextAppearanceInactive(int i2) {
        r.d(this.E, i2);
        a(this.E.getTextSize(), this.F.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.E.setTextColor(colorStateList);
            this.F.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.E.setText(charSequence);
        this.F.setText(charSequence);
        i iVar = this.H;
        if (iVar == null || TextUtils.isEmpty(iVar.q)) {
            setContentDescription(charSequence);
        }
    }

    public void setItemBackground(Drawable drawable) {
        d.i.i.n.a((View) this, drawable);
    }

    public final void a(View view, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i2;
        layoutParams.gravity = i3;
        view.setLayoutParams(layoutParams);
    }

    public final void a(View view, float f2, float f3, int i2) {
        view.setScaleX(f2);
        view.setScaleY(f3);
        view.setVisibility(i2);
    }

    public final void a(float f2, float f3) {
        this.y = f2 - f3;
        this.z = (f3 * 1.0f) / f2;
        this.A = (f2 * 1.0f) / f3;
    }
}
