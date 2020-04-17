package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;

public final class h0 extends c<Void> {
    public a a;

    public class a extends z<Void> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            Void voidR = (Void) obj;
        }

        public boolean a(r0<Void> r0Var) {
            return r0Var == this;
        }

        public byte g() {
            return 64;
        }

        public a getType() {
            return h0.this;
        }

        public int i() {
            return 0;
        }

        public Object k() {
            return null;
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m34getType() {
            return h0.this;
        }
    }

    public h0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(Void.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        Void voidR = (Void) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m33a(Object obj) {
        Void voidR = (Void) obj;
        return this.a;
    }

    public Class<Void> a() {
        return Void.class;
    }
}
