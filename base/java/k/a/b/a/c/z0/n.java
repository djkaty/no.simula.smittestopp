package k.a.b.a.c.z0;

import java.util.LinkedHashMap;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.i;
import k.a.b.a.b.k.d;
import k.a.b.a.c.a;
import k.a.b.a.c.e;
import k.a.b.a.c.g0;
import k.a.b.a.c.j0;
import k.a.b.a.c.k0;
import k.a.b.a.c.n0;
import k.a.b.a.c.q;
import k.a.b.a.c.q0;
import k.a.b.a.c.r;
import k.a.b.a.c.r0;
import k.a.b.a.c.x;
import k.a.b.a.c.y;
import k.a.b.a.c.y0;

public class n implements a<d>, y<d> {

    /* renamed from: c  reason: collision with root package name */
    public static final Object[] f1825c = {i.a(116), f.a("amqp:application-properties:map")};
    public final d a;
    public final n0 b;

    public n(x xVar) {
        this.a = new d(xVar);
        this.b = (n0) xVar.a(String.class, (Object) null);
    }

    public r0 a(Object obj) {
        return this.a.a((d) obj);
    }

    public void c(Object obj) {
        d dVar = (d) obj;
        y0 y0Var = this.a.b.a;
        y0Var.a((byte) 0);
        y0Var.a((byte) 83);
        y0Var.a((byte) 116);
        g0 g0Var = (g0) this.a.b.a((Object) dVar.a);
        g0Var.f1727d = this.b;
        try {
            g0Var.c(dVar.a);
        } finally {
            g0Var.f1727d = null;
        }
    }

    public boolean e() {
        return false;
    }

    public r0<d> f() {
        if (this.a != null) {
            return null;
        }
        throw null;
    }

    public Object k() {
        int i2;
        Object obj;
        r rVar = this.a.a;
        k0 k0Var = rVar.a;
        byte b2 = k0Var.get();
        if (b2 == -63) {
            k0Var.get();
            i2 = k0Var.get() & 255;
        } else if (b2 == -47) {
            k0Var.d();
            i2 = k0Var.d();
        } else if (b2 == 64) {
            return new d((Map<String, Object>) null);
        } else {
            throw new k.a.b.a.a(e.a.a.a.a.a("Expected Map type but found encoding: ", (int) b2));
        }
        if (i2 <= k0Var.c()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(i2);
            int i3 = 0;
            q0 q0Var = null;
            while (i3 < i2 / 2) {
                String a2 = rVar.a((String) null);
                if (a2 != null) {
                    byte b3 = k0Var.get(k0Var.position());
                    boolean z = b3 == -32 || b3 == -16;
                    if (q0Var == null) {
                        q0Var = rVar.b();
                    } else {
                        byte b4 = k0Var.get(k0Var.position());
                        if (b4 == 0 || !(q0Var instanceof j0)) {
                            q0Var = rVar.b();
                        } else if (b4 != ((j0) q0Var).g()) {
                            q0Var = rVar.b();
                        } else {
                            k0Var.get();
                        }
                        if (q0Var == null) {
                            throw new q("Unknown constructor found in Map encoding: ");
                        }
                    }
                    if (z) {
                        obj = ((e.b) q0Var).j();
                    } else {
                        obj = q0Var.k();
                    }
                    linkedHashMap.put(a2, obj);
                    i3++;
                } else {
                    throw new q("String key in ApplicationProperties cannot be null");
                }
            }
            return new d(linkedHashMap);
        }
        StringBuilder a3 = e.a.a.a.a.a("Map element count ", i2, " is specified to be greater than the amount of data available (");
        a3.append(k0Var.c());
        a3.append(")");
        throw new IllegalArgumentException(a3.toString());
    }

    public Class<d> a() {
        return d.class;
    }
}
