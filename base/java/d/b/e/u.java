package d.b.e;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R$styleable;
import d.b.a.r;
import d.i.i.n;

public class u extends q {

    /* renamed from: d  reason: collision with root package name */
    public final SeekBar f383d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f384e;

    /* renamed from: f  reason: collision with root package name */
    public ColorStateList f385f = null;

    /* renamed from: g  reason: collision with root package name */
    public PorterDuff.Mode f386g = null;

    /* renamed from: h  reason: collision with root package name */
    public boolean f387h = false;

    /* renamed from: i  reason: collision with root package name */
    public boolean f388i = false;

    public u(SeekBar seekBar) {
        super(seekBar);
        this.f383d = seekBar;
    }

    public void a(AttributeSet attributeSet, int i2) {
        super.a(attributeSet, i2);
        x0 a = x0.a(this.f383d.getContext(), attributeSet, R$styleable.AppCompatSeekBar, i2, 0);
        Drawable c2 = a.c(R$styleable.AppCompatSeekBar_android_thumb);
        if (c2 != null) {
            this.f383d.setThumb(c2);
        }
        Drawable b = a.b(R$styleable.AppCompatSeekBar_tickMark);
        Drawable drawable = this.f384e;
        if (drawable != null) {
            drawable.setCallback((Drawable.Callback) null);
        }
        this.f384e = b;
        if (b != null) {
            b.setCallback(this.f383d);
            r.a(b, n.i(this.f383d));
            if (b.isStateful()) {
                b.setState(this.f383d.getDrawableState());
            }
            a();
        }
        this.f383d.invalidate();
        if (a.f(R$styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.f386g = e0.a(a.c(R$styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.f386g);
            this.f388i = true;
        }
        if (a.f(R$styleable.AppCompatSeekBar_tickMarkTint)) {
            this.f385f = a.a(R$styleable.AppCompatSeekBar_tickMarkTint);
            this.f387h = true;
        }
        a.b.recycle();
        a();
    }

    public final void a() {
        if (this.f384e == null) {
            return;
        }
        if (this.f387h || this.f388i) {
            Drawable c2 = r.c(this.f384e.mutate());
            this.f384e = c2;
            if (this.f387h) {
                c2.setTintList(this.f385f);
            }
            if (this.f388i) {
                this.f384e.setTintMode(this.f386g);
            }
            if (this.f384e.isStateful()) {
                this.f384e.setState(this.f383d.getDrawableState());
            }
        }
    }

    public void a(Canvas canvas) {
        if (this.f384e != null) {
            int max = this.f383d.getMax();
            int i2 = 1;
            if (max > 1) {
                int intrinsicWidth = this.f384e.getIntrinsicWidth();
                int intrinsicHeight = this.f384e.getIntrinsicHeight();
                int i3 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                if (intrinsicHeight >= 0) {
                    i2 = intrinsicHeight / 2;
                }
                this.f384e.setBounds(-i3, -i2, i3, i2);
                float width = ((float) ((this.f383d.getWidth() - this.f383d.getPaddingLeft()) - this.f383d.getPaddingRight())) / ((float) max);
                int save = canvas.save();
                canvas.translate((float) this.f383d.getPaddingLeft(), (float) (this.f383d.getHeight() / 2));
                for (int i4 = 0; i4 <= max; i4++) {
                    this.f384e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
