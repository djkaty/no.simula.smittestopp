package k.b.a;

import java.io.IOException;

public class t0 implements e, x1 {
    public z x;

    public t0(z zVar) {
        this.x = zVar;
    }

    public t a() {
        try {
            return new o1(this.x.b());
        } catch (IllegalArgumentException e2) {
            throw new h(e2.getMessage(), e2);
        }
    }

    public t c() {
        try {
            return a();
        } catch (IOException e2) {
            throw new s("unable to get DER object", e2);
        } catch (IllegalArgumentException e3) {
            throw new s("unable to get DER object", e3);
        }
    }
}
