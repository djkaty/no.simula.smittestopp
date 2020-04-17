package k.b.i.c.b.a;

import java.io.IOException;
import java.security.PrivateKey;
import k.b.a.i2.f;
import k.b.a.x;
import k.b.i.a.e;
import k.b.i.b.a.b;

public class a implements PrivateKey {
    public b x;

    public a(b bVar) {
        this.x = bVar;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof a)) {
            a aVar = (a) obj;
            b bVar = this.x;
            int i2 = bVar.b;
            b bVar2 = aVar.x;
            return i2 == bVar2.b && bVar.f2078c == bVar2.f2078c && bVar.f2079d.equals(bVar2.f2079d) && this.x.f2080e.equals(aVar.x.f2080e) && this.x.f2081f.equals(aVar.x.f2081f) && this.x.f2082g.equals(aVar.x.f2082g);
        }
    }

    public String getAlgorithm() {
        return "McEliece-CCA2";
    }

    public byte[] getEncoded() {
        try {
            return new f(new k.b.a.l2.a(e.f2069d), new k.b.i.a.a(this.x.b, this.x.f2078c, this.x.f2079d, this.x.f2080e, this.x.f2081f, k.b.c.e.a.a(this.x.a)), (x) null, (byte[]) null).e();
        } catch (IOException unused) {
            return null;
        }
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public int hashCode() {
        b bVar = this.x;
        int hashCode = bVar.f2080e.hashCode();
        int hashCode2 = this.x.f2081f.hashCode();
        return this.x.f2082g.hashCode() + ((hashCode2 + ((hashCode + (((((bVar.f2078c * 37) + bVar.b) * 37) + bVar.f2079d.b) * 37)) * 37)) * 37);
    }
}
