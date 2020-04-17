package k.b.i.c.b.c;

import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import java.io.IOException;
import java.security.PublicKey;
import java.util.Arrays;
import k.b.a.l2.s;
import k.b.i.b.f.a;

public class b implements PublicKey {
    public transient k.b.i.b.c.b x;

    public b(s sVar) {
        this.x = (k.b.i.b.c.b) a.a(sVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        k.b.i.b.c.b bVar2 = this.x;
        if (bVar2.a != bVar.x.a || !Arrays.equals(bVar2.a(), bVar.x.a())) {
            return false;
        }
        return true;
    }

    public final String getAlgorithm() {
        return k.b.c.e.a.c(this.x.a);
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
        k.b.i.b.c.b bVar = this.x;
        return (k.b.c.e.a.d(bVar.a()) * 37) + bVar.a;
    }
}
