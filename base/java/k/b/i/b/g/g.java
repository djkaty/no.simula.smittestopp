package k.b.i.b.g;

import k.b.i.b.g.o;

public final class g extends o {

    /* renamed from: e  reason: collision with root package name */
    public final int f2105e = 0;

    /* renamed from: f  reason: collision with root package name */
    public final int f2106f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2107g;

    public static class b extends o.a<b> {

        /* renamed from: e  reason: collision with root package name */
        public int f2108e = 0;

        /* renamed from: f  reason: collision with root package name */
        public int f2109f = 0;

        public b() {
            super(2);
        }

        public o.a a() {
            return this;
        }

        public o b() {
            return new g(this, (a) null);
        }
    }

    public /* synthetic */ g(b bVar, a aVar) {
        super(bVar);
        this.f2106f = bVar.f2108e;
        this.f2107g = bVar.f2109f;
    }

    public byte[] a() {
        byte[] a2 = super.a();
        k.b.c.e.a.b(this.f2105e, a2, 16);
        k.b.c.e.a.b(this.f2106f, a2, 20);
        k.b.c.e.a.b(this.f2107g, a2, 24);
        return a2;
    }
}
