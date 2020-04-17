package d.i.c.j;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

public final class e extends Drawable.ConstantState {
    public int a;
    public Drawable.ConstantState b;

    /* renamed from: c  reason: collision with root package name */
    public ColorStateList f576c = null;

    /* renamed from: d  reason: collision with root package name */
    public PorterDuff.Mode f577d = c.D;

    public e(e eVar) {
        if (eVar != null) {
            this.a = eVar.a;
            this.b = eVar.b;
            this.f576c = eVar.f576c;
            this.f577d = eVar.f577d;
        }
    }

    public int getChangingConfigurations() {
        int i2 = this.a;
        Drawable.ConstantState constantState = this.b;
        return i2 | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    public Drawable newDrawable() {
        return new d(this, (Resources) null);
    }

    public Drawable newDrawable(Resources resources) {
        return new d(this, resources);
    }
}
