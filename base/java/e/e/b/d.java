package e.e.b;

import e.a.a.a.a;
import e.e.a.g;
import e.e.a.p;
import e.e.a.q;
import e.e.a.v.c;
import java.text.ParseException;

public class d extends g implements b {
    public final q z;

    public d(q qVar, c cVar) {
        p pVar = new p(cVar.a());
        if (qVar != null) {
            this.z = qVar;
            this.x = pVar;
            return;
        }
        throw new IllegalArgumentException("The unsecured header must not be null");
    }

    public c c() {
        i.a.b.d b = this.x.b();
        if (b != null) {
            return c.a(b);
        }
        throw new ParseException("Payload of unsecured JOSE object is not a valid JSON object", 0);
    }

    public d(c cVar, c cVar2) {
        if (cVar != null) {
            try {
                this.z = q.a(cVar);
                if (cVar2 != null) {
                    this.x = new p(cVar2);
                    this.y = new c[]{cVar, cVar2, null};
                    return;
                }
                throw new IllegalArgumentException("The second part must not be null");
            } catch (ParseException e2) {
                StringBuilder a = a.a("Invalid unsecured header: ");
                a.append(e2.getMessage());
                throw new ParseException(a.toString(), 0);
            }
        } else {
            throw new IllegalArgumentException("The first part must not be null");
        }
    }
}
