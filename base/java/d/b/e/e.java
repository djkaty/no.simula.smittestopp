package d.b.e;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$styleable;
import d.i.i.n;

public class e {
    public final View a;
    public final j b;

    /* renamed from: c  reason: collision with root package name */
    public int f346c = -1;

    /* renamed from: d  reason: collision with root package name */
    public v0 f347d;

    /* renamed from: e  reason: collision with root package name */
    public v0 f348e;

    /* renamed from: f  reason: collision with root package name */
    public v0 f349f;

    public e(View view) {
        this.a = view;
        this.b = j.a();
    }

    public void a(AttributeSet attributeSet, int i2) {
        x0 a2 = x0.a(this.a.getContext(), attributeSet, R$styleable.ViewBackgroundHelper, i2, 0);
        try {
            if (a2.f(R$styleable.ViewBackgroundHelper_android_background)) {
                this.f346c = a2.f(R$styleable.ViewBackgroundHelper_android_background, -1);
                ColorStateList b2 = this.b.b(this.a.getContext(), this.f346c);
                if (b2 != null) {
                    a(b2);
                }
            }
            if (a2.f(R$styleable.ViewBackgroundHelper_backgroundTint)) {
                n.a(this.a, a2.a(R$styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (a2.f(R$styleable.ViewBackgroundHelper_backgroundTintMode)) {
                n.a(this.a, e0.a(a2.c(R$styleable.ViewBackgroundHelper_backgroundTintMode, -1), (PorterDuff.Mode) null));
            }
        } finally {
            a2.b.recycle();
        }
    }

    public void b(ColorStateList colorStateList) {
        if (this.f348e == null) {
            this.f348e = new v0();
        }
        v0 v0Var = this.f348e;
        v0Var.a = colorStateList;
        v0Var.f390d = true;
        a();
    }

    public PorterDuff.Mode c() {
        v0 v0Var = this.f348e;
        if (v0Var != null) {
            return v0Var.b;
        }
        return null;
    }

    public void d() {
        this.f346c = -1;
        a((ColorStateList) null);
        a();
    }

    public ColorStateList b() {
        v0 v0Var = this.f348e;
        if (v0Var != null) {
            return v0Var.a;
        }
        return null;
    }

    public void a(int i2) {
        this.f346c = i2;
        j jVar = this.b;
        a(jVar != null ? jVar.b(this.a.getContext(), i2) : null);
        a();
    }

    public void a(PorterDuff.Mode mode) {
        if (this.f348e == null) {
            this.f348e = new v0();
        }
        v0 v0Var = this.f348e;
        v0Var.b = mode;
        v0Var.f389c = true;
        a();
    }

    public void a() {
        Drawable background = this.a.getBackground();
        if (background != null) {
            int i2 = Build.VERSION.SDK_INT;
            boolean z = true;
            if (i2 <= 21 ? i2 == 21 : this.f347d != null) {
                if (this.f349f == null) {
                    this.f349f = new v0();
                }
                v0 v0Var = this.f349f;
                v0Var.a = null;
                v0Var.f390d = false;
                v0Var.b = null;
                v0Var.f389c = false;
                ColorStateList c2 = n.c(this.a);
                if (c2 != null) {
                    v0Var.f390d = true;
                    v0Var.a = c2;
                }
                PorterDuff.Mode backgroundTintMode = this.a.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    v0Var.f389c = true;
                    v0Var.b = backgroundTintMode;
                }
                if (v0Var.f390d || v0Var.f389c) {
                    j.a(background, v0Var, this.a.getDrawableState());
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            v0 v0Var2 = this.f348e;
            if (v0Var2 != null) {
                j.a(background, v0Var2, this.a.getDrawableState());
                return;
            }
            v0 v0Var3 = this.f347d;
            if (v0Var3 != null) {
                j.a(background, v0Var3, this.a.getDrawableState());
            }
        }
    }

    public void a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f347d == null) {
                this.f347d = new v0();
            }
            v0 v0Var = this.f347d;
            v0Var.a = colorStateList;
            v0Var.f390d = true;
        } else {
            this.f347d = null;
        }
        a();
    }
}
