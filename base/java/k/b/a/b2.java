package k.b.a;

import java.io.InputStream;

public abstract class b2 extends InputStream {
    public final InputStream x;
    public int y;

    public b2(InputStream inputStream, int i2, int i3) {
        this.x = inputStream;
        this.y = i2;
    }

    public void a(boolean z) {
        InputStream inputStream = this.x;
        if (inputStream instanceof y1) {
            y1 y1Var = (y1) inputStream;
            y1Var.C = z;
            y1Var.a();
        }
    }
}
