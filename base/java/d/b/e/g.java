package d.b.e;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CheckBox;
import d.b.b.a.a;

public class g extends CheckBox {
    public final i x;
    public final e y;
    public final y z;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public g(android.content.Context r2, android.util.AttributeSet r3) {
        /*
            r1 = this;
            int r0 = androidx.appcompat.R$attr.checkboxStyle
            d.b.e.u0.a(r2)
            r1.<init>(r2, r3, r0)
            d.b.e.i r2 = new d.b.e.i
            r2.<init>(r1)
            r1.x = r2
            r2.a(r3, r0)
            d.b.e.e r2 = new d.b.e.e
            r2.<init>(r1)
            r1.y = r2
            r2.a(r3, r0)
            d.b.e.y r2 = new d.b.e.y
            r2.<init>(r1)
            r1.z = r2
            r2.a((android.util.AttributeSet) r3, (int) r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.g.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.y;
        if (eVar != null) {
            eVar.a();
        }
        y yVar = this.z;
        if (yVar != null) {
            yVar.a();
        }
    }

    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        i iVar = this.x;
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.y;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.y;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        i iVar = this.x;
        if (iVar != null) {
            return iVar.b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        i iVar = this.x;
        if (iVar != null) {
            return iVar.f350c;
        }
        return null;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.y;
        if (eVar != null) {
            eVar.d();
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.y;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        i iVar = this.x;
        if (iVar == null) {
            return;
        }
        if (iVar.f353f) {
            iVar.f353f = false;
            return;
        }
        iVar.f353f = true;
        iVar.a();
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.y;
        if (eVar != null) {
            eVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.y;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        i iVar = this.x;
        if (iVar != null) {
            iVar.b = colorStateList;
            iVar.f351d = true;
            iVar.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        i iVar = this.x;
        if (iVar != null) {
            iVar.f350c = mode;
            iVar.f352e = true;
            iVar.a();
        }
    }

    public void setButtonDrawable(int i2) {
        setButtonDrawable(a.c(getContext(), i2));
    }
}
