package e.e.b;

import e.e.a.m;
import e.e.a.n;
import e.e.a.p;
import e.e.a.v.c;
import i.a.b.d;
import java.text.ParseException;

public class e extends n implements b {
    public e(m mVar, c cVar) {
        super(mVar, new p(cVar.a()));
    }

    public c c() {
        d b = this.x.b();
        if (b != null) {
            return c.a(b);
        }
        throw new ParseException("Payload of JWS object is not a valid JSON object", 0);
    }

    public e(c cVar, c cVar2, c cVar3) {
        super(cVar, cVar2, cVar3);
    }
}
