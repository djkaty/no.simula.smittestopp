package k.a.b.a.b.l;

import java.nio.ByteBuffer;
import java.util.logging.Level;
import k.a.b.a.b.a;
import k.a.b.a.b.l.c;
import k.a.b.a.d.g0.v;
import k.a.b.a.d.v;
import k.a.b.a.d.w;

public final class f implements c {
    public b a;
    public a b;

    public <E> void a(c.a<E> aVar, a aVar2, E e2) {
        ByteBuffer byteBuffer;
        v vVar = (v) aVar;
        if (vVar != null) {
            Void voidR = (Void) e2;
            vVar.a(v.b.CLIENT);
            v.a[] values = v.a.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                v.a aVar3 = values[i2];
                a aVar4 = this.b;
                if (aVar4 == null) {
                    byteBuffer = null;
                } else {
                    byteBuffer = aVar4.a();
                }
                vVar.f1923i = byteBuffer;
                if (aVar3.getCode() == this.a.ordinal()) {
                    vVar.p = aVar3;
                    if (vVar.q != v.b.PN_SASL_IDLE) {
                        vVar.q = aVar3 == v.a.PN_SASL_OK ? v.b.PN_SASL_PASS : v.b.PN_SASL_FAIL;
                    }
                } else {
                    i2++;
                }
            }
            vVar.s = true;
            if (k.a.b.a.d.g0.v.y.isLoggable(Level.FINE)) {
                k.a.b.a.d.g0.v.y.fine("Handled outcome: " + vVar);
            }
            w wVar = vVar.x;
            if (wVar != null) {
                wVar.onSaslOutcome(vVar, vVar.f1918d);
                return;
            }
            return;
        }
        throw null;
    }

    public String toString() {
        StringBuilder a2 = e.a.a.a.a.a("SaslOutcome{_code=");
        a2.append(this.a);
        a2.append(", _additionalData=");
        a2.append(this.b);
        a2.append('}');
        return a2.toString();
    }
}
