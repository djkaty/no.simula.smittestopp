package d.e.a;

import android.content.res.ColorStateList;
import android.widget.FrameLayout;

public class a extends FrameLayout {
    public static final d z = new b();
    public boolean x;
    public boolean y;

    public ColorStateList getCardBackgroundColor() {
        b bVar = (b) z;
        throw null;
    }

    public float getCardElevation() {
        throw null;
    }

    public int getContentPaddingBottom() {
        throw null;
    }

    public int getContentPaddingLeft() {
        throw null;
    }

    public int getContentPaddingRight() {
        throw null;
    }

    public int getContentPaddingTop() {
        throw null;
    }

    public float getMaxCardElevation() {
        return ((b) z).b((c) null);
    }

    public boolean getPreventCornerOverlap() {
        return this.y;
    }

    public float getRadius() {
        return ((b) z).c((c) null);
    }

    public boolean getUseCompatPadding() {
        return this.x;
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
    }

    public void setCardBackgroundColor(int i2) {
        ((b) z).a((c) null, ColorStateList.valueOf(i2));
        throw null;
    }

    public void setCardElevation(float f2) {
        throw null;
    }

    public void setMaxCardElevation(float f2) {
        ((b) z).a((c) null, f2);
    }

    public void setMinimumHeight(int i2) {
        super.setMinimumHeight(i2);
    }

    public void setMinimumWidth(int i2) {
        super.setMinimumWidth(i2);
    }

    public void setPadding(int i2, int i3, int i4, int i5) {
    }

    public void setPaddingRelative(int i2, int i3, int i4, int i5) {
    }

    public void setPreventCornerOverlap(boolean z2) {
        if (z2 != this.y) {
            this.y = z2;
            b bVar = (b) z;
            throw null;
        }
    }

    public void setRadius(float f2) {
        b bVar = (b) z;
        throw null;
    }

    public void setUseCompatPadding(boolean z2) {
        if (this.x != z2) {
            this.x = z2;
            b bVar = (b) z;
            throw null;
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        ((b) z).a((c) null, colorStateList);
        throw null;
    }
}
