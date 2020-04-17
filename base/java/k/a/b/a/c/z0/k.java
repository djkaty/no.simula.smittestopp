package k.a.b.a.c.z0;

import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.c.a;
import k.a.b.a.c.q;
import k.a.b.a.c.r;
import k.a.b.a.c.r0;
import k.a.b.a.c.x;
import k.a.b.a.c.y;
import k.a.b.a.c.y0;

public class k implements a<k.a.b.a.b.k.a>, y<k.a.b.a.b.k.a> {
    public static final Object[] b = {i.a(36), f.a("amqp:accepted:list")};

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f1824c = {0, 83, 36, 69};
    public final a a;

    public k(x xVar) {
        this.a = new a(xVar);
    }

    public r0 a(Object obj) {
        return this.a.a((k.a.b.a.b.k.a) obj);
    }

    public void c(Object obj) {
        k.a.b.a.b.k.a aVar = (k.a.b.a.b.k.a) obj;
        y0 y0Var = this.a.b.a;
        byte[] bArr = f1824c;
        y0Var.a(bArr, 0, bArr.length);
    }

    public boolean e() {
        return false;
    }

    public r0<k.a.b.a.b.k.a> f() {
        if (this.a != null) {
            return null;
        }
        throw null;
    }

    public Object k() {
        r rVar = this.a.a;
        byte b2 = rVar.a.get();
        if (b2 == -64) {
            rVar.a.get();
            rVar.a.get();
        } else if (b2 == -48) {
            rVar.a.d();
            rVar.a.d();
        } else if (b2 != 69) {
            throw new q(e.a.a.a.a.a("Incorrect type found in Accepted type encoding: ", (int) b2));
        }
        return k.a.b.a.b.k.a.a;
    }

    public Class<k.a.b.a.b.k.a> a() {
        return k.a.b.a.b.k.a.class;
    }
}
