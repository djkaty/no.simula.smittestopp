package k.b.a.l2;

import java.math.BigInteger;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.n;
import k.b.a.t;

public class h extends n {
    public l x;
    public l y;
    public l z;

    public h(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.x = new l(bigInteger);
        this.y = new l(bigInteger2);
        this.z = new l(bigInteger3);
    }

    public t c() {
        f fVar = new f(3);
        fVar.a((e) this.x);
        fVar.a((e) this.y);
        fVar.a((e) this.z);
        return new e1(fVar);
    }
}
