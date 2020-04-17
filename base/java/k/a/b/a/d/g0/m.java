package k.a.b.a.d.g0;

import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.n.p;
import k.a.b.a.b.n.q;
import k.a.b.a.b.n.r;
import k.a.b.a.d.e;
import k.a.b.a.d.h;
import k.a.b.a.d.n;
import k.a.b.a.d.y;

public abstract class m extends f implements n {
    public final y H;
    public e I;
    public e J;
    public e K;
    public String L;
    public q M;
    public q N;
    public r O;
    public r P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public p U;
    public k.a.b.a.b.n.n V;
    public n<m> W;
    public boolean X;
    public Map<f, Object> Y;

    public m(y yVar, String str) {
        n<m> nVar;
        this.H = yVar;
        yVar.w();
        this.L = str;
        d dVar = yVar.H;
        if (dVar.N == null) {
            nVar = new n<>(this);
            dVar.O = nVar;
            dVar.N = nVar;
        } else {
            nVar = dVar.O.a(this);
            dVar.O = nVar;
        }
        this.W = nVar;
        dVar.a(h.b.LINK_INIT, this);
    }

    public q A() {
        return this.M;
    }

    public void B() {
        this.H.H.a(h.b.LINK_LOCAL_CLOSE, this);
    }

    public void F() {
        this.H.H.a(h.b.LINK_LOCAL_OPEN, this);
    }

    public void S() {
        this.H.H.a(h.b.LINK_FINAL, this);
        this.H.i();
    }

    public y T() {
        return this.H;
    }

    public abstract e0 V();

    public e a(byte[] bArr) {
        return c(bArr, 0, bArr.length);
    }

    public void b(int i2) {
        this.R = i2;
    }

    public e c(byte[] bArr, int i2, int i3) {
        if (i2 == 0 && i3 == bArr.length) {
            this.Q++;
            try {
                e eVar = new e(bArr, this, this.J);
                if (this.J == null) {
                    this.I = eVar;
                }
                this.J = eVar;
                if (this.K == null) {
                    this.K = eVar;
                }
                this.H.H.a(eVar);
                return eVar;
            } catch (RuntimeException e2) {
                e2.printStackTrace();
                throw e2;
            }
        } else {
            throw new IllegalArgumentException("At present delivery tag must be the whole byte array");
        }
    }

    public boolean d() {
        e eVar = this.K;
        if (eVar == null) {
            return false;
        }
        this.K = eVar.y;
        this.H.H.a(eVar);
        e eVar2 = this.K;
        if (eVar2 == null) {
            return true;
        }
        this.H.H.a(eVar2);
        return true;
    }

    public int g() {
        if (!(this instanceof x)) {
            int i2 = this.T;
            this.T = 0;
            return i2;
        } else if (!this.X) {
            return 0;
        } else {
            if (!(this.R > 0)) {
                return 0;
            }
            this.T = this.R;
            b(0);
            c(true);
            return this.T;
        }
    }

    public String getName() {
        return this.L;
    }

    public e head() {
        return this.I;
    }

    public e k() {
        return this.K;
    }

    public void n() {
        e eVar = this.I;
        while (eVar != null) {
            e eVar2 = eVar.y;
            eVar.R();
            eVar = eVar2;
        }
        d dVar = this.H.H;
        n<m> nVar = this.W;
        if (dVar != null) {
            n<E> nVar2 = nVar.b;
            n<E> nVar3 = nVar.f1911c;
            if (dVar.N == nVar) {
                dVar.N = nVar3;
            }
            if (dVar.O == nVar) {
                dVar.O = nVar2;
            }
            n<E> nVar4 = nVar.b;
            n<E> nVar5 = nVar.f1911c;
            if (nVar4 != null) {
                nVar4.f1911c = nVar5;
            }
            if (nVar5 != null) {
                nVar5.b = nVar4;
            }
            nVar.b = null;
            nVar.f1911c = null;
            this.W = null;
            return;
        }
        throw null;
    }

    public d o() {
        return this.H.H;
    }

    public r r() {
        return this.P;
    }

    public int x() {
        return this.R;
    }

    public q z() {
        return this.N;
    }

    public void a(q qVar) {
        this.M = qVar;
    }

    public void a(r rVar) {
        this.O = rVar;
    }

    public void a(p pVar) {
        this.U = pVar;
    }

    public void a(k.a.b.a.b.n.n nVar) {
        this.V = nVar;
    }

    public void a(Map<f, Object> map) {
        this.Y = map;
    }
}
