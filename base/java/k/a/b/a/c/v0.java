package k.a.b.a.c;

import java.util.Arrays;
import java.util.Collection;
import k.a.b.a.b.i;

public class v0 extends c<i> {
    public c a;
    public c b;

    /* renamed from: c  reason: collision with root package name */
    public c f1781c;

    public class a extends z<i> implements c {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((i) obj).x);
        }

        public byte g() {
            return Byte.MIN_VALUE;
        }

        public a getType() {
            return v0.this;
        }

        public int i() {
            return 8;
        }

        public Object k() {
            return i.a(this.b.g());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m64getType() {
            return v0.this;
        }

        public boolean a(r0<i> r0Var) {
            return v0.this == r0Var.getType();
        }
    }

    public class b extends z<i> implements c {
        public b(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            this.a.a.a((byte) ((int) ((i) obj).x));
        }

        public byte g() {
            return 83;
        }

        public a getType() {
            return v0.this;
        }

        public int i() {
            return 1;
        }

        public Object k() {
            return i.a(((long) this.b.e()) & 255);
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m65getType() {
            return v0.this;
        }

        public boolean a(r0<i> r0Var) {
            return r0Var == this || (r0Var instanceof d);
        }
    }

    public interface c extends j0<i> {
    }

    public class d extends z<i> implements c {
        public d(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            i iVar = (i) obj;
        }

        public boolean a(r0<i> r0Var) {
            return r0Var == this;
        }

        public byte g() {
            return 68;
        }

        public a getType() {
            return v0.this;
        }

        public int i() {
            return 0;
        }

        public Object k() {
            return i.A;
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m66getType() {
            return v0.this;
        }
    }

    public v0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        this.b = new b(xVar, rVar);
        this.f1781c = new d(xVar, rVar);
        xVar.f1786c.put(i.class, this);
        rVar.a(this);
    }

    public r0 f() {
        return this.a;
    }

    public Collection<c> i() {
        return Arrays.asList(new c[]{this.f1781c, this.b, this.a});
    }

    public Class<i> a() {
        return i.class;
    }

    public c a(i iVar) {
        long j2 = iVar.x;
        int i2 = (j2 > 0 ? 1 : (j2 == 0 ? 0 : -1));
        if (i2 == 0) {
            return this.f1781c;
        }
        return (i2 < 0 || j2 > 255) ? this.a : this.b;
    }
}
