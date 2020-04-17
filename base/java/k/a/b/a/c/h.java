package k.a.b.a.c;

import java.util.Arrays;
import java.util.Collection;

public final class h extends c<Boolean> {
    public b a;
    public b b;

    /* renamed from: c  reason: collision with root package name */
    public b f1734c;

    public class a extends z<Boolean> implements b {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(boolean z) {
            this.a.a.a(z ? (byte) 1 : 0);
        }

        public boolean b() {
            return this.b.e() != 0;
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 86;
        }

        public a getType() {
            return h.this;
        }

        public int i() {
            return 1;
        }

        public Object k() {
            return this.b.e() != 0 ? Boolean.TRUE : Boolean.FALSE;
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m30getType() {
            return h.this;
        }

        public void a(Object obj) {
            this.a.a.a(((Boolean) obj).booleanValue() ? (byte) 1 : 0);
        }

        public boolean a(r0<Boolean> r0Var) {
            return h.this == r0Var.getType();
        }
    }

    public interface b extends j0<Boolean> {
        void a(boolean z);

        boolean b();
    }

    public class c extends z<Boolean> implements b {
        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            Boolean bool = (Boolean) obj;
        }

        public void a(boolean z) {
        }

        public boolean a(r0<Boolean> r0Var) {
            return r0Var == this;
        }

        public boolean b() {
            return false;
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 66;
        }

        public a getType() {
            return h.this;
        }

        public int i() {
            return 0;
        }

        public Object k() {
            return Boolean.FALSE;
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m31getType() {
            return h.this;
        }
    }

    public class d extends z<Boolean> implements b {
        public d(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            Boolean bool = (Boolean) obj;
        }

        public void a(boolean z) {
        }

        public boolean a(r0<Boolean> r0Var) {
            return r0Var == this;
        }

        public boolean b() {
            return true;
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 65;
        }

        public a getType() {
            return h.this;
        }

        public int i() {
            return 0;
        }

        public Object k() {
            return Boolean.TRUE;
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m32getType() {
            return h.this;
        }
    }

    public h(x xVar, r rVar) {
        this.a = new d(xVar, rVar);
        this.b = new c(xVar, rVar);
        this.f1734c = new a(xVar, rVar);
        xVar.f1786c.put(Boolean.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        return ((Boolean) obj).booleanValue() ? this.a : this.b;
    }

    public r0 f() {
        return this.f1734c;
    }

    public Collection<b> i() {
        return Arrays.asList(new b[]{this.a, this.b, this.f1734c});
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m29a(Object obj) {
        return ((Boolean) obj).booleanValue() ? this.a : this.b;
    }

    public Class<Boolean> a() {
        return Boolean.class;
    }
}
