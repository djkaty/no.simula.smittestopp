package k.b.a.l2;

import k.b.a.d;
import k.b.a.e;
import k.b.a.h1;
import k.b.a.n;
import k.b.a.t;

public class b extends n implements d {
    public e x;
    public t y;

    public b(m mVar) {
        this.x = mVar;
        this.y = mVar.c();
    }

    public b(w wVar) {
        this.x = wVar;
        this.y = new h1(false, 0, wVar);
    }

    public t c() {
        return this.y;
    }
}
