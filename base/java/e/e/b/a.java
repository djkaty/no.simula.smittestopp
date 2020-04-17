package e.e.b;

import e.e.a.k;
import e.e.a.p;
import e.e.a.v.c;
import i.a.b.d;
import java.text.ParseException;

public class a extends k implements b {
    public a(c cVar, c cVar2, c cVar3, c cVar4, c cVar5) {
        super(cVar, cVar2, cVar3, cVar4, cVar5);
    }

    public c c() {
        p pVar = this.x;
        if (pVar == null) {
            return null;
        }
        d b = pVar.b();
        if (b != null) {
            return c.a(b);
        }
        throw new ParseException("Payload of JWE object is not a valid JSON object", 0);
    }
}
