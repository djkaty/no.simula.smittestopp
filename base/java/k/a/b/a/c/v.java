package k.a.b.a.c;

import java.util.HashMap;
import java.util.Map;
import k.a.b.a.b.e;

public class v implements a<e> {
    public final x a;
    public final Map<r0, r0> b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final Object f1778c;

    public v(x xVar, Object obj) {
        this.a = xVar;
        this.f1778c = obj;
    }

    public void c(Object obj) {
        e eVar = (e) obj;
        r0<e> a2 = a(eVar);
        a2.c();
        a2.a(eVar);
    }

    public r0<e> f() {
        return null;
    }

    public Class<e> a() {
        return e.class;
    }

    public class a implements r0 {
        public final r0 a;
        public final r0 b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1779c;

        public a(r0 r0Var) {
            this.a = r0Var;
            r0 a2 = v.this.a.a(v.this.f1778c).a(v.this.f1778c);
            this.b = a2;
            this.f1779c = this.a.d() + this.b.b(v.this.f1778c) + a2.d() + 1;
        }

        public boolean a(r0 r0Var) {
            return v.this == r0Var.getType() && this.a.a(((a) r0Var).a);
        }

        public int b(Object obj) {
            return this.a.b(((e) obj).b());
        }

        public void c() {
            v.this.a.a.a((byte) 0);
            this.b.c();
            this.b.a(v.this.f1778c);
            this.a.c();
        }

        public int d() {
            return this.f1779c;
        }

        public boolean f() {
            return this.a.f();
        }

        public a getType() {
            return v.this;
        }

        public void a(Object obj) {
            this.a.a(((e) obj).b());
        }
    }

    public r0<e> a(e eVar) {
        r0 a2 = this.a.a(eVar.b()).a(eVar.b());
        r0<e> r0Var = this.b.get(a2);
        if (r0Var != null) {
            return r0Var;
        }
        a aVar = new a(a2);
        this.b.put(a2, aVar);
        return aVar;
    }
}
