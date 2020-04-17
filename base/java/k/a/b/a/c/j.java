package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;

public class j extends c<Byte> {
    public a a;

    public class a extends z<Byte> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((Byte) obj).byteValue());
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 81;
        }

        public a getType() {
            return j.this;
        }

        public int i() {
            return 1;
        }

        public Object k() {
            return Byte.valueOf(this.b.e());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m36getType() {
            return j.this;
        }

        public boolean a(r0<Byte> r0Var) {
            return j.this == r0Var.getType();
        }
    }

    public j(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(Byte.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        Byte b = (Byte) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m35a(Object obj) {
        Byte b = (Byte) obj;
        return this.a;
    }

    public Class<Byte> a() {
        return Byte.class;
    }
}
