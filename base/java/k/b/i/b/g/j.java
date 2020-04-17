package k.b.i.b.g;

import k.b.i.b.g.o;

public final class j extends o {

    /* renamed from: e  reason: collision with root package name */
    public final int f2116e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2117f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2118g;

    public static class b extends o.a<b> {

        /* renamed from: e  reason: collision with root package name */
        public int f2119e = 0;

        /* renamed from: f  reason: collision with root package name */
        public int f2120f = 0;

        /* renamed from: g  reason: collision with root package name */
        public int f2121g = 0;

        public b() {
            super(0);
        }

        public o.a a() {
            return this;
        }

        public o b() {
            return new j(this, (a) null);
        }
    }

    public /* synthetic */ j(b bVar, a aVar) {
        super(bVar);
        this.f2116e = bVar.f2119e;
        this.f2117f = bVar.f2120f;
        this.f2118g = bVar.f2121g;
    }

    public byte[] a() {
        byte[] a2 = super.a();
        k.b.c.e.a.b(this.f2116e, a2, 16);
        k.b.c.e.a.b(this.f2117f, a2, 20);
        k.b.c.e.a.b(this.f2118g, a2, 24);
        return a2;
    }
}
