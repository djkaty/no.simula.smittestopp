package d.t.a;

import android.graphics.Rect;
import android.view.View;
import d.t.a.s;

public abstract class r {
    public final s.k a;
    public int b = Integer.MIN_VALUE;

    /* renamed from: c  reason: collision with root package name */
    public final Rect f812c = new Rect();

    public /* synthetic */ r(s.k kVar, p pVar) {
        this.a = kVar;
    }

    public static r a(s.k kVar, int i2) {
        if (i2 == 0) {
            return new p(kVar);
        }
        if (i2 == 1) {
            return new q(kVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int a();

    public abstract int a(View view);

    public abstract int b();

    public abstract int b(View view);

    public abstract int c();
}
