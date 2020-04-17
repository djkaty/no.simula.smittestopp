package i.a.b.m;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import i.a.a.a;
import i.a.a.c;
import i.a.a.i;
import i.a.b.d;
import i.a.b.g;
import i.a.b.h;
import java.io.IOException;

public class b implements n<Object> {
    public <E> void a(E e2, Appendable appendable, g gVar) {
        try {
            c<P> a = c.a(e2.getClass(), (i) h.a);
            appendable.append('{');
            boolean z = false;
            for (a aVar : a.a()) {
                Object a2 = a.a(e2, aVar.f1392d);
                if (a2 != null || !gVar.f1407d) {
                    if (z) {
                        appendable.append(WWWAuthenticateHeader.COMMA);
                    } else {
                        z = true;
                    }
                    d.a(aVar.f1394f, a2, appendable, gVar);
                }
            }
            appendable.append('}');
        } catch (IOException e3) {
            throw e3;
        }
    }
}
