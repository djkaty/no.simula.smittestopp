package k.a.b.a.b.n;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import k.a.b.a.b.a;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.b.j;
import k.a.b.a.b.n.l;
import k.a.b.a.d.g;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.d;
import k.a.b.a.d.g0.k0;
import k.a.b.a.d.g0.y;
import k.a.b.a.d.h;

public final class b implements l {
    public j a;
    public h b;

    /* renamed from: c  reason: collision with root package name */
    public h f1605c;

    /* renamed from: d  reason: collision with root package name */
    public h f1606d;

    /* renamed from: e  reason: collision with root package name */
    public h f1607e = h.a(-1);

    /* renamed from: f  reason: collision with root package name */
    public f[] f1608f;

    /* renamed from: g  reason: collision with root package name */
    public f[] f1609g;

    /* renamed from: h  reason: collision with root package name */
    public Map f1610h;

    public <E> void a(l.a<E> aVar, a aVar2, E e2) {
        y yVar;
        k0 k0Var;
        a0 a0Var = (a0) aVar;
        if (a0Var != null) {
            Integer num = (Integer) e2;
            if (a0Var.N.get(num) == null) {
                j jVar = this.a;
                if (jVar == null) {
                    d dVar = a0Var.J;
                    if (dVar != null) {
                        yVar = new y(dVar);
                        dVar.H.add(yVar);
                        k0Var = a0Var.a(yVar);
                    } else {
                        throw null;
                    }
                } else {
                    k0Var = a0Var.O.get(Integer.valueOf(jVar.intValue()));
                    if (k0Var != null) {
                        yVar = k0Var.b;
                    } else {
                        StringBuilder a2 = e.a.a.a.a.a("uncorrelated channel: ");
                        a2.append(this.a);
                        throw new NullPointerException(a2.toString());
                    }
                }
                int intValue = num.intValue();
                if (!(k0Var.f1874d != -1)) {
                    k0Var.b.w();
                }
                k0Var.f1874d = intValue;
                yVar.y = g.ACTIVE;
                k0Var.f1880j = this.b;
                a0Var.N.put(num, k0Var);
                a0Var.J.a(h.b.SESSION_REMOTE_OPEN, yVar);
                return;
            }
            return;
        }
        throw null;
    }

    public String toString() {
        List list;
        StringBuilder a2 = e.a.a.a.a.a("Begin{remoteChannel=");
        a2.append(this.a);
        a2.append(", nextOutgoingId=");
        a2.append(this.b);
        a2.append(", incomingWindow=");
        a2.append(this.f1605c);
        a2.append(", outgoingWindow=");
        a2.append(this.f1606d);
        a2.append(", handleMax=");
        a2.append(this.f1607e);
        a2.append(", offeredCapabilities=");
        f[] fVarArr = this.f1608f;
        List list2 = null;
        if (fVarArr == null) {
            list = null;
        } else {
            list = Arrays.asList(fVarArr);
        }
        a2.append(list);
        a2.append(", desiredCapabilities=");
        f[] fVarArr2 = this.f1609g;
        if (fVarArr2 != null) {
            list2 = Arrays.asList(fVarArr2);
        }
        a2.append(list2);
        a2.append(", properties=");
        a2.append(this.f1610h);
        a2.append('}');
        return a2.toString();
    }
}
