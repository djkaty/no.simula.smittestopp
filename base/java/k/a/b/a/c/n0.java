package k.a.b.a.c;

import java.util.Arrays;
import java.util.Collection;
import k.a.b.a.c.r;

public class n0 extends c<String> {

    /* renamed from: c  reason: collision with root package name */
    public static final r.b<String> f1753c = new a();
    public final d a;
    public final d b;

    public static class a implements r.b<String> {
        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0017, code lost:
            throw r3;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:5:0x000a, code lost:
            r3 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:8:0x0013, code lost:
            throw new java.lang.IllegalArgumentException("Cannot parse String");
         */
        /* JADX WARNING: Code restructure failed: missing block: B:9:0x0014, code lost:
            r2.reset();
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x000c */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.Object a(k.a.b.a.c.r r2, k.a.b.a.c.k0 r3) {
            /*
                r1 = this;
                java.nio.charset.CharsetDecoder r2 = r2.b
                java.lang.String r3 = r3.a((java.nio.charset.CharsetDecoder) r2)     // Catch:{ CharacterCodingException -> 0x000c }
                r2.reset()
                return r3
            L_0x000a:
                r3 = move-exception
                goto L_0x0014
            L_0x000c:
                java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch:{ all -> 0x000a }
                java.lang.String r0 = "Cannot parse String"
                r3.<init>(r0)     // Catch:{ all -> 0x000a }
                throw r3     // Catch:{ all -> 0x000a }
            L_0x0014:
                r2.reset()
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.n0.a.a(k.a.b.a.c.r, k.a.b.a.c.k0):java.lang.Object");
        }
    }

    public class b extends d0<String> implements d {

        /* renamed from: c  reason: collision with root package name */
        public String f1754c;

        /* renamed from: d  reason: collision with root package name */
        public int f1755d;

        public b(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public boolean a(r0<String> r0Var) {
            return n0.this == r0Var.getType();
        }

        public int c(Object obj) {
            String str = (String) obj;
            return str == this.f1754c ? this.f1755d : n0.a(str);
        }

        public void d(Object obj) {
            String str = (String) obj;
            this.a.a.c(str == this.f1754c ? this.f1755d : n0.a(str));
            this.a.a.a(str);
        }

        public byte g() {
            return -79;
        }

        public a getType() {
            return n0.this;
        }

        public Object k() {
            r rVar = this.b;
            int f2 = rVar.f();
            if (f2 == 0) {
                return "";
            }
            return (String) rVar.a(n0.f1753c, f2);
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m44getType() {
            return n0.this;
        }

        public void a(String str, int i2) {
            this.f1754c = str;
            this.f1755d = i2;
        }
    }

    public class c extends m0<String> implements d {

        /* renamed from: c  reason: collision with root package name */
        public String f1757c;

        /* renamed from: d  reason: collision with root package name */
        public int f1758d;

        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(String str, int i2) {
            this.f1757c = str;
            this.f1758d = i2;
        }

        public boolean a(r0<String> r0Var) {
            return r0Var == this;
        }

        public int c(Object obj) {
            String str = (String) obj;
            return str == this.f1757c ? this.f1758d : n0.a(str);
        }

        public void d(Object obj) {
            String str = (String) obj;
            this.a.a.c(str == this.f1757c ? this.f1758d : n0.a(str));
            this.a.a.a(str);
        }

        public byte g() {
            return -95;
        }

        public a getType() {
            return n0.this;
        }

        public Object k() {
            r rVar = this.b;
            byte e2 = rVar.e() & 255;
            if (e2 == 0) {
                return "";
            }
            return (String) rVar.a(n0.f1753c, (int) e2);
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m45getType() {
            return n0.this;
        }
    }

    public interface d extends j0<String> {
        void a(String str, int i2);
    }

    public n0(x xVar, r rVar) {
        this.a = new b(xVar, rVar);
        this.b = new c(xVar, rVar);
        xVar.f1786c.put(String.class, this);
        rVar.a(this);
    }

    public j0 a(Object obj) {
        String str = (String) obj;
        int a2 = a(str);
        d dVar = a2 <= 255 ? this.b : this.a;
        dVar.a(str, a2);
        return dVar;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<d> i() {
        return Arrays.asList(new d[]{this.b, this.a});
    }

    /* renamed from: a  reason: collision with other method in class */
    public r0 m43a(Object obj) {
        String str = (String) obj;
        int a2 = a(str);
        d dVar = a2 <= 255 ? this.b : this.a;
        dVar.a(str, a2);
        return dVar;
    }

    public Class<String> a() {
        return String.class;
    }

    public static int a(String str) {
        int length = str.length();
        int i2 = 0;
        while (i2 < length && str.charAt(i2) < 128) {
            i2++;
        }
        if (i2 >= length) {
            return length;
        }
        int i3 = length;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if ((65408 & charAt) != 0) {
                i3++;
                if ((63488 & charAt) != 0) {
                    i3++;
                    if ((charAt & 55296) == 55296 && charAt < 56320) {
                        i2++;
                    }
                }
            }
            i2++;
        }
        return i3;
    }
}
