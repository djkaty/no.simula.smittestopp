package k.a.b.a.c;

import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import k.a.b.a.c.e;

public class g0 extends c<Map> {
    public final b a;
    public final b b;

    /* renamed from: c  reason: collision with root package name */
    public x f1726c;

    /* renamed from: d  reason: collision with root package name */
    public a<?> f1727d;

    public class a extends d0<Map> implements b {

        /* renamed from: c  reason: collision with root package name */
        public Map f1728c;

        /* renamed from: d  reason: collision with root package name */
        public int f1729d;

        public a(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public boolean a(r0<Map> r0Var) {
            return g0.this == r0Var.getType();
        }

        public int c(Object obj) {
            int i2;
            Map map = (Map) obj;
            if (map == this.f1728c) {
                i2 = this.f1729d;
            } else {
                i2 = g0.this.a(map);
            }
            return i2 + 4;
        }

        public void d(Object obj) {
            int i2;
            r0<?> r0Var;
            Map map = (Map) obj;
            y0 y0Var = this.a.a;
            if (map == this.f1728c) {
                i2 = this.f1729d;
            } else {
                i2 = g0.this.a(map);
            }
            y0Var.c(i2 + 4 + 4);
            this.a.a.b(map.size() * 2);
            g0 g0Var = g0.this;
            a<?> aVar = g0Var.f1727d;
            g0Var.f1727d = null;
            for (Map.Entry entry : map.entrySet()) {
                try {
                    if (aVar == null) {
                        r0Var = g0.this.f1726c.a(entry.getKey()).a(entry.getKey());
                    } else {
                        r0Var = aVar.a(entry.getKey());
                    }
                    r0Var.c();
                    r0Var.a(entry.getKey());
                    r0 a = this.a.a(entry.getValue()).a(entry.getValue());
                    a.c();
                    a.a(entry.getValue());
                } finally {
                    g0.this.f1727d = aVar;
                }
            }
        }

        public byte g() {
            return -47;
        }

        public a getType() {
            return g0.this;
        }

        public Object k() {
            Object obj;
            r rVar = this.b;
            k0 k0Var = rVar.a;
            rVar.f();
            int f2 = rVar.f();
            if (f2 <= rVar.a()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(f2);
                q0 q0Var = null;
                q0 q0Var2 = null;
                int i2 = 0;
                while (i2 < f2 / 2) {
                    q0Var = g0.a(rVar, k0Var, q0Var);
                    if (q0Var != null) {
                        Object k2 = q0Var.k();
                        byte b = k0Var.get(k0Var.position());
                        boolean z = b == -32 || b == -16;
                        q0Var2 = g0.a(rVar, k0Var, q0Var2);
                        if (q0Var2 != null) {
                            if (z) {
                                obj = ((e.b) q0Var2).j();
                            } else {
                                obj = q0Var2.k();
                            }
                            linkedHashMap.put(k2, obj);
                            i2++;
                        } else {
                            throw new q("Unknown constructor");
                        }
                    } else {
                        throw new q("Unknown constructor");
                    }
                }
                return linkedHashMap;
            }
            StringBuilder a = e.a.a.a.a.a("Map element count ", f2, " is specified to be greater than the amount of data available (");
            a.append(rVar.a());
            a.append(")");
            throw new IllegalArgumentException(a.toString());
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m27getType() {
            return g0.this;
        }

        public void a(Map map, int i2) {
            this.f1728c = map;
            this.f1729d = i2;
        }
    }

    public interface b extends j0<Map> {
        void a(Map map, int i2);
    }

    public class c extends m0<Map> implements b {

        /* renamed from: c  reason: collision with root package name */
        public Map f1731c;

        /* renamed from: d  reason: collision with root package name */
        public int f1732d;

        public c(x xVar, r rVar) {
            super(xVar, rVar);
        }

        public void a(Map map, int i2) {
            this.f1731c = map;
            this.f1732d = i2;
        }

        public boolean a(r0<Map> r0Var) {
            return r0Var == this;
        }

        public int c(Object obj) {
            int i2;
            Map map = (Map) obj;
            if (map == this.f1731c) {
                i2 = this.f1732d;
            } else {
                i2 = g0.this.a(map);
            }
            return i2 + 1;
        }

        public void d(Object obj) {
            int i2;
            r0<?> r0Var;
            Map map = (Map) obj;
            y0 y0Var = this.a.a;
            if (map == this.f1731c) {
                i2 = this.f1732d;
            } else {
                i2 = g0.this.a(map);
            }
            y0Var.c(i2 + 1 + 1);
            this.a.a.a((byte) (map.size() * 2));
            g0 g0Var = g0.this;
            a<?> aVar = g0Var.f1727d;
            g0Var.f1727d = null;
            for (Map.Entry entry : map.entrySet()) {
                try {
                    if (aVar == null) {
                        r0Var = g0.this.f1726c.a(entry.getKey()).a(entry.getKey());
                    } else {
                        r0Var = aVar.a(entry.getKey());
                    }
                    r0Var.c();
                    r0Var.a(entry.getKey());
                    r0 a = this.a.a(entry.getValue()).a(entry.getValue());
                    a.c();
                    a.a(entry.getValue());
                } finally {
                    g0.this.f1727d = aVar;
                }
            }
        }

        public byte g() {
            return -63;
        }

        public a getType() {
            return g0.this;
        }

        public Object k() {
            Object obj;
            r rVar = this.b;
            k0 k0Var = rVar.a;
            rVar.e();
            byte e2 = rVar.e() & 255;
            LinkedHashMap linkedHashMap = new LinkedHashMap(e2);
            q0 q0Var = null;
            q0 q0Var2 = null;
            int i2 = 0;
            while (i2 < e2 / 2) {
                q0Var = g0.a(rVar, k0Var, q0Var);
                if (q0Var != null) {
                    Object k2 = q0Var.k();
                    byte b = k0Var.get(k0Var.position());
                    boolean z = b == -32 || b == -16;
                    q0Var2 = g0.a(rVar, k0Var, q0Var2);
                    if (q0Var2 != null) {
                        if (z) {
                            obj = ((e.b) q0Var2).j();
                        } else {
                            obj = q0Var2.k();
                        }
                        linkedHashMap.put(k2, obj);
                        i2++;
                    } else {
                        throw new q("Unknown constructor");
                    }
                } else {
                    throw new q("Unknown constructor");
                }
            }
            return linkedHashMap;
        }

        /* renamed from: getType  reason: collision with other method in class */
        public i0 m28getType() {
            return g0.this;
        }
    }

    public g0(x xVar, r rVar) {
        this.f1726c = xVar;
        this.a = new a(xVar, rVar);
        this.b = new c(xVar, rVar);
        xVar.f1786c.put(Map.class, this);
        rVar.a(this);
    }

    /* renamed from: b */
    public b a(Map map) {
        int a2 = a(map);
        b bVar = (map.size() > 127 || a2 >= 254) ? this.a : this.b;
        bVar.a(map, a2);
        return bVar;
    }

    public r0 f() {
        return this.a;
    }

    public Collection<b> i() {
        return Arrays.asList(new b[]{this.b, this.a});
    }

    public Class<Map> a() {
        return Map.class;
    }

    public final int a(Map map) {
        r0<?> r0Var;
        a<?> aVar = this.f1727d;
        this.f1727d = null;
        int i2 = 0;
        for (Map.Entry entry : map.entrySet()) {
            try {
                if (aVar == null) {
                    r0Var = this.f1726c.a(entry.getKey()).a(entry.getKey());
                } else {
                    r0Var = aVar.a(entry.getKey());
                }
                int d2 = r0Var.d() + r0Var.b(entry.getKey()) + i2;
                r0 a2 = this.f1726c.a(entry.getValue()).a(entry.getValue());
                i2 = a2.d() + a2.b(entry.getValue()) + d2;
            } finally {
                this.f1727d = aVar;
            }
        }
        return i2;
    }

    public static /* synthetic */ q0 a(r rVar, k0 k0Var, q0 q0Var) {
        if (q0Var == null) {
            return rVar.b();
        }
        byte b2 = k0Var.get(k0Var.position());
        if (b2 == 0 || !(q0Var instanceof j0)) {
            return rVar.b();
        }
        if (b2 != ((j0) q0Var).g()) {
            return rVar.b();
        }
        k0Var.get();
        return q0Var;
    }
}
