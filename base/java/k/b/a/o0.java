package k.b.a;

import java.io.IOException;

public class o0 implements c0 {
    public boolean x;
    public int y;
    public z z;

    public o0(boolean z2, int i2, z zVar) {
        this.x = z2;
        this.y = i2;
        this.z = zVar;
    }

    public t a() {
        return this.z.a(this.x, this.y);
    }

    public t c() {
        try {
            return a();
        } catch (IOException e2) {
            throw new s(e2.getMessage());
        }
    }
}
