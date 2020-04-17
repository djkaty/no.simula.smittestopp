package d.b.e;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.SeekBar;

public class t extends SeekBar {
    public final u x;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public t(android.content.Context r2, android.util.AttributeSet r3) {
        /*
            r1 = this;
            int r0 = androidx.appcompat.R$attr.seekBarStyle
            r1.<init>(r2, r3, r0)
            d.b.e.u r2 = new d.b.e.u
            r2.<init>(r1)
            r1.x = r2
            r2.a(r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.t.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        u uVar = this.x;
        Drawable drawable = uVar.f384e;
        if (drawable != null && drawable.isStateful() && drawable.setState(uVar.f383d.getDrawableState())) {
            uVar.f383d.invalidateDrawable(drawable);
        }
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.x.f384e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.x.a(canvas);
    }
}
