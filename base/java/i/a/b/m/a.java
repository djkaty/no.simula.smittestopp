package i.a.b.m;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import i.a.b.g;
import i.a.b.i;

public class a implements n<Object> {
    public <E> void a(E e2, Appendable appendable, g gVar) {
        if (gVar != null) {
            appendable.append('[');
            boolean z = false;
            for (Object obj : (Object[]) e2) {
                if (z) {
                    appendable.append(WWWAuthenticateHeader.COMMA);
                } else {
                    z = true;
                }
                i.a(obj, appendable, gVar);
            }
            appendable.append(']');
            return;
        }
        throw null;
    }
}
