package k.a.b.a.c;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.c.k0;
import k.a.b.a.c.r;

public class o0 extends c<f> {

    /* renamed from: e  reason: collision with root package name */
    public static final Charset f1761e = Charset.forName("US-ASCII");
    public final d a;
    public final d b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<k0, f> f1762c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public r.b<f> f1763d = new a();

    public class a implements r.b<f> {
        public a() {
        }

        public Object a(r rVar, k0 k0Var) {
            f fVar = o0.this.f1762c.get(k0Var);
            if (fVar != null) {
                return fVar;
            }
            byte[] bArr = new byte[k0Var.a()];
            k0Var.a(bArr);
            f a2 = f.a(new String(bArr, o0.f1761e));
            o0.this.f1762c.put(new k0.a(ByteBuffer.wrap(bArr)), a2);
            return a2;
        }
    }

    public class b extends d0<f> implements d {
        public b(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public boolean a(r0<f> r0Var) {
            return o0.this == r0Var.getType();
        }

        public int c(Object obj) {
            return ((f) obj).length();
        }

        public void d(Object obj) {
            f fVar = (f) obj;
            this.a.a.c(fVar.length());
            fVar.a(this.a.a);
        }

        public byte g() {
            return -77;
        }

        public a getType() {
            return o0.this;
        }

        public Object k() {
            r rVar = this.b;
            return (f) rVar.a(o0.this.f1763d, rVar.f());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m49getType() {
            return o0.this;
        }
    }

    public class c extends m0<f> implements d {
        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public boolean a(r0<f> r0Var) {
            return r0Var == this;
        }

        public int c(Object obj) {
            return ((f) obj).length();
        }

        public void d(Object obj) {
            f fVar = (f) obj;
            this.a.a.c(fVar.length());
            fVar.a(this.a.a);
        }

        public byte g() {
            return -93;
        }

        public a getType() {
            return o0.this;
        }

        public Object k() {
            r rVar = this.b;
            return (f) rVar.a(o0.this.f1763d, (int) rVar.e() & 255);
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m50getType() {
            return o0.this;
        }
    }

    public interface d extends j0<f> {
    }

    public o0(x xVar, r rVar) {
        this.a = new b(xVar, rVar);
        this.b = new c(xVar, rVar);
        xVar.f1786c.put(f.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        return ((f) obj).length() <= 255 ? this.b : this.a;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<d> i() {
        return Arrays.asList(new d[]{this.b, this.a});
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m48a(Object obj) {
        return ((f) obj).length() <= 255 ? this.b : this.a;
    }

    public Class<f> a() {
        return f.class;
    }
}
