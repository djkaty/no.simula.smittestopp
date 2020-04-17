package k.b.i.c.b.f;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import k.b.a.i2.f;
import k.b.a.o;
import k.b.a.x;
import k.b.i.a.j;
import k.b.i.b.g.s;

public class a implements PrivateKey {
    public transient o x;
    public transient s y;
    public transient x z;

    public a(f fVar) {
        this.z = fVar.A;
        this.x = j.a(fVar.y.y).A.x;
        this.y = (s) k.b.c.e.a.a(fVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.x.b(aVar.x) && Arrays.equals(this.y.b(), aVar.y.b());
    }

    public String getAlgorithm() {
        return "XMSSMT";
    }

    public byte[] getEncoded() {
        try {
            return k.b.c.e.a.a((k.b.c.d.a) this.y, this.z).e();
        } catch (IOException unused) {
            return null;
        }
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return (k.b.c.e.a.d(this.y.b()) * 37) + this.x.hashCode();
    }
}
