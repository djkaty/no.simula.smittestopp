package k.a.b.a.d.g0;

import k.a.b.a.b.h;
import k.a.b.a.c.l;
import k.a.b.a.d.t;

public class q extends m implements t {
    public boolean Z = true;
    public i0 a0;
    public int b0;

    public q(y yVar, String str) {
        super(yVar, str);
    }

    public e0 V() {
        return this.a0;
    }

    public void a(int i2) {
        this.R += i2;
        this.b0 += i2;
        c(true);
        if (!this.Z) {
            this.X = false;
            c(true);
            this.Z = true;
            this.Z = false;
        }
    }

    public int b(byte[] bArr, int i2, int i3) {
        int i4;
        e eVar = this.K;
        if (eVar != null) {
            l lVar = eVar.T;
            if (lVar == null || !lVar.b()) {
                i4 = 0;
            } else {
                i4 = Math.min(i3, eVar.T.c());
                eVar.T.a(bArr, i2, i4);
                eVar.T.n();
            }
            if (eVar.Q && i4 == 0) {
                i4 = -1;
            }
            if (i4 > 0) {
                this.H.b(-i4);
                if (this.H.L.f1877g.equals(h.z)) {
                    c(true);
                }
            }
            return i4;
        }
        throw new IllegalStateException("no current delivery");
    }

    public boolean d() {
        e eVar = this.K;
        if (eVar != null) {
            eVar.S = true;
        }
        boolean d2 = super.d();
        if (d2) {
            this.Q--;
            this.R--;
            this.H.b(-eVar.pending());
            y yVar = this.H;
            yVar.P--;
            if (yVar.L.f1877g.equals(h.z)) {
                c(true);
            }
        }
        return d2;
    }

    public void n() {
        y yVar = this.H;
        if (yVar != null) {
            String str = this.L;
            if (equals(yVar.J.get(str))) {
                yVar.J.remove(str);
            } else {
                yVar.K.remove(this);
            }
            super.n();
            return;
        }
        throw null;
    }
}
