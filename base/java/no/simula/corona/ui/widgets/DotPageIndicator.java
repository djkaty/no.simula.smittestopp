package no.simula.corona.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import d.i.b.a;
import h.k.b.g;
import no.simula.corona.R$color;
import no.simula.corona.R$styleable;

public final class DotPageIndicator extends View {
    public int A;
    public Paint B;
    public Paint C;
    public int x;
    public int y;
    public int z;

    public DotPageIndicator(Context context) {
        super(context);
        a((AttributeSet) null, 0);
    }

    public final void a(AttributeSet attributeSet, int i2) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.DotPageIndicator, i2, 0);
        this.z = obtainStyledAttributes.getColor(0, a.a(getContext(), (int) R$color.selected_color));
        this.A = obtainStyledAttributes.getColor(2, a.a(getContext(), (int) R$color.unselected_color));
        this.y = obtainStyledAttributes.getColor(1, 3);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.B = paint;
        if (paint != null) {
            paint.setColor(this.z);
            Paint paint2 = new Paint(1);
            this.C = paint2;
            if (paint2 != null) {
                paint2.setColor(this.A);
            } else {
                g.a();
                throw null;
            }
        } else {
            g.a();
            throw null;
        }
    }

    public final int getSelected() {
        return this.x;
    }

    public final int getSelectedColor() {
        return this.z;
    }

    public final Paint getSelectedPaint() {
        return this.B;
    }

    public final int getTotalDots() {
        return this.y;
    }

    public final int getUnSelectedColor() {
        return this.A;
    }

    public final Paint getUnSelectedPaint() {
        return this.C;
    }

    public void onDraw(Canvas canvas) {
        if (canvas != null) {
            super.onDraw(canvas);
            int height = getHeight();
            int i2 = height / 2;
            int i3 = height / 4;
            int width = getWidth();
            int i4 = this.y;
            int i5 = width / i4;
            for (int i6 = 0; i6 < i4; i6++) {
                int i7 = (i5 * i6) + (i5 / 2);
                if (i6 == this.x) {
                    float f2 = (float) i7;
                    float f3 = (float) i2;
                    float f4 = (float) i3;
                    Paint paint = this.B;
                    if (paint != null) {
                        canvas.drawCircle(f2, f3, f4, paint);
                    } else {
                        g.a();
                        throw null;
                    }
                } else {
                    float f5 = (float) i7;
                    float f6 = (float) i2;
                    float f7 = (float) i3;
                    Paint paint2 = this.C;
                    if (paint2 != null) {
                        canvas.drawCircle(f5, f6, f7, paint2);
                    } else {
                        g.a();
                        throw null;
                    }
                }
            }
            return;
        }
        g.a("canvas");
        throw null;
    }

    public final void setSelected(int i2) {
        this.x = i2;
        invalidate();
    }

    public final void setSelectedColor(int i2) {
        this.z = i2;
    }

    public final void setSelectedPaint(Paint paint) {
        this.B = paint;
    }

    public final void setTotalDots(int i2) {
        this.y = i2;
    }

    public final void setUnSelectedColor(int i2) {
        this.A = i2;
    }

    public final void setUnSelectedPaint(Paint paint) {
        this.C = paint;
    }

    public DotPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0);
    }

    public DotPageIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(attributeSet, i2);
    }
}
