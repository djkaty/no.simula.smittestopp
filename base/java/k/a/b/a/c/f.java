package k.a.b.a.c;

import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collection;

public class f extends c<BigInteger> {

    /* renamed from: c  reason: collision with root package name */
    public static final BigInteger f1716c = BigInteger.valueOf(-128);

    /* renamed from: d  reason: collision with root package name */
    public static final BigInteger f1717d = BigInteger.valueOf(127);

    /* renamed from: e  reason: collision with root package name */
    public static final BigInteger f1718e = BigInteger.valueOf(Long.MIN_VALUE);

    /* renamed from: f  reason: collision with root package name */
    public static final BigInteger f1719f = BigInteger.valueOf(Long.MAX_VALUE);
    public b a;
    public b b;

    public class a extends z<BigInteger> implements b {
        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            BigInteger bigInteger = (BigInteger) obj;
            x xVar = this.a;
            if (f.this == null) {
                throw null;
            } else if (bigInteger.compareTo(f.f1718e) < 0 || bigInteger.compareTo(f.f1719f) > 0) {
                throw new ArithmeticException("cannot encode BigInteger not representable as long");
            } else {
                xVar.a.a(bigInteger.longValue());
            }
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return -127;
        }

        public a getType() {
            return f.this;
        }

        public int i() {
            return 8;
        }

        public Object k() {
            Long l2;
            r rVar = this.b;
            byte b = rVar.a.get();
            if (b == -127) {
                l2 = Long.valueOf(rVar.g());
            } else if (b == 64) {
                l2 = null;
            } else if (b == 85) {
                l2 = Long.valueOf((long) rVar.e());
            } else {
                throw new q(e.a.a.a.a.a("Expected Long type but found encoding: ", (int) b));
            }
            return BigInteger.valueOf(l2.longValue());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m20getType() {
            return f.this;
        }

        public boolean a(r0<BigInteger> r0Var) {
            return f.this == r0Var.getType();
        }
    }

    public interface b extends j0<BigInteger> {
    }

    public class c extends z<BigInteger> implements b {
        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Object obj) {
            x xVar = this.a;
            xVar.a.a(((BigInteger) obj).byteValue());
        }

        public boolean a(r0<BigInteger> r0Var) {
            return r0Var == this;
        }

        public boolean e() {
            return true;
        }

        public byte g() {
            return 85;
        }

        public a getType() {
            return f.this;
        }

        public int i() {
            return 1;
        }

        public Object k() {
            return BigInteger.valueOf((long) this.b.e());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m21getType() {
            return f.this;
        }
    }

    public f(x xVar, r rVar) {
        this.a = new a(xVar, rVar);
        this.b = new c(xVar, rVar);
        xVar.f1786c.put(BigInteger.class, this);
    }

    public r0 f() {
        return this.a;
    }

    public Collection<b> i() {
        return Arrays.asList(new b[]{this.b, this.a});
    }

    public Class<BigInteger> a() {
        return BigInteger.class;
    }

    public b a(BigInteger bigInteger) {
        return (bigInteger.compareTo(f1716c) < 0 || bigInteger.compareTo(f1717d) > 0) ? this.a : this.b;
    }
}
