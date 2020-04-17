package k.a.b.a.c;

import java.util.HashMap;
import java.util.Map;
import k.a.b.a.b.i;

public abstract class b<T, M> implements a<T> {
    public final r a;
    public final x b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<r0<M>, r0<T>> f1654c = new HashMap();

    public b(x xVar) {
        this.b = xVar;
        this.a = xVar.b;
    }

    public r0<T> a(T t) {
        Object d2 = d(t);
        r0 a2 = this.b.a(d2).a(d2);
        r0<T> r0Var = this.f1654c.get(a2);
        if (r0Var != null) {
            return r0Var;
        }
        a aVar = new a(a2);
        this.f1654c.put(a2, aVar);
        return aVar;
    }

    public abstract i b();

    public void c(T t) {
        r0 a2 = a(t);
        a2.c();
        a2.a(t);
    }

    public abstract M d(T t);

    public r0<T> f() {
        return null;
    }

    public class a implements r0<T> {
        public final r0<M> a;
        public final r0<i> b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1655c;

        public a(r0<M> r0Var) {
            this.a = r0Var;
            r0<i> a2 = b.this.b.a((Object) b.this.b()).a(b.this.b());
            this.b = a2;
            this.f1655c = this.a.d() + this.b.b(b.this.b()) + a2.d() + 1;
        }

        public boolean a(r0<T> r0Var) {
            return b.this == r0Var.getType() && this.a.a(((a) r0Var).a);
        }

        public int b(T t) {
            return this.a.b(b.this.d(t));
        }

        public void c() {
            b.this.b.a.a((byte) 0);
            this.b.c();
            this.b.a(b.this.b());
            this.a.c();
        }

        public int d() {
            return this.f1655c;
        }

        public boolean f() {
            return this.a.f();
        }

        public a<T> getType() {
            return b.this;
        }

        public void a(T t) {
            this.a.a(b.this.d(t));
        }
    }
}
