package k.a.b.a.g;

import k.a.b.a.d.a;
import k.a.b.a.d.g0.g;
import k.a.b.a.d.h;
import k.a.b.a.d.n;
import k.a.b.a.d.t;

public class b extends a {
    public int a = 0;
    public int b = 1024;

    public void onUnhandled(h hVar) {
        int i2 = this.b;
        g gVar = (g) hVar;
        n G = gVar.G();
        int ordinal = gVar.w().ordinal();
        if ((ordinal == 19 || ordinal == 20 || ordinal == 25 || ordinal == 27) && (G instanceof t)) {
            int g2 = G.g() + this.a;
            this.a = g2;
            if (g2 == 0) {
                t tVar = (t) G;
                tVar.a(i2 - tVar.x());
            }
        }
    }
}
