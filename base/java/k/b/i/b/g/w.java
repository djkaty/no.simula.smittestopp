package k.b.i.b.g;

import k.b.a.o;
import k.b.c.a;

public final class w {
    public final v a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2155c;

    /* renamed from: d  reason: collision with root package name */
    public final o f2156d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2157e;

    /* renamed from: f  reason: collision with root package name */
    public final String f2158f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2159g;

    /* renamed from: h  reason: collision with root package name */
    public final m f2160h;

    public w(int i2, a aVar) {
        if (i2 < 2) {
            throw new IllegalArgumentException("height must be >= 2");
        } else if (aVar != null) {
            this.b = i2;
            int i3 = 2;
            while (true) {
                int i4 = this.b;
                if (i3 > i4) {
                    throw new IllegalStateException("should never happen...");
                } else if ((i4 - i3) % 2 == 0) {
                    this.f2155c = i3;
                    this.f2158f = aVar.a();
                    String a2 = aVar.a();
                    o oVar = f.a.get(a2);
                    if (oVar != null) {
                        this.f2156d = oVar;
                        m mVar = new m(oVar);
                        this.f2160h = mVar;
                        int i5 = mVar.b;
                        this.f2159g = i5;
                        int i6 = mVar.f2125c;
                        this.f2157e = i6;
                        this.a = e.b(this.f2158f, i5, i6, mVar.f2126d, i2);
                        return;
                    }
                    throw new IllegalArgumentException(e.a.a.a.a.b("unrecognized digest name: ", a2));
                } else {
                    i3++;
                }
            }
        } else {
            throw new NullPointerException("digest == null");
        }
    }

    public k a() {
        return new k(this.f2160h);
    }
}
