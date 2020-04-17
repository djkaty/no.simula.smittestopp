package k.a.b.a.d.g0;

import java.util.HashMap;
import java.util.Map;
import k.a.b.a.b.h;

public class k0 {
    public static final h u = h.a(Integer.MAX_VALUE);
    public final a0 a;
    public final y b;

    /* renamed from: c  reason: collision with root package name */
    public int f1873c = -1;

    /* renamed from: d  reason: collision with root package name */
    public int f1874d = -1;

    /* renamed from: e  reason: collision with root package name */
    public final h f1875e = h.a(65535);

    /* renamed from: f  reason: collision with root package name */
    public h f1876f;

    /* renamed from: g  reason: collision with root package name */
    public h f1877g;

    /* renamed from: h  reason: collision with root package name */
    public h f1878h;

    /* renamed from: i  reason: collision with root package name */
    public h f1879i;

    /* renamed from: j  reason: collision with root package name */
    public h f1880j;

    /* renamed from: k  reason: collision with root package name */
    public final Map<h, e0<?>> f1881k;

    /* renamed from: l  reason: collision with root package name */
    public final Map<h, e0<?>> f1882l;
    public final Map<String, e0> m;
    public h n;
    public h o;
    public final Map<h, e> p;
    public final Map<h, e> q;
    public int r;
    public boolean s;
    public boolean t;

    public k0(a0 a0Var, y yVar) {
        h hVar = h.z;
        this.f1876f = hVar;
        this.f1877g = hVar;
        this.f1878h = hVar;
        this.f1879i = h.A;
        this.f1880j = null;
        this.f1881k = new HashMap();
        this.f1882l = new HashMap();
        this.m = new HashMap();
        this.n = null;
        this.p = new HashMap();
        this.q = new HashMap();
        this.a = a0Var;
        this.b = yVar;
        this.f1878h = h.a(yVar.R);
    }

    public boolean a() {
        return this.f1873c != -1;
    }

    public void b() {
        if (a()) {
            for (e0 next : this.f1882l.values()) {
                if (next.a != null) {
                    next.f1844f.i();
                }
                next.a = null;
            }
            this.f1882l.clear();
            this.b.i();
        }
        this.f1873c = -1;
    }

    public void c() {
        if (this.f1874d != -1) {
            for (e0 next : this.f1881k.values()) {
                if (next.f1841c != null) {
                    next.f1844f.i();
                }
                next.f1841c = null;
            }
            this.f1881k.clear();
            this.b.i();
        }
        this.f1874d = -1;
    }

    public void d() {
        y yVar = this.b;
        int i2 = yVar.M;
        int i3 = this.a.T;
        if (i2 <= 0 || i3 <= 0) {
            this.f1877g = u;
        } else {
            this.f1877g = h.a((i2 - yVar.N) / i3);
        }
    }

    public e0 a(h hVar) {
        return this.f1881k.get(hVar);
    }
}
