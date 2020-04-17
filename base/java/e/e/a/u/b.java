package e.e.a.u;

import e.e.a.a;
import e.e.a.v.c;
import i.a.b.d;
import java.math.BigInteger;
import java.net.URI;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECFieldFp;
import java.security.spec.EllipticCurve;
import java.text.ParseException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;

public final class b extends d {
    public static final Set<a> N = Collections.unmodifiableSet(new HashSet(Arrays.asList(new a[]{a.y, a.z, a.A, a.B})));
    public final a I;
    public final c J;
    public final c K;
    public final c L;
    public final PrivateKey M;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(a aVar, c cVar, c cVar2, g gVar, Set<e> set, a aVar2, String str, URI uri, c cVar3, c cVar4, List<e.e.a.v.a> list, KeyStore keyStore) {
        super(f.y, gVar, set, aVar2, str, uri, cVar3, cVar4, list, keyStore);
        a aVar3 = aVar;
        c cVar5 = cVar;
        c cVar6 = cVar2;
        if (aVar3 != null) {
            this.I = aVar3;
            if (cVar5 != null) {
                this.J = cVar5;
                if (cVar6 != null) {
                    this.K = cVar6;
                    a(aVar, cVar, cVar2);
                    a(b());
                    this.L = null;
                    this.M = null;
                    return;
                }
                throw new IllegalArgumentException("The 'y' coordinate must not be null");
            }
            throw new IllegalArgumentException("The 'x' coordinate must not be null");
        }
        throw new IllegalArgumentException("The curve must not be null");
    }

    public static void a(a aVar, c cVar, c cVar2) {
        if (N.contains(aVar)) {
            BigInteger d2 = cVar.d();
            BigInteger d3 = cVar2.d();
            if (aVar != null) {
                EllipticCurve curve = c.a(aVar).getCurve();
                BigInteger a = curve.getA();
                BigInteger b = curve.getB();
                BigInteger p = ((ECFieldFp) curve.getField()).getP();
                if (!d3.pow(2).mod(p).equals(d2.pow(3).add(a.multiply(d2)).add(b).mod(p))) {
                    throw new IllegalArgumentException("Invalid EC JWK: The 'x' and 'y' public coordinates are not on the " + aVar + " curve");
                }
                return;
            }
            throw null;
        }
        throw new IllegalArgumentException("Unknown / unsupported curve: " + aVar);
    }

    public LinkedHashMap<String, ?> d() {
        LinkedHashMap<String, ?> linkedHashMap = new LinkedHashMap<>();
        linkedHashMap.put("crv", this.I.x);
        linkedHashMap.put("kty", this.x.x);
        linkedHashMap.put("x", this.J.x);
        linkedHashMap.put("y", this.K.x);
        return linkedHashMap;
    }

    public boolean e() {
        return (this.L == null && this.M == null) ? false : true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b) || !super.equals(obj)) {
            return false;
        }
        b bVar = (b) obj;
        if (!Objects.equals(this.I, bVar.I) || !Objects.equals(this.J, bVar.J) || !Objects.equals(this.K, bVar.K) || !Objects.equals(this.L, bVar.L) || !Objects.equals(this.M, bVar.M)) {
            return false;
        }
        return true;
    }

    public d f() {
        d f2 = super.f();
        f2.put("crv", this.I.x);
        f2.put("x", this.J.x);
        f2.put("y", this.K.x);
        c cVar = this.L;
        if (cVar != null) {
            f2.put("d", cVar.x);
        }
        return f2;
    }

    public int hashCode() {
        return Objects.hash(new Object[]{Integer.valueOf(super.hashCode()), this.I, this.J, this.K, this.L, this.M});
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(a aVar, c cVar, c cVar2, c cVar3, g gVar, Set<e> set, a aVar2, String str, URI uri, c cVar4, c cVar5, List<e.e.a.v.a> list, KeyStore keyStore) {
        super(f.y, gVar, set, aVar2, str, uri, cVar4, cVar5, list, keyStore);
        a aVar3 = aVar;
        c cVar6 = cVar;
        c cVar7 = cVar2;
        c cVar8 = cVar3;
        if (aVar3 != null) {
            this.I = aVar3;
            if (cVar6 != null) {
                this.J = cVar6;
                if (cVar7 != null) {
                    this.K = cVar7;
                    a(aVar, cVar, cVar2);
                    a(b());
                    if (cVar8 != null) {
                        this.L = cVar8;
                        this.M = null;
                        return;
                    }
                    throw new IllegalArgumentException("The 'd' coordinate must not be null");
                }
                throw new IllegalArgumentException("The 'y' coordinate must not be null");
            }
            throw new IllegalArgumentException("The 'x' coordinate must not be null");
        }
        throw new IllegalArgumentException("The curve must not be null");
    }

    public final void a(List<X509Certificate> list) {
        if (list != null) {
            boolean z = false;
            X509Certificate x509Certificate = list.get(0);
            try {
                ECPublicKey eCPublicKey = (ECPublicKey) b().get(0).getPublicKey();
                if (this.J.d().equals(eCPublicKey.getW().getAffineX()) && this.K.d().equals(eCPublicKey.getW().getAffineY())) {
                    z = true;
                }
            } catch (ClassCastException unused) {
            }
            if (!z) {
                throw new IllegalArgumentException("The public subject key info of the first X.509 certificate in the chain must match the JWK type and public parameters");
            }
        }
    }

    public static b a(d dVar) {
        d dVar2 = dVar;
        a a = a.a(e.c.a.a.b.l.c.d(dVar2, "crv"));
        c cVar = new c(e.c.a.a.b.l.c.d(dVar2, "x"));
        c cVar2 = new c(e.c.a.a.b.l.c.d(dVar2, "y"));
        if (e.c.a.a.b.l.c.d(dVar) == f.y) {
            c cVar3 = null;
            if (dVar2.get("d") != null) {
                cVar3 = new c(e.c.a.a.b.l.c.d(dVar2, "d"));
            }
            c cVar4 = cVar3;
            if (cVar4 != null) {
                return new b(a, cVar, cVar2, cVar4, e.c.a.a.b.l.c.e(dVar), e.c.a.a.b.l.c.c(dVar), e.c.a.a.b.l.c.a(dVar), e.c.a.a.b.l.c.b(dVar), e.c.a.a.b.l.c.i(dVar), e.c.a.a.b.l.c.h(dVar), e.c.a.a.b.l.c.g(dVar), e.c.a.a.b.l.c.f(dVar), (KeyStore) null);
            }
            try {
                return new b(a, cVar, cVar2, e.c.a.a.b.l.c.e(dVar), e.c.a.a.b.l.c.c(dVar), e.c.a.a.b.l.c.a(dVar), e.c.a.a.b.l.c.b(dVar), e.c.a.a.b.l.c.i(dVar), e.c.a.a.b.l.c.h(dVar), e.c.a.a.b.l.c.g(dVar), e.c.a.a.b.l.c.f(dVar), (KeyStore) null);
            } catch (IllegalArgumentException e2) {
                throw new ParseException(e2.getMessage(), 0);
            }
        } else {
            throw new ParseException("The key type \"kty\" must be EC", 0);
        }
    }
}
