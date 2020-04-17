package d.g.b;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.microsoft.identity.client.internal.MsalUtils;

public class f extends View {
    public int x;
    public View y;
    public int z;

    public View getContent() {
        return this.y;
    }

    public int getEmptyVisibility() {
        return this.z;
    }

    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize((float) rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds(MsalUtils.QUERY_STRING_SYMBOL, 0, 1, rect);
            canvas.drawText(MsalUtils.QUERY_STRING_SYMBOL, ((((float) width) / 2.0f) - (((float) rect.width()) / 2.0f)) - ((float) rect.left), ((((float) rect.height()) / 2.0f) + (((float) height) / 2.0f)) - ((float) rect.bottom), paint);
        }
    }

    public void setContentId(int i2) {
        View findViewById;
        if (this.x != i2) {
            View view = this.y;
            if (view != null) {
                view.setVisibility(0);
                ((ConstraintLayout.a) this.y.getLayoutParams()).Z = false;
                this.y = null;
            }
            this.x = i2;
            if (i2 != -1 && (findViewById = ((View) getParent()).findViewById(i2)) != null) {
                findViewById.setVisibility(8);
            }
        }
    }

    public void setEmptyVisibility(int i2) {
        this.z = i2;
    }
}
