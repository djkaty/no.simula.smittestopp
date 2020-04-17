package k.e.a;

import e.a.a.a.a;

public abstract class l {
    public l a;

    public l(int i2) {
        if (i2 == 458752 || i2 == 393216 || i2 == 327680 || i2 == 262144) {
            this.a = null;
            return;
        }
        throw new IllegalArgumentException(a.a("Unsupported api ", i2));
    }

    public abstract a a(int i2, z zVar, String str, boolean z);

    public abstract a a(String str, boolean z);
}
