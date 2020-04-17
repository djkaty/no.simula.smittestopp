package k.a.b.a.b.l;

import java.nio.ByteBuffer;
import k.a.b.a.b.l.c;
import k.a.b.a.d.g0.v;
import k.a.b.a.d.w;

public final class a implements c {
    public k.a.b.a.b.a a;

    public <E> void a(c.a<E> aVar, k.a.b.a.b.a aVar2, E e2) {
        v vVar = (v) aVar;
        ByteBuffer byteBuffer = null;
        if (vVar != null) {
            Void voidR = (Void) e2;
            vVar.a(v.b.CLIENT);
            k.a.b.a.b.a aVar3 = this.a;
            if (aVar3 != null) {
                byteBuffer = aVar3.a();
            }
            vVar.f1923i = byteBuffer;
            w wVar = vVar.x;
            if (wVar != null) {
                wVar.onSaslChallenge(vVar, vVar.f1918d);
                return;
            }
            return;
        }
        throw null;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("SaslChallenge{challenge=");
        a2.append(this.a);
        a2.append('}');
        return a2.toString();
    }
}
