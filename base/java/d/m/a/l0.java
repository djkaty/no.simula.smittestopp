package d.m.a;

import d.o.g;
import d.o.l;
import d.o.m;

public class l0 implements l {
    public m x = null;

    public g getLifecycle() {
        if (this.x == null) {
            this.x = new m(this);
        }
        return this.x;
    }
}
