package d.t.a;

import d.f.e;
import d.t.a.s;

public class y {
    public final d.f.a<s.x, a> a = new d.f.a<>();
    public final e<s.x> b = new e<>();

    public interface b {
    }

    public void a(s.x xVar, s.h.c cVar) {
        a orDefault = this.a.getOrDefault(xVar, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.a.put(xVar, orDefault);
        }
        orDefault.b = cVar;
        orDefault.a |= 4;
    }

    public static class a {

        /* renamed from: d  reason: collision with root package name */
        public static d.i.h.b<a> f865d = new d.i.h.b<>(20);
        public int a;
        public s.h.c b;

        /* renamed from: c  reason: collision with root package name */
        public s.h.c f866c;

        public static a a() {
            a a2 = f865d.a();
            return a2 == null ? new a() : a2;
        }

        public static void a(a aVar) {
            aVar.a = 0;
            aVar.b = null;
            aVar.f866c = null;
            f865d.a(aVar);
        }
    }

    public void a(s.x xVar) {
        int c2 = this.b.c() - 1;
        while (true) {
            if (c2 < 0) {
                break;
            } else if (xVar == this.b.a(c2)) {
                e<s.x> eVar = this.b;
                Object[] objArr = eVar.z;
                Object obj = objArr[c2];
                Object obj2 = e.B;
                if (obj != obj2) {
                    objArr[c2] = obj2;
                    eVar.x = true;
                }
            } else {
                c2--;
            }
        }
        a remove = this.a.remove(xVar);
        if (remove != null) {
            a.a(remove);
        }
    }
}
