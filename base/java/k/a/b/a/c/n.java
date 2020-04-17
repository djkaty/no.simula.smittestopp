package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;
import k.a.b.a.b.b;

public class n extends c<b> {
    public a a;

    public class a extends z<b> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            b bVar = (b) obj;
            x xVar = this.a;
            xVar.a.a(bVar.y);
            x xVar2 = this.a;
            xVar2.a.a(bVar.z);
        }

        public byte g() {
            return -108;
        }

        public a getType() {
            return n.this;
        }

        public int i() {
            return 16;
        }

        public Object k() {
            return new b(this.b.g(), this.b.g());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m42getType() {
            return n.this;
        }

        public boolean a(r0<b> r0Var) {
            return n.this == r0Var.getType();
        }
    }

    public n(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(b.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        b bVar = (b) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m41a(Object obj) {
        b bVar = (b) obj;
        return this.a;
    }

    public Class<b> a() {
        return b.class;
    }
}
