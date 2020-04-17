package e.e.a.u;

import e.e.a.a;
import e.e.a.v.c;
import i.a.b.d;
import java.net.URI;
import java.security.KeyStore;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;

public class i extends d {
    public static final Set<a> N = Collections.unmodifiableSet(new HashSet(Arrays.asList(new a[]{a.C, a.D, a.E, a.F})));
    public final a I;
    public final c J;
    public final byte[] K;
    public final c L;
    public final byte[] M;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public i(a aVar, c cVar, g gVar, Set<e> set, a aVar2, String str, URI uri, c cVar2, c cVar3, List<e.e.a.v.a> list, KeyStore keyStore) {
        super(f.B, gVar, set, aVar2, str, uri, cVar2, cVar3, list, keyStore);
        a aVar3 = aVar;
        c cVar4 = cVar;
        if (aVar3 == null) {
            throw new IllegalArgumentException("The curve must not be null");
        } else if (N.contains(aVar)) {
            this.I = aVar3;
            if (cVar4 != null) {
                this.J = cVar4;
                this.K = cVar.b();
                this.L = null;
                this.M = null;
                return;
            }
            throw new IllegalArgumentException("The 'x' parameter must not be null");
        } else {
            throw new IllegalArgumentException("Unknown / unsupported curve: " + aVar);
        }
    }

    public static i a(d dVar) {
        a a = a.a(e.c.a.a.b.l.c.d(dVar, "crv"));
        c cVar = new c(e.c.a.a.b.l.c.d(dVar, "x"));
        if (e.c.a.a.b.l.c.d(dVar) == f.B) {
            c cVar2 = null;
            if (dVar.get("d") != null) {
                cVar2 = new c(e.c.a.a.b.l.c.d(dVar, "d"));
            }
            c cVar3 = cVar2;
            if (cVar3 != null) {
                return new i(a, cVar, cVar3, e.c.a.a.b.l.c.e(dVar), e.c.a.a.b.l.c.c(dVar), e.c.a.a.b.l.c.a(dVar), e.c.a.a.b.l.c.b(dVar), e.c.a.a.b.l.c.i(dVar), e.c.a.a.b.l.c.h(dVar), e.c.a.a.b.l.c.g(dVar), e.c.a.a.b.l.c.f(dVar), (KeyStore) null);
            }
            try {
                return new i(a, cVar, e.c.a.a.b.l.c.e(dVar), e.c.a.a.b.l.c.c(dVar), e.c.a.a.b.l.c.a(dVar), e.c.a.a.b.l.c.b(dVar), e.c.a.a.b.l.c.i(dVar), e.c.a.a.b.l.c.h(dVar), e.c.a.a.b.l.c.g(dVar), e.c.a.a.b.l.c.f(dVar), (KeyStore) null);
            } catch (IllegalArgumentException e2) {
                throw new ParseException(e2.getMessage(), 0);
            }
        } else {
            throw new ParseException("The key type \"kty\" must be OKP", 0);
        }
    }

    public LinkedHashMap<String, ?> d() {
        LinkedHashMap<String, ?> linkedHashMap = new LinkedHashMap<>();
        linkedHashMap.put("crv", this.I.x);
        linkedHashMap.put("kty", this.x.x);
        linkedHashMap.put("x", this.J.x);
        return linkedHashMap;
    }

    public boolean e() {
        return this.L != null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i) || !super.equals(obj)) {
            return false;
        }
        i iVar = (i) obj;
        if (!Objects.equals(this.I, iVar.I) || !Objects.equals(this.J, iVar.J) || !Arrays.equals(this.K, iVar.K) || !Objects.equals(this.L, iVar.L) || !Arrays.equals(this.M, iVar.M)) {
            return false;
        }
        return true;
    }

    public d f() {
        d f2 = super.f();
        f2.put("crv", this.I.x);
        f2.put("x", this.J.x);
        c cVar = this.L;
        if (cVar != null) {
            f2.put("d", cVar.x);
        }
        return f2;
    }

    public int hashCode() {
        Object[] objArr = {Integer.valueOf(super.hashCode()), this.I, this.J, this.L};
        int hashCode = Arrays.hashCode(this.K);
        return Arrays.hashCode(this.M) + ((hashCode + (Objects.hash(objArr) * 31)) * 31);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public i(a aVar, c cVar, c cVar2, g gVar, Set<e> set, a aVar2, String str, URI uri, c cVar3, c cVar4, List<e.e.a.v.a> list, KeyStore keyStore) {
        super(f.B, gVar, set, aVar2, str, uri, cVar3, cVar4, list, keyStore);
        a aVar3 = aVar;
        c cVar5 = cVar;
        c cVar6 = cVar2;
        if (aVar3 == null) {
            throw new IllegalArgumentException("The curve must not be null");
        } else if (N.contains(aVar3)) {
            this.I = aVar3;
            if (cVar5 != null) {
                this.J = cVar5;
                this.K = cVar.b();
                if (cVar6 != null) {
                    this.L = cVar6;
                    this.M = cVar2.b();
                    return;
                }
                throw new IllegalArgumentException("The 'd' parameter must not be null");
            }
            throw new IllegalArgumentException("The 'x' parameter must not be null");
        } else {
            throw new IllegalArgumentException("Unknown / unsupported curve: " + aVar3);
        }
    }
}
