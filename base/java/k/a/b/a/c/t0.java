package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;
import k.a.b.a.b.g;

public class t0 extends c<g> {
    public a a;

    public class a extends z<g> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((g) obj).x);
        }

        public byte g() {
            return 80;
        }

        public a getType() {
            return t0.this;
        }

        public int i() {
            return 1;
        }

        public Object k() {
            return g.a(this.b.e());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m60getType() {
            return t0.this;
        }

        public boolean a(r0<g> r0Var) {
            return t0.this == r0Var.getType();
        }
    }

    public t0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(g.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        g gVar = (g) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m59a(Object obj) {
        g gVar = (g) obj;
        return this.a;
    }

    public Class<g> a() {
        return g.class;
    }
}
