package k.a.b.a.b.n;

import k.a.b.a.b.a;
import k.a.b.a.b.h;
import k.a.b.a.b.n.l;
import k.a.b.a.d.g0.a0;
import k.a.b.a.d.g0.e;
import k.a.b.a.d.g0.e0;
import k.a.b.a.d.g0.i0;
import k.a.b.a.d.g0.k0;
import k.a.b.a.d.g0.q;
import k.a.b.a.d.g0.z;
import k.a.b.a.d.h;

public final class s implements l {
    public h a;
    public h b;

    /* renamed from: c  reason: collision with root package name */
    public a f1634c;

    /* renamed from: d  reason: collision with root package name */
    public h f1635d;

    /* renamed from: e  reason: collision with root package name */
    public Boolean f1636e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1637f;

    /* renamed from: g  reason: collision with root package name */
    public n f1638g;

    /* renamed from: h  reason: collision with root package name */
    public e f1639h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f1640i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f1641j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f1642k;

    public void a(h hVar) {
        if (hVar != null) {
            this.a = hVar;
            return;
        }
        throw new NullPointerException("the handle field is mandatory");
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("Transfer{handle=");
        a2.append(this.a);
        a2.append(", deliveryId=");
        a2.append(this.b);
        a2.append(", deliveryTag=");
        a2.append(this.f1634c);
        a2.append(", messageFormat=");
        a2.append(this.f1635d);
        a2.append(", settled=");
        a2.append(this.f1636e);
        a2.append(", more=");
        a2.append(this.f1637f);
        a2.append(", rcvSettleMode=");
        a2.append(this.f1638g);
        a2.append(", state=");
        a2.append(this.f1639h);
        a2.append(", resume=");
        a2.append(this.f1640i);
        a2.append(", aborted=");
        a2.append(this.f1641j);
        a2.append(", batchable=");
        a2.append(this.f1642k);
        a2.append('}');
        return a2.toString();
    }

    public <E> void a(l.a<E> aVar, a aVar2, E e2) {
        e eVar;
        a0 a0Var = (a0) aVar;
        if (a0Var != null) {
            k0 k0Var = a0Var.N.get((Integer) e2);
            if (k0Var != null) {
                k0Var.f1880j = k0Var.f1880j.a(h.A);
                i0 i0Var = (i0) k0Var.a(this.a);
                h hVar = i0Var.f1864j;
                h hVar2 = this.b;
                if (hVar == null || (!hVar.equals(hVar2) && hVar2 != null)) {
                    h hVar3 = k0Var.n;
                    if (hVar2 == null) {
                        throw new IllegalStateException("No delivery-id specified on first Transfer of new delivery");
                    } else if (hVar3 != null && hVar3.x + 1 != hVar2.x) {
                        StringBuilder a2 = e.a.a.a.a.a("Expected delivery-id ");
                        a2.append(hVar3.a(h.A));
                        a2.append(", got ");
                        a2.append(hVar2);
                        throw new IllegalStateException(a2.toString());
                    } else if (hVar == null) {
                        k0Var.n = hVar2;
                        a aVar3 = this.f1634c;
                        eVar = ((q) i0Var.f1844f).c(aVar3.a, aVar3.b, aVar3.f1569c);
                        h hVar4 = this.f1635d;
                        if (hVar4 != null) {
                            eVar.N = hVar4.x;
                        }
                        eVar.P = new z(hVar2, eVar, i0Var);
                        i0Var.f1864j = hVar2;
                        k0Var.p.put(hVar2, eVar);
                        k0Var.b.P++;
                    } else {
                        throw new IllegalStateException("Illegal multiplex of deliveries on same link with delivery-id " + hVar + " and " + hVar2);
                    }
                } else {
                    eVar = k0Var.p.get(hVar);
                    eVar.P.f1936d++;
                }
                e eVar2 = this.f1639h;
                if (eVar2 != null) {
                    eVar.L = eVar2;
                    eVar.R = true;
                }
                k0Var.r++;
                boolean z = this.f1641j;
                if (aVar2 != null && !z) {
                    byte[] bArr = aVar2.a;
                    if (aVar2.b > 0 || aVar2.f1569c < bArr.length) {
                        int i2 = aVar2.f1569c;
                        byte[] bArr2 = new byte[i2];
                        System.arraycopy(aVar2.a, aVar2.b, bArr2, 0, i2);
                        bArr = bArr2;
                    }
                    if (eVar.T == null) {
                        k.a.b.a.c.l lVar = new k.a.b.a.c.l();
                        eVar.T = lVar;
                        eVar.U = lVar;
                    }
                    eVar.T.b(bArr);
                    k0Var.b.b(aVar2.f1569c);
                }
                eVar.n();
                if (!this.f1637f || z) {
                    i0Var.f1864j = null;
                    if (!z) {
                        eVar.Q = true;
                    }
                    e0 V = eVar.H.V();
                    V.f1843e = V.f1843e.c(h.A);
                    e0 V2 = eVar.H.V();
                    V2.f1842d = V2.f1842d.a(h.A);
                }
                if (Boolean.TRUE.equals(this.f1636e) || z) {
                    eVar.K = true;
                    eVar.R = true;
                }
                h c2 = k0Var.f1877g.c(h.A);
                k0Var.f1877g = c2;
                if (c2.equals(h.z)) {
                    eVar.H.c(false);
                }
                k0Var.b.H.a(h.b.DELIVERY, eVar);
                return;
            }
            return;
        }
        throw null;
    }
}
