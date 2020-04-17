package k.b.i.c.b.b;

import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import java.io.IOException;
import java.security.PublicKey;
import java.util.Arrays;
import k.b.a.l2.s;
import k.b.i.c.a.a;

public class b implements a, PublicKey {
    public transient k.b.i.b.b.b x;

    public b(s sVar) {
        this.x = (k.b.i.b.b.b) k.b.i.b.f.a.a(sVar);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        return Arrays.equals(this.x.a(), ((b) obj).x.a());
    }

    public final String getAlgorithm() {
        return "NH";
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
        return k.b.c.e.a.d(this.x.a());
    }
}
