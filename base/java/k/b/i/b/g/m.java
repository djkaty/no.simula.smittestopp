package k.b.i.b.g;

import k.b.a.o;
import k.b.c.a;

public final class m {
    public final v a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2125c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2126d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2127e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2128f;

    /* renamed from: g  reason: collision with root package name */
    public final o f2129g;

    public m(o oVar) {
        if (oVar != null) {
            this.f2129g = oVar;
            a a2 = f.a(oVar);
            String a3 = a2.a();
            int b2 = a3.equals("SHAKE128") ? 32 : a3.equals("SHAKE256") ? 64 : a2.b();
            this.b = b2;
            this.f2125c = 16;
            int ceil = (int) Math.ceil(((double) (b2 * 8)) / ((double) k.b.c.e.a.d(16)));
            this.f2127e = ceil;
            int floor = ((int) Math.floor((double) (k.b.c.e.a.d((this.f2125c - 1) * ceil) / k.b.c.e.a.d(this.f2125c)))) + 1;
            this.f2128f = floor;
            this.f2126d = this.f2127e + floor;
            l b3 = l.b(a2.a(), this.b, this.f2125c, this.f2126d);
            this.a = b3;
            if (b3 == null) {
                StringBuilder a4 = e.a.a.a.a.a("cannot find OID for digest algorithm: ");
                a4.append(a2.a());
                throw new IllegalArgumentException(a4.toString());
            }
            return;
        }
        throw new NullPointerException("treeDigest == null");
    }
}
