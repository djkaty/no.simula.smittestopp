package e.e.a;

import com.microsoft.identity.common.internal.dto.AccessTokenRecord;
import e.e.a.u.d;
import e.e.a.v.a;
import e.e.a.v.c;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class b extends e {
    public final URI E;
    public final d F;
    public final URI G;
    public final c H;
    public final c I;
    public final List<a> J;
    public final String K;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(a aVar, h hVar, String str, Set<String> set, URI uri, d dVar, URI uri2, c cVar, c cVar2, List<a> list, String str2, Map<String, Object> map, c cVar3) {
        super(aVar, hVar, str, set, map, cVar3);
        List<a> list2 = list;
        this.E = uri;
        this.F = dVar;
        this.G = uri2;
        this.H = cVar;
        this.I = cVar2;
        if (list2 != null) {
            this.J = Collections.unmodifiableList(new ArrayList(list2));
        } else {
            this.J = null;
        }
        this.K = str2;
    }

    public i.a.b.d b() {
        i.a.b.d b = super.b();
        URI uri = this.E;
        if (uri != null) {
            b.put("jku", uri.toString());
        }
        d dVar = this.F;
        if (dVar != null) {
            b.put("jwk", dVar.f());
        }
        URI uri2 = this.G;
        if (uri2 != null) {
            b.put("x5u", uri2.toString());
        }
        c cVar = this.H;
        if (cVar != null) {
            b.put("x5t", cVar.x);
        }
        c cVar2 = this.I;
        if (cVar2 != null) {
            b.put("x5t#S256", cVar2.x);
        }
        List<a> list = this.J;
        if (list != null && !list.isEmpty()) {
            b.put("x5c", this.J);
        }
        String str = this.K;
        if (str != null) {
            b.put(AccessTokenRecord.SerializedNames.KID, str);
        }
        return b;
    }
}
