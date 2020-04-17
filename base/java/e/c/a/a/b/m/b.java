package e.c.a.a.b.m;

import android.content.Context;

public class b {
    public static b b = new b();
    public a a = null;

    public static a b(Context context) {
        return b.a(context);
    }

    public final synchronized a a(Context context) {
        if (this.a == null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.a = new a(context);
        }
        return this.a;
    }
}
