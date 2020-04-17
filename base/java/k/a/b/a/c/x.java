package k.a.b.a.c;

import e.a.a.a.a;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.h;
import k.a.b.a.c.e;

public final class x {
    public y0 a;
    public final r b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<Class, a> f1786c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public Map<Object, a> f1787d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public Map<Class, a> f1788e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    public final h f1789f;

    /* renamed from: g  reason: collision with root package name */
    public final j f1790g;

    /* renamed from: h  reason: collision with root package name */
    public final t0 f1791h;

    /* renamed from: i  reason: collision with root package name */
    public final l0 f1792i;

    /* renamed from: j  reason: collision with root package name */
    public final c0 f1793j;

    /* renamed from: k  reason: collision with root package name */
    public final u0 f1794k;

    /* renamed from: l  reason: collision with root package name */
    public final f0 f1795l;
    public final k m;
    public final a0 n;
    public final t o;
    public final p0 p;
    public final g q;
    public final o0 r;
    public final n0 s;
    public final e0 t;
    public final g0 u;
    public final e v;

    public x(r rVar) {
        this.b = rVar;
        new h0(this, rVar);
        this.f1789f = new h(this, rVar);
        this.f1790g = new j(this, rVar);
        this.f1791h = new t0(this, rVar);
        this.f1792i = new l0(this, rVar);
        new w0(this, rVar);
        this.f1793j = new c0(this, rVar);
        this.f1794k = new u0(this, rVar);
        this.f1795l = new f0(this, rVar);
        new v0(this, rVar);
        new f(this, rVar);
        this.m = new k(this, rVar);
        this.n = new a0(this, rVar);
        this.o = new t(this, rVar);
        this.p = new p0(this, rVar);
        new s0(this, rVar);
        new o(this, rVar);
        new p(this, rVar);
        new n(this, rVar);
        this.q = new g(this, rVar);
        this.r = new o0(this, rVar);
        this.s = new n0(this, rVar);
        this.t = new e0(this, rVar);
        this.u = new g0(this, rVar);
        this.v = new e(this, rVar, this.f1789f, this.f1790g, this.f1792i, this.f1793j, this.f1795l, this.n, this.o, this.m);
    }

    public a a(Object obj) {
        return a(obj == null ? Void.class : obj.getClass(), obj);
    }

    public void b(Object obj) {
        if (obj != null) {
            a aVar = this.f1786c.get(obj.getClass());
            if (aVar != null) {
                aVar.c(obj);
            } else if (obj.getClass().isArray()) {
                Class<?> componentType = obj.getClass().getComponentType();
                if (!componentType.isPrimitive()) {
                    Object[] objArr = (Object[]) obj;
                    e.b a2 = this.v.a(objArr);
                    a2.c();
                    a2.a(objArr);
                } else if (componentType == Boolean.TYPE) {
                    boolean[] zArr = (boolean[]) obj;
                    e.b a3 = this.v.a(zArr);
                    a3.c();
                    a3.a(zArr);
                } else if (componentType == Byte.TYPE) {
                    byte[] bArr = (byte[]) obj;
                    e eVar = this.v;
                    if (eVar != null) {
                        e.b bVar = bArr.length < 254 ? eVar.f1697j : eVar.f1698k;
                        bVar.c();
                        bVar.a(bArr);
                        return;
                    }
                    throw null;
                } else if (componentType == Short.TYPE) {
                    short[] sArr = (short[]) obj;
                    e eVar2 = this.v;
                    if (eVar2 != null) {
                        e.b bVar2 = sArr.length < 127 ? eVar2.f1697j : eVar2.f1698k;
                        bVar2.c();
                        bVar2.a(sArr);
                        return;
                    }
                    throw null;
                } else if (componentType == Integer.TYPE) {
                    int[] iArr = (int[]) obj;
                    e.b b2 = this.v.b(iArr);
                    b2.c();
                    b2.a(iArr);
                } else if (componentType == Long.TYPE) {
                    long[] jArr = (long[]) obj;
                    e.b b3 = this.v.b(jArr);
                    b3.c();
                    b3.a(jArr);
                } else if (componentType == Float.TYPE) {
                    float[] fArr = (float[]) obj;
                    e eVar3 = this.v;
                    if (eVar3 != null) {
                        e.b bVar3 = fArr.length < 63 ? eVar3.f1697j : eVar3.f1698k;
                        bVar3.c();
                        bVar3.a(fArr);
                        return;
                    }
                    throw null;
                } else if (componentType == Double.TYPE) {
                    double[] dArr = (double[]) obj;
                    e eVar4 = this.v;
                    if (eVar4 != null) {
                        e.b bVar4 = dArr.length < 31 ? eVar4.f1697j : eVar4.f1698k;
                        bVar4.c();
                        bVar4.a(dArr);
                        return;
                    }
                    throw null;
                } else if (componentType == Character.TYPE) {
                    char[] cArr = (char[]) obj;
                    e eVar5 = this.v;
                    if (eVar5 != null) {
                        e.b bVar5 = cArr.length < 63 ? eVar5.f1697j : eVar5.f1698k;
                        bVar5.c();
                        bVar5.a(cArr);
                        return;
                    }
                    throw null;
                } else {
                    StringBuilder a4 = a.a("Cannot write arrays of type ");
                    a4.append(componentType.getName());
                    throw new IllegalArgumentException(a4.toString());
                }
            } else if (obj instanceof List) {
                List list = (List) obj;
                j0 a5 = this.t.a((Object) list);
                a5.c();
                a5.a(list);
            } else if (obj instanceof Map) {
                Map map = (Map) obj;
                j0 a6 = this.u.a((Object) map);
                a6.c();
                a6.a(map);
            } else if (obj instanceof k.a.b.a.b.e) {
                k.a.b.a.b.e eVar6 = (k.a.b.a.b.e) obj;
                this.a.a((byte) 0);
                b(eVar6.a());
                b(eVar6.b());
            } else {
                throw new IllegalArgumentException(a.a(obj, a.a("Do not know how to write Objects of class ")));
            }
        } else {
            this.a.a((byte) 64);
        }
    }

    public a a(Class cls) {
        return a(cls, (Object) null);
    }

    public final a<?> a(Class<?> cls, Object obj) {
        a<?> aVar;
        a<?> aVar2 = this.f1786c.get(cls);
        if (aVar2 != null) {
            return aVar2;
        }
        if (cls.isArray()) {
            aVar = this.v;
        } else if (List.class.isAssignableFrom(cls)) {
            aVar = this.t;
        } else if (Map.class.isAssignableFrom(cls)) {
            aVar = this.u;
        } else if (k.a.b.a.b.e.class.isAssignableFrom(cls)) {
            a<?> aVar3 = this.f1788e.get(cls);
            if (aVar3 == null && obj != null) {
                Object a2 = ((k.a.b.a.b.e) obj).a();
                a<?> aVar4 = this.f1787d.get(a2);
                if (aVar4 == null) {
                    aVar4 = new v(this, a2);
                    this.f1787d.put(a2, aVar4);
                }
                aVar3 = aVar4;
            }
            return aVar3;
        } else {
            aVar = null;
        }
        this.f1786c.put(cls, aVar);
        return aVar;
    }

    public <V> void a(a<V> aVar) {
        this.f1786c.put(aVar.a(), aVar);
    }

    public void a() {
        this.a.a((byte) 64);
    }

    public void a(boolean z) {
        if (z) {
            this.a.a((byte) 65);
        } else {
            this.a.a((byte) 66);
        }
    }

    public void a(Boolean bool) {
        if (bool == null) {
            a();
        } else if (Boolean.TRUE.equals(bool)) {
            this.a.a((byte) 65);
        } else {
            this.a.a((byte) 66);
        }
    }

    public void a(h hVar) {
        if (hVar == null) {
            a();
        } else if (this.f1794k != null) {
            int i2 = hVar.x;
            if (i2 == 0) {
                this.a.a((byte) 67);
            } else if (i2 <= 0 || i2 > 255) {
                this.a.a((byte) 112);
                this.a.b(i2);
            } else {
                this.a.a((byte) 82);
                this.a.a((byte) i2);
            }
        } else {
            throw null;
        }
    }

    public void a(Date date) {
        if (date == null) {
            a();
            return;
        }
        p0 p0Var = this.p;
        long time = date.getTime();
        if (p0Var != null) {
            this.a.a((byte) -125);
            this.a.a(time);
            return;
        }
        throw null;
    }

    public void a(k.a.b.a.b.a aVar) {
        if (aVar == null) {
            a();
        } else if (this.q != null) {
            int i2 = aVar.f1569c;
            if (i2 <= 255) {
                this.a.c(i2 + 2);
                this.a.a((byte) -96);
                this.a.a((byte) aVar.f1569c);
                this.a.a(aVar.a, aVar.b, aVar.f1569c);
                return;
            }
            this.a.c(i2 + 5);
            this.a.a((byte) -80);
            this.a.b(aVar.f1569c);
            this.a.a(aVar.a, aVar.b, aVar.f1569c);
        } else {
            throw null;
        }
    }

    public void a(String str) {
        if (str == null) {
            a();
            return;
        }
        j0 a2 = this.s.a((Object) str);
        a2.c();
        a2.a(str);
    }

    public void a(f fVar) {
        if (fVar == null) {
            a();
        } else if (this.r == null) {
            throw null;
        } else if (fVar.length() <= 255) {
            this.a.c(fVar.length() + 2);
            this.a.a((byte) -93);
            this.a.a((byte) fVar.length());
            fVar.a(this.a);
        } else {
            this.a.c(fVar.length() + 5);
            this.a.a((byte) -77);
            this.a.b(fVar.length());
            fVar.a(this.a);
        }
    }
}
