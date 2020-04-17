package e.c.a.a.b.i.k;

import e.c.a.a.b.c;
import e.c.a.a.b.i.a;
import e.c.a.a.b.i.k.c;
import e.c.a.a.b.i.k.f;
import e.c.a.a.d.c.o;
import e.c.a.a.e.m;
import e.c.a.a.e.n;
import e.c.a.a.g.b;

public final class g0 extends e0<Boolean> {
    public final f.a<?> b;

    public g0(f.a<?> aVar, b<Boolean> bVar) {
        super(4, bVar);
        this.b = aVar;
    }

    public final /* bridge */ /* synthetic */ void a(i iVar, boolean z) {
    }

    public final c[] b(c.a<?> aVar) {
        v vVar = aVar.f1143g.get(this.b);
        if (vVar == null) {
            return null;
        }
        return vVar.a.b;
    }

    public final boolean c(c.a<?> aVar) {
        v vVar = aVar.f1143g.get(this.b);
        return vVar != null && vVar.a.f1155c;
    }

    public final void d(c.a<?> aVar) {
        v remove = aVar.f1143g.remove(this.b);
        if (remove != null) {
            h<a.b, ?> hVar = remove.b;
            a.f fVar = aVar.b;
            b<T> bVar = this.a;
            m mVar = (m) hVar;
            if (mVar != null) {
                o oVar = (o) fVar;
                if (mVar.b != null) {
                    n nVar = new n(bVar);
                    try {
                        oVar.z.a(mVar.a, nVar);
                    } catch (RuntimeException e2) {
                        bVar.a.b((Exception) e2);
                    }
                    remove.a.a.b = null;
                    return;
                }
                throw null;
            }
            throw null;
        }
        this.a.a.b(false);
    }
}
