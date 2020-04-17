package k.b.i.c.b.f;

import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import java.io.IOException;
import java.security.PublicKey;
import java.util.Arrays;
import k.b.a.l2.s;
import k.b.a.o;
import k.b.i.a.j;
import k.b.i.b.f.a;
import k.b.i.b.g.t;

public class b implements PublicKey {
    public transient o x;
    public transient t y;

    public b(s sVar) {
        this.x = j.a(sVar.x.y).A.x;
        this.y = (t) a.a(sVar);
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
        return "XMSSMT";
    }

    public byte[] getEncoded() {
        try {
            return k.b.c.e.a.a((k.b.c.d.a) this.y).e();
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
