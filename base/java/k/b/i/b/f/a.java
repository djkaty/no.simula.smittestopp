package k.b.i.b.f;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import k.b.a.l2.s;
import k.b.a.o;
import k.b.a.r0;
import k.b.i.a.h;
import k.b.i.a.i;
import k.b.i.a.j;
import k.b.i.a.n;
import k.b.i.b.g.r;
import k.b.i.b.g.t;
import k.b.i.b.g.w;
import k.b.i.b.g.y;

public class a {
    public static Map a;

    public static class b extends e {
        public /* synthetic */ b(C0104a aVar) {
            super((C0104a) null);
        }

        public k.b.c.d.a a(s sVar, Object obj) {
            return new k.b.i.b.b.b(sVar.y.j());
        }
    }

    public static class c extends e {
        public /* synthetic */ c(C0104a aVar) {
            super((C0104a) null);
        }

        public k.b.c.d.a a(s sVar, Object obj) {
            int intValue = ((Integer) b.f2102i.get(sVar.x.x)).intValue();
            r0 r0Var = sVar.y;
            if (r0Var.y == 0) {
                return new k.b.i.b.c.b(intValue, k.b.c.e.a.a(r0Var.x));
            }
            throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
        }
    }

    public static class d extends e {
        public /* synthetic */ d(C0104a aVar) {
            super((C0104a) null);
        }

        public k.b.c.d.a a(s sVar, Object obj) {
            return new k.b.i.b.e.c(sVar.y.j(), b.a(h.a(sVar.x.y)));
        }
    }

    public static abstract class e {
        public e() {
        }

        public /* synthetic */ e(C0104a aVar) {
        }

        public abstract k.b.c.d.a a(s sVar, Object obj);
    }

    public static class f extends e {
        public /* synthetic */ f(C0104a aVar) {
            super((C0104a) null);
        }

        public k.b.c.d.a a(s sVar, Object obj) {
            i a = i.a(sVar.x.y);
            o oVar = a.z.x;
            n a2 = n.a(sVar.f());
            y.b bVar = new y.b(new w(a.y, b.a(oVar)));
            bVar.f2176c = k.b.c.e.a.b(k.b.c.e.a.a(a2.x));
            bVar.b = k.b.c.e.a.b(k.b.c.e.a.a(a2.y));
            return new y(bVar, (y.a) null);
        }
    }

    public static class g extends e {
        public /* synthetic */ g(C0104a aVar) {
            super((C0104a) null);
        }

        public k.b.c.d.a a(s sVar, Object obj) {
            j a = j.a(sVar.x.y);
            o oVar = a.A.x;
            n a2 = n.a(sVar.f());
            t.b bVar = new t.b(new r(a.y, a.z, b.a(oVar)));
            bVar.f2153c = k.b.c.e.a.b(k.b.c.e.a.a(a2.x));
            bVar.b = k.b.c.e.a.b(k.b.c.e.a.a(a2.y));
            return new t(bVar, (t.a) null);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        a = hashMap;
        hashMap.put(k.b.i.a.e.q, new c((C0104a) null));
        a.put(k.b.i.a.e.r, new c((C0104a) null));
        a.put(k.b.i.a.e.f2070e, new d((C0104a) null));
        a.put(k.b.i.a.e.f2071f, new b((C0104a) null));
        a.put(k.b.i.a.e.f2072g, new f((C0104a) null));
        a.put(k.b.i.a.e.f2077l, new g((C0104a) null));
    }

    public static k.b.c.d.a a(s sVar) {
        k.b.a.l2.a aVar = sVar.x;
        e eVar = (e) a.get(aVar.x);
        if (eVar != null) {
            return eVar.a(sVar, (Object) null);
        }
        StringBuilder a2 = e.a.a.a.a.a("algorithm identifier in public key not recognised: ");
        a2.append(aVar.x);
        throw new IOException(a2.toString());
    }
}
