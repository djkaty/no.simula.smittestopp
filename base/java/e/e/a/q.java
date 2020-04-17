package e.e.a;

import e.a.a.a.a;
import e.e.a.v.c;
import i.a.b.d;
import java.text.ParseException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class q extends e {
    public static final Set<String> E;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("alg");
        hashSet.add("typ");
        hashSet.add("cty");
        hashSet.add("crit");
        E = Collections.unmodifiableSet(hashSet);
    }

    public q(h hVar, String str, Set<String> set, Map<String, Object> map, c cVar) {
        super(a.y, hVar, str, set, map, cVar);
    }

    public static q a(c cVar) {
        d b = e.c.a.a.b.l.c.b(cVar.e());
        if (e.a(b) == a.y) {
            h hVar = null;
            String str = null;
            HashSet hashSet = null;
            HashMap hashMap = null;
            for (String str2 : b.keySet()) {
                if (!"alg".equals(str2)) {
                    if ("typ".equals(str2)) {
                        String d2 = e.c.a.a.b.l.c.d(b, str2);
                        if (d2 != null) {
                            hVar = new h(d2);
                        }
                    } else if ("cty".equals(str2)) {
                        str = e.c.a.a.b.l.c.d(b, str2);
                    } else if ("crit".equals(str2)) {
                        List<String> e2 = e.c.a.a.b.l.c.e(b, str2);
                        if (e2 != null) {
                            hashSet = new HashSet(e2);
                        }
                    } else {
                        Object obj = b.get(str2);
                        if (!E.contains(str2)) {
                            if (hashMap == null) {
                                hashMap = new HashMap();
                            }
                            hashMap.put(str2, obj);
                        } else {
                            throw new IllegalArgumentException(a.a("The parameter name \"", str2, "\" matches a registered name"));
                        }
                    }
                }
            }
            return new q(hVar, str, hashSet, hashMap, cVar);
        }
        throw new ParseException("The algorithm \"alg\" header parameter must be \"none\"", 0);
    }
}
