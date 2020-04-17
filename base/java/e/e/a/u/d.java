package e.e.a.u;

import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import com.microsoft.identity.common.internal.platform.DevicePopManager;
import e.e.a.a;
import e.e.a.u.k;
import e.e.a.v.c;
import i.a.b.b;
import java.io.Serializable;
import java.net.URI;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;

public abstract class d implements b, Serializable {
    public final a A;
    public final String B;
    public final URI C;
    @Deprecated
    public final c D;
    public c E;
    public final List<e.e.a.v.a> F;
    public final List<X509Certificate> G;
    public final KeyStore H;
    public final f x;
    public final g y;
    public final Set<e> z;

    public d(f fVar, g gVar, Set<e> set, a aVar, String str, URI uri, c cVar, c cVar2, List<e.e.a.v.a> list, KeyStore keyStore) {
        if (fVar != null) {
            this.x = fVar;
            if (h.a(gVar, set)) {
                this.y = gVar;
                this.z = set;
                this.A = aVar;
                this.B = str;
                this.C = uri;
                this.D = cVar;
                this.E = cVar2;
                if (list == null || !list.isEmpty()) {
                    this.F = list;
                    try {
                        this.G = e.c.a.a.b.l.c.a(list);
                        this.H = keyStore;
                    } catch (ParseException e2) {
                        StringBuilder a = e.a.a.a.a.a("Invalid X.509 certificate chain \"x5c\": ");
                        a.append(e2.getMessage());
                        throw new IllegalArgumentException(a.toString(), e2);
                    }
                } else {
                    throw new IllegalArgumentException("The X.509 certificate chain \"x5c\" must not be empty");
                }
            } else {
                throw new IllegalArgumentException("The key use \"use\" and key options \"key_opts\" parameters are not consistent, see RFC 7517, section 4.3");
            }
        } else {
            throw new IllegalArgumentException("The key type \"kty\" parameter must not be null");
        }
    }

    public String a() {
        return f().toString();
    }

    public List<X509Certificate> b() {
        List<X509Certificate> list = this.G;
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public abstract LinkedHashMap<String, ?> d();

    public abstract boolean e();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (!Objects.equals(this.x, dVar.x) || !Objects.equals(this.y, dVar.y) || !Objects.equals(this.z, dVar.z) || !Objects.equals(this.A, dVar.A) || !Objects.equals(this.B, dVar.B) || !Objects.equals(this.C, dVar.C) || !Objects.equals(this.D, dVar.D) || !Objects.equals(this.E, dVar.E) || !Objects.equals(this.F, dVar.F) || !Objects.equals(this.G, dVar.G) || !Objects.equals(this.H, dVar.H)) {
            return false;
        }
        return true;
    }

    public i.a.b.d f() {
        i.a.b.d dVar = new i.a.b.d();
        dVar.put("kty", this.x.x);
        g gVar = this.y;
        if (gVar != null) {
            dVar.put("use", gVar.x);
        }
        if (this.z != null) {
            ArrayList arrayList = new ArrayList(this.z.size());
            for (e identifier : this.z) {
                arrayList.add(identifier.identifier());
            }
            dVar.put("key_ops", arrayList);
        }
        a aVar = this.A;
        if (aVar != null) {
            dVar.put("alg", aVar.x);
        }
        String str = this.B;
        if (str != null) {
            dVar.put(AccessTokenRecord.SerializedNames.KID, str);
        }
        URI uri = this.C;
        if (uri != null) {
            dVar.put("x5u", uri.toString());
        }
        c cVar = this.D;
        if (cVar != null) {
            dVar.put("x5t", cVar.x);
        }
        c cVar2 = this.E;
        if (cVar2 != null) {
            dVar.put("x5t#S256", cVar2.x);
        }
        if (this.F != null) {
            i.a.b.a aVar2 = new i.a.b.a();
            for (e.e.a.v.a aVar3 : this.F) {
                aVar2.add(aVar3.x);
            }
            dVar.put("x5c", aVar2);
        }
        return dVar;
    }

    public int hashCode() {
        return Objects.hash(new Object[]{this.x, this.y, this.z, this.A, this.B, this.C, this.D, this.E, this.F, this.G, this.H});
    }

    public String toString() {
        return f().toString();
    }

    public static d a(i.a.b.d dVar) {
        String str;
        i.a.b.d dVar2 = dVar;
        f a = f.a(e.c.a.a.b.l.c.d(dVar2, "kty"));
        if (a == f.y) {
            return b.a(dVar);
        }
        if (a == f.z) {
            c cVar = new c(e.c.a.a.b.l.c.d(dVar2, "n"));
            c cVar2 = new c(e.c.a.a.b.l.c.d(dVar2, "e"));
            if (f.a(e.c.a.a.b.l.c.d(dVar2, "kty")) == f.z) {
                ArrayList arrayList = null;
                c cVar3 = dVar2.containsKey("d") ? new c(e.c.a.a.b.l.c.d(dVar2, "d")) : null;
                c cVar4 = dVar2.containsKey(DevicePopManager.SignedHttpRequestJwtClaims.HTTP_PATH) ? new c(e.c.a.a.b.l.c.d(dVar2, DevicePopManager.SignedHttpRequestJwtClaims.HTTP_PATH)) : null;
                c cVar5 = dVar2.containsKey("q") ? new c(e.c.a.a.b.l.c.d(dVar2, "q")) : null;
                c cVar6 = dVar2.containsKey("dp") ? new c(e.c.a.a.b.l.c.d(dVar2, "dp")) : null;
                String str2 = "dq";
                c cVar7 = dVar2.containsKey(str2) ? new c(e.c.a.a.b.l.c.d(dVar2, str2)) : null;
                c cVar8 = dVar2.containsKey("qi") ? new c(e.c.a.a.b.l.c.d(dVar2, "qi")) : null;
                if (dVar2.containsKey("oth")) {
                    i.a.b.a a2 = e.c.a.a.b.l.c.a(dVar2, "oth");
                    arrayList = new ArrayList(a2.size());
                    Iterator it = a2.iterator();
                    while (it.hasNext()) {
                        Object next = it.next();
                        if (next instanceof i.a.b.d) {
                            i.a.b.d dVar3 = (i.a.b.d) next;
                            str = str2;
                            arrayList.add(new k.a(new c(e.c.a.a.b.l.c.d(dVar3, "r")), new c(e.c.a.a.b.l.c.d(dVar3, str2)), new c(e.c.a.a.b.l.c.d(dVar3, "t"))));
                        } else {
                            str = str2;
                        }
                        str2 = str;
                    }
                }
                try {
                    return new k(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8, arrayList, (PrivateKey) null, e.c.a.a.b.l.c.e(dVar), e.c.a.a.b.l.c.c(dVar), e.c.a.a.b.l.c.a(dVar), e.c.a.a.b.l.c.b(dVar), e.c.a.a.b.l.c.i(dVar), e.c.a.a.b.l.c.h(dVar), e.c.a.a.b.l.c.g(dVar), e.c.a.a.b.l.c.f(dVar), (KeyStore) null);
                } catch (IllegalArgumentException e2) {
                    throw new ParseException(e2.getMessage(), 0);
                }
            } else {
                throw new ParseException("The key type \"kty\" must be RSA", 0);
            }
        } else if (a == f.A) {
            c cVar9 = new c(e.c.a.a.b.l.c.d(dVar2, "k"));
            if (e.c.a.a.b.l.c.d(dVar) == f.A) {
                return new j(cVar9, e.c.a.a.b.l.c.e(dVar), e.c.a.a.b.l.c.c(dVar), e.c.a.a.b.l.c.a(dVar), e.c.a.a.b.l.c.b(dVar), e.c.a.a.b.l.c.i(dVar), e.c.a.a.b.l.c.h(dVar), e.c.a.a.b.l.c.g(dVar), e.c.a.a.b.l.c.f(dVar), (KeyStore) null);
            }
            throw new ParseException("The key type \"kty\" must be oct", 0);
        } else if (a == f.B) {
            return i.a(dVar);
        } else {
            throw new ParseException("Unsupported key type \"kty\" parameter: " + a, 0);
        }
    }
}
