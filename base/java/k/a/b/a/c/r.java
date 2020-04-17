package k.a.b.a.c;

import java.nio.ByteBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import k.a.b.a.b.e;
import k.a.b.a.b.f;
import k.a.b.a.b.g;
import k.a.b.a.b.h;
import k.a.b.a.b.i;
import k.a.b.a.c.e;
import k.a.b.a.c.k0;

public class r implements i {
    public k0 a;
    public final CharsetDecoder b = StandardCharsets.UTF_8.newDecoder();

    /* renamed from: c  reason: collision with root package name */
    public final j0[] f1768c = new j0[256];

    /* renamed from: d  reason: collision with root package name */
    public final Map<Object, s> f1769d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final Map<Object, y<?>> f1770e = new HashMap();

    public class a implements s {
        public final /* synthetic */ Object a;

        public a(r rVar, Object obj) {
            this.a = obj;
        }

        public Class<?> a() {
            return c.class;
        }

        public Object b(Object obj) {
            return new c(this.a, obj);
        }
    }

    public interface b<V> {
        V a(r rVar, k0 k0Var);
    }

    public static class c implements e {
        public final Object a;
        public final Object b;

        public c(Object obj, Object obj2) {
            this.a = obj;
            this.b = obj2;
        }

        public Object a() {
            return this.a;
        }

        public Object b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof e) || this.a != null) {
                e eVar = (e) obj;
                if (!this.a.equals(eVar.a()) || this.b != null) {
                    return this.b.equals(eVar.b());
                }
                if (eVar.b() == null) {
                    return true;
                }
            } else if (((e) obj).a() == null) {
                return true;
            }
            return false;
        }
    }

    public void a(Object obj, s sVar) {
        this.f1770e.remove(obj);
        this.f1769d.put(obj, sVar);
    }

    public q0 b() {
        return b(false);
    }

    public Map c() {
        byte b2 = this.a.get();
        if (b2 == -63) {
            return (Map) this.f1768c[193].k();
        }
        if (b2 == -47) {
            return (Map) this.f1768c[209].k();
        }
        if (b2 == 64) {
            return null;
        }
        throw new k.a.b.a.a(e.a.a.a.a.a("Expected Map type but found encoding: ", (int) b2));
    }

    public Object d() {
        k0 k0Var = this.a;
        byte b2 = k0Var.get(k0Var.position());
        boolean z = b2 == -32 || b2 == -16;
        q0 b3 = b();
        if (b3 == null) {
            throw new q("Unknown constructor");
        } else if (z) {
            return ((e.b) b3).j();
        } else {
            return b3.k();
        }
    }

    public byte e() {
        return this.a.get();
    }

    public int f() {
        return this.a.d();
    }

    public long g() {
        return this.a.l();
    }

    public q0 b(boolean z) {
        Object obj;
        q0 q0Var;
        byte e2 = e() & 255;
        if (e2 != 0) {
            return this.f1768c[e2];
        }
        k0 k0Var = this.a;
        byte b2 = k0Var.get(k0Var.position());
        i iVar = null;
        if (83 == b2 || Byte.MIN_VALUE == b2) {
            byte b3 = this.a.get();
            if (b3 != Byte.MIN_VALUE) {
                if (b3 != 64) {
                    if (b3 == 68) {
                        iVar = i.A;
                    } else if (b3 == 83) {
                        obj = i.a(((long) e()) & 255);
                    } else {
                        throw new q(e.a.a.a.a.a("Expected UnsignedLong type but found encoding: ", (int) b3));
                    }
                }
                obj = iVar;
            } else {
                obj = i.a(g());
            }
        } else if (-93 == b2 || -77 == b2) {
            obj = a((f) null);
        } else {
            obj = d();
        }
        if (!z && (q0Var = this.f1770e.get(obj)) != null) {
            return q0Var;
        }
        q0 b4 = b(false);
        s sVar = this.f1769d.get(obj);
        if (sVar == null) {
            sVar = new a(this, obj);
            a(obj, sVar);
        }
        return new w(sVar, b4);
    }

    public Boolean a(Boolean bool) {
        byte b2 = this.a.get();
        if (b2 == 86) {
            return e() == 0 ? Boolean.FALSE : Boolean.TRUE;
        }
        switch (b2) {
            case 64:
                return bool;
            case 65:
                return Boolean.TRUE;
            case 66:
                return Boolean.FALSE;
            default:
                throw new q(e.a.a.a.a.a("Expected boolean type but found encoding: ", (int) b2));
        }
    }

    public boolean a(boolean z) {
        byte b2 = this.a.get();
        if (b2 != 86) {
            switch (b2) {
                case 64:
                    return z;
                case 65:
                    return true;
                case 66:
                    return false;
                default:
                    throw new q(e.a.a.a.a.a("Expected boolean type but found encoding: ", (int) b2));
            }
        } else if (e() != 0) {
            return true;
        } else {
            return false;
        }
    }

    public g a(g gVar) {
        byte b2 = this.a.get();
        if (b2 == 64) {
            return gVar;
        }
        if (b2 == 80) {
            return g.a(e());
        }
        throw new q(e.a.a.a.a.a("Expected unsigned byte type but found encoding: ", (int) b2));
    }

    public h a(h hVar) {
        byte b2 = this.a.get();
        if (b2 == 64) {
            return hVar;
        }
        if (b2 == 67) {
            return h.z;
        }
        if (b2 == 82) {
            return h.a((int) e() & 255);
        }
        if (b2 == 112) {
            return h.a(f());
        }
        throw new q(e.a.a.a.a.a("Expected UnsignedInteger type but found encoding: ", (int) b2));
    }

    public Date a(Date date) {
        byte b2 = this.a.get();
        if (b2 == -125) {
            return new Date(g());
        }
        if (b2 == 64) {
            return date;
        }
        throw new k.a.b.a.a(e.a.a.a.a.a("Expected Timestamp type but found encoding: ", (int) b2));
    }

    public k.a.b.a.b.a a(k.a.b.a.b.a aVar) {
        byte b2 = this.a.get();
        if (b2 == -96) {
            return (k.a.b.a.b.a) this.f1768c[160].k();
        }
        if (b2 == -80) {
            return (k.a.b.a.b.a) this.f1768c[176].k();
        }
        if (b2 == 64) {
            return aVar;
        }
        throw new k.a.b.a.a(e.a.a.a.a.a("Expected Binary type but found encoding: ", (int) b2));
    }

    public f a(f fVar) {
        byte b2 = this.a.get();
        if (b2 == -93) {
            return (f) this.f1768c[163].k();
        }
        if (b2 == -77) {
            return (f) this.f1768c[179].k();
        }
        if (b2 == 64) {
            return fVar;
        }
        throw new k.a.b.a.a(e.a.a.a.a.a("Expected Symbol type but found encoding: ", (int) b2));
    }

    public String a(String str) {
        byte b2 = this.a.get();
        if (b2 == -95) {
            return (String) this.f1768c[161].k();
        }
        if (b2 == -79) {
            return (String) this.f1768c[177].k();
        }
        if (b2 == 64) {
            return str;
        }
        throw new k.a.b.a.a(e.a.a.a.a.a("Expected String type but found encoding: ", (int) b2));
    }

    public <V> void a(i0<V> i0Var) {
        for (j0 j0Var : i0Var.i()) {
            this.f1768c[j0Var.g() & 255] = j0Var;
        }
    }

    public <V> V a(b<V> bVar, int i2) {
        V a2 = bVar.a(this, this.a.i().b(i2));
        k0 k0Var = this.a;
        k0Var.a(k0Var.position() + i2);
        return a2;
    }

    public void a(ByteBuffer byteBuffer) {
        this.a = new k0.a(byteBuffer);
    }

    public int a() {
        return this.a.c();
    }
}
