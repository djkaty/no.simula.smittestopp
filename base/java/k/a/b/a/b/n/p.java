package k.a.b.a.b.n;

import k.a.b.a.b.g;

public enum p {
    UNSETTLED(0),
    SETTLED(1),
    MIXED(2);
    
    public g value;

    /* access modifiers changed from: public */
    p(int i2) {
        this.value = g.a((byte) i2);
    }

    public g getValue() {
        return this.value;
    }

    public static p valueOf(g gVar) {
        byte b = gVar.x & 255;
        if (b == 0) {
            return UNSETTLED;
        }
        if (b == 1) {
            return SETTLED;
        }
        if (b == 2) {
            return MIXED;
        }
        throw new IllegalArgumentException("The value can be only 0 (for UNSETTLED), 1 (for SETTLED) and 2 (for MIXED)");
    }
}
