package k.b.i.c.b.a;

import com.microsoft.azure.sdk.iot.provisioning.security.SecurityProvider;
import java.io.IOException;
import java.security.PublicKey;
import k.b.a.l2.a;
import k.b.a.l2.s;
import k.b.i.a.e;
import k.b.i.b.a.f;

public class d implements PublicKey {
    public f x;

    public d(f fVar) {
        this.x = fVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        f fVar = this.x;
        int i2 = fVar.a;
        f fVar2 = ((d) obj).x;
        if (i2 == fVar2.a && fVar.b == fVar2.b && fVar.f2090c.equals(fVar2.f2090c)) {
            return true;
        }
        return false;
    }

    public String getAlgorithm() {
        return "McEliece";
    }

    public byte[] getEncoded() {
        f fVar = this.x;
        try {
            return new s(new a(e.f2068c), (k.b.a.e) new k.b.i.a.d(fVar.a, fVar.b, fVar.f2090c)).e();
        } catch (IOException unused) {
            return null;
        }
    }

    public String getFormat() {
        return SecurityProvider.DEFAULT_CERT_INSTANCE;
    }

    public int hashCode() {
        f fVar = this.x;
        int i2 = fVar.a;
        return fVar.f2090c.hashCode() + (((fVar.b * 37) + i2) * 37);
    }

    public String toString() {
        StringBuilder a = e.a.a.a.a.a(e.a.a.a.a.a(e.a.a.a.a.a(e.a.a.a.a.a(e.a.a.a.a.a("McEliecePublicKey:\n", " length of the code         : "), this.x.a, "\n"), " error correction capability: "), this.x.b, "\n"), " generator matrix           : ");
        a.append(this.x.f2090c);
        return a.toString();
    }
}
