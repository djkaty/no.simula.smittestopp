package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;
import k.a.b.a.b.d;

public class p extends c<d> {
    public a a;

    public class a extends z<d> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((d) obj).y);
        }

        public byte g() {
            return -124;
        }

        public a getType() {
            return p.this;
        }

        public int i() {
            return 8;
        }

        public Object k() {
            return new d(this.b.g());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m52getType() {
            return p.this;
        }

        public boolean a(r0<d> r0Var) {
            return p.this == r0Var.getType();
        }
    }

    public p(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(d.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        d dVar = (d) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m51a(Object obj) {
        d dVar = (d) obj;
        return this.a;
    }

    public Class<d> a() {
        return d.class;
    }
}
