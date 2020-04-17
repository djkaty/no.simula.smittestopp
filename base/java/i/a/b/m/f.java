package i.a.b.m;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import i.a.b.g;

public class f implements n<int[]> {
    public f(l lVar) {
    }

    public void a(Object obj, Appendable appendable, g gVar) {
        int[] iArr = (int[]) obj;
        if (gVar != null) {
            appendable.append('[');
            boolean z = false;
            for (int i2 : iArr) {
                if (z) {
                    appendable.append(WWWAuthenticateHeader.COMMA);
                } else {
                    z = true;
                }
                appendable.append(Integer.toString(i2));
            }
            appendable.append(']');
            return;
        }
        throw null;
    }
}
