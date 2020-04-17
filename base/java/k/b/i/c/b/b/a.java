package k.b.i.c.b.b;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import k.b.a.i2.f;
import k.b.a.x;

public class a implements k.b.i.c.a.a, PrivateKey {
    public transient k.b.i.b.b.a x;
    public transient x y;

    public a(f fVar) {
        this.y = fVar.A;
        this.x = (k.b.i.b.b.a) k.b.c.e.a.a(fVar);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        return Arrays.equals(this.x.a(), ((a) obj).x.a());
    }

    public final String getAlgorithm() {
        return "NH";
    }

    public byte[] getEncoded() {
        try {
            return k.b.c.e.a.a((k.b.c.d.a) this.x, this.y).e();
        } catch (IOException unused) {
            return null;
        }
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return k.b.c.e.a.c(this.x.a());
    }
}
