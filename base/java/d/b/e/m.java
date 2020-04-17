package d.b.e;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import d.b.b.a.a;

public class m {
    public final ImageView a;
    public v0 b;

    /* renamed from: c  reason: collision with root package name */
    public v0 f359c;

    public m(ImageView imageView) {
        this.a = imageView;
    }

    public void a(AttributeSet attributeSet, int i2) {
        Drawable drawable;
        Drawable drawable2;
        int f2;
        x0 a2 = x0.a(this.a.getContext(), attributeSet, R$styleable.AppCompatImageView, i2, 0);
        try {
            Drawable drawable3 = this.a.getDrawable();
            if (!(drawable3 != null || (f2 = a2.f(R$styleable.AppCompatImageView_srcCompat, -1)) == -1 || (drawable3 = a.c(this.a.getContext(), f2)) == null)) {
                this.a.setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                e0.b(drawable3);
            }
            if (a2.f(R$styleable.AppCompatImageView_tint)) {
                ImageView imageView = this.a;
                imageView.setImageTintList(a2.a(R$styleable.AppCompatImageView_tint));
                if (!(Build.VERSION.SDK_INT != 21 || (drawable2 = imageView.getDrawable()) == null || imageView.getImageTintList() == null)) {
                    if (drawable2.isStateful()) {
                        drawable2.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable2);
                }
            }
            if (a2.f(R$styleable.AppCompatImageView_tintMode)) {
                ImageView imageView2 = this.a;
                imageView2.setImageTintMode(e0.a(a2.c(R$styleable.AppCompatImageView_tintMode, -1), (PorterDuff.Mode) null));
                if (!(Build.VERSION.SDK_INT != 21 || (drawable = imageView2.getDrawable()) == null || imageView2.getImageTintList() == null)) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView2.getDrawableState());
                    }
                    imageView2.setImageDrawable(drawable);
                }
            }
            a2.b.recycle();
        } catch (Throwable th) {
            a2.b.recycle();
            throw th;
        }
    }

    public void a(int i2) {
        if (i2 != 0) {
            Drawable c2 = a.c(this.a.getContext(), i2);
            if (c2 != null) {
                e0.b(c2);
            }
            this.a.setImageDrawable(c2);
        } else {
            this.a.setImageDrawable((Drawable) null);
        }
        a();
    }

    public void a(ColorStateList colorStateList) {
        if (this.b == null) {
            this.b = new v0();
        }
        v0 v0Var = this.b;
        v0Var.a = colorStateList;
        v0Var.f390d = true;
        a();
    }

    public void a(PorterDuff.Mode mode) {
        if (this.b == null) {
            this.b = new v0();
        }
        v0 v0Var = this.b;
        v0Var.b = mode;
        v0Var.f389c = true;
        a();
    }

    public void a() {
        Drawable drawable = this.a.getDrawable();
        if (drawable != null) {
            e0.b(drawable);
        }
        if (drawable != null) {
            int i2 = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i2 <= 21 && i2 == 21) {
                if (this.f359c == null) {
                    this.f359c = new v0();
                }
                v0 v0Var = this.f359c;
                v0Var.a = null;
                v0Var.f390d = false;
                v0Var.b = null;
                v0Var.f389c = false;
                ColorStateList imageTintList = this.a.getImageTintList();
                if (imageTintList != null) {
                    v0Var.f390d = true;
                    v0Var.a = imageTintList;
                }
                PorterDuff.Mode imageTintMode = this.a.getImageTintMode();
                if (imageTintMode != null) {
                    v0Var.f389c = true;
                    v0Var.b = imageTintMode;
                }
                if (v0Var.f390d || v0Var.f389c) {
                    j.a(drawable, v0Var, this.a.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            v0 v0Var2 = this.b;
            if (v0Var2 != null) {
                j.a(drawable, v0Var2, this.a.getDrawableState());
            }
        }
    }
}
