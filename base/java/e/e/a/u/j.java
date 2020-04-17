package e.e.a.u;

import e.e.a.a;
import e.e.a.v.c;
import i.a.b.d;
import java.net.URI;
import java.security.KeyStore;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;

public final class j extends d {
    public final c I;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public j(c cVar, g gVar, Set<e> set, a aVar, String str, URI uri, c cVar2, c cVar3, List<e.e.a.v.a> list, KeyStore keyStore) {
        super(f.A, gVar, set, aVar, str, uri, cVar2, cVar3, list, keyStore);
        c cVar4 = cVar;
        if (cVar4 != null) {
            this.I = cVar4;
        } else {
            throw new IllegalArgumentException("The key value must not be null");
        }
    }

    public LinkedHashMap<String, ?> d() {
        LinkedHashMap<String, ?> linkedHashMap = new LinkedHashMap<>();
        linkedHashMap.put("k", this.I.x);
        linkedHashMap.put("kty", this.x.x);
        return linkedHashMap;
    }

    public boolean e() {
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof j) && super.equals(obj)) {
            return Objects.equals(this.I, ((j) obj).I);
        }
        return false;
    }

    public d f() {
        d f2 = super.f();
        f2.put("k", this.I.x);
        return f2;
    }

    public int hashCode() {
        return Objects.hash(new Object[]{Integer.valueOf(super.hashCode()), this.I});
    }
}
