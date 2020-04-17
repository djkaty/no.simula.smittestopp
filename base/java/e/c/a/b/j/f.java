package e.c.a.b.j;

import android.widget.ImageButton;

public class f extends ImageButton {
    public int x;

    public final void a(int i2, boolean z) {
        super.setVisibility(i2);
        if (z) {
            this.x = i2;
        }
    }

    public final int getUserSetVisibility() {
        return this.x;
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        this.x = i2;
    }
}
