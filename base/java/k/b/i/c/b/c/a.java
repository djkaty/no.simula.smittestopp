package k.b.i.c.b.c;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import k.b.a.i2.f;
import k.b.a.x;

public class a implements PrivateKey {
    public transient k.b.i.b.c.a x;
    public transient x y;

    public a(f fVar) {
        this.y = fVar.A;
        this.x = (k.b.i.b.c.a) k.b.c.e.a.a(fVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        k.b.i.b.c.a aVar2 = this.x;
        if (aVar2.a != aVar.x.a || !Arrays.equals(aVar2.a(), aVar.x.a())) {
            return false;
        }
        return true;
    }

    public final String getAlgorithm() {
        return k.b.c.e.a.c(this.x.a);
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
        k.b.i.b.c.a aVar = this.x;
        return (k.b.c.e.a.d(aVar.a()) * 37) + aVar.a;
    }
}
