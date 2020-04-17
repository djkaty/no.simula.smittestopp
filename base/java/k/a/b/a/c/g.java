package k.a.b.a.c;

import java.util.Arrays;
import java.util.Collection;

public class g extends c<k.a.b.a.b.a> {
    public final a a;
    public final a b;

    public interface a extends j0<k.a.b.a.b.a> {
    }

    public class b extends d0<k.a.b.a.b.a> implements a {
        public b(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public boolean a(r0<k.a.b.a.b.a> r0Var) {
            return g.this == r0Var.getType();
        }

        public int c(Object obj) {
            return ((k.a.b.a.b.a) obj).f1569c;
        }

        public void d(Object obj) {
            k.a.b.a.b.a aVar = (k.a.b.a.b.a) obj;
            this.a.a.c(aVar.f1569c);
            x xVar = this.a;
            xVar.a.a(aVar.a, aVar.b, aVar.f1569c);
        }

        public byte g() {
            return -80;
        }

        public a getType() {
            return g.this;
        }

        public Object k() {
            r rVar = this.b;
            int f2 = rVar.f();
            if (f2 <= rVar.a()) {
                byte[] bArr = new byte[f2];
                rVar.a.a(bArr, 0, f2);
                return new k.a.b.a.b.a(bArr);
            }
            StringBuilder a = e.a.a.a.a.a("Binary data size ", f2, " is specified to be greater than the amount of data available (");
            a.append(rVar.a());
            a.append(")");
            throw new IllegalArgumentException(a.toString());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m25getType() {
            return g.this;
        }
    }

    public class c extends m0<k.a.b.a.b.a> implements a {
        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public boolean a(r0<k.a.b.a.b.a> r0Var) {
            return r0Var == this;
        }

        public int c(Object obj) {
            return ((k.a.b.a.b.a) obj).f1569c;
        }

        public void d(Object obj) {
            k.a.b.a.b.a aVar = (k.a.b.a.b.a) obj;
            this.a.a.c(aVar.f1569c);
            x xVar = this.a;
            xVar.a.a(aVar.a, aVar.b, aVar.f1569c);
        }

        public byte g() {
            return -96;
        }

        public a getType() {
            return g.this;
        }

        public Object k() {
            int e2 = this.b.e() & 255;
            byte[] bArr = new byte[e2];
            this.b.a.a(bArr, 0, e2);
            return new k.a.b.a.b.a(bArr);
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m26getType() {
            return g.this;
        }
    }

    public g(x xVar, r rVar) {
        this.a = new b(xVar, rVar);
        this.b = new c(xVar, rVar);
        xVar.f1786c.put(k.a.b.a.b.a.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        return ((k.a.b.a.b.a) obj).f1569c <= 255 ? this.b : this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Arrays.asList(new a[]{this.b, this.a});
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m24a(Object obj) {
        return ((k.a.b.a.b.a) obj).f1569c <= 255 ? this.b : this.a;
    }

    public Class<k.a.b.a.b.a> a() {
        return k.a.b.a.b.a.class;
    }
}
