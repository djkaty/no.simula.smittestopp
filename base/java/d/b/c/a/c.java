package d.b.c.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

public class c extends Drawable implements Drawable.Callback {
    public Drawable x;

    public c(Drawable drawable) {
        Drawable drawable2 = this.x;
        if (drawable2 != null) {
            drawable2.setCallback((Drawable.Callback) null);
        }
        this.x = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    public void draw(Canvas canvas) {
        this.x.draw(canvas);
    }

    public int getChangingConfigurations() {
        return this.x.getChangingConfigurations();
    }

    public Drawable getCurrent() {
        return this.x.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.x.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.x.getIntrinsicWidth();
    }

    public int getMinimumHeight() {
        return this.x.getMinimumHeight();
    }

    public int getMinimumWidth() {
        return this.x.getMinimumWidth();
    }

    public int getOpacity() {
        return this.x.getOpacity();
    }

    public boolean getPadding(Rect rect) {
        return this.x.getPadding(rect);
    }

    public int[] getState() {
        return this.x.getState();
    }

    public Region getTransparentRegion() {
        return this.x.getTransparentRegion();
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public boolean isAutoMirrored() {
        return this.x.isAutoMirrored();
    }

    public boolean isStateful() {
        return this.x.isStateful();
    }

    public void jumpToCurrentState() {
        this.x.jumpToCurrentState();
    }

    public void onBoundsChange(Rect rect) {
        this.x.setBounds(rect);
    }

    public boolean onLevelChange(int i2) {
        return this.x.setLevel(i2);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        scheduleSelf(runnable, j2);
    }

    public void setAlpha(int i2) {
        this.x.setAlpha(i2);
    }

    public void setAutoMirrored(boolean z) {
        this.x.setAutoMirrored(z);
    }

    public void setChangingConfigurations(int i2) {
        this.x.setChangingConfigurations(i2);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.x.setColorFilter(colorFilter);
    }

    public void setDither(boolean z) {
        this.x.setDither(z);
    }

    public void setFilterBitmap(boolean z) {
        this.x.setFilterBitmap(z);
    }

    public void setHotspot(float f2, float f3) {
        this.x.setHotspot(f2, f3);
    }

    public void setHotspotBounds(int i2, int i3, int i4, int i5) {
        this.x.setHotspotBounds(i2, i3, i4, i5);
    }

    public boolean setState(int[] iArr) {
        return this.x.setState(iArr);
    }

    public void setTint(int i2) {
        this.x.setTint(i2);
    }

    public void setTintList(ColorStateList colorStateList) {
        this.x.setTintList(colorStateList);
    }

    public void setTintMode(PorterDuff.Mode mode) {
        this.x.setTintMode(mode);
    }

    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.x.setVisible(z, z2);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
