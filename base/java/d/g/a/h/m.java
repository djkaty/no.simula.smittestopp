package d.g.a.h;

import d.g.a.h.c;
import java.util.ArrayList;

public class m {
    public int a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f513c;

    /* renamed from: d  reason: collision with root package name */
    public int f514d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayList<a> f515e = new ArrayList<>();

    public static class a {
        public c a;
        public c b;

        /* renamed from: c  reason: collision with root package name */
        public int f516c;

        /* renamed from: d  reason: collision with root package name */
        public c.b f517d;

        /* renamed from: e  reason: collision with root package name */
        public int f518e;

        public a(c cVar) {
            this.a = cVar;
            this.b = cVar.f477d;
            this.f516c = cVar.a();
            this.f517d = cVar.f480g;
            this.f518e = cVar.f481h;
        }
    }

    public m(d dVar) {
        this.a = dVar.I;
        this.b = dVar.J;
        this.f513c = dVar.i();
        this.f514d = dVar.d();
        ArrayList<c> b2 = dVar.b();
        int size = b2.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f515e.add(new a(b2.get(i2)));
        }
    }
}
