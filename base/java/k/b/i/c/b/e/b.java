package k.b.i.c.b.e;

import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import java.io.IOException;
import java.security.PublicKey;
import java.util.Arrays;
import k.b.a.l2.s;
import k.b.a.o;
import k.b.i.a.e;
import k.b.i.a.h;
import k.b.i.b.e.c;
import k.b.i.b.f.a;

public class b implements PublicKey, k.b.i.c.a.b {
    public transient o x;
    public transient c y;

    public b(s sVar) {
        this.x = h.a(sVar.x.y).y.x;
        this.y = (c) a.a(sVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.x.b(bVar.x) && Arrays.equals(this.y.a(), bVar.y.a());
    }

    public final String getAlgorithm() {
        return "SPHINCS-256";
    }

    public byte[] getEncoded() {
        try {
            return (this.y.a != null ? k.b.c.e.a.a((k.b.c.d.a) this.y) : new s(new k.b.a.l2.a(e.f2070e, new h(new k.b.a.l2.a(this.x))), this.y.a())).e();
        } catch (IOException unused) {
            return null;
        }
    }

    public String getFormat() {
        return SecurityProvider.DEFAULT_CERT_INSTANCE;
    }

    public int hashCode() {
        return (k.b.c.e.a.d(this.y.a()) * 37) + this.x.hashCode();
    }
}
