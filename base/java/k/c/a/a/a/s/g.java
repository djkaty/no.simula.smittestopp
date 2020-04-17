package k.c.a.a.a.s;

import k.c.a.a.a.a;
import k.c.a.a.a.e;
import k.c.a.a.a.f;
import k.c.a.a.a.h;
import k.c.a.a.a.i;
import k.c.a.a.a.k;
import k.c.a.a.a.n;
import k.c.a.a.a.q;
import k.c.a.a.a.s.s.u;

public class g implements a {
    public k.c.a.a.a.u.a a;
    public f b;

    /* renamed from: c  reason: collision with root package name */
    public a f2221c;

    /* renamed from: d  reason: collision with root package name */
    public i f2222d;

    /* renamed from: e  reason: collision with root package name */
    public q f2223e;

    /* renamed from: f  reason: collision with root package name */
    public Object f2224f;

    /* renamed from: g  reason: collision with root package name */
    public a f2225g;

    /* renamed from: h  reason: collision with root package name */
    public int f2226h;

    /* renamed from: i  reason: collision with root package name */
    public h f2227i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f2228j;

    public g(f fVar, k.c.a.a.a.u.a aVar, a aVar2, i iVar, q qVar, Object obj, a aVar3, boolean z) {
        this.a = aVar;
        this.b = fVar;
        this.f2221c = aVar2;
        this.f2222d = iVar;
        this.f2223e = qVar;
        this.f2224f = obj;
        this.f2225g = aVar3;
        this.f2226h = iVar.n;
        this.f2228j = z;
    }

    public void a(e eVar) {
        if (this.f2226h == 0) {
            this.f2222d.a(0);
        }
        this.f2223e.a.a(((q) eVar).a.f2244g, (k) null);
        this.f2223e.a.a();
        q qVar = this.f2223e;
        p pVar = qVar.a;
        pVar.f2248k = this.b;
        if (this.f2221c != null) {
            a aVar = this.f2225g;
            if (aVar != null) {
                pVar.m = this.f2224f;
                aVar.a(qVar);
            }
            if (this.f2227i != null) {
                a aVar2 = this.f2221c;
                this.f2227i.a(this.f2228j, aVar2.f2201e[aVar2.f2200d].c());
                return;
            }
            return;
        }
        throw null;
    }

    public void a(e eVar, Throwable th) {
        k kVar;
        a aVar = this.f2221c;
        int length = aVar.f2201e.length;
        int i2 = aVar.f2200d + 1;
        if (i2 < length || (this.f2226h == 0 && this.f2222d.n == 4)) {
            if (this.f2226h == 0) {
                i iVar = this.f2222d;
                if (iVar.n == 4) {
                    iVar.a(3);
                } else {
                    iVar.a(4);
                    this.f2221c.f2200d = i2;
                }
            } else {
                this.f2221c.f2200d = i2;
            }
            try {
                a();
            } catch (n e2) {
                a(eVar, e2);
            }
        } else {
            if (this.f2226h == 0) {
                this.f2222d.a(0);
            }
            if (th instanceof k) {
                kVar = (k) th;
            } else {
                kVar = new k(th);
            }
            this.f2223e.a.a((u) null, kVar);
            this.f2223e.a.a();
            q qVar = this.f2223e;
            p pVar = qVar.a;
            pVar.f2248k = this.b;
            a aVar2 = this.f2225g;
            if (aVar2 != null) {
                pVar.m = this.f2224f;
                aVar2.a(qVar, th);
            }
        }
    }

    public void a() {
        q qVar = new q(this.b.y);
        p pVar = qVar.a;
        pVar.f2249l = this;
        pVar.m = this;
        k.c.a.a.a.u.a aVar = this.a;
        String str = this.b.y;
        aVar.b();
        if (this.f2222d.f2191k) {
            k.c.a.a.a.u.a aVar2 = this.a;
            aVar2.a();
            aVar2.x.clear();
        }
        i iVar = this.f2222d;
        if (iVar.n == 0) {
            iVar.a(4);
        }
        try {
            this.f2221c.a(this.f2222d, qVar);
        } catch (k e2) {
            a(qVar, e2);
        }
    }
}
