package k.a.b.a.b.n;

import k.a.b.a.b.g;

public enum n {
    FIRST(0),
    SECOND(1);
    
    public g value;

    /* access modifiers changed from: public */
    n(int i2) {
        this.value = g.a((byte) i2);
    }

    public g getValue() {
        return this.value;
    }

    public static n valueOf(g gVar) {
        byte b = gVar.x & 255;
        if (b == 0) {
            return FIRST;
        }
        if (b == 1) {
            return SECOND;
        }
        throw new IllegalArgumentException("The value can be only 0 (for FIRST) and 1 (for SECOND)");
    }
}
