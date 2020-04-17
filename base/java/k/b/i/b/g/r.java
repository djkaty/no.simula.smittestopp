package k.b.i.b.g;

import k.b.c.a;

public final class r {
    public final v a;
    public final w b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2134c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2135d;

    public r(int i2, int i3, a aVar) {
        this.f2134c = i2;
        this.f2135d = i3;
        if (i2 < 2) {
            throw new IllegalArgumentException("totalHeight must be > 1");
        } else if (i2 % i3 == 0) {
            int i4 = i2 / i3;
            if (i4 != 1) {
                w wVar = new w(i4, aVar);
                this.b = wVar;
                this.a = d.b(wVar.f2158f, wVar.f2159g, wVar.f2157e, wVar.f2160h.f2126d, this.f2134c, i3);
                return;
            }
            throw new IllegalArgumentException("height / layers must be greater than 1");
        } else {
            throw new IllegalArgumentException("layers must divide totalHeight without remainder");
        }
    }
}
