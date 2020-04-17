package d.s.s;

import android.graphics.drawable.Drawable;
import d.b.a.a;
import d.b.a.h;
import d.b.a.k;

public class b extends a {

    /* renamed from: f  reason: collision with root package name */
    public final h f759f;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public b(d.b.a.h r2, d.s.s.c r3) {
        /*
            r1 = this;
            d.b.a.j r0 = r2.j()
            d.b.a.k r0 = (d.b.a.k) r0
            if (r0 == 0) goto L_0x0012
            android.content.Context r0 = r0.h()
            r1.<init>(r0, r3)
            r1.f759f = r2
            return
        L_0x0012:
            r2 = 0
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.s.b.<init>(d.b.a.h, d.s.s.c):void");
    }

    public void a(Drawable drawable, int i2) {
        a k2 = this.f759f.k();
        if (drawable == null) {
            k2.c(false);
            return;
        }
        k2.c(true);
        k kVar = (k) this.f759f.j();
        if (kVar != null) {
            kVar.k();
            a aVar = kVar.E;
            if (aVar != null) {
                aVar.a(drawable);
                aVar.a(i2);
                return;
            }
            return;
        }
        throw null;
    }
}
