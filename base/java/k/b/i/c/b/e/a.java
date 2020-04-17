package k.b.i.c.b.e;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import k.b.a.a1;
import k.b.a.i2.f;
import k.b.a.o;
import k.b.a.x;
import k.b.i.a.e;
import k.b.i.a.h;
import k.b.i.c.a.b;

public class a implements PrivateKey, b {
    public transient o x;
    public transient k.b.i.b.e.b y;
    public transient x z;

    public a(f fVar) {
        this.z = fVar.A;
        this.x = h.a(fVar.y.y).y.x;
        this.y = (k.b.i.b.e.b) k.b.c.e.a.a(fVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.x.b(aVar.x) && Arrays.equals(this.y.a(), aVar.y.a());
    }

    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    public byte[] getEncoded() {
        f fVar;
        try {
            if (this.y.a != null) {
                fVar = k.b.c.e.a.a((k.b.c.d.a) this.y, this.z);
            } else {
                fVar = new f(new k.b.a.l2.a(e.f2070e, new h(new k.b.a.l2.a(this.x))), new a1(this.y.a()), this.z, (byte[]) null);
            }
            return fVar.e();
        } catch (IOException unused) {
            return null;
        }
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        return (k.b.c.e.a.d(this.y.a()) * 37) + this.x.hashCode();
    }
}
