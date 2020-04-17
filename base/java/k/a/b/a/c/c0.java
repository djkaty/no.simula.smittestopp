package k.a.b.a.c;

import java.util.Arrays;
import java.util.Collection;

public class c0 extends c<Integer> {
    public b a;
    public b b;

    public class a extends z<Integer> implements b {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(int i2) {
            this.a.a.b(i2);
        }

        public int b() {
            return this.b.f();
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 113;
        }

        public a getType() {
            return c0.this;
        }

        public int i() {
            return 4;
        }

        public Object k() {
            return Integer.valueOf(this.b.f());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m13getType() {
            return c0.this;
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.b(((Integer) obj).intValue());
        }

        public boolean a(r0<Integer> r0Var) {
            return c0.this == r0Var.getType();
        }
    }

    public interface b extends j0<Integer> {
        void a(int i2);

        int b();
    }

    public class c extends z<Integer> implements b {
        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(int i2) {
            this.a.a.a((byte) i2);
        }

        public boolean a(r0<Integer> r0Var) {
            return r0Var == this;
        }

        public int b() {
            return this.b.e();
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 84;
        }

        public a getType() {
            return c0.this;
        }

        public int i() {
            return 1;
        }

        public Object k() {
            return Integer.valueOf(this.b.e());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m14getType() {
            return c0.this;
        }

        public void a(Object obj) {
            this.a.a.a((byte) ((Integer) obj).intValue());
        }
    }

    public c0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        this.b = new c(xVar, rVar);
        xVar.f1786c.put(Integer.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        int intValue = ((Integer) obj).intValue();
        return (intValue < -128 || intValue > 127) ? this.a : this.b;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<b> i() {
        return Arrays.asList(new b[]{this.a, this.b});
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m12a(Object obj) {
        int intValue = ((Integer) obj).intValue();
        return (intValue < -128 || intValue > 127) ? this.a : this.b;
    }

    public Class<Integer> a() {
        return Integer.class;
    }
}
