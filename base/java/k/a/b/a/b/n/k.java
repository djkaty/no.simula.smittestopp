package k.a.b.a.b.n;

import e.a.a.a.a;
import java.util.Map;
import k.a.b.a.b.h;
import k.a.b.a.b.n.l;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.k0;

public final class k implements l {
    public h a;
    public h b;

    /* renamed from: c  reason: collision with root package name */
    public h f1617c;

    /* renamed from: d  reason: collision with root package name */
    public h f1618d;

    /* renamed from: e  reason: collision with root package name */
    public h f1619e;

    /* renamed from: f  reason: collision with root package name */
    public h f1620f;

    /* renamed from: g  reason: collision with root package name */
    public h f1621g;

    /* renamed from: h  reason: collision with root package name */
    public h f1622h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1623i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f1624j;

    /* renamed from: k  reason: collision with root package name */
    public Map f1625k;

    public void a(h hVar) {
        if (hVar != null) {
            this.b = hVar;
            return;
        }
        throw new NullPointerException("the incoming-window field is mandatory");
    }

    public void b(h hVar) {
        if (hVar != null) {
            this.f1617c = hVar;
            return;
        }
        throw new NullPointerException("the next-outgoing-id field is mandatory");
    }

    public void c(h hVar) {
        if (hVar != null) {
            this.f1618d = hVar;
            return;
        }
        throw new NullPointerException("the outgoing-window field is mandatory");
    }

    public String toString() {
        StringBuilder a2 = a.a("Flow{nextIncomingId=");
        a2.append(this.a);
        a2.append(", incomingWindow=");
        a2.append(this.b);
        a2.append(", nextOutgoingId=");
        a2.append(this.f1617c);
        a2.append(", outgoingWindow=");
        a2.append(this.f1618d);
        a2.append(", handle=");
        a2.append(this.f1619e);
        a2.append(", deliveryCount=");
        a2.append(this.f1620f);
        a2.append(", linkCredit=");
        a2.append(this.f1621g);
        a2.append(", available=");
        a2.append(this.f1622h);
        a2.append(", drain=");
        a2.append(this.f1623i);
        a2.append(", echo=");
        a2.append(this.f1624j);
        a2.append(", properties=");
        a2.append(this.f1625k);
        a2.append('}');
        return a2.toString();
    }

    public <E> void a(l.a<E> aVar, k.a.b.a.b.a aVar2, E e2) {
        a0 a0Var = (a0) aVar;
        if (a0Var != null) {
            k0 k0Var = a0Var.N.get((Integer) e2);
            if (k0Var != null) {
                h hVar = this.a;
                h hVar2 = this.b;
                if (hVar != null) {
                    k0Var.o = hVar.a(hVar2).c(k0Var.f1879i);
                } else {
                    k0Var.o = hVar2;
                }
                h hVar3 = this.f1619e;
                if (hVar3 != null) {
                    k0Var.a(hVar3).a(this);
                    return;
                }
                return;
            }
            return;
        }
        throw null;
    }
}
