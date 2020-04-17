package i.a.b.m;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class l {

    /* renamed from: c  reason: collision with root package name */
    public static final n<i.a.b.f> f1425c = new a();

    /* renamed from: d  reason: collision with root package name */
    public static final n<i.a.b.f> f1426d = new b();

    /* renamed from: e  reason: collision with root package name */
    public static final n<i.a.b.c> f1427e = new c();

    /* renamed from: f  reason: collision with root package name */
    public static final n<i.a.b.b> f1428f = new d();

    /* renamed from: g  reason: collision with root package name */
    public static final n<Iterable<? extends Object>> f1429g = new e();

    /* renamed from: h  reason: collision with root package name */
    public static final n<Enum<?>> f1430h = new f();

    /* renamed from: i  reason: collision with root package name */
    public static final n<Map<String, ? extends Object>> f1431i = new g();

    /* renamed from: j  reason: collision with root package name */
    public static final n<Object> f1432j = new b();

    /* renamed from: k  reason: collision with root package name */
    public static final n<Object> f1433k = new a();

    /* renamed from: l  reason: collision with root package name */
    public static final n<Object> f1434l = new h();
    public ConcurrentHashMap<Class<?>, n<?>> a = new ConcurrentHashMap<>();
    public LinkedList<i> b = new LinkedList<>();

    public class a implements n<i.a.b.f> {
        public void a(Object obj, Appendable appendable, i.a.b.g gVar) {
            ((i.a.b.f) obj).a(appendable);
        }
    }

    public class b implements n<i.a.b.f> {
        public void a(Object obj, Appendable appendable, i.a.b.g gVar) {
            ((i.a.b.f) obj).a(appendable, gVar);
        }
    }

    public class c implements n<i.a.b.c> {
        public void a(Object obj, Appendable appendable, i.a.b.g gVar) {
            appendable.append(((i.a.b.c) obj).a(gVar));
        }
    }

    public class d implements n<i.a.b.b> {
        public void a(Object obj, Appendable appendable, i.a.b.g gVar) {
            appendable.append(((i.a.b.b) obj).a());
        }
    }

    public class e implements n<Iterable<? extends Object>> {
        public void a(Object obj, Appendable appendable, i.a.b.g gVar) {
            Iterable iterable = (Iterable) obj;
            if (gVar != null) {
                appendable.append('[');
                boolean z = true;
                for (Object next : iterable) {
                    if (z) {
                        z = false;
                    } else {
                        appendable.append(WWWAuthenticateHeader.COMMA);
                    }
                    if (next == null) {
                        appendable.append("null");
                    } else {
                        i.a.b.i.a(next, appendable, gVar);
                    }
                }
                appendable.append(']');
                return;
            }
            throw null;
        }
    }

    public class f implements n<Enum<?>> {
        public void a(Object obj, Appendable appendable, i.a.b.g gVar) {
            gVar.a(appendable, ((Enum) obj).name());
        }
    }

    public class g implements n<Map<String, ? extends Object>> {
        public void a(Object obj, Appendable appendable, i.a.b.g gVar) {
            Map map = (Map) obj;
            if (gVar != null) {
                appendable.append('{');
                boolean z = true;
                for (Map.Entry entry : map.entrySet()) {
                    Object value = entry.getValue();
                    if (value != null || !gVar.f1407d) {
                        if (z) {
                            z = false;
                        } else {
                            appendable.append(WWWAuthenticateHeader.COMMA);
                        }
                        l.a(entry.getKey().toString(), value, appendable, gVar);
                    }
                }
                appendable.append('}');
                return;
            }
            throw null;
        }
    }

    public class h implements n<Object> {
        public void a(Object obj, Appendable appendable, i.a.b.g gVar) {
            appendable.append(obj.toString());
        }
    }

    public static class i {
        public Class<?> a;
        public n<?> b;

        public i(Class<?> cls, n<?> nVar) {
            this.a = cls;
            this.b = nVar;
        }
    }

    public l() {
        a(new m(this), String.class);
        a(new c(this), Double.class);
        a(new d(this), Date.class);
        a(new e(this), Float.class);
        a(f1434l, Integer.class, Long.class, Byte.class, Short.class, BigInteger.class, BigDecimal.class);
        a(f1434l, Boolean.class);
        a(new f(this), int[].class);
        a(new g(this), short[].class);
        a(new h(this), long[].class);
        a(new i(this), float[].class);
        a(new j(this), double[].class);
        a(new k(this), boolean[].class);
        this.b.addLast(new i(i.a.b.f.class, f1426d));
        this.b.addLast(new i(i.a.b.e.class, f1425c));
        this.b.addLast(new i(i.a.b.c.class, f1427e));
        this.b.addLast(new i(i.a.b.b.class, f1428f));
        this.b.addLast(new i(Map.class, f1431i));
        this.b.addLast(new i(Iterable.class, f1429g));
        this.b.addLast(new i(Enum.class, f1430h));
        this.b.addLast(new i(Number.class, f1434l));
    }

    public <T> void a(n<T> nVar, Class<?>... clsArr) {
        for (Class<?> put : clsArr) {
            this.a.put(put, nVar);
        }
    }

    public static void a(String str, Object obj, Appendable appendable, i.a.b.g gVar) {
        if (str == null) {
            appendable.append("null");
        } else if (!gVar.f1408e.a(str)) {
            appendable.append(str);
        } else {
            appendable.append('\"');
            i.a.b.i.a(str, appendable, gVar);
            appendable.append('\"');
        }
        if (gVar != null) {
            appendable.append(':');
            if (obj instanceof String) {
                gVar.a(appendable, (String) obj);
            } else {
                i.a.b.i.a(obj, appendable, gVar);
            }
        } else {
            throw null;
        }
    }
}
