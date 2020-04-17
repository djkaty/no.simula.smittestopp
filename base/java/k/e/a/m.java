package k.e.a;

public final class m extends l {
    public final x b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2362c;

    /* renamed from: d  reason: collision with root package name */
    public final int f2363d;

    /* renamed from: e  reason: collision with root package name */
    public final int f2364e;

    /* renamed from: f  reason: collision with root package name */
    public int f2365f;

    /* renamed from: g  reason: collision with root package name */
    public int f2366g;

    /* renamed from: h  reason: collision with root package name */
    public a f2367h;

    /* renamed from: i  reason: collision with root package name */
    public a f2368i;

    /* renamed from: j  reason: collision with root package name */
    public a f2369j;

    /* renamed from: k  reason: collision with root package name */
    public a f2370k;

    /* renamed from: l  reason: collision with root package name */
    public b f2371l;

    public m(x xVar, int i2, String str, String str2, String str3, Object obj) {
        super(458752);
        this.b = xVar;
        this.f2362c = i2;
        this.f2363d = xVar.c(str);
        this.f2364e = xVar.c(str2);
        if (str3 != null) {
            this.f2365f = xVar.c(str3);
        }
        if (obj != null) {
            this.f2366g = xVar.a(obj).a;
        }
    }

    public a a(String str, boolean z) {
        if (z) {
            a a = a.a(this.b, str, this.f2367h);
            this.f2367h = a;
            return a;
        }
        a a2 = a.a(this.b, str, this.f2368i);
        this.f2368i = a2;
        return a2;
    }

    public a a(int i2, z zVar, String str, boolean z) {
        if (z) {
            a a = a.a(this.b, i2, zVar, str, this.f2369j);
            this.f2369j = a;
            return a;
        }
        a a2 = a.a(this.b, i2, zVar, str, this.f2370k);
        this.f2370k = a2;
        return a2;
    }
}
