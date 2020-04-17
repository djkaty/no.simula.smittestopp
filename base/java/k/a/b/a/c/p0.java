package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;
import java.util.Date;

public class p0 extends c<Date> {
    public a a;

    public class a extends z<Date> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((Date) obj).getTime());
        }

        public byte g() {
            return -125;
        }

        public a getType() {
            return p0.this;
        }

        public int i() {
            return 8;
        }

        public Object k() {
            return new Date(this.b.g());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m54getType() {
            return p0.this;
        }

        public boolean a(r0<Date> r0Var) {
            return p0.this == r0Var.getType();
        }
    }

    public p0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(Date.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        Date date = (Date) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m53a(Object obj) {
        Date date = (Date) obj;
        return this.a;
    }

    public Class<Date> a() {
        return Date.class;
    }
}
