package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.ActionMenuView;
import com.microsoft.azure.storage.Constants;
import d.b.a.r;
import d.b.d.i.g;
import d.b.d.i.i;
import d.b.d.i.n;
import d.b.d.i.p;
import d.b.e.c;
import d.b.e.h0;
import d.b.e.z;

public class ActionMenuItemView extends z implements n.a, View.OnClickListener, ActionMenuView.a {
    public i B;
    public CharSequence C;
    public Drawable D;
    public g.b E;
    public h0 F;
    public b G;
    public boolean H;
    public boolean I;
    public int J;
    public int K;
    public int L;

    public class a extends h0 {
        public a() {
            super(ActionMenuItemView.this);
        }

        public p b() {
            c.a aVar;
            b bVar = ActionMenuItemView.this.G;
            if (bVar == null || (aVar = c.this.S) == null) {
                return null;
            }
            return aVar.a();
        }

        public boolean c() {
            p b;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            g.b bVar = actionMenuItemView.E;
            if (bVar == null || !bVar.a(actionMenuItemView.B) || (b = b()) == null || !b.a()) {
                return false;
            }
            return true;
        }
    }

    public static abstract class b {
    }

    public ActionMenuItemView(Context context) {
        this(context, (AttributeSet) null);
    }

    public void a(i iVar, int i2) {
        CharSequence charSequence;
        this.B = iVar;
        setIcon(iVar.getIcon());
        if (c()) {
            charSequence = iVar.getTitleCondensed();
        } else {
            charSequence = iVar.f306e;
        }
        setTitle(charSequence);
        setId(iVar.a);
        setVisibility(iVar.isVisible() ? 0 : 8);
        setEnabled(iVar.isEnabled());
        if (iVar.hasSubMenu() && this.F == null) {
            this.F = new a();
        }
    }

    public boolean b() {
        return d() && this.B.getIcon() == null;
    }

    public boolean c() {
        return true;
    }

    public boolean d() {
        return !TextUtils.isEmpty(getText());
    }

    public final boolean e() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        return i2 >= 480 || (i2 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public final void f() {
        CharSequence charSequence;
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.C);
        if (this.D != null) {
            if (!((this.B.y & 4) == 4) || (!this.H && !this.I)) {
                z = false;
            }
        }
        boolean z3 = z2 & z;
        CharSequence charSequence2 = null;
        setText(z3 ? this.C : null);
        CharSequence charSequence3 = this.B.q;
        if (TextUtils.isEmpty(charSequence3)) {
            if (z3) {
                charSequence = null;
            } else {
                charSequence = this.B.f306e;
            }
            setContentDescription(charSequence);
        } else {
            setContentDescription(charSequence3);
        }
        CharSequence charSequence4 = this.B.r;
        if (TextUtils.isEmpty(charSequence4)) {
            if (!z3) {
                charSequence2 = this.B.f306e;
            }
            r.a((View) this, charSequence2);
            return;
        }
        r.a((View) this, charSequence4);
    }

    public i getItemData() {
        return this.B;
    }

    public void onClick(View view) {
        g.b bVar = this.E;
        if (bVar != null) {
            bVar.a(this.B);
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.H = e();
        f();
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        boolean d2 = d();
        if (d2 && (i4 = this.K) >= 0) {
            super.setPadding(i4, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.J) : this.J;
        if (mode != 1073741824 && this.J > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, Constants.GB), i3);
        }
        if (!d2 && this.D != null) {
            super.setPadding((getMeasuredWidth() - this.D.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState((Parcelable) null);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        h0 h0Var;
        if (!this.B.hasSubMenu() || (h0Var = this.F) == null || !h0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.I != z) {
            this.I = z;
            i iVar = this.B;
            if (iVar != null) {
                iVar.n.h();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.D = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i2 = this.L;
            if (intrinsicWidth > i2) {
                intrinsicHeight = (int) (((float) intrinsicHeight) * (((float) i2) / ((float) intrinsicWidth)));
                intrinsicWidth = i2;
            }
            int i3 = this.L;
            if (intrinsicHeight > i3) {
                intrinsicWidth = (int) (((float) intrinsicWidth) * (((float) i3) / ((float) intrinsicHeight)));
                intrinsicHeight = i3;
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        f();
    }

    public void setItemInvoker(g.b bVar) {
        this.E = bVar;
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
        this.K = i2;
        super.setPadding(i2, i3, i4, i5);
    }

    public void setPopupCallback(b bVar) {
        this.G = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.C = charSequence;
        f();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        Resources resources = context.getResources();
        this.H = e();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionMenuItemView, i2, 0);
        this.J = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionMenuItemView_android_minWidth, 0);
        obtainStyledAttributes.recycle();
        this.L = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.K = -1;
        setSaveEnabled(false);
    }

    public boolean a() {
        return d();
    }
}
