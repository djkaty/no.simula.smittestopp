package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.R$id;
import androidx.appcompat.R$styleable;
import d.b.e.b;
import d.b.e.q0;
import d.i.i.n;

public class ActionBarContainer extends FrameLayout {
    public View A;
    public Drawable B;
    public Drawable C;
    public Drawable D;
    public boolean E;
    public boolean F;
    public int G;
    public boolean x;
    public View y;
    public View z;

    public ActionBarContainer(Context context) {
        this(context, (AttributeSet) null);
    }

    public final int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    public final boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.B;
        if (drawable != null && drawable.isStateful()) {
            this.B.setState(getDrawableState());
        }
        Drawable drawable2 = this.C;
        if (drawable2 != null && drawable2.isStateful()) {
            this.C.setState(getDrawableState());
        }
        Drawable drawable3 = this.D;
        if (drawable3 != null && drawable3.isStateful()) {
            this.D.setState(getDrawableState());
        }
    }

    public View getTabContainer() {
        return this.y;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.B;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.C;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.D;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.z = findViewById(R$id.action_bar);
        this.A = findViewById(R$id.action_context_bar);
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.x || super.onInterceptTouchEvent(motionEvent);
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        Drawable drawable;
        super.onLayout(z2, i2, i3, i4, i5);
        View view = this.y;
        boolean z3 = true;
        boolean z4 = false;
        boolean z5 = (view == null || view.getVisibility() == 8) ? false : true;
        if (!(view == null || view.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            int i6 = ((FrameLayout.LayoutParams) view.getLayoutParams()).bottomMargin;
            view.layout(i2, (measuredHeight - view.getMeasuredHeight()) - i6, i4, measuredHeight - i6);
        }
        if (this.E) {
            Drawable drawable2 = this.D;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z3 = false;
            }
        } else {
            if (this.B != null) {
                if (this.z.getVisibility() == 0) {
                    this.B.setBounds(this.z.getLeft(), this.z.getTop(), this.z.getRight(), this.z.getBottom());
                } else {
                    View view2 = this.A;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.B.setBounds(0, 0, 0, 0);
                    } else {
                        this.B.setBounds(this.A.getLeft(), this.A.getTop(), this.A.getRight(), this.A.getBottom());
                    }
                }
                z4 = true;
            }
            this.F = z5;
            if (!z5 || (drawable = this.C) == null) {
                z3 = z4;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z3) {
            invalidate();
        }
    }

    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        if (this.z == null && View.MeasureSpec.getMode(i3) == Integer.MIN_VALUE && (i5 = this.G) >= 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i5, View.MeasureSpec.getSize(i3)), Integer.MIN_VALUE);
        }
        super.onMeasure(i2, i3);
        if (this.z != null) {
            int mode = View.MeasureSpec.getMode(i3);
            View view = this.y;
            if (view != null && view.getVisibility() != 8 && mode != 1073741824) {
                if (!b(this.z)) {
                    i4 = a(this.z);
                } else {
                    i4 = !b(this.A) ? a(this.A) : 0;
                }
                setMeasuredDimension(getMeasuredWidth(), Math.min(a(this.y) + i4, mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.B;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback) null);
            unscheduleDrawable(this.B);
        }
        this.B = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.z;
            if (view != null) {
                this.B.setBounds(view.getLeft(), this.z.getTop(), this.z.getRight(), this.z.getBottom());
            }
        }
        boolean z2 = true;
        if (!this.E ? !(this.B == null && this.C == null) : this.D != null) {
            z2 = false;
        }
        setWillNotDraw(z2);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.D;
        if (drawable3 != null) {
            drawable3.setCallback((Drawable.Callback) null);
            unscheduleDrawable(this.D);
        }
        this.D = drawable;
        boolean z2 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.E && (drawable2 = this.D) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.E ? this.B == null && this.C == null : this.D == null) {
            z2 = true;
        }
        setWillNotDraw(z2);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.C;
        if (drawable3 != null) {
            drawable3.setCallback((Drawable.Callback) null);
            unscheduleDrawable(this.C);
        }
        this.C = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.F && (drawable2 = this.C) != null) {
                drawable2.setBounds(this.y.getLeft(), this.y.getTop(), this.y.getRight(), this.y.getBottom());
            }
        }
        boolean z2 = true;
        if (!this.E ? !(this.B == null && this.C == null) : this.D != null) {
            z2 = false;
        }
        setWillNotDraw(z2);
        invalidate();
        invalidateOutline();
    }

    public void setTabContainer(q0 q0Var) {
        View view = this.y;
        if (view != null) {
            removeView(view);
        }
        this.y = q0Var;
        if (q0Var != null) {
            addView(q0Var);
            ViewGroup.LayoutParams layoutParams = q0Var.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            q0Var.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z2) {
        this.x = z2;
        setDescendantFocusability(z2 ? 393216 : 262144);
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z2 = i2 == 0;
        Drawable drawable = this.B;
        if (drawable != null) {
            drawable.setVisible(z2, false);
        }
        Drawable drawable2 = this.C;
        if (drawable2 != null) {
            drawable2.setVisible(z2, false);
        }
        Drawable drawable3 = this.D;
        if (drawable3 != null) {
            drawable3.setVisible(z2, false);
        }
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i2) {
        if (i2 != 0) {
            return super.startActionModeForChild(view, callback, i2);
        }
        return null;
    }

    public boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.B && !this.E) || (drawable == this.C && this.F) || ((drawable == this.D && this.E) || super.verifyDrawable(drawable));
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        n.a((View) this, (Drawable) new b(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionBar);
        this.B = obtainStyledAttributes.getDrawable(R$styleable.ActionBar_background);
        this.C = obtainStyledAttributes.getDrawable(R$styleable.ActionBar_backgroundStacked);
        this.G = obtainStyledAttributes.getDimensionPixelSize(R$styleable.ActionBar_height, -1);
        boolean z2 = true;
        if (getId() == R$id.split_action_bar) {
            this.E = true;
            this.D = obtainStyledAttributes.getDrawable(R$styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.E ? !(this.B == null && this.C == null) : this.D != null) {
            z2 = false;
        }
        setWillNotDraw(z2);
    }
}
