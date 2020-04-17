package k.b.i.c.b.f;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import k.b.a.i2.f;
import k.b.a.o;
import k.b.c.e.a;
import k.b.i.a.i;
import k.b.i.b.g.x;

public class c implements PrivateKey {
    public transient x x;
    public transient o y;
    public transient k.b.a.x z;

    public c(f fVar) {
        this.z = fVar.A;
        this.y = i.a(fVar.y.y).z.x;
        this.x = (x) a.a(fVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.y.b(cVar.y) && Arrays.equals(this.x.b(), cVar.x.b());
    }

    public String getAlgorithm() {
        return "XMSS";
    }

    public byte[] getEncoded() {
        try {
            return a.a((k.b.c.d.a) this.x, this.z).e();
        } catch (IOException unused) {
            return null;
        }
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return (a.d(this.x.b()) * 37) + this.y.hashCode();
    }
}
