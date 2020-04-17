package d.b.e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import d.b.a.r;
import d.b.b.a.a;

public class o extends MultiAutoCompleteTextView {
    public static final int[] z = {16843126};
    public final e x;
    public final y y;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public o(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            int r0 = androidx.appcompat.R$attr.autoCompleteTextViewStyle
            d.b.e.u0.a(r4)
            r3.<init>(r4, r5, r0)
            android.content.Context r4 = r3.getContext()
            int[] r1 = z
            r2 = 0
            d.b.e.x0 r4 = d.b.e.x0.a(r4, r5, r1, r0, r2)
            boolean r1 = r4.f(r2)
            if (r1 == 0) goto L_0x0020
            android.graphics.drawable.Drawable r1 = r4.b(r2)
            r3.setDropDownBackgroundDrawable(r1)
        L_0x0020:
            android.content.res.TypedArray r4 = r4.b
            r4.recycle()
            d.b.e.e r4 = new d.b.e.e
            r4.<init>(r3)
            r3.x = r4
            r4.a(r5, r0)
            d.b.e.y r4 = new d.b.e.y
            r4.<init>(r3)
            r3.y = r4
            r4.a((android.util.AttributeSet) r5, (int) r0)
            d.b.e.y r4 = r3.y
            r4.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.o.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.x;
        if (eVar != null) {
            eVar.a();
        }
        y yVar = this.y;
        if (yVar != null) {
            yVar.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.x;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.x;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        r.a(onCreateInputConnection, editorInfo, (View) this);
        return onCreateInputConnection;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.x;
        if (eVar != null) {
            eVar.d();
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        e eVar = this.x;
        if (eVar != null) {
            eVar.a(i2);
        }
    }

    public void setDropDownBackgroundResource(int i2) {
        setDropDownBackgroundDrawable(a.c(getContext(), i2));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.x;
        if (eVar != null) {
            eVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.x;
        if (eVar != null) {
            eVar.a(mode);
        }
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        y yVar = this.y;
        if (yVar != null) {
            yVar.a(context, i2);
        }
    }
}
