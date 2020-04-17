package k.a.b.a.b.n;

import e.a.a.a.a;
import java.util.Map;
import k.a.b.a.b.h;
import k.a.b.a.b.n.l;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.e;
import k.a.b.a.d.g0.k0;
import k.a.b.a.d.h;

public final class g implements l {
    public o a = o.SENDER;
    public h b;

    /* renamed from: c  reason: collision with root package name */
    public h f1612c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1613d;

    /* renamed from: e  reason: collision with root package name */
    public e f1614e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1615f;

    public void a(o oVar) {
        if (oVar != null) {
            this.a = oVar;
            return;
        }
        throw new NullPointerException("Role cannot be null");
    }

    public String toString() {
        StringBuilder a2 = a.a("Disposition{role=");
        a2.append(this.a);
        a2.append(", first=");
        a2.append(this.b);
        a2.append(", last=");
        a2.append(this.f1612c);
        a2.append(", settled=");
        a2.append(this.f1613d);
        a2.append(", state=");
        a2.append(this.f1614e);
        a2.append(", batchable=");
        a2.append(this.f1615f);
        a2.append('}');
        return a2.toString();
    }

    public void a(h hVar) {
        if (hVar != null) {
            this.b = hVar;
            return;
        }
        throw new NullPointerException("the first field is mandatory");
    }

    public <E> void a(l.a<E> aVar, k.a.b.a.b.a aVar2, E e2) {
        a0 a0Var = (a0) aVar;
        if (a0Var != null) {
            k0 k0Var = a0Var.N.get((Integer) e2);
            if (k0Var != null) {
                h hVar = this.b;
                h hVar2 = this.f1612c;
                if (hVar2 == null) {
                    hVar2 = hVar;
                }
                Map<h, e> map = this.a == o.RECEIVER ? k0Var.q : k0Var.p;
                while (hVar.compareTo(hVar2) <= 0) {
                    e eVar = map.get(hVar);
                    if (eVar != null) {
                        e eVar2 = this.f1614e;
                        if (eVar2 != null) {
                            eVar.L = eVar2;
                            eVar.R = true;
                        }
                        if (Boolean.TRUE.equals(Boolean.valueOf(this.f1613d))) {
                            eVar.K = true;
                            eVar.R = true;
                            map.remove(hVar);
                        }
                        eVar.n();
                        k0Var.b.H.a(h.b.DELIVERY, eVar);
                    }
                    hVar = hVar.a(k.a.b.a.b.h.A);
                }
                return;
            }
            return;
        }
        throw null;
    }
}
