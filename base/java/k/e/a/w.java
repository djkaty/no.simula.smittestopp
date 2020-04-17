package k.e.a;

public abstract class w {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final String f2421c;

    /* renamed from: d  reason: collision with root package name */
    public final String f2422d;

    /* renamed from: e  reason: collision with root package name */
    public final String f2423e;

    /* renamed from: f  reason: collision with root package name */
    public final long f2424f;

    /* renamed from: g  reason: collision with root package name */
    public int f2425g;

    public w(int i2, int i3, String str, String str2, String str3, long j2) {
        this.a = i2;
        this.b = i3;
        this.f2421c = str;
        this.f2422d = str2;
        this.f2423e = str3;
        this.f2424f = j2;
    }

    public int a() {
        if (this.f2425g == 0) {
            this.f2425g = y.b(this.f2423e);
        }
        return this.f2425g;
    }
}
