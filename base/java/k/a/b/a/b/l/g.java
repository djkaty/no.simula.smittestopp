package k.a.b.a.b.l;

import java.nio.ByteBuffer;
import k.a.b.a.b.a;
import k.a.b.a.b.l.c;
import k.a.b.a.d.g0.v;
import k.a.b.a.d.w;

public final class g implements c {
    public a a;

    public <E> void a(c.a<E> aVar, a aVar2, E e2) {
        v vVar = (v) aVar;
        ByteBuffer byteBuffer = null;
        if (vVar != null) {
            Void voidR = (Void) e2;
            vVar.a(v.b.SERVER);
            a aVar3 = this.a;
            if (aVar3 != null) {
                byteBuffer = aVar3.a();
            }
            vVar.f1923i = byteBuffer;
            w wVar = vVar.x;
            if (wVar != null) {
                wVar.onSaslResponse(vVar, vVar.f1918d);
                return;
            }
            return;
        }
        throw null;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("SaslResponse{response=");
        a2.append(this.a);
        a2.append('}');
        return a2.toString();
    }
}
