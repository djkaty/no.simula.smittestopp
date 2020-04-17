package g.c;

import java.lang.reflect.Field;
import java.nio.charset.Charset;

public abstract class g {
    public static final Charset b = Charset.forName("UTF-8");
    public final c a;

    public abstract class a extends e {
        public final int a;

        public a(int i2, int i3) {
            super(g.this);
            this.a = g.this.a.a(i2, i3);
        }

        public final void a() {
            g.this.a.a(16);
        }

        public final long b() {
            return (long) (g.this.a.a() + this.a);
        }
    }

    public static final class b extends Number {
        public final int x;

        public b(int i2) {
            this.x = i2;
        }

        public double doubleValue() {
            return (double) this.x;
        }

        public float floatValue() {
            return (float) this.x;
        }

        public int intValue() {
            return this.x;
        }

        public long longValue() {
            return (long) this.x;
        }
    }

    public static final class c {
        public final f a;
        public e b = null;

        /* renamed from: c  reason: collision with root package name */
        public g f1352c = null;

        /* renamed from: d  reason: collision with root package name */
        public int f1353d = 0;

        /* renamed from: e  reason: collision with root package name */
        public int f1354e = 0;

        /* renamed from: f  reason: collision with root package name */
        public int f1355f = 1;

        /* renamed from: g  reason: collision with root package name */
        public boolean f1356g = false;

        /* renamed from: h  reason: collision with root package name */
        public b f1357h = new b(0);

        public c(f fVar) {
            this.a = fVar;
        }

        public final int a() {
            g gVar = this.f1352c;
            if (gVar == null) {
                return 0;
            }
            return gVar.a.a() + this.f1353d;
        }

        public final int b() {
            if (this.f1357h.x <= 0) {
                return this.f1354e;
            }
            int i2 = this.f1354e;
            return i2 + ((-i2) & (this.f1355f - 1));
        }

        public final void a(int i2) {
            g gVar = this.f1352c;
            if (gVar != null) {
                gVar.a.a(i2);
                return;
            }
            if ((i2 & 32) != 0) {
                this.a.b().a(b(), true);
            } else {
                this.a.b().a(b());
            }
            this.b = null;
        }

        public final int a(int i2, int i3) {
            int i4 = this.f1357h.x;
            int i5 = i3 >> 3;
            if (i4 > 0) {
                i5 = Math.min(i4, i5);
            }
            int i6 = this.f1356g ? 0 : ((this.f1354e + i5) - 1) & (~(i5 - 1));
            this.f1354e = Math.max(this.f1354e, (i2 >> 3) + i6);
            this.f1355f = Math.max(this.f1355f, i5);
            return i6;
        }
    }

    public abstract class d extends f {
        public d(g gVar, j jVar) {
            super(jVar);
        }

        public void a(Number number) {
            a();
            c();
            number.longValue();
            throw null;
        }

        public int b() {
            a();
            c();
            throw null;
        }

        public final String toString() {
            a();
            c();
            throw null;
        }
    }

    public abstract class e {
        public e(g gVar) {
        }
    }

    /* renamed from: g.c.g$g  reason: collision with other inner class name */
    public class C0083g extends f {
        public C0083g(g gVar) {
            super(c.SLONG);
        }

        public final void a(long j2) {
            a();
            c();
            throw null;
        }

        public final int b() {
            a();
            c();
            throw null;
        }

        public final String toString() {
            a();
            c();
            throw null;
        }

        public void a(Number number) {
            a();
            c();
            number.longValue();
            throw null;
        }
    }

    public abstract class h extends a {

        /* renamed from: c  reason: collision with root package name */
        public final Charset f1359c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1360d;

        public h(g gVar, int i2, int i3, int i4, Charset charset) {
            super(i2, i3);
            this.f1360d = i4;
            this.f1359c = charset;
        }

        public abstract String c();

        public final String toString() {
            c();
            throw null;
        }
    }

    public class i extends j {
        public i(g gVar, int i2) {
            super(gVar, i2, g.b);
        }
    }

    public class j extends h {
        public j(g gVar, int i2, Charset charset) {
            super(gVar, i2 * 8, 8, i2, charset);
        }

        public final String c() {
            a();
            b();
            throw null;
        }
    }

    public class k extends f {
        public k(g gVar) {
            super(c.USHORT);
        }

        public void a(Number number) {
            a();
            c();
            number.shortValue();
            throw null;
        }

        public final int b() {
            a();
            c();
            throw null;
        }
    }

    public class l extends f {
        public l(g gVar) {
            super(c.UCHAR);
        }

        public void a(Number number) {
            a();
            c();
            number.byteValue();
            throw null;
        }

        public final int b() {
            a();
            c();
            throw null;
        }
    }

    public final class m extends d {
        public m(g gVar) {
            super(gVar, j.gid_t);
        }
    }

    public final class n extends d {
        public n(g gVar) {
            super(gVar, j.pid_t);
        }
    }

    public final class o extends d {
        public o(g gVar) {
            super(gVar, j.uid_t);
        }
    }

    static {
        Charset.forName("ASCII");
    }

    public g(f fVar) {
        this.a = new c(fVar);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Field[] declaredFields = getClass().getDeclaredFields();
        sb.append(getClass().getSimpleName());
        sb.append(" { \n");
        int length = declaredFields.length;
        int i2 = 0;
        while (i2 < length) {
            Field field = declaredFields[i2];
            try {
                sb.append("    ");
                sb.append(field.getName());
                sb.append(" = ");
                sb.append(field.get(this).toString());
                sb.append("\n");
                i2++;
            } catch (Throwable th) {
                throw new RuntimeException(th);
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    public abstract class f extends e {
        public final int a;
        public final i b;

        public f(c cVar) {
            super(g.this);
            i a2 = g.this.a.a.a(cVar);
            this.b = a2;
            h hVar = (h) a2;
            this.a = g.this.a.a(hVar.f1364f * 8, hVar.f1363e * 8);
        }

        public final void a() {
            g.this.a.a(16);
        }

        public abstract void a(Number number);

        public abstract int b();

        public final long c() {
            return (long) (g.this.a.a() + this.a);
        }

        public String toString() {
            return Integer.toString(b(), 10);
        }

        public f(j jVar) {
            super(g.this);
            i a2 = g.this.a.a.a(jVar);
            this.b = a2;
            h hVar = (h) a2;
            this.a = g.this.a.a(hVar.f1364f * 8, hVar.f1363e * 8);
        }
    }
}
