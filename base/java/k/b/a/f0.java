package k.b.a;

import java.io.IOException;

public class f0 implements e, x1 {
    public final int x;
    public final z y;

    public f0(int i2, z zVar) {
        this.x = i2;
        this.y = zVar;
    }

    public t a() {
        return new e0(this.x, this.y.b());
    }

    public t c() {
        try {
            return a();
        } catch (IOException e2) {
            throw new s(e2.getMessage(), e2);
        }
    }
}
