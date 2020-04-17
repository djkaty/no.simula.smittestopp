package k.b.a.i2;

import java.math.BigInteger;
import java.util.Enumeration;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;

public class g extends n {
    public BigInteger A;
    public BigInteger B;
    public BigInteger C;
    public BigInteger D;
    public BigInteger E;
    public BigInteger F;
    public u G = null;
    public BigInteger x;
    public BigInteger y;
    public BigInteger z;

    public g(u uVar) {
        Enumeration j2 = uVar.j();
        l lVar = (l) j2.nextElement();
        int k2 = lVar.k();
        if (k2 < 0 || k2 > 1) {
            throw new IllegalArgumentException("wrong version for RSA private key");
        }
        this.x = lVar.j();
        this.y = ((l) j2.nextElement()).j();
        this.z = ((l) j2.nextElement()).j();
        this.A = ((l) j2.nextElement()).j();
        this.B = ((l) j2.nextElement()).j();
        this.C = ((l) j2.nextElement()).j();
        this.D = ((l) j2.nextElement()).j();
        this.E = ((l) j2.nextElement()).j();
        this.F = ((l) j2.nextElement()).j();
        if (j2.hasMoreElements()) {
            this.G = (u) j2.nextElement();
        }
    }

    public t c() {
        f fVar = new f(10);
        fVar.a((e) new l(this.x));
        fVar.a((e) new l(this.y));
        fVar.a((e) new l(this.z));
        fVar.a((e) new l(this.A));
        fVar.a((e) new l(this.B));
        fVar.a((e) new l(this.C));
        fVar.a((e) new l(this.D));
        fVar.a((e) new l(this.E));
        fVar.a((e) new l(this.F));
        u uVar = this.G;
        if (uVar != null) {
            fVar.a((e) uVar);
        }
        return new e1(fVar);
    }
}
