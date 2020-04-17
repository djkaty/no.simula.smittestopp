package e.e.a;

import e.e.a.v.c;
import e.e.a.v.d;
import java.io.Serializable;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public abstract class e implements Serializable {
    public static final Map<String, Object> D = Collections.unmodifiableMap(new HashMap());
    public final Set<String> A;
    public final Map<String, Object> B;
    public final c C;
    public final a x;
    public final h y;
    public final String z;

    public e(a aVar, h hVar, String str, Set<String> set, Map<String, Object> map, c cVar) {
        if (aVar != null) {
            this.x = aVar;
            this.y = hVar;
            this.z = str;
            if (set != null) {
                this.A = Collections.unmodifiableSet(new HashSet(set));
            } else {
                this.A = null;
            }
            if (map != null) {
                this.B = Collections.unmodifiableMap(new HashMap(map));
            } else {
                this.B = D;
            }
            this.C = cVar;
            return;
        }
        throw new IllegalArgumentException("The algorithm \"alg\" header parameter must not be null");
    }

    public c a() {
        c cVar = this.C;
        return cVar == null ? c.a(toString().getBytes(d.a)) : cVar;
    }

    public i.a.b.d b() {
        i.a.b.d dVar = new i.a.b.d(this.B);
        dVar.put("alg", this.x.x);
        h hVar = this.y;
        if (hVar != null) {
            dVar.put("typ", hVar.x);
        }
        String str = this.z;
        if (str != null) {
            dVar.put("cty", str);
        }
        Set<String> set = this.A;
        if (set != null && !set.isEmpty()) {
            dVar.put("crit", new ArrayList(this.A));
        }
        return dVar;
    }

    public String toString() {
        return b().toString();
    }

    public static a a(i.a.b.d dVar) {
        String d2 = e.c.a.a.b.l.c.d(dVar, "alg");
        if (d2 == null) {
            throw new ParseException("Missing \"alg\" in header JSON object", 0);
        } else if (d2.equals(a.y.x)) {
            return a.y;
        } else {
            if (dVar.containsKey("enc")) {
                if (d2.equals(i.z.x)) {
                    return i.z;
                }
                if (d2.equals(i.A.x)) {
                    return i.A;
                }
                if (d2.equals(i.B.x)) {
                    return i.B;
                }
                if (d2.equals(i.C.x)) {
                    return i.C;
                }
                if (d2.equals(i.D.x)) {
                    return i.D;
                }
                if (d2.equals(i.E.x)) {
                    return i.E;
                }
                if (d2.equals(i.F.x)) {
                    return i.F;
                }
                if (d2.equals(i.G.x)) {
                    return i.G;
                }
                if (d2.equals(i.H.x)) {
                    return i.H;
                }
                if (d2.equals(i.I.x)) {
                    return i.I;
                }
                if (d2.equals(i.J.x)) {
                    return i.J;
                }
                if (d2.equals(i.K.x)) {
                    return i.K;
                }
                if (d2.equals(i.L.x)) {
                    return i.L;
                }
                if (d2.equals(i.M.x)) {
                    return i.M;
                }
                if (d2.equals(i.N.x)) {
                    return i.N;
                }
                if (d2.equals(i.O.x)) {
                    return i.O;
                }
                if (d2.equals(i.P.x)) {
                    return i.P;
                }
                return new i(d2);
            } else if (d2.equals(l.z.x)) {
                return l.z;
            } else {
                if (d2.equals(l.A.x)) {
                    return l.A;
                }
                if (d2.equals(l.B.x)) {
                    return l.B;
                }
                if (d2.equals(l.C.x)) {
                    return l.C;
                }
                if (d2.equals(l.D.x)) {
                    return l.D;
                }
                if (d2.equals(l.E.x)) {
                    return l.E;
                }
                if (d2.equals(l.F.x)) {
                    return l.F;
                }
                if (d2.equals(l.G.x)) {
                    return l.G;
                }
                if (d2.equals(l.H.x)) {
                    return l.H;
                }
                if (d2.equals(l.I.x)) {
                    return l.I;
                }
                if (d2.equals(l.J.x)) {
                    return l.J;
                }
                if (d2.equals(l.K.x)) {
                    return l.K;
                }
                if (d2.equals(l.L.x)) {
                    return l.L;
                }
                if (d2.equals(l.M.x)) {
                    return l.M;
                }
                return new l(d2);
            }
        }
    }
}
