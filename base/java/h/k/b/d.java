package h.k.b;

import com.microsoft.appcenter.ingestion.models.properties.DoubleTypedProperty;
import com.microsoft.appcenter.ingestion.models.properties.LongTypedProperty;
import h.k.a.a;
import h.k.a.c;
import h.k.a.e;
import h.k.a.f;
import h.k.a.g;
import h.k.a.h;
import h.k.a.i;
import h.k.a.j;
import h.k.a.k;
import h.k.a.l;
import h.k.a.m;
import h.k.a.n;
import h.k.a.o;
import h.k.a.p;
import h.k.a.q;
import h.k.a.r;
import h.k.a.s;
import h.k.a.t;
import h.k.a.u;
import h.k.a.v;
import h.k.a.w;
import h.m.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class d implements b<Object>, c {
    public static final Map<Class<? extends Object<?>>, Integer> b;

    /* renamed from: c  reason: collision with root package name */
    public static final HashMap<String, String> f1386c;

    /* renamed from: d  reason: collision with root package name */
    public static final HashMap<String, String> f1387d;

    /* renamed from: e  reason: collision with root package name */
    public static final HashMap<String, String> f1388e;
    public final Class<?> a;

    static {
        Map<Class<? extends Object<?>>, Integer> map;
        List a2 = h.i.b.a((T[]) new Class[]{a.class, l.class, p.class, q.class, r.class, s.class, t.class, u.class, v.class, w.class, h.k.a.b.class, c.class, h.k.a.d.class, e.class, f.class, g.class, h.class, i.class, j.class, k.class, m.class, n.class, o.class});
        ArrayList arrayList = new ArrayList(e.c.a.a.b.l.c.a(a2, 10));
        int i2 = 0;
        for (Object next : a2) {
            int i3 = i2 + 1;
            if (i2 >= 0) {
                arrayList.add(new h.c((Class) next, Integer.valueOf(i2)));
                i2 = i3;
            } else {
                throw new ArithmeticException("Index overflow has happened.");
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            map = h.i.e.x;
        } else if (size != 1) {
            map = new LinkedHashMap<>(e.c.a.a.b.l.c.b(arrayList.size()));
            e.c.a.a.b.l.c.a(arrayList, map);
        } else {
            h.c cVar = (h.c) arrayList.get(0);
            if (cVar != null) {
                map = Collections.singletonMap(cVar.x, cVar.y);
                g.a((Object) map, "java.util.Collections.si…(pair.first, pair.second)");
            } else {
                g.a("pair");
                throw null;
            }
        }
        b = map;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put(LongTypedProperty.TYPE, "kotlin.Long");
        hashMap.put(DoubleTypedProperty.TYPE, "kotlin.Double");
        f1386c = hashMap;
        HashMap<String, String> hashMap2 = new HashMap<>();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        f1387d = hashMap2;
        HashMap<String, String> hashMap3 = new HashMap<>();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(f1386c);
        hashMap3.putAll(f1387d);
        Collection<String> values = f1386c.values();
        g.a((Object) values, "primitiveFqNames.values");
        for (String str : values) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            g.a((Object) str, "kotlinName");
            sb.append(h.o.g.a(str, '.', (String) null, 2));
            sb.append("CompanionObject");
            String sb2 = sb.toString();
            hashMap3.put(sb2, str + ".Companion");
        }
        for (Map.Entry next2 : b.entrySet()) {
            int intValue = ((Number) next2.getValue()).intValue();
            String name = ((Class) next2.getKey()).getName();
            hashMap3.put(name, "kotlin.Function" + intValue);
        }
        f1388e = hashMap3;
        LinkedHashMap linkedHashMap = new LinkedHashMap(e.c.a.a.b.l.c.b(hashMap3.size()));
        for (Map.Entry entry : hashMap3.entrySet()) {
            linkedHashMap.put(entry.getKey(), h.o.g.a((String) entry.getValue(), '.', (String) null, 2));
        }
    }

    public d(Class<?> cls) {
        if (cls != null) {
            this.a = cls;
        } else {
            g.a("jClass");
            throw null;
        }
    }

    public Class<?> a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof d) && g.a((Object) e.c.a.a.b.l.c.a(this), (Object) e.c.a.a.b.l.c.a((b) obj));
    }

    public int hashCode() {
        return e.c.a.a.b.l.c.a(this).hashCode();
    }

    public String toString() {
        return this.a.toString() + " (Kotlin reflection is not available)";
    }
}
