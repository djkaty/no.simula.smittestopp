package k.a.b.a.c;

import java.util.Collection;
import java.util.Collections;

public class k extends c<Character> {
    public a a;

    public class a extends z<Character> {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            this.a.a.b(((Character) obj).charValue() & 65535);
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 115;
        }

        public a getType() {
            return k.this;
        }

        public int i() {
            return 4;
        }

        public Object k() {
            return Character.valueOf((char) (this.b.f() & 65535));
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m38getType() {
            return k.this;
        }

        public boolean a(r0<Character> r0Var) {
            return k.this == r0Var.getType();
        }
    }

    public k(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        xVar.f1786c.put(Character.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        Character ch = (Character) obj;
        return this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<a> i() {
        return Collections.singleton(this.a);
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m37a(Object obj) {
        Character ch = (Character) obj;
        return this.a;
    }

    public Class<Character> a() {
        return Character.class;
    }
}
