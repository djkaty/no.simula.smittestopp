package k.a.a.b.d.a;

import java.io.Writer;

public class g extends c {
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f1567c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f1568d;

    public g(int i2, int i3, boolean z) {
        this.b = i2;
        this.f1567c = i3;
        this.f1568d = z;
    }

    public static g a(int i2, int i3) {
        return new g(i2, i3, true);
    }

    public boolean a(int i2, Writer writer) {
        if (this.f1568d) {
            if (i2 < this.b || i2 > this.f1567c) {
                return false;
            }
        } else if (i2 >= this.b && i2 <= this.f1567c) {
            return false;
        }
        writer.write("&#");
        writer.write(Integer.toString(i2, 10));
        writer.write(59);
        return true;
    }
}
