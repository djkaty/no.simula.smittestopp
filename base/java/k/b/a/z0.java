package k.b.a;

import java.util.Arrays;
import k.b.c.e.a;
import k.b.j.f;

public class z0 extends t implements a0 {
    public final byte[] x;

    public z0(byte[] bArr) {
        this.x = bArr;
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 18, this.x);
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof z0)) {
            return false;
        }
        return Arrays.equals(this.x, ((z0) tVar).x);
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
        return a.d(this.x);
    }

    public String toString() {
        return d();
    }
}
