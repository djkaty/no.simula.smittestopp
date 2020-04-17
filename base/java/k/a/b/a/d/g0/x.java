package k.a.b.a.d.g0;

import k.a.b.a.c.l;
import k.a.b.a.d.g;

public class x extends m implements k.a.b.a.d.x {
    public int Z;
    public j0 a0;

    public x(y yVar, String str) {
        super(yVar, str);
    }

    public e0 V() {
        return this.a0;
    }

    public int a(byte[] bArr, int i2, int i3) {
        if (this.x != g.CLOSED) {
            e eVar = this.K;
            if (eVar == null || eVar.H != this) {
                throw new IllegalArgumentException();
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            if (eVar.T == null) {
                l lVar = new l();
                eVar.T = lVar;
                eVar.U = lVar;
            }
            eVar.T.b(bArr2);
            eVar.h();
            if (i3 > 0) {
                this.H.O += i3;
            }
            return i3;
        }
        throw new IllegalStateException("send not allowed after the sender is closed.");
    }

    public void b(int i2) {
        this.R = i2;
    }

    public boolean d() {
        int i2;
        e eVar = this.K;
        if (eVar != null) {
            eVar.Q = true;
        }
        boolean d2 = super.d();
        if (d2 && (i2 = this.Z) > 0) {
            this.Z = i2 - 1;
        }
        if (d2) {
            this.R--;
            eVar.h();
            this.H.Q++;
        }
        return d2;
    }

    public void n() {
        y yVar = this.H;
        if (yVar != null) {
            String str = this.L;
            if (equals(yVar.I.get(str))) {
                yVar.I.remove(str);
            } else {
                yVar.K.remove(this);
            }
            super.n();
            return;
        }
        throw null;
    }
}
