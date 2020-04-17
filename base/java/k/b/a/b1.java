package k.b.a;

import e.a.a.a.a;
import java.io.IOException;
import java.io.InputStream;

public class b1 implements q {
    public w1 x;

    public b1(w1 w1Var) {
        this.x = w1Var;
    }

    public t a() {
        return new a1(this.x.a());
    }

    public InputStream b() {
        return this.x;
    }

    public t c() {
        try {
            return new a1(this.x.a());
        } catch (IOException e2) {
            StringBuilder a = a.a("IOException converting stream to byte array: ");
            a.append(e2.getMessage());
            throw new s(a.toString(), e2);
        }
    }
}
