package h.j;

import h.j.d;
import h.k.a.p;
import h.k.b.g;
import h.k.b.h;

public final class e extends h implements p<d, d.a, d> {
    public static final e x = new e();

    public e() {
        super(2);
    }

    public Object a(Object obj, Object obj2) {
        d dVar = (d) obj;
        d.a aVar = (d.a) obj2;
        if (dVar == null) {
            g.a("acc");
            throw null;
        } else if (aVar != null) {
            d minusKey = dVar.minusKey(aVar.getKey());
            if (minusKey == f.x) {
                return aVar;
            }
            c cVar = (c) minusKey.get(c.f1385c);
            if (cVar == null) {
                return new b(minusKey, aVar);
            }
            d minusKey2 = minusKey.minusKey(c.f1385c);
            if (minusKey2 == f.x) {
                return new b(aVar, cVar);
            }
            return new b(new b(minusKey2, aVar), cVar);
        } else {
            g.a("element");
            throw null;
        }
    }
}
