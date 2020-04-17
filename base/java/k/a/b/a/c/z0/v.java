package k.a.b.a.c.z0;

import java.util.AbstractList;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.k.l;
import k.a.b.a.c.b;
import k.a.b.a.c.s;
import k.a.b.a.c.x;

public class v extends b<l, List> implements s<l> {

    /* renamed from: d  reason: collision with root package name */
    public static final Object[] f1830d = {i.a(112), f.a("amqp:header:list")};

    /* renamed from: e  reason: collision with root package name */
    public static final i f1831e = i.a(112);

    public static final class a extends AbstractList {
        public final l x;

        public a(l lVar) {
            this.x = lVar;
        }

        public Object get(int i2) {
            if (i2 == 0) {
                return this.x.a;
            }
            if (i2 == 1) {
                return this.x.b;
            }
            if (i2 == 2) {
                return this.x.f1571c;
            }
            if (i2 == 3) {
                return this.x.f1572d;
            }
            if (i2 == 4) {
                return this.x.f1573e;
            }
            throw new IllegalStateException(e.a.a.a.a.a("Unknown index ", i2));
        }

        public int size() {
            l lVar = this.x;
            if (lVar.f1573e != null) {
                return 5;
            }
            if (lVar.f1572d != null) {
                return 4;
            }
            if (lVar.f1571c != null) {
                return 3;
            }
            if (lVar.b != null) {
                return 2;
            }
            return lVar.a != null ? 1 : 0;
        }
    }

    public v(x xVar) {
        super(xVar);
    }

    public Class<l> a() {
        return l.class;
    }

    public i b() {
        return f1831e;
    }

    public Object d(Object obj) {
        return new a((l) obj);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (r1 != 4) goto L_0x0045;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.Object r7) {
        /*
            r6 = this;
            java.util.List r7 = (java.util.List) r7
            k.a.b.a.b.k.l r0 = new k.a.b.a.b.k.l
            r0.<init>()
            int r1 = r7.size()
            int r1 = 5 - r1
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L_0x001c
            if (r1 == r5) goto L_0x0024
            if (r1 == r4) goto L_0x002c
            if (r1 == r3) goto L_0x0034
            if (r1 == r2) goto L_0x003c
            goto L_0x0045
        L_0x001c:
            java.lang.Object r1 = r7.get(r2)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1573e = r1
        L_0x0024:
            java.lang.Object r1 = r7.get(r3)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            r0.f1572d = r1
        L_0x002c:
            java.lang.Object r1 = r7.get(r4)
            k.a.b.a.b.h r1 = (k.a.b.a.b.h) r1
            r0.f1571c = r1
        L_0x0034:
            java.lang.Object r1 = r7.get(r5)
            k.a.b.a.b.g r1 = (k.a.b.a.b.g) r1
            r0.b = r1
        L_0x003c:
            r1 = 0
            java.lang.Object r7 = r7.get(r1)
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            r0.a = r7
        L_0x0045:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: k.a.b.a.c.z0.v.b(java.lang.Object):java.lang.Object");
    }
}
