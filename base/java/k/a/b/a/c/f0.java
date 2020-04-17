package k.a.b.a.c;

import java.util.Arrays;
import java.util.Collection;

public class f0 extends c<Long> {
    public b a;
    public b b;

    public class a extends z<Long> implements b {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(long j2) {
            this.a.a.a(j2);
        }

        public long b() {
            return this.b.g();
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return -127;
        }

        public a getType() {
            return f0.this;
        }

        public int i() {
            return 8;
        }

        public Object k() {
            return Long.valueOf(this.b.g());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m22getType() {
            return f0.this;
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((Long) obj).longValue());
        }

        public boolean a(r0<Long> r0Var) {
            return f0.this == r0Var.getType();
        }
    }

    public interface b extends j0<Long> {
        void a(long j2);

        long b();
    }

    public class c extends z<Long> implements b {
        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(long j2) {
            this.a.a.a((byte) ((int) j2));
        }

        public boolean a(r0<Long> r0Var) {
            return r0Var == this;
        }

        public long b() {
            return (long) this.b.e();
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 85;
        }

        public a getType() {
            return f0.this;
        }

        public int i() {
            return 1;
        }

        public Object k() {
            return Long.valueOf((long) this.b.e());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m23getType() {
            return f0.this;
        }

        public void a(Object obj) {
            this.a.a.a((byte) ((int) ((Long) obj).longValue()));
        }
    }

    public f0(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        this.b = new c(xVar, rVar);
        xVar.f1786c.put(Long.class, this);
        rVar.a(this);
    }

    public r0 f() {
        return this.a;
    }

    public Collection<b> i() {
        return Arrays.asList(new b[]{this.b, this.a});
    }

    public Class<Long> a() {
        return Long.class;
    }

    public b a(Long l2) {
        long longValue = l2.longValue();
        return (longValue < -128 || longValue > 127) ? this.a : this.b;
    }
}
