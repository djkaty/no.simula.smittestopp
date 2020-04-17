package k.b.a;

import e.a.a.a.a;
import java.util.Arrays;
import k.b.j.f;

public class x0 extends t implements a0 {
    public final byte[] x;

    public x0(byte[] bArr) {
        this.x = bArr;
    }

    public static x0 a(Object obj) {
        if (obj == null || (obj instanceof x0)) {
            return (x0) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return (x0) t.a((byte[]) obj);
            } catch (Exception e2) {
                throw new IllegalArgumentException(a.a(e2, a.a("encoding error in getInstance: ")));
            }
        } else {
            throw new IllegalArgumentException(a.a(obj, a.a("illegal object in getInstance: ")));
        }
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 22, this.x);
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof x0)) {
            return false;
        }
        return Arrays.equals(this.x, ((x0) tVar).x);
    }

    public String d() {
        return f.a(this.x);
    }

    public int f() {
        return d2.a(this.x.length) + 1 + this.x.length;
    }

    public boolean g() {
        return false;
    }

    public int hashCode() {
        return k.b.c.e.a.d(this.x);
    }

    public String toString() {
        return d();
    }
}
