package k.b.a;

import java.io.IOException;

public class s1 implements v {
    public z x;

    public s1(z zVar) {
        this.x = zVar;
    }

    public t a() {
        return new r1(this.x.b());
    }

    public t c() {
        try {
            return new r1(this.x.b());
        } catch (IOException e2) {
            throw new IllegalStateException(e2.getMessage());
        }
    }
}
