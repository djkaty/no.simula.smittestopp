package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;

public class t extends c<Double> {
    public a a;

    public class a extends z<Double> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((Double) obj).doubleValue());
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return -126;
        }

        public a getType() {
            return t.this;
        }

        public int i() {
            return 8;
        }

        public Object k() {
            return Double.valueOf(this.b.a.f());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m58getType() {
            return t.this;
        }

        public boolean a(r0<Double> r0Var) {
            return t.this == r0Var.getType();
        }
    }

    public t(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(Double.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        Double d2 = (Double) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m57a(Object obj) {
        Double d2 = (Double) obj;
        return this.a;
    }

    public Class<Double> a() {
        return Double.class;
    }
}
