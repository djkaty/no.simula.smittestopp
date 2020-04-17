package k.a.b.a.b.l;

import k.a.b.a.b.g;

public enum b {
    OK,
    AUTH,
    SYS,
    SYS_PERM,
    SYS_TEMP;

    public g getValue() {
        return g.a((byte) ordinal());
    }

    public static b valueOf(g gVar) {
        return values()[gVar.x];
    }
}
