package k.a.b.a.b.l;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import k.a.b.a.b.a;
import k.a.b.a.b.f;
import k.a.b.a.b.l.c;
import k.a.b.a.d.g0.v;
import k.a.b.a.d.w;

public final class d implements c {
    public f a;
    public a b;

    /* renamed from: c  reason: collision with root package name */
    public String f1594c;

    public <E> void a(c.a<E> aVar, a aVar2, E e2) {
        v vVar = (v) aVar;
        if (vVar != null) {
            Void voidR = (Void) e2;
            if (vVar.v == null) {
                vVar.v = v.b.SERVER;
            }
            vVar.a(v.b.SERVER);
            vVar.r = this.f1594c;
            vVar.u = this.a;
            vVar.m = true;
            a aVar3 = this.b;
            if (aVar3 != null) {
                vVar.f1923i = aVar3.a();
            }
            w wVar = vVar.x;
            if (wVar != null) {
                wVar.onSaslInit(vVar, vVar.f1918d);
                return;
            }
            return;
        }
        throw null;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("SaslInit{mechanism=");
        a2.append(this.a);
        a2.append(", initialResponse=");
        a2.append(this.b);
        a2.append(", hostname='");
        a2.append(this.f1594c);
        a2.append(WWWAuthenticateHeader.SINGLE_QUOTE);
        a2.append('}');
        return a2.toString();
    }
}
