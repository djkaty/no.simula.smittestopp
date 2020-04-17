package d.i.c.j;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

public class c extends Drawable implements Drawable.Callback, b, a {
    public static final PorterDuff.Mode D = PorterDuff.Mode.SRC_IN;
    public e A;
    public boolean B;
    public Drawable C;
    public int x;
    public PorterDuff.Mode y;
    public boolean z;

    public c(e eVar, Resources resources) {
        Drawable.ConstantState constantState;
        this.A = eVar;
        if (eVar != null && (constantState = eVar.b) != null) {
            a(constantState.newDrawable(resources));
        }
    }

    public final boolean a(int[] iArr) {
        if (!b()) {
            return false;
        }
        e eVar = this.A;
        ColorStateList colorStateList = eVar.f576c;
        PorterDuff.Mode mode = eVar.f577d;
        if (colorStateList == null || mode == null) {
            this.z = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!(this.z && colorForState == this.x && mode == this.y)) {
                setColorFilter(colorForState, mode);
                this.x = colorForState;
                this.y = mode;
                this.z = true;
                return true;
            }
        }
        return false;
    }

    public boolean b() {
        throw null;
    }

    public void draw(Canvas canvas) {
        this.C.draw(canvas);
    }

    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        e eVar = this.A;
        return changingConfigurations | (eVar != null ? eVar.getChangingConfigurations() : 0) | this.C.getChangingConfigurations();
    }

    public Drawable.ConstantState getConstantState() {
        e eVar = this.A;
        if (eVar == null) {
            return null;
        }
        if (!(eVar.b != null)) {
            return null;
        }
        this.A.a = getChangingConfigurations();
        return this.A;
    }

    public Drawable getCurrent() {
        return this.C.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.C.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.C.getIntrinsicWidth();
    }

    public int getMinimumHeight() {
        return this.C.getMinimumHeight();
    }

    public int getMinimumWidth() {
        return this.C.getMinimumWidth();
    }

    public int getOpacity() {
        return this.C.getOpacity();
    }

    public boolean getPadding(Rect rect) {
        return this.C.getPadding(rect);
    }

    public int[] getState() {
        return this.C.getState();
    }

    public Region getTransparentRegion() {
        return this.C.getTransparentRegion();
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public boolean isAutoMirrored() {
        return this.C.isAutoMirrored();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:2:0x0006, code lost:
        r0 = r1.A;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean isStateful() {
        /*
            r1 = this;
            boolean r0 = r1.b()
            if (r0 == 0) goto L_0x000d
            d.i.c.j.e r0 = r1.A
            if (r0 == 0) goto L_0x000d
            android.content.res.ColorStateList r0 = r0.f576c
            goto L_0x000e
        L_0x000d:
            r0 = 0
        L_0x000e:
            if (r0 == 0) goto L_0x0016
            boolean r0 = r0.isStateful()
            if (r0 != 0) goto L_0x001e
        L_0x0016:
            android.graphics.drawable.Drawable r0 = r1.C
            boolean r0 = r0.isStateful()
            if (r0 == 0) goto L_0x0020
        L_0x001e:
            r0 = 1
            goto L_0x0021
        L_0x0020:
            r0 = 0
        L_0x0021:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.i.c.j.c.isStateful():boolean");
    }

    public void jumpToCurrentState() {
        this.C.jumpToCurrentState();
    }

    public Drawable mutate() {
        if (!this.B && super.mutate() == this) {
            this.A = new e(this.A);
            Drawable drawable = this.C;
            if (drawable != null) {
                drawable.mutate();
            }
            e eVar = this.A;
            if (eVar != null) {
                Drawable drawable2 = this.C;
                eVar.b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.B = true;
        }
        return this;
    }

    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.C;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    public boolean onLevelChange(int i2) {
        return this.C.setLevel(i2);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    public void setAlpha(int i2) {
        this.C.setAlpha(i2);
    }

    public void setAutoMirrored(boolean z2) {
        this.C.setAutoMirrored(z2);
    }

    public void setChangingConfigurations(int i2) {
        this.C.setChangingConfigurations(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.C.setColorFilter(colorFilter);
    }

    public void setDither(boolean z2) {
        this.C.setDither(z2);
    }

    public void setFilterBitmap(boolean z2) {
        this.C.setFilterBitmap(z2);
    }

    public boolean setState(int[] iArr) {
        return a(iArr) || this.C.setState(iArr);
    }

    public void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    public void setTintList(ColorStateList colorStateList) {
        throw null;
    }

    public boolean setVisible(boolean z2, boolean z3) {
        return super.setVisible(z2, z3) || this.C.setVisible(z2, z3);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public c(Drawable drawable) {
        this.A = new e(this.A);
        a(drawable);
    }

    public final Drawable a() {
        return this.C;
    }

    public final void a(Drawable drawable) {
        Drawable drawable2 = this.C;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback) null);
        }
        this.C = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            e eVar = this.A;
            if (eVar != null) {
                eVar.b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }
}
