package k.b.a.i2;

import e.a.a.a.a;
import java.math.BigInteger;
import java.util.Enumeration;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.n;
import k.b.a.t;
import k.b.a.u;

public class h extends n {
    public BigInteger x;
    public BigInteger y;

    public h(BigInteger bigInteger, BigInteger bigInteger2) {
        this.x = bigInteger;
        this.y = bigInteger2;
    }

    public h(u uVar) {
        if (uVar.size() == 2) {
            Enumeration j2 = uVar.j();
            l a = l.a(j2.nextElement());
            if (a != null) {
                this.x = new BigInteger(1, a.x);
                l a2 = l.a(j2.nextElement());
                if (a2 != null) {
                    this.y = new BigInteger(1, a2.x);
                    return;
                }
                throw null;
            }
            throw null;
        }
        StringBuilder a3 = a.a("Bad sequence size: ");
        a3.append(uVar.size());
        throw new IllegalArgumentException(a3.toString());
    }

    public t c() {
        f fVar = new f(2);
        fVar.a((e) new l(this.x));
        fVar.a((e) new l(this.y));
        return new e1(fVar);
    }
}
