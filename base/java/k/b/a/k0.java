package k.b.a;

import java.io.IOException;

public class k0 implements v {
    public z x;

    public k0(z zVar) {
        this.x = zVar;
    }

    public t a() {
        return new j0(this.x.b());
    }

    public t c() {
        try {
            return a();
        } catch (IOException e2) {
            throw new IllegalStateException(e2.getMessage());
        }
    }
}
