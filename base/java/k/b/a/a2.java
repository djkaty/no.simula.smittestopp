package k.b.a;

import java.util.Enumeration;
import java.util.Iterator;
import k.b.a.u;

public class a2 extends u {
    public byte[] y;

    public a2(byte[] bArr) {
        this.y = bArr;
    }

    public synchronized e a(int i2) {
        l();
        return this.x[i2];
    }

    public synchronized void a(r rVar, boolean z) {
        if (this.y != null) {
            rVar.a(z, 48, this.y);
        } else {
            super.i().a(rVar, z);
        }
    }

    public synchronized int f() {
        if (this.y != null) {
            return d2.a(this.y.length) + 1 + this.y.length;
        }
        return super.i().f();
    }

    public synchronized t h() {
        l();
        return super.h();
    }

    public synchronized int hashCode() {
        l();
        return super.hashCode();
    }

    public synchronized t i() {
        l();
        return super.i();
    }

    public synchronized Iterator<e> iterator() {
        l();
        return super.iterator();
    }

    public synchronized Enumeration j() {
        if (this.y != null) {
            return new z1(this.y);
        }
        return new u.a();
    }

    public e[] k() {
        l();
        return this.x;
    }

    public final void l() {
        if (this.y != null) {
            f fVar = new f(10);
            z1 z1Var = new z1(this.y);
            while (z1Var.hasMoreElements()) {
                fVar.a((e) (t) z1Var.nextElement());
            }
            this.x = fVar.a();
            this.y = null;
        }
    }

    public synchronized int size() {
        l();
        return this.x.length;
    }
}
