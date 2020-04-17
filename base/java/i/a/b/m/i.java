package i.a.b.m;

import com.microsoft.identity.client.claims.WWWAuthenticateHeader;
import i.a.b.g;

public class i implements n<float[]> {
    public i(l lVar) {
    }

    public void a(Object obj, Appendable appendable, g gVar) {
        float[] fArr = (float[]) obj;
        if (gVar != null) {
            appendable.append('[');
            boolean z = false;
            for (float f2 : fArr) {
                if (z) {
                    appendable.append(WWWAuthenticateHeader.COMMA);
                } else {
                    z = true;
                }
                appendable.append(Float.toString(f2));
            }
            appendable.append(']');
            return;
        }
        throw null;
    }
}
