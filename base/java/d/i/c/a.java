package d.i.c;

import android.graphics.Color;

public final class a {
    static {
        new ThreadLocal();
    }

    public static int a(int i2, int i3) {
        int alpha = Color.alpha(i3);
        int alpha2 = Color.alpha(i2);
        int i4 = 255 - (((255 - alpha2) * (255 - alpha)) / 255);
        return Color.argb(i4, a(Color.red(i2), alpha2, Color.red(i3), alpha, i4), a(Color.green(i2), alpha2, Color.green(i3), alpha, i4), a(Color.blue(i2), alpha2, Color.blue(i3), alpha, i4));
    }

    public static int b(int i2, int i3) {
        if (i3 >= 0 && i3 <= 255) {
            return (i2 & 16777215) | (i3 << 24);
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }

    public static int a(int i2, int i3, int i4, int i5, int i6) {
        if (i6 == 0) {
            return 0;
        }
        return (((255 - i3) * (i4 * i5)) + ((i2 * 255) * i3)) / (i6 * 255);
    }
}
