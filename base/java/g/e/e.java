package g.e;

import g.c.d;
import g.c.f;
import g.c.g;

public abstract class e extends g {

    /* renamed from: d  reason: collision with root package name */
    public static transient d.f f1370d = d.d().a;

    /* renamed from: c  reason: collision with root package name */
    public String f1371c;

    public static final class a extends e {

        /* renamed from: e  reason: collision with root package name */
        public final g.l f1372e = new g.l(this);

        /* renamed from: f  reason: collision with root package name */
        public final g.l f1373f = new g.l(this);

        /* renamed from: g  reason: collision with root package name */
        public final g.i f1374g = new g.i(this, 108);

        public void a(String str) {
            this.f1371c = str;
            g.i c2 = c();
            c2.a();
            c2.b();
            throw null;
        }

        public g.f b() {
            return this.f1373f;
        }

        public g.i c() {
            return this.f1374g;
        }
    }

    public static final class b extends e {

        /* renamed from: e  reason: collision with root package name */
        public final g.k f1375e = new g.k(this);

        /* renamed from: f  reason: collision with root package name */
        public final g.i f1376f = new g.i(this, 108);

        public g.f b() {
            return this.f1375e;
        }

        public g.i c() {
            return this.f1376f;
        }
    }

    public e() {
        super(f.a.a);
    }

    public static e e() {
        return d.d().b() ? new a() : new b();
    }

    public final void a(g.a.d.e eVar) {
        b().a(Integer.valueOf(eVar.intValue()));
    }

    public abstract g.f b();

    public abstract g.i c();

    public int d() {
        String str;
        if (f1370d == d.f.LINUX && (str = this.f1371c) != null) {
            return str.length() + 2;
        }
        g.i c2 = c();
        c2.a();
        c2.b();
        throw null;
    }

    public final g.a.d.e a() {
        return g.a.d.e.valueOf((long) b().b());
    }

    public void a(String str) {
        this.f1371c = str;
        g.i c2 = c();
        c2.a();
        c2.b();
        throw null;
    }

    public void a(int i2) {
        if (f1370d != d.f.LINUX) {
            c().c();
            throw null;
        } else if (i2 == 2) {
            this.f1371c = "";
        } else {
            g.i c2 = c();
            byte[] bArr = new byte[c2.f1360d];
            c2.a();
            c2.b();
            throw null;
        }
    }
}
