package k.a.b.a.d.g0;

import e.a.a.a.a;
import java.util.Iterator;
import k.a.b.a.d.c;
import k.a.b.a.d.c0;
import k.a.b.a.d.e;
import k.a.b.a.d.h;
import k.a.b.a.d.i;
import k.a.b.a.d.l;
import k.a.b.a.d.m;
import k.a.b.a.d.n;
import k.a.b.a.d.t;
import k.a.b.a.d.u;
import k.a.b.a.d.x;
import k.a.b.a.d.y;
import k.a.b.a.g.d;

public class g implements h {
    public r A = new r();
    public l B = null;
    public i x = null;
    public Object y;
    public g z;

    public n G() {
        Object obj = this.y;
        if (obj instanceof n) {
            return (n) obj;
        }
        e h2 = h();
        if (h2 == null) {
            return null;
        }
        return h2.G();
    }

    public y T() {
        Object obj = this.y;
        if (obj instanceof y) {
            return (y) obj;
        }
        n G = G();
        if (G == null) {
            return null;
        }
        return G.T();
    }

    public c U() {
        Object obj = this.y;
        if (obj instanceof c) {
            return (c) obj;
        }
        if (obj instanceof c0) {
            c0 l2 = l();
            if (l2 == null) {
                return null;
            }
            return ((a0) l2).J;
        }
        y T = T();
        if (T == null) {
            return null;
        }
        return T.U();
    }

    public void a(l lVar) {
        l lVar2 = this.B;
        try {
            this.B = lVar;
            lVar.handle(this);
            l lVar3 = this.B;
            if (lVar3 != null) {
                Iterator<l> children = lVar3.children();
                this.B = null;
                while (children.hasNext()) {
                    a(children.next());
                }
            }
            this.B = lVar2;
        } catch (m e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw new m(lVar, e3);
        } catch (Throwable th) {
            this.B = lVar2;
            throw th;
        }
    }

    public d b() {
        Object obj = this.y;
        if (obj instanceof d) {
            return (d) obj;
        }
        if (obj instanceof k.a.b.a.g.h) {
            return ((k.a.b.a.g.h) obj).b();
        }
        if (obj instanceof c0) {
            return ((a0) obj).w0;
        }
        if (obj instanceof e) {
            return ((e) obj).G().T().U().b();
        }
        if (obj instanceof n) {
            return ((n) obj).T().U().b();
        }
        if (obj instanceof y) {
            return ((y) obj).U().b();
        }
        if (obj instanceof c) {
            return ((c) obj).b();
        }
        if (obj instanceof k.a.b.a.g.g) {
            return ((k.a.b.a.g.g) obj).b();
        }
        return null;
    }

    public e h() {
        Object obj = this.y;
        if (obj instanceof e) {
            return (e) obj;
        }
        return null;
    }

    public t i() {
        Object obj = this.y;
        if (obj instanceof t) {
            return (t) obj;
        }
        n G = G();
        if (G instanceof t) {
            return (t) G;
        }
        return null;
    }

    public c0 l() {
        c U;
        Object obj = this.y;
        if (obj instanceof c0) {
            return (c0) obj;
        }
        if (obj instanceof c) {
            return ((c) obj).l();
        }
        y T = T();
        if (T == null || (U = T.U()) == null) {
            return null;
        }
        return U.l();
    }

    public k.a.b.a.g.g n() {
        Object obj = this.y;
        if (obj instanceof k.a.b.a.g.g) {
            return (k.a.b.a.g.g) obj;
        }
        return null;
    }

    public x o() {
        Object obj = this.y;
        if (obj instanceof x) {
            return (x) obj;
        }
        n G = G();
        if (G instanceof x) {
            return (x) G;
        }
        return null;
    }

    public u q() {
        return this.A;
    }

    public String toString() {
        StringBuilder a = a.a("EventImpl{type=");
        a.append(this.x);
        a.append(", context=");
        a.append(this.y);
        a.append('}');
        return a.toString();
    }

    public h.b w() {
        i iVar = this.x;
        if (iVar instanceof h.b) {
            return (h.b) iVar;
        }
        return h.b.NON_CORE_EVENT;
    }
}
