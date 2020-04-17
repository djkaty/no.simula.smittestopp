package k.b.a.m2;

import java.math.BigInteger;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.n;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;
import k.b.c.e.a;

public class b extends n implements f {
    public static final BigInteger C = BigInteger.valueOf(1);
    public BigInteger A;
    public byte[] B;
    public k.b.f.a.b x;
    public c y;
    public BigInteger z;

    public b(u uVar) {
        if (!(uVar.a(0) instanceof l) || !((l) uVar.a(0)).a(C)) {
            throw new IllegalArgumentException("bad version in X9ECParameters");
        }
        this.z = ((l) uVar.a(4)).j();
        if (uVar.size() == 6) {
            this.A = ((l) uVar.a(5)).j();
        }
        a aVar = new a(e.a(uVar.a(1)), this.z, this.A, u.a((Object) uVar.a(2)));
        this.x = aVar.x;
        e a = uVar.a(3);
        if (a instanceof c) {
            this.y = (c) a;
        } else {
            this.y = new c(this.x, (p) a);
        }
        this.B = a.a(aVar.y);
    }

    public static b a(Object obj) {
        if (obj instanceof b) {
            return (b) obj;
        }
        if (obj != null) {
            return new b(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(6);
        fVar.a((e) new l(C));
        fVar.a((e) null);
        fVar.a((e) new a(this.x, this.B));
        fVar.a((e) this.y);
        fVar.a((e) new l(this.z));
        BigInteger bigInteger = this.A;
        if (bigInteger != null) {
            fVar.a((e) new l(bigInteger));
        }
        return new e1(fVar);
    }
}
