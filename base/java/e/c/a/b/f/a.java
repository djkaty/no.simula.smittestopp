package e.c.a.b.f;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import d.b.e.f;
import d.i.i.n;

public class a extends f {
    public int A;
    public PorterDuff.Mode B;
    public ColorStateList C;
    public Drawable D;
    public int E;
    public int F;
    public int G;
    public final c z;

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x0050, code lost:
        r12 = d.b.b.a.a.c(r12, (r2 = r11.getResourceId(r1, 0)));
     */
    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public a(android.content.Context r11, android.util.AttributeSet r12) {
        /*
            r10 = this;
            int r6 = com.google.android.material.R$attr.materialButtonStyle
            r10.<init>(r11, r12, r6)
            int[] r7 = com.google.android.material.R$styleable.MaterialButton
            int r8 = com.google.android.material.R$style.Widget_MaterialComponents_Button
            r9 = 0
            int[] r5 = new int[r9]
            e.c.a.b.j.e.a(r11, r12, r6, r8)
            r0 = r11
            r1 = r12
            r2 = r7
            r3 = r6
            r4 = r8
            e.c.a.b.j.e.a(r0, r1, r2, r3, r4, r5)
            android.content.res.TypedArray r11 = r11.obtainStyledAttributes(r12, r7, r6, r8)
            int r12 = com.google.android.material.R$styleable.MaterialButton_iconPadding
            int r12 = r11.getDimensionPixelSize(r12, r9)
            r10.A = r12
            int r12 = com.google.android.material.R$styleable.MaterialButton_iconTintMode
            r0 = -1
            int r12 = r11.getInt(r12, r0)
            android.graphics.PorterDuff$Mode r1 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r12 = e.c.a.a.b.l.c.a((int) r12, (android.graphics.PorterDuff.Mode) r1)
            r10.B = r12
            android.content.Context r12 = r10.getContext()
            int r1 = com.google.android.material.R$styleable.MaterialButton_iconTint
            android.content.res.ColorStateList r12 = e.c.a.a.b.l.c.a((android.content.Context) r12, (android.content.res.TypedArray) r11, (int) r1)
            r10.C = r12
            android.content.Context r12 = r10.getContext()
            int r1 = com.google.android.material.R$styleable.MaterialButton_icon
            boolean r2 = r11.hasValue(r1)
            if (r2 == 0) goto L_0x0057
            int r2 = r11.getResourceId(r1, r9)
            if (r2 == 0) goto L_0x0057
            android.graphics.drawable.Drawable r12 = d.b.b.a.a.c(r12, r2)
            if (r12 == 0) goto L_0x0057
            goto L_0x005b
        L_0x0057:
            android.graphics.drawable.Drawable r12 = r11.getDrawable(r1)
        L_0x005b:
            r10.D = r12
            int r12 = com.google.android.material.R$styleable.MaterialButton_iconGravity
            r1 = 1
            int r12 = r11.getInteger(r12, r1)
            r10.G = r12
            int r12 = com.google.android.material.R$styleable.MaterialButton_iconSize
            int r12 = r11.getDimensionPixelSize(r12, r9)
            r10.E = r12
            e.c.a.b.f.c r12 = new e.c.a.b.f.c
            r12.<init>(r10)
            r10.z = r12
            int r1 = com.google.android.material.R$styleable.MaterialButton_android_insetLeft
            int r1 = r11.getDimensionPixelOffset(r1, r9)
            r12.b = r1
            int r1 = com.google.android.material.R$styleable.MaterialButton_android_insetRight
            int r1 = r11.getDimensionPixelOffset(r1, r9)
            r12.f1257c = r1
            int r1 = com.google.android.material.R$styleable.MaterialButton_android_insetTop
            int r1 = r11.getDimensionPixelOffset(r1, r9)
            r12.f1258d = r1
            int r1 = com.google.android.material.R$styleable.MaterialButton_android_insetBottom
            int r1 = r11.getDimensionPixelOffset(r1, r9)
            r12.f1259e = r1
            int r1 = com.google.android.material.R$styleable.MaterialButton_cornerRadius
            int r1 = r11.getDimensionPixelSize(r1, r9)
            r12.f1260f = r1
            int r1 = com.google.android.material.R$styleable.MaterialButton_strokeWidth
            int r1 = r11.getDimensionPixelSize(r1, r9)
            r12.f1261g = r1
            int r1 = com.google.android.material.R$styleable.MaterialButton_backgroundTintMode
            int r0 = r11.getInt(r1, r0)
            android.graphics.PorterDuff$Mode r1 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r0 = e.c.a.a.b.l.c.a((int) r0, (android.graphics.PorterDuff.Mode) r1)
            r12.f1262h = r0
            e.c.a.b.f.a r0 = r12.a
            android.content.Context r0 = r0.getContext()
            int r1 = com.google.android.material.R$styleable.MaterialButton_backgroundTint
            android.content.res.ColorStateList r0 = e.c.a.a.b.l.c.a((android.content.Context) r0, (android.content.res.TypedArray) r11, (int) r1)
            r12.f1263i = r0
            e.c.a.b.f.a r0 = r12.a
            android.content.Context r0 = r0.getContext()
            int r1 = com.google.android.material.R$styleable.MaterialButton_strokeColor
            android.content.res.ColorStateList r0 = e.c.a.a.b.l.c.a((android.content.Context) r0, (android.content.res.TypedArray) r11, (int) r1)
            r12.f1264j = r0
            e.c.a.b.f.a r0 = r12.a
            android.content.Context r0 = r0.getContext()
            int r1 = com.google.android.material.R$styleable.MaterialButton_rippleColor
            android.content.res.ColorStateList r0 = e.c.a.a.b.l.c.a((android.content.Context) r0, (android.content.res.TypedArray) r11, (int) r1)
            r12.f1265k = r0
            android.graphics.Paint r0 = r12.f1266l
            android.graphics.Paint$Style r1 = android.graphics.Paint.Style.STROKE
            r0.setStyle(r1)
            android.graphics.Paint r0 = r12.f1266l
            int r1 = r12.f1261g
            float r1 = (float) r1
            r0.setStrokeWidth(r1)
            android.graphics.Paint r0 = r12.f1266l
            android.content.res.ColorStateList r1 = r12.f1264j
            if (r1 == 0) goto L_0x00fc
            e.c.a.b.f.a r2 = r12.a
            int[] r2 = r2.getDrawableState()
            int r9 = r1.getColorForState(r2, r9)
        L_0x00fc:
            r0.setColor(r9)
            e.c.a.b.f.a r0 = r12.a
            int r0 = d.i.i.n.m(r0)
            e.c.a.b.f.a r1 = r12.a
            int r1 = r1.getPaddingTop()
            e.c.a.b.f.a r2 = r12.a
            int r2 = r2.getPaddingEnd()
            e.c.a.b.f.a r3 = r12.a
            int r3 = r3.getPaddingBottom()
            e.c.a.b.f.a r4 = r12.a
            android.graphics.drawable.Drawable r5 = r12.a()
            r4.setInternalBackground(r5)
            e.c.a.b.f.a r4 = r12.a
            int r5 = r12.b
            int r0 = r0 + r5
            int r5 = r12.f1258d
            int r1 = r1 + r5
            int r5 = r12.f1257c
            int r2 = r2 + r5
            int r12 = r12.f1259e
            int r3 = r3 + r12
            r4.setPaddingRelative(r0, r1, r2, r3)
            r11.recycle()
            int r11 = r10.A
            r10.setCompoundDrawablePadding(r11)
            r10.b()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.b.f.a.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final boolean a() {
        c cVar = this.z;
        return cVar != null && !cVar.r;
    }

    public final void b() {
        Drawable drawable = this.D;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.D = mutate;
            mutate.setTintList(this.C);
            PorterDuff.Mode mode = this.B;
            if (mode != null) {
                this.D.setTintMode(mode);
            }
            int i2 = this.E;
            if (i2 == 0) {
                i2 = this.D.getIntrinsicWidth();
            }
            int i3 = this.E;
            if (i3 == 0) {
                i3 = this.D.getIntrinsicHeight();
            }
            Drawable drawable2 = this.D;
            int i4 = this.F;
            drawable2.setBounds(i4, 0, i2 + i4, i3);
        }
        setCompoundDrawablesRelative(this.D, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (a()) {
            return this.z.f1260f;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.D;
    }

    public int getIconGravity() {
        return this.G;
    }

    public int getIconPadding() {
        return this.A;
    }

    public int getIconSize() {
        return this.E;
    }

    public ColorStateList getIconTint() {
        return this.C;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.B;
    }

    public ColorStateList getRippleColor() {
        if (a()) {
            return this.z.f1265k;
        }
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (a()) {
            return this.z.f1264j;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (a()) {
            return this.z.f1261g;
        }
        return 0;
    }

    public ColorStateList getSupportBackgroundTintList() {
        if (a()) {
            return this.z.f1263i;
        }
        return super.getSupportBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (a()) {
            return this.z.f1262h;
        }
        return super.getSupportBackgroundTintMode();
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        c cVar;
        super.onLayout(z2, i2, i3, i4, i5);
        if (Build.VERSION.SDK_INT == 21 && (cVar = this.z) != null) {
            int i6 = i5 - i3;
            int i7 = i4 - i2;
            GradientDrawable gradientDrawable = cVar.q;
            if (gradientDrawable != null) {
                gradientDrawable.setBounds(cVar.b, cVar.f1258d, i7 - cVar.f1257c, i6 - cVar.f1259e);
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.D != null && this.G == 2) {
            int measureText = (int) getPaint().measureText(getText().toString());
            int i4 = this.E;
            if (i4 == 0) {
                i4 = this.D.getIntrinsicWidth();
            }
            int measuredWidth = (((((getMeasuredWidth() - measureText) - n.l(this)) - i4) - this.A) - getPaddingStart()) / 2;
            boolean z2 = true;
            if (n.i(this) != 1) {
                z2 = false;
            }
            if (z2) {
                measuredWidth = -measuredWidth;
            }
            if (this.F != measuredWidth) {
                this.F = measuredWidth;
                b();
            }
        }
    }

    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public void setBackgroundColor(int i2) {
        if (a()) {
            GradientDrawable gradientDrawable = this.z.o;
            if (gradientDrawable != null) {
                gradientDrawable.setColor(i2);
                return;
            }
            return;
        }
        super.setBackgroundColor(i2);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (!a()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable != getBackground()) {
            Log.i("MaterialButton", "Setting a custom background is not supported.");
            c cVar = this.z;
            cVar.r = true;
            cVar.a.setSupportBackgroundTintList(cVar.f1263i);
            cVar.a.setSupportBackgroundTintMode(cVar.f1262h);
            super.setBackgroundDrawable(drawable);
        } else {
            getBackground().setState(drawable.getState());
        }
    }

    public void setBackgroundResource(int i2) {
        setBackgroundDrawable(i2 != 0 ? d.b.b.a.a.c(getContext(), i2) : null);
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    /* JADX WARNING: type inference failed for: r1v19, types: [android.graphics.drawable.Drawable] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setCornerRadius(int r7) {
        /*
            r6 = this;
            boolean r0 = r6.a()
            if (r0 == 0) goto L_0x0086
            e.c.a.b.f.c r0 = r6.z
            int r1 = r0.f1260f
            if (r1 == r7) goto L_0x0086
            r0.f1260f = r7
            android.graphics.drawable.GradientDrawable r1 = r0.o
            if (r1 == 0) goto L_0x0086
            android.graphics.drawable.GradientDrawable r1 = r0.p
            if (r1 == 0) goto L_0x0086
            android.graphics.drawable.GradientDrawable r1 = r0.q
            if (r1 == 0) goto L_0x0086
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 21
            r3 = 925353388(0x3727c5ac, float:1.0E-5)
            if (r1 != r2) goto L_0x0075
            e.c.a.b.f.a r1 = r0.a
            android.graphics.drawable.Drawable r1 = r1.getBackground()
            r2 = 0
            r4 = 0
            if (r1 == 0) goto L_0x0048
            e.c.a.b.f.a r1 = r0.a
            android.graphics.drawable.Drawable r1 = r1.getBackground()
            android.graphics.drawable.RippleDrawable r1 = (android.graphics.drawable.RippleDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            android.graphics.drawable.InsetDrawable r1 = (android.graphics.drawable.InsetDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable()
            android.graphics.drawable.LayerDrawable r1 = (android.graphics.drawable.LayerDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            android.graphics.drawable.GradientDrawable r1 = (android.graphics.drawable.GradientDrawable) r1
            goto L_0x0049
        L_0x0048:
            r1 = r4
        L_0x0049:
            float r5 = (float) r7
            float r5 = r5 + r3
            r1.setCornerRadius(r5)
            e.c.a.b.f.a r1 = r0.a
            android.graphics.drawable.Drawable r1 = r1.getBackground()
            if (r1 == 0) goto L_0x0072
            e.c.a.b.f.a r1 = r0.a
            android.graphics.drawable.Drawable r1 = r1.getBackground()
            android.graphics.drawable.RippleDrawable r1 = (android.graphics.drawable.RippleDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            android.graphics.drawable.InsetDrawable r1 = (android.graphics.drawable.InsetDrawable) r1
            android.graphics.drawable.Drawable r1 = r1.getDrawable()
            android.graphics.drawable.LayerDrawable r1 = (android.graphics.drawable.LayerDrawable) r1
            r2 = 1
            android.graphics.drawable.Drawable r1 = r1.getDrawable(r2)
            r4 = r1
            android.graphics.drawable.GradientDrawable r4 = (android.graphics.drawable.GradientDrawable) r4
        L_0x0072:
            r4.setCornerRadius(r5)
        L_0x0075:
            android.graphics.drawable.GradientDrawable r1 = r0.o
            float r7 = (float) r7
            float r7 = r7 + r3
            r1.setCornerRadius(r7)
            android.graphics.drawable.GradientDrawable r1 = r0.p
            r1.setCornerRadius(r7)
            android.graphics.drawable.GradientDrawable r0 = r0.q
            r0.setCornerRadius(r7)
        L_0x0086:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.a.b.f.a.setCornerRadius(int):void");
    }

    public void setCornerRadiusResource(int i2) {
        if (a()) {
            setCornerRadius(getResources().getDimensionPixelSize(i2));
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.D != drawable) {
            this.D = drawable;
            b();
        }
    }

    public void setIconGravity(int i2) {
        this.G = i2;
    }

    public void setIconPadding(int i2) {
        if (this.A != i2) {
            this.A = i2;
            setCompoundDrawablePadding(i2);
        }
    }

    public void setIconResource(int i2) {
        setIcon(i2 != 0 ? d.b.b.a.a.c(getContext(), i2) : null);
    }

    public void setIconSize(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        } else if (this.E != i2) {
            this.E = i2;
            b();
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            b();
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.B != mode) {
            this.B = mode;
            b();
        }
    }

    public void setIconTintResource(int i2) {
        setIconTint(d.b.b.a.a.b(getContext(), i2));
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (a()) {
            c cVar = this.z;
            if (cVar.f1265k != colorStateList) {
                cVar.f1265k = colorStateList;
                if (cVar.a.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) cVar.a.getBackground()).setColor(colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i2) {
        if (a()) {
            setRippleColor(d.b.b.a.a.b(getContext(), i2));
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (a()) {
            c cVar = this.z;
            if (cVar.f1264j != colorStateList) {
                cVar.f1264j = colorStateList;
                Paint paint = cVar.f1266l;
                int i2 = 0;
                if (colorStateList != null) {
                    i2 = colorStateList.getColorForState(cVar.a.getDrawableState(), 0);
                }
                paint.setColor(i2);
                if (cVar.p != null) {
                    cVar.a.setInternalBackground(cVar.a());
                }
            }
        }
    }

    public void setStrokeColorResource(int i2) {
        if (a()) {
            setStrokeColor(d.b.b.a.a.b(getContext(), i2));
        }
    }

    public void setStrokeWidth(int i2) {
        if (a()) {
            c cVar = this.z;
            if (cVar.f1261g != i2) {
                cVar.f1261g = i2;
                cVar.f1266l.setStrokeWidth((float) i2);
                if (cVar.p != null) {
                    cVar.a.setInternalBackground(cVar.a());
                }
            }
        }
    }

    public void setStrokeWidthResource(int i2) {
        if (a()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i2));
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (a()) {
            c cVar = this.z;
            if (cVar.f1263i != colorStateList) {
                cVar.f1263i = colorStateList;
                cVar.b();
            }
        } else if (this.z != null) {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (a()) {
            c cVar = this.z;
            if (cVar.f1262h != mode) {
                cVar.f1262h = mode;
                cVar.b();
            }
        } else if (this.z != null) {
            super.setSupportBackgroundTintMode(mode);
        }
    }
}
