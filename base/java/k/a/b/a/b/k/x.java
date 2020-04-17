package k.a.b.a.b.k;

import k.a.b.a.b.h;

public enum x {
    NONE,
    CONFIGURATION,
    UNSETTLED_STATE;

    public static x get(h hVar) {
        int i2 = hVar.x;
        if (i2 == 0) {
            return NONE;
        }
        if (i2 == 1) {
            return CONFIGURATION;
        }
        if (i2 == 2) {
            return UNSETTLED_STATE;
        }
        throw new IllegalArgumentException("Unknown TerminusDurablity: " + hVar);
    }

    public h getValue() {
        return h.a(ordinal());
    }
}
