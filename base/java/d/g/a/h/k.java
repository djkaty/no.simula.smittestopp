package d.g.a.h;

public class k extends l {

    /* renamed from: c  reason: collision with root package name */
    public float f512c = 0.0f;

    public void a(int i2) {
        if (this.b == 0 || this.f512c != ((float) i2)) {
            this.f512c = (float) i2;
            if (this.b == 1) {
                b();
            }
            a();
        }
    }
}
