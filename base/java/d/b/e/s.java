package d.b.e;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.RatingBar;

public class s extends RatingBar {
    public final q x;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public s(android.content.Context r2, android.util.AttributeSet r3) {
        /*
            r1 = this;
            int r0 = androidx.appcompat.R$attr.ratingBarStyle
            r1.<init>(r2, r3, r0)
            d.b.e.q r2 = new d.b.e.q
            r2.<init>(r1)
            r1.x = r2
            r2.a((android.util.AttributeSet) r3, (int) r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.e.s.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public synchronized void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        Bitmap bitmap = this.x.b;
        if (bitmap != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i2, 0), getMeasuredHeight());
        }
    }
}
