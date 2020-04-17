package i.a.b.m;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;

public class g implements n<short[]> {
    public g(l lVar) {
    }

    public void a(Object obj, Appendable appendable, i.a.b.g gVar) {
        short[] sArr = (short[]) obj;
        if (gVar != null) {
            appendable.append('[');
            boolean z = false;
            for (short s : sArr) {
                if (z) {
                    appendable.append(WWWAuthenticateHeader.COMMA);
                } else {
                    z = true;
                }
                appendable.append(Short.toString(s));
            }
            appendable.append(']');
            return;
        }
        throw null;
    }
}
