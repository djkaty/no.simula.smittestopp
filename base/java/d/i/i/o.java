package d.i.i;

import android.view.View;
import d.i.i.n;

public final class o extends n.b<Boolean> {
    public o(int i2, Class cls, int i3) {
        super(i2, cls, i3);
    }

    public Object a(View view) {
        return Boolean.valueOf(view.isScreenReaderFocusable());
    }
}
