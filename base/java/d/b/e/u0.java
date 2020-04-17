package d.b.e;

import android.content.Context;
import android.content.ContextWrapper;

public class u0 extends ContextWrapper {
    public static final Object a = new Object();

    public static Context a(Context context) {
        if (!(context instanceof u0) && !(context.getResources() instanceof w0) && !(context.getResources() instanceof c1)) {
            c1.a();
        }
        return context;
    }
}
