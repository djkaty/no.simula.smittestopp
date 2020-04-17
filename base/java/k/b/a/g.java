package k.b.a;

import java.util.Arrays;
import k.b.c.e.a;

public class g extends t {
    public static g[] y = new g[12];
    public final byte[] x;

    public g(byte[] bArr) {
        if (l.b(bArr)) {
            throw new IllegalArgumentException("malformed enumerated");
        } else if ((bArr[0] & 128) == 0) {
            this.x = a.a(bArr);
            l.c(bArr);
        } else {
            throw new IllegalArgumentException("enumerated must be non-negative");
        }
    }

    public void a(r rVar, boolean z) {
        rVar.a(z, 10, this.x);
    }

    public boolean a(t tVar) {
        if (!(tVar instanceof g)) {
            return false;
        }
        return Arrays.equals(this.x, ((g) tVar).x);
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
}
