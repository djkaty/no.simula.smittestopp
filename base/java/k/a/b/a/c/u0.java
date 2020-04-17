package k.a.b.a.c;

import java.util.Arrays;
import java.util.Collection;
import k.a.b.a.b.h;

public class u0 extends c<h> {
    public c a;
    public c b;

    /* renamed from: c  reason: collision with root package name */
    public c f1774c;

    public class a extends z<h> implements c {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.b(((h) obj).x);
        }

        public byte g() {
            return 112;
        }

        public a getType() {
            return u0.this;
        }

        public int i() {
            return 4;
        }

        public Object k() {
            return h.a(this.b.f());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m61getType() {
            return u0.this;
        }

        public boolean a(r0<h> r0Var) {
            return u0.this == r0Var.getType();
        }
    }

    public class b extends z<h> implements c {
        public b(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            this.a.a.a((byte) ((h) obj).x);
        }

        public byte g() {
            return 82;
        }

        public a getType() {
            return u0.this;
        }

        public int i() {
            return 1;
        }

        public Object k() {
            return h.a((int) this.b.e() & 255);
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m62getType() {
            return u0.this;
        }

        public boolean a(r0<h> r0Var) {
            return r0Var == this || (r0Var instanceof d);
        }
    }

    public interface c extends j0<h> {
    }

    public class d extends z<h> implements c {
        public d(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            h hVar = (h) obj;
        }

        public boolean a(r0<h> r0Var) {
            return r0Var == this;
        }

        public byte g() {
            return 67;
        }

        public a getType() {
            return u0.this;
        }

        public int i() {
            return 0;
        }

        public Object k() {
            return h.z;
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m63getType() {
            return u0.this;
        }
    }

    public u0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        this.b = new b(xVar, rVar);
        this.f1774c = new d(xVar, rVar);
        xVar.f1786c.put(h.class, this);
        rVar.a(this);
    }

    public r0 f() {
        return this.a;
    }

    public Collection<c> i() {
        return Arrays.asList(new c[]{this.a, this.b, this.f1774c});
    }

    public c a(h hVar) {
        int i2 = hVar.x;
        if (i2 == 0) {
            return this.f1774c;
        }
        return (i2 < 0 || i2 > 255) ? this.a : this.b;
    }

    public Class<h> a() {
        return h.class;
    }
}
