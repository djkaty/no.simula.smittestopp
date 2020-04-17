package e.c.a.b.a;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import d.n.a.a.b;
import d.n.a.a.c;

public class a {
    public static final TimeInterpolator a = new b();
    public static final TimeInterpolator b = new d.n.a.a.a();

    /* renamed from: c  reason: collision with root package name */
    public static final TimeInterpolator f1230c = new c();

    /* renamed from: d  reason: collision with root package name */
    public static final TimeInterpolator f1231d = new DecelerateInterpolator();

    static {
        new LinearInterpolator();
    }

    public static float a(float f2, float f3, float f4) {
        return ((f3 - f2) * f4) + f2;
    }
}
