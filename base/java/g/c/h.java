package g.c;

import java.lang.reflect.Field;
import java.nio.charset.Charset;

public class h extends i {
    public final f a;
    public boolean b = false;

    /* renamed from: c  reason: collision with root package name */
    public int f1361c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f1362d = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f1363e = 1;

    /* renamed from: f  reason: collision with root package name */
    public int f1364f = 0;

    public abstract class a {
        public final int a;

        public a(int i2) {
            this.a = i2;
        }

        public final long a() {
            return (long) (this.a + h.this.f1361c);
        }
    }

    public abstract class b extends c {
        public b(h hVar, j jVar) {
            super(hVar, hVar.a.a(jVar));
        }
    }

    public abstract class c extends a {
        /* JADX WARNING: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public c(g.c.h r4, g.c.i r5) {
            /*
                r3 = this;
                if (r4 == 0) goto L_0x0037
                g.c.h r5 = (g.c.h) r5
                int r0 = r5.f1364f
                int r5 = r5.f1363e
                boolean r1 = r4.b
                if (r1 == 0) goto L_0x000e
                r1 = 0
                goto L_0x0017
            L_0x000e:
                int r1 = r4.f1362d
                int r1 = r1 + r5
                int r1 = r1 + -1
                int r2 = r5 + -1
                int r2 = ~r2
                r1 = r1 & r2
            L_0x0017:
                int r2 = r4.f1362d
                int r0 = r0 + r1
                int r0 = java.lang.Math.max(r2, r0)
                r4.f1362d = r0
                int r0 = r4.f1363e
                int r5 = java.lang.Math.max(r0, r5)
                r4.f1363e = r5
                int r0 = r4.f1362d
                int r0 = r0 + r5
                int r0 = r0 + -1
                int r5 = r5 + -1
                int r5 = ~r5
                r5 = r5 & r0
                r4.f1364f = r5
                r3.<init>(r1)
                return
            L_0x0037:
                r4 = 0
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: g.c.h.c.<init>(g.c.h, g.c.i):void");
        }
    }

    public class d extends c {
        public d(h hVar) {
            super(hVar, hVar.a.a(c.ADDRESS));
        }
    }

    public final class e extends b {
        public e(h hVar) {
            super(hVar, j.int16_t);
        }
    }

    public final class f extends b {
        public f(h hVar) {
            super(hVar, j.intptr_t);
        }
    }

    public final class g extends b {
        public g(h hVar) {
            super(hVar, j.u_int16_t);
        }
    }

    /* renamed from: g.c.h$h  reason: collision with other inner class name */
    public final class C0084h extends b {
        public C0084h(h hVar) {
            super(hVar, j.u_int32_t);
        }
    }

    public final class i extends b {
        public i(h hVar) {
            super(hVar, j.uintptr_t);
        }
    }

    static {
        Charset.forName("ASCII");
        Charset.forName("UTF-8");
    }

    public h(f fVar) {
        this.a = fVar;
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
                sb.append(10);
                i2++;
            } catch (Throwable th) {
                throw new RuntimeException(th);
            }
        }
        sb.append("}\n");
        return sb.toString();
    }
}
