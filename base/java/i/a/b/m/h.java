package i.a.b.m;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import i.a.b.g;

public class h implements n<long[]> {
    public h(l lVar) {
    }

    public void a(Object obj, Appendable appendable, g gVar) {
        long[] jArr = (long[]) obj;
        if (gVar != null) {
            appendable.append('[');
            boolean z = false;
            for (long j2 : jArr) {
                if (z) {
                    appendable.append(WWWAuthenticateHeader.COMMA);
                } else {
                    z = true;
                }
                appendable.append(Long.toString(j2));
            }
            appendable.append(']');
            return;
        }
        throw null;
    }
}
