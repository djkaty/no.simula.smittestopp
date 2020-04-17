package d.e.a;

import android.graphics.drawable.Drawable;

public class f extends Drawable {
    public static final double a = Math.cos(Math.toRadians(45.0d));

    public static float a(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        return (float) (((1.0d - a) * ((double) f3)) + ((double) f2));
    }

    public static float b(float f2, float f3, boolean z) {
        if (!z) {
            return f2 * 1.5f;
        }
        return (float) (((1.0d - a) * ((double) f3)) + ((double) (f2 * 1.5f)));
    }
}
