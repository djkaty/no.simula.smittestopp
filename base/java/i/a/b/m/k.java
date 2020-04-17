package i.a.b.m;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import i.a.b.g;

public class k implements n<boolean[]> {
    public k(l lVar) {
    }

    public void a(Object obj, Appendable appendable, g gVar) {
        boolean[] zArr = (boolean[]) obj;
        if (gVar != null) {
            appendable.append('[');
            boolean z = false;
            for (boolean z2 : zArr) {
                if (z) {
                    appendable.append(WWWAuthenticateHeader.COMMA);
                } else {
                    z = true;
                }
                appendable.append(Boolean.toString(z2));
            }
            appendable.append(']');
            return;
        }
        throw null;
    }
}
