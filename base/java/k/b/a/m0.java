package k.b.a;

import java.io.IOException;

public class m0 implements y {
    public z x;

    public m0(z zVar) {
        this.x = zVar;
    }

    public t a() {
        return new l0(this.x.b());
    }

    public t c() {
        try {
            return a();
        } catch (IOException e2) {
            throw new s(e2.getMessage(), e2);
        }
    }
}
