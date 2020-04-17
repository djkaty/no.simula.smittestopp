package k.a.b.a.d.g0;

import e.a.a.a.a;
import java.nio.ByteBuffer;
import java.util.Arrays;
import k.a.b.a.c.k0;
import k.a.b.a.c.l;
import k.a.b.a.d.n;
import k.a.b.a.d.u;

public class e implements k.a.b.a.d.e {
    public static final k0 V = new k0.a(ByteBuffer.allocate(0));
    public e A;
    public boolean B;
    public e C;
    public e D;
    public boolean E;
    public u F;
    public final byte[] G;
    public final m H;
    public k.a.b.a.b.n.e I;
    public boolean J;
    public boolean K;
    public k.a.b.a.b.n.e L;
    public k.a.b.a.b.n.e M = null;
    public int N = 0;
    public int O = 0;
    public z P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public l T;
    public k0 U;
    public e x;
    public e y;
    public e z;

    public e(byte[] bArr, m mVar, e eVar) {
        this.G = bArr;
        this.H = mVar;
        mVar.S++;
        this.x = eVar;
        if (eVar != null) {
            eVar.y = this;
        }
    }

    public n G() {
        return this.H;
    }

    public boolean K() {
        return this.J;
    }

    public boolean O() {
        return !this.Q;
    }

    public void R() {
        if (!this.J) {
            this.J = true;
            m mVar = this.H;
            mVar.S--;
            if (!this.K) {
                h();
            } else {
                this.P.a();
            }
            m mVar2 = this.H;
            if (mVar2.K == this) {
                mVar2.d();
            }
            m mVar3 = this.H;
            if (mVar3.I == this) {
                mVar3.I = this.y;
            }
            if (mVar3.J == this) {
                mVar3.J = this.x;
            }
            e eVar = this.x;
            if (eVar != null) {
                eVar.y = this.y;
            }
            e eVar2 = this.y;
            if (eVar2 != null) {
                eVar2.x = this.x;
            }
            n();
            this.y = null;
            this.x = null;
        }
    }

    public void a(k.a.b.a.b.n.e eVar) {
        this.I = eVar;
        if (!this.K && !this.J) {
            h();
        }
    }

    public k.a.b.a.b.n.e e() {
        return this.L;
    }

    public byte[] getTag() {
        return this.G;
    }

    public void h() {
        d dVar = this.H.H.H;
        dVar.c(true);
        if (!this.E) {
            this.C = null;
            e eVar = dVar.T;
            this.D = eVar;
            if (eVar != null) {
                eVar.C = this;
            }
            dVar.T = this;
            if (dVar.S == null) {
                dVar.S = this;
            }
            this.E = true;
            dVar.U++;
        }
    }

    public e i() {
        e eVar = this.C;
        d dVar = this.H.H.H;
        if (dVar != null) {
            if (this.E) {
                e eVar2 = this.D;
                if (eVar2 != null) {
                    eVar2.C = eVar;
                }
                if (eVar != null) {
                    eVar.D = eVar2;
                }
                this.C = null;
                this.D = null;
                if (dVar.S == this) {
                    dVar.S = eVar;
                }
                if (dVar.T == this) {
                    dVar.T = eVar2;
                }
                this.E = false;
                dVar.U--;
            }
            return eVar;
        }
        throw null;
    }

    public void n() {
        this.H.H.H.a(this);
    }

    public int pending() {
        k0 k0Var = this.U;
        if (k0Var == null) {
            return 0;
        }
        return k0Var.c();
    }

    public u q() {
        if (this.F == null) {
            this.F = new r();
        }
        return this.F;
    }

    public boolean t() {
        m mVar = this.H;
        return (mVar instanceof q) && mVar.K == this;
    }

    public String toString() {
        StringBuilder a = a.a("DeliveryImpl [_tag=");
        a.append(Arrays.toString(this.G));
        a.append(", _link=");
        a.append(this.H);
        a.append(", _deliveryState=");
        a.append(this.I);
        a.append(", _settled=");
        a.append(this.J);
        a.append(", _remoteSettled=");
        a.append(this.K);
        a.append(", _remoteDeliveryState=");
        a.append(this.L);
        a.append(", _flags=");
        a.append(this.O);
        a.append(", _defaultDeliveryState=");
        a.append(this.M);
        a.append(", _transportDelivery=");
        a.append(this.P);
        a.append(", _data Size=");
        k0 k0Var = this.U;
        a.append(k0Var == null ? 0 : k0Var.c());
        a.append(", _complete=");
        a.append(this.Q);
        a.append(", _updated=");
        a.append(this.R);
        a.append(", _done=");
        a.append(this.S);
        a.append("]");
        return a.toString();
    }

    public void a() {
        R();
    }
}
