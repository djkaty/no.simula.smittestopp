package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;

public class a0 extends c<Float> {
    public a a;

    public class a extends z<Float> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((Float) obj).floatValue());
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 114;
        }

        public a getType() {
            return a0.this;
        }

        public int i() {
            return 4;
        }

        public Object k() {
            return Float.valueOf(this.b.a.k());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m11getType() {
            return a0.this;
        }

        public boolean a(r0<Float> r0Var) {
            return a0.this == r0Var.getType();
        }
    }

    public a0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(Float.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        Float f2 = (Float) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m10a(Object obj) {
        Float f2 = (Float) obj;
        return this.a;
    }

    public Class<Float> a() {
        return Float.class;
    }
}
