package d.b.e;

public class p0 {
    public int a = 0;
    public int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f368c = Integer.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    public int f369d = Integer.MIN_VALUE;

    /* renamed from: e  reason: collision with root package name */
    public int f370e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f371f = 0;

    /* renamed from: g  reason: collision with root package name */
    public boolean f372g = false;

    /* renamed from: h  reason: collision with root package name */
    public boolean f373h = false;

    public void a(int i2, int i3) {
        this.f368c = i2;
        this.f369d = i3;
        this.f373h = true;
        if (this.f372g) {
            if (i3 != Integer.MIN_VALUE) {
                this.a = i3;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.b = i2;
                return;
            }
            return;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.a = i2;
        }
        if (i3 != Integer.MIN_VALUE) {
            this.b = i3;
        }
    }
}
