package k.a.b.a.c.z0;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.k.n;
import k.a.b.a.c.b;
import k.a.b.a.c.s;

public class x extends b<n, List> implements s<n> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1834d = {i.a(39), f.a("amqp:modified:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1835e = i.a(39);

    public static final class a extends AbstractList {
        public final n x;

        public a(n nVar) {
            this.x = nVar;
        }

        public Object get(int i2) {
            if (i2 == 0) {
                return this.x.a;
            }
            if (i2 == 1) {
                return this.x.b;
            }
            if (i2 == 2) {
                return this.x.f1574c;
            }
            throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
        }

        public int size() {
            n nVar = this.x;
            if (nVar.f1574c != null) {
                return 3;
            }
            if (nVar.b != null) {
                return 2;
            }
            return nVar.a != null ? 1 : 0;
        }
    }

    public x(k.a.b.a.c.x xVar) {
        super(xVar);
    }

    public Class<n> a() {
        return n.class;
    }

    public i b() {
        return f1835e;
    }

    public Object d(Object obj) {
        return new a((n) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0013, code lost:
        if (r1 != 2) goto L_0x002f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r5) {
        /*
            r4 = this;
            java.util.List r5 = (java.util.List) r5
            k.a.b.a.b.k.n r0 = new k.a.b.a.b.k.n
            r0.<init>()
            int r1 = r5.size()
            int r1 = 3 - r1
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L_0x0016
            if (r1 == r3) goto L_0x001e
            if (r1 == r2) goto L_0x0026
            goto L_0x002f
        L_0x0016:
            java.lang.Object r1 = r5.get(r2)
            java.util.Map r1 = (java.util.Map) r1
            r0.f1574c = r1
        L_0x001e:
            java.lang.Object r1 = r5.get(r3)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            r0.b = r1
        L_0x0026:
            r1 = 0
            java.lang.Object r5 = r5.get(r1)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            r0.a = r5
        L_0x002f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.z0.x.b(java.lang.Object):java.lang.Object");
    }
}
