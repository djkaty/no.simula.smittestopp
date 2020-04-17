package d.e.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public class e extends Drawable {
    public float a;
    public float b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f419c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f420d;

    /* renamed from: e  reason: collision with root package name */
    public ColorStateList f421e;

    /* renamed from: f  reason: collision with root package name */
    public PorterDuffColorFilter f422f;

    /* renamed from: g  reason: collision with root package name */
    public ColorStateList f423g;

    /* renamed from: h  reason: collision with root package name */
    public PorterDuff.Mode f424h;

    public final void a(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        int i2 = rect.left;
        throw null;
    }

    public void draw(Canvas canvas) {
        if (this.f422f == null) {
            float f2 = this.a;
            canvas.drawRoundRect((RectF) null, f2, f2, (Paint) null);
            return;
        }
        throw null;
    }

    public int getOpacity() {
        return -3;
    }

    public void getOutline(Outline outline) {
        outline.setRoundRect((Rect) null, this.a);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x000a, code lost:
        r0 = r1.f421e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean isStateful() {
        /*
            r1 = this;
            android.content.res.ColorStateList r0 = r1.f423g
            if (r0 == 0) goto L_0x000a
            boolean r0 = r0.isStateful()
            if (r0 != 0) goto L_0x001a
        L_0x000a:
            android.content.res.ColorStateList r0 = r1.f421e
            if (r0 == 0) goto L_0x0014
            boolean r0 = r0.isStateful()
            if (r0 != 0) goto L_0x001a
        L_0x0014:
            boolean r0 = super.isStateful()
            if (r0 == 0) goto L_0x001c
        L_0x001a:
            r0 = 1
            goto L_0x001d
        L_0x001c:
            r0 = 0
        L_0x001d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.e.a.e.isStateful():boolean");
    }

    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        a(rect);
        throw null;
    }

    public boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f421e;
        colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        throw null;
    }

    public void setAlpha(int i2) {
        throw null;
    }

    public void setColorFilter(ColorFilter colorFilter) {
        throw null;
    }

    public void setTintList(ColorStateList colorStateList) {
        this.f423g = colorStateList;
        this.f422f = a(colorStateList, this.f424h);
        invalidateSelf();
    }

    public void setTintMode(PorterDuff.Mode mode) {
        this.f424h = mode;
        this.f422f = a(this.f423g, mode);
        invalidateSelf();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }
}
