package k.b.a;

import java.util.Arrays;
import k.b.c.e.a;
import k.b.j.f;

public class d1 extends t implements a0 {
    public final byte[] x;

    public d1(byte[] bArr) {
        this.x = bArr;
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 19, this.x);
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof d1)) {
            return false;
        }
        return Arrays.equals(this.x, ((d1) tVar).x);
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
