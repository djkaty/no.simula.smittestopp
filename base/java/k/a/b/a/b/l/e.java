package k.a.b.a.b.l;

import e.a.a.a.a;
import java.util.Arrays;
import java.util.List;
import k.a.b.a.b.f;
import k.a.b.a.b.l.c;
import k.a.b.a.d.g0.v;
import k.a.b.a.d.w;

public final class e implements c {
    public f[] a;

    public void a(f... fVarArr) {
        if (fVarArr != null) {
            this.a = fVarArr;
            return;
        }
        throw new NullPointerException("the sasl-server-mechanisms field is mandatory");
    }

    public String toString() {
        List list;
        StringBuilder a2 = a.a("SaslMechanisms{saslServerMechanisms=");
        f[] fVarArr = this.a;
        if (fVarArr == null) {
            list = null;
        } else {
            list = Arrays.asList(fVarArr);
        }
        a2.append(list);
        a2.append('}');
        return a2.toString();
    }

    public <E> void a(c.a<E> aVar, k.a.b.a.b.a aVar2, E e2) {
        v vVar = (v) aVar;
        if (vVar != null) {
            Void voidR = (Void) e2;
            if (vVar.v == null) {
                vVar.a();
            }
            vVar.a(v.b.CLIENT);
            vVar.t = this.a;
            w wVar = vVar.x;
            if (wVar != null) {
                wVar.onSaslMechanisms(vVar, vVar.f1918d);
                return;
            }
            return;
        }
        throw null;
    }
}
