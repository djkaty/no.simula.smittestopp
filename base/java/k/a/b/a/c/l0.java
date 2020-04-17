package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;

public class l0 extends c<Short> {
    public a a;

    public class a extends z<Short> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((Short) obj).shortValue());
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 97;
        }

        public a getType() {
            return l0.this;
        }

        public int i() {
            return 2;
        }

        public Object k() {
            return Short.valueOf(this.b.a.m());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m40getType() {
            return l0.this;
        }

        public boolean a(r0<Short> r0Var) {
            return l0.this == r0Var.getType();
        }
    }

    public l0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(Short.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        Short sh = (Short) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m39a(Object obj) {
        Short sh = (Short) obj;
        return this.a;
    }

    public Class<Short> a() {
        return Short.class;
    }
}
