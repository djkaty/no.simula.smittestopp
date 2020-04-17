package k.a.b.a.b.n;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.b.i;
import k.a.b.a.b.n.l;
import k.a.b.a.d.g;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.e0;
import k.a.b.a.d.g0.k0;
import k.a.b.a.d.g0.m;
import k.a.b.a.d.g0.y;
import k.a.b.a.d.h;

public final class a implements l {
    public String a;
    public h b;

    /* renamed from: c  reason: collision with root package name */
    public o f1595c = o.SENDER;

    /* renamed from: d  reason: collision with root package name */
    public p f1596d = p.MIXED;

    /* renamed from: e  reason: collision with root package name */
    public n f1597e = n.FIRST;

    /* renamed from: f  reason: collision with root package name */
    public q f1598f;

    /* renamed from: g  reason: collision with root package name */
    public r f1599g;

    /* renamed from: h  reason: collision with root package name */
    public Map f1600h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1601i;

    /* renamed from: j  reason: collision with root package name */
    public h f1602j;

    /* renamed from: k  reason: collision with root package name */
    public i f1603k;

    /* renamed from: l  reason: collision with root package name */
    public f[] f1604l;
    public f[] m;
    public Map n;

    public <E> void a(l.a<E> aVar, k.a.b.a.b.a aVar2, E e2) {
        e0<?> e0Var;
        a0 a0Var = (a0) aVar;
        T t = null;
        if (a0Var != null) {
            k0 k0Var = a0Var.N.get((Integer) e2);
            if (k0Var != null) {
                y yVar = k0Var.b;
                h hVar = this.b;
                if (hVar.compareTo(k0Var.f1875e) > 0) {
                    j jVar = new j(d.a, "handle-max exceeded");
                    a0Var.J.a(jVar);
                    a0Var.J.x = g.CLOSED;
                    if (!a0Var.L) {
                        c cVar = new c();
                        cVar.a = jVar;
                        a0Var.L = true;
                        a0Var.X.a(0, cVar, (k.a.b.a.c.k0) null, (Runnable) null);
                    }
                    a0Var.close_tail();
                    return;
                }
                if (k0Var.f1881k.get(hVar) == null) {
                    e0<?> remove = k0Var.m.remove(this.a);
                    if (remove == null) {
                        if (this.f1595c == o.RECEIVER) {
                            t = yVar.a(this.a);
                        } else {
                            t = yVar.b(this.a);
                        }
                        e0Var = a0Var.a((m) t);
                    } else {
                        e0Var = remove;
                        t = remove.f1844f;
                    }
                    if (this.f1595c == o.SENDER) {
                        e0Var.f1842d = this.f1602j;
                    }
                    t.y = g.ACTIVE;
                    t.N = this.f1598f;
                    t.P = this.f1599g;
                    e0Var.b = this.a;
                    if (e0Var.f1841c == null) {
                        e0Var.f1844f.w();
                    }
                    e0Var.f1841c = hVar;
                    k0Var.f1881k.put(hVar, e0Var);
                }
                a0Var.J.a(h.b.LINK_REMOTE_OPEN, t);
                return;
            }
            return;
        }
        throw null;
    }

    public String toString() {
        List list;
        StringBuilder a2 = e.a.a.a.a.a("Attach{name='");
        e.a.a.a.a.a(a2, this.a, (char) WWWAuthenticateHeader.SINGLE_QUOTE, ", handle=");
        a2.append(this.b);
        a2.append(", role=");
        a2.append(this.f1595c);
        a2.append(", sndSettleMode=");
        a2.append(this.f1596d);
        a2.append(", rcvSettleMode=");
        a2.append(this.f1597e);
        a2.append(", source=");
        a2.append(this.f1598f);
        a2.append(", target=");
        a2.append(this.f1599g);
        a2.append(", unsettled=");
        a2.append(this.f1600h);
        a2.append(", incompleteUnsettled=");
        a2.append(this.f1601i);
        a2.append(", initialDeliveryCount=");
        a2.append(this.f1602j);
        a2.append(", maxMessageSize=");
        a2.append(this.f1603k);
        a2.append(", offeredCapabilities=");
        f[] fVarArr = this.f1604l;
        List list2 = null;
        if (fVarArr == null) {
            list = null;
        } else {
            list = Arrays.asList(fVarArr);
        }
        a2.append(list);
        a2.append(", desiredCapabilities=");
        f[] fVarArr2 = this.m;
        if (fVarArr2 != null) {
            list2 = Arrays.asList(fVarArr2);
        }
        a2.append(list2);
        a2.append(", properties=");
        a2.append(this.n);
        a2.append('}');
        return a2.toString();
    }
}
