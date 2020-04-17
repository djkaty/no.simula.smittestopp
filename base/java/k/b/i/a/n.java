package k.b.i.a;

import java.math.BigInteger;
import k.b.a.a1;
import k.b.a.e;
import k.b.a.e1;
import k.b.a.f;
import k.b.a.l;
import k.b.a.p;
import k.b.a.t;
import k.b.a.u;
import k.b.c.e.a;

public class n extends k.b.a.n {
    public final byte[] x;
    public final byte[] y;

    public n(u uVar) {
        if (l.a((Object) uVar.a(0)).a(BigInteger.valueOf(0))) {
            this.x = a.a(p.a((Object) uVar.a(1)).j());
            this.y = a.a(p.a((Object) uVar.a(2)).j());
            return;
        }
        throw new IllegalArgumentException("unknown version of sequence");
    }

    public n(byte[] bArr, byte[] bArr2) {
        this.x = a.a(bArr);
        this.y = a.a(bArr2);
    }

    public static n a(Object obj) {
        if (obj instanceof n) {
            return (n) obj;
        }
        if (obj != null) {
            return new n(u.a(obj));
        }
        return null;
    }

    public t c() {
        f fVar = new f(10);
        fVar.a((e) new l(0));
        fVar.a((e) new a1(this.x));
        fVar.a((e) new a1(this.y));
        return new e1(fVar);
    }
}
