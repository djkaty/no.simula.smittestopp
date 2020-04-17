package d.b.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.appcompat.R$styleable;
import d.b.d.a;

public abstract class a {

    public interface b {
        void a(boolean z);
    }

    @Deprecated
    public static abstract class c {
        public abstract void a();
    }

    public d.b.d.a a(a.C0012a aVar) {
        return null;
    }

    public abstract void a(int i2);

    public abstract void a(Configuration configuration);

    public abstract void a(Drawable drawable);

    public abstract void a(CharSequence charSequence);

    public abstract void a(boolean z);

    public boolean a() {
        return false;
    }

    public abstract boolean a(int i2, KeyEvent keyEvent);

    public boolean a(KeyEvent keyEvent) {
        return false;
    }

    public abstract void b(CharSequence charSequence);

    public abstract void b(boolean z);

    public abstract boolean b();

    public abstract int c();

    public abstract void c(boolean z);

    public abstract Context d();

    public abstract void d(boolean z);

    public boolean e() {
        return false;
    }

    public void f() {
    }

    public boolean g() {
        return false;
    }

    /* renamed from: d.b.a.a$a  reason: collision with other inner class name */
    public static class C0007a extends ViewGroup.MarginLayoutParams {
        public int a;

        public C0007a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionBarLayout);
            this.a = obtainStyledAttributes.getInt(R$styleable.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public C0007a(int i2, int i3) {
            super(i2, i3);
            this.a = 0;
            this.a = 8388627;
        }

        public C0007a(C0007a aVar) {
            super(aVar);
            this.a = 0;
            this.a = aVar.a;
        }

        public C0007a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 0;
        }
    }
}
