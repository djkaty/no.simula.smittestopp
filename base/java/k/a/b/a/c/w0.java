package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;
import k.a.b.a.b.j;

public class w0 extends c<j> {
    public a a;

    public class a extends z<j> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((j) obj).x);
        }

        public byte g() {
            return 96;
        }

        public a getType() {
            return w0.this;
        }

        public int i() {
            return 2;
        }

        public Object k() {
            return j.a(this.b.a.m());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m68getType() {
            return w0.this;
        }

        public boolean a(r0<j> r0Var) {
            return w0.this == r0Var.getType();
        }
    }

    public w0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(j.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        j jVar = (j) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m67a(Object obj) {
        j jVar = (j) obj;
        return this.a;
    }

    public Class<j> a() {
        return j.class;
    }
}
