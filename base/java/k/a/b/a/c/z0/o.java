package k.a.b.a.c.z0;

import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.k.e;
import k.a.b.a.c.a;
import k.a.b.a.c.k0;
import k.a.b.a.c.r0;
import k.a.b.a.c.x;
import k.a.b.a.c.y;
import k.a.b.a.c.y0;

public class o implements a<e>, y<e> {
    public static final Object[] b = {i.a(117), f.a("amqp:data:binary")};
    public final e a;

    public o(x xVar) {
        this.a = new e(xVar);
    }

    public r0 a(Object obj) {
        return this.a.a((e) obj);
    }

    public void c(Object obj) {
        y0 y0Var = this.a.b.a;
        y0Var.a((byte) 0);
        y0Var.a((byte) 83);
        y0Var.a((byte) 117);
        this.a.b.a(((e) obj).a);
    }

    public boolean e() {
        return false;
    }

    public r0<e> f() {
        if (this.a != null) {
            return null;
        }
        throw null;
    }

    public Object k() {
        int i2;
        k0 k0Var = this.a.a.a;
        byte b2 = k0Var.get();
        if (b2 == -96) {
            i2 = k0Var.get() & 255;
        } else if (b2 == -80) {
            i2 = k0Var.d();
        } else if (b2 == 64) {
            return new e((k.a.b.a.b.a) null);
        } else {
            throw new k.a.b.a.a(e.a.a.a.a.a("Expected Binary type but found encoding: ", (int) b2));
        }
        if (i2 <= k0Var.c()) {
            byte[] bArr = new byte[i2];
            k0Var.a(bArr, 0, i2);
            return new e(new k.a.b.a.b.a(bArr));
        }
        StringBuilder a2 = e.a.a.a.a.a("Binary data size ", i2, " is specified to be greater than the amount of data available (");
        a2.append(k0Var.c());
        a2.append(")");
        throw new IllegalArgumentException(a2.toString());
    }

    public Class<e> a() {
        if (this.a != null) {
            return e.class;
        }
        throw null;
    }
}
