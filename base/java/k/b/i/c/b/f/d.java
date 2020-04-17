package k.b.i.c.b.f;

import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import java.io.IOException;
import java.security.PublicKey;
import java.util.Arrays;
import k.b.a.l2.s;
import k.b.a.o;
import k.b.i.a.i;
import k.b.i.b.f.a;
import k.b.i.b.g.y;

public class d implements PublicKey {
    public transient y x;
    public transient o y;

    public d(s sVar) {
        this.y = i.a(sVar.x.y).z.x;
        this.x = (y) a.a(sVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.y.b(dVar.y) && Arrays.equals(this.x.a(), dVar.x.a());
    }

    public final String getAlgorithm() {
        return "XMSS";
    }

    public byte[] getEncoded() {
        try {
            return k.b.c.e.a.a((k.b.c.d.a) this.x).e();
        } catch (IOException unused) {
            return null;
        }
    }

    public String getFormat() {
        return SecurityProvider.DEFAULT_CERT_INSTANCE;
    }

    public int hashCode() {
        return (k.b.c.e.a.d(this.x.a()) * 37) + this.y.hashCode();
    }
}
