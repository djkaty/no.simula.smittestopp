package k.b.i.c.b.a;

import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import java.io.IOException;
import java.security.PublicKey;
import k.b.a.l2.a;
import k.b.a.l2.s;
import k.b.i.a.e;
import k.b.i.b.a.c;

public class b implements PublicKey {
    public c x;

    public b(c cVar) {
        this.x = cVar;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        c cVar = this.x;
        int i2 = cVar.b;
        c cVar2 = ((b) obj).x;
        if (i2 == cVar2.b && cVar.f2083c == cVar2.f2083c && cVar.f2084d.equals(cVar2.f2084d)) {
            return true;
        }
        return false;
    }

    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    public byte[] getEncoded() {
        c cVar = this.x;
        try {
            return new s(new a(e.f2069d), (k.b.a.e) new k.b.i.a.b(cVar.b, cVar.f2083c, cVar.f2084d, k.b.c.e.a.a(cVar.a))).e();
        } catch (IOException unused) {
            return null;
        }
    }

    public String getFormat() {
        return SecurityProvider.DEFAULT_CERT_INSTANCE;
    }

    public int hashCode() {
        c cVar = this.x;
        int i2 = cVar.b;
        return cVar.f2084d.hashCode() + (((cVar.f2083c * 37) + i2) * 37);
    }

    public String toString() {
        StringBuilder a = e.a.a.a.a.a(e.a.a.a.a.a(e.a.a.a.a.a(e.a.a.a.a.a(e.a.a.a.a.a("McEliecePublicKey:\n", " length of the code         : "), this.x.b, "\n"), " error correction capability: "), this.x.f2083c, "\n"), " generator matrix           : ");
        a.append(this.x.f2084d.toString());
        return a.toString();
    }
}
