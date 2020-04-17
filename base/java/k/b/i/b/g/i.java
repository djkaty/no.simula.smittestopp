package k.b.i.b.g;

import k.b.i.b.g.o;

public final class i extends o {

    /* renamed from: e  reason: collision with root package name */
    public final int f2110e;

    /* renamed from: f  reason: collision with root package name */
    public final int f2111f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2112g;

    public static class b extends o.a<b> {

        /* renamed from: e  reason: collision with root package name */
        public int f2113e = 0;

        /* renamed from: f  reason: collision with root package name */
        public int f2114f = 0;

        /* renamed from: g  reason: collision with root package name */
        public int f2115g = 0;

        public b() {
            super(1);
        }

        public o.a a() {
            return this;
        }

        public o b() {
            return new i(this, (a) null);
        }
    }

    public /* synthetic */ i(b bVar, a aVar) {
        super(bVar);
        this.f2110e = bVar.f2113e;
        this.f2111f = bVar.f2114f;
        this.f2112g = bVar.f2115g;
    }

    public byte[] a() {
        byte[] a2 = super.a();
        k.b.c.e.a.b(this.f2110e, a2, 16);
        k.b.c.e.a.b(this.f2111f, a2, 20);
        k.b.c.e.a.b(this.f2112g, a2, 24);
        return a2;
    }
}
