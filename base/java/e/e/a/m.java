package e.e.a;

import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import e.e.a.u.d;
import e.e.a.v.a;
import e.e.a.v.c;
import java.net.URI;
import java.text.ParseException;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class m extends b {
    public static final Set<String> L;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("alg");
        hashSet.add("jku");
        hashSet.add("jwk");
        hashSet.add("x5u");
        hashSet.add("x5t");
        hashSet.add("x5t#S256");
        hashSet.add("x5c");
        hashSet.add(AccessTokenRecord.SerializedNames.KID);
        hashSet.add("typ");
        hashSet.add("cty");
        hashSet.add("crit");
        L = Collections.unmodifiableSet(hashSet);
    }

    public m(l lVar, h hVar, String str, Set<String> set, URI uri, d dVar, URI uri2, c cVar, c cVar2, List<a> list, String str2, Map<String, Object> map, c cVar3) {
        super(lVar, hVar, str, set, uri, dVar, uri2, cVar, cVar2, list, str2, map, cVar3);
        if (lVar.x.equals(a.y.x)) {
            throw new IllegalArgumentException("The JWS algorithm \"alg\" cannot be \"none\"");
        }
    }

    public static m a(c cVar) {
        i.a.b.d dVar;
        i.a.b.d b = e.c.a.a.b.l.c.b(cVar.e());
        a a = e.a(b);
        if (a instanceof l) {
            l lVar = (l) a;
            if (!lVar.x.equals(a.y.x)) {
                h hVar = null;
                String str = null;
                HashSet hashSet = null;
                URI uri = null;
                d dVar2 = null;
                URI uri2 = null;
                c cVar2 = null;
                c cVar3 = null;
                List<a> list = null;
                String str2 = null;
                HashMap hashMap = null;
                for (String str3 : b.keySet()) {
                    if (!"alg".equals(str3)) {
                        if ("typ".equals(str3)) {
                            String d2 = e.c.a.a.b.l.c.d(b, str3);
                            if (d2 != null) {
                                hVar = new h(d2);
                            }
                        } else if ("cty".equals(str3)) {
                            str = e.c.a.a.b.l.c.d(b, str3);
                        } else if ("crit".equals(str3)) {
                            List<String> e2 = e.c.a.a.b.l.c.e(b, str3);
                            if (e2 != null) {
                                hashSet = new HashSet(e2);
                            }
                        } else if ("jku".equals(str3)) {
                            uri = e.c.a.a.b.l.c.f(b, str3);
                        } else if ("jwk".equals(str3)) {
                            i.a.b.d b2 = e.c.a.a.b.l.c.b(b, str3);
                            if (b2 != null) {
                                dVar2 = d.a(b2);
                            }
                        } else if ("x5u".equals(str3)) {
                            uri2 = e.c.a.a.b.l.c.f(b, str3);
                        } else if ("x5t".equals(str3)) {
                            cVar2 = c.a(e.c.a.a.b.l.c.d(b, str3));
                        } else if ("x5t#S256".equals(str3)) {
                            cVar3 = c.a(e.c.a.a.b.l.c.d(b, str3));
                        } else if ("x5c".equals(str3)) {
                            list = e.c.a.a.b.l.c.a(e.c.a.a.b.l.c.a(b, str3));
                        } else if (AccessTokenRecord.SerializedNames.KID.equals(str3)) {
                            str2 = e.c.a.a.b.l.c.d(b, str3);
                        } else {
                            Object obj = b.get(str3);
                            dVar = b;
                            if (!L.contains(str3)) {
                                if (hashMap == null) {
                                    hashMap = new HashMap();
                                }
                                hashMap.put(str3, obj);
                                b = dVar;
                            } else {
                                throw new IllegalArgumentException(e.a.a.a.a.a("The parameter name \"", str3, "\" matches a registered name"));
                            }
                        }
                    }
                    dVar = b;
                    b = dVar;
                }
                return new m(lVar, hVar, str, hashSet, uri, dVar2, uri2, cVar2, cVar3, list, str2, hashMap, cVar);
            }
            throw new IllegalArgumentException("The JWS algorithm \"alg\" cannot be \"none\"");
        }
        throw new ParseException("The algorithm \"alg\" header parameter must be for signatures", 0);
    }
}
