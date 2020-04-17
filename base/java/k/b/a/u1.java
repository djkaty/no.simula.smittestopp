package k.b.a;

import java.io.IOException;

public class u1 implements y {
    public z x;

    public u1(z zVar) {
        this.x = zVar;
    }

    public t a() {
        return new t1(this.x.b());
    }

    public t c() {
        try {
            return new t1(this.x.b());
        } catch (IOException e2) {
            throw new s(e2.getMessage(), e2);
        }
    }
}
