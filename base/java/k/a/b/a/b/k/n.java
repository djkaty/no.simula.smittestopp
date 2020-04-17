package k.a.b.a.b.k;

import e.a.a.a.a;
import java.util.Map;
import k.a.b.a.b.f;
import k.a.b.a.b.n.e;

public final class n implements e, o {
    public Boolean a;
    public Boolean b;

    /* renamed from: c  reason: collision with root package name */
    public Map<f, Object> f1574c;

    static {
        f.a("amqp:modified:list");
    }

    public String toString() {
        StringBuilder a2 = a.a("Modified{deliveryFailed=");
        a2.append(this.a);
        a2.append(", undeliverableHere=");
        a2.append(this.b);
        a2.append(", messageAnnotations=");
        a2.append(this.f1574c);
        a2.append('}');
        return a2.toString();
    }
}
