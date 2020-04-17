package i.a.b.m;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import i.a.b.g;

public class j implements n<double[]> {
    public j(l lVar) {
    }

    public void a(Object obj, Appendable appendable, g gVar) {
        double[] dArr = (double[]) obj;
        if (gVar != null) {
            appendable.append('[');
            boolean z = false;
            for (double d2 : dArr) {
                if (z) {
                    appendable.append(WWWAuthenticateHeader.COMMA);
                } else {
                    z = true;
                }
                appendable.append(Double.toString(d2));
            }
            appendable.append(']');
            return;
        }
        throw null;
    }
}
