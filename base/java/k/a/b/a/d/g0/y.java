package k.a.b.a.d.g0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import k.a.b.a.d.c;
import k.a.b.a.d.g;
import k.a.b.a.d.h;
import k.a.b.a.d.q;

public class y extends f implements q {
    public final d H;
    public Map<String, x> I = new LinkedHashMap();
    public Map<String, q> J = new LinkedHashMap();
    public List<m> K = new ArrayList();
    public k0 L;
    public int M = 0;
    public int N = 0;
    public int O = 0;
    public int P = 0;
    public int Q = 0;
    public long R = 2147483647L;
    public n<y> S;

    public y(d dVar) {
        n<y> nVar;
        this.H = dVar;
        dVar.w();
        d dVar2 = this.H;
        if (dVar2.L == null) {
            nVar = new n<>(this);
            dVar2.M = nVar;
            dVar2.L = nVar;
        } else {
            nVar = dVar2.M.a(this);
            dVar2.M = nVar;
        }
        this.S = nVar;
        this.H.a(h.b.SESSION_INIT, this);
    }

    public void B() {
        this.H.a(h.b.SESSION_LOCAL_CLOSE, this);
    }

    public void F() {
        this.H.a(h.b.SESSION_LOCAL_OPEN, this);
    }

    public void S() {
        this.H.a(h.b.SESSION_FINAL, this);
        this.H.i();
    }

    public c U() {
        return this.H;
    }

    public void c(int i2) {
        this.O += i2;
    }

    public void n() {
        this.H.H.remove(this);
        d dVar = this.H;
        n<y> nVar = this.S;
        if (dVar != null) {
            n<E> nVar2 = nVar.b;
            n<E> nVar3 = nVar.f1911c;
            if (dVar.L == nVar) {
                dVar.L = nVar3;
            }
            if (dVar.M == nVar) {
                dVar.M = nVar2;
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
            this.S = null;
            Iterator it = new ArrayList(this.I.values()).iterator();
            while (it.hasNext()) {
                ((x) it.next()).a();
            }
            this.I.clear();
            Iterator it2 = new ArrayList(this.J.values()).iterator();
            while (it2.hasNext()) {
                ((q) it2.next()).a();
            }
            this.J.clear();
            Iterator it3 = new ArrayList(this.K).iterator();
            while (it3.hasNext()) {
                ((m) it3.next()).a();
            }
            return;
        }
        throw null;
    }

    public d o() {
        return this.H;
    }

    public x a(String str) {
        x xVar = this.I.get(str);
        if (xVar == null) {
            x xVar2 = new x(this, str);
            this.I.put(str, xVar2);
            return xVar2;
        }
        g gVar = xVar.x;
        g gVar2 = g.CLOSED;
        if (gVar != gVar2 || xVar.y != gVar2) {
            return xVar;
        }
        this.K.add(xVar);
        x xVar3 = new x(this, str);
        this.I.put(str, xVar3);
        return xVar3;
    }

    public q b(String str) {
        q qVar = this.J.get(str);
        if (qVar == null) {
            q qVar2 = new q(this, str);
            this.J.put(str, qVar2);
            return qVar2;
        }
        g gVar = qVar.x;
        g gVar2 = g.CLOSED;
        if (gVar != gVar2 || qVar.y != gVar2) {
            return qVar;
        }
        this.K.add(qVar);
        q qVar3 = new q(this, str);
        this.J.put(str, qVar3);
        return qVar3;
    }

    public void b(int i2) {
        this.N += i2;
    }
}
