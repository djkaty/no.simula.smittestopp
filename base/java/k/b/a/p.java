package k.b.a;

import e.a.a.a.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import k.b.j.f;

public abstract class p extends t implements q {
    public byte[] x;

    public p(byte[] bArr) {
        if (bArr != null) {
            this.x = bArr;
            return;
        }
        throw new NullPointerException("'string' cannot be null");
    }

    public static p a(Object obj) {
        if (obj == null || (obj instanceof p)) {
            return (p) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return a((Object) t.a((byte[]) obj));
            } catch (IOException e2) {
                StringBuilder a = a.a("failed to construct OCTET STRING from byte[]: ");
                a.append(e2.getMessage());
                throw new IllegalArgumentException(a.toString());
            }
        } else {
            if (obj instanceof e) {
                t c2 = ((e) obj).c();
                if (c2 instanceof p) {
                    return (p) c2;
                }
            }
            throw new IllegalArgumentException(a.a(obj, a.a("illegal object in getInstance: ")));
        }
    }

    public t a() {
        return this;
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof p)) {
            return false;
        }
        return Arrays.equals(this.x, ((p) tVar).x);
    }

    public InputStream b() {
        return new ByteArrayInputStream(this.x);
    }

    public t h() {
        return new a1(this.x);
    }

    public int hashCode() {
        return k.b.c.e.a.d(j());
    }

    public t i() {
        return new a1(this.x);
    }

    public byte[] j() {
        return this.x;
    }

    public String toString() {
        StringBuilder a = a.a("#");
        a.append(f.a(k.b.j.g.f.a(this.x)));
        return a.toString();
    }

    public static p a(b0 b0Var, boolean z) {
        if (!z) {
            t j2 = b0Var.j();
            if (b0Var.y) {
                p a = a((Object) j2);
                if (b0Var instanceof n0) {
                    return new h0(new p[]{a});
                }
                return (p) new h0(new p[]{a}).i();
            } else if (j2 instanceof p) {
                p pVar = (p) j2;
                return b0Var instanceof n0 ? pVar : (p) pVar.i();
            } else if (j2 instanceof u) {
                u uVar = (u) j2;
                return b0Var instanceof n0 ? h0.a(uVar) : (p) h0.a(uVar).i();
            } else {
                StringBuilder a2 = a.a("unknown object in getInstance: ");
                a2.append(b0Var.getClass().getName());
                throw new IllegalArgumentException(a2.toString());
            }
        } else if (b0Var.y) {
            return a((Object) b0Var.j());
        } else {
            throw new IllegalArgumentException("object implicit - explicit expected.");
        }
    }
}
