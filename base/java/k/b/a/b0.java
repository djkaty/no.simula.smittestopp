package k.b.a;

import e.a.a.a.a;
import java.io.IOException;

public abstract class b0 extends t implements c0 {
    public final int x;
    public final boolean y;
    public final e z;

    public b0(boolean z2, int i2, e eVar) {
        if (eVar != null) {
            this.x = i2;
            this.y = z2 || (eVar instanceof d);
            this.z = eVar;
            return;
        }
        throw new NullPointerException("'obj' cannot be null");
    }

    public static b0 a(Object obj) {
        if (obj == null || (obj instanceof b0)) {
            return (b0) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return a((Object) t.a((byte[]) obj));
            } catch (IOException e2) {
                StringBuilder a = a.a("failed to construct tagged object from byte[]: ");
                a.append(e2.getMessage());
                throw new IllegalArgumentException(a.toString());
            }
        } else {
            throw new IllegalArgumentException(a.a(obj, a.a("unknown object in getInstance: ")));
        }
    }

    public t a() {
        return this;
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) tVar;
        if (this.x != b0Var.x || this.y != b0Var.y) {
            return false;
        }
        t c2 = this.z.c();
        t c3 = b0Var.z.c();
        return c2 == c3 || c2.a(c3);
    }

    public t h() {
        return new h1(this.y, this.x, this.z);
    }

    public int hashCode() {
        return (this.x ^ (this.y ? 15 : 240)) ^ this.z.c().hashCode();
    }

    public t i() {
        return new v1(this.y, this.x, this.z);
    }

    public t j() {
        return this.z.c();
    }

    public String toString() {
        StringBuilder a = a.a("[");
        a.append(this.x);
        a.append("]");
        a.append(this.z);
        return a.toString();
    }
}
