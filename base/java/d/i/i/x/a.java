package d.i.i.x;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

public final class a extends ClickableSpan {
    public final int x;
    public final d y;
    public final int z;

    public a(int i2, d dVar, int i3) {
        this.x = i2;
        this.y = dVar;
        this.z = i3;
    }

    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.x);
        d dVar = this.y;
        dVar.a.performAction(this.z, bundle);
    }
}
