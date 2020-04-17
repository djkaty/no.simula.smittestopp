package k.e.a;

import e.a.a.a.a;

public abstract class f {
    public f(int i2) {
        if (i2 != 458752 && i2 != 393216 && i2 != 327680 && i2 != 262144) {
            throw new IllegalArgumentException(a.a("Unsupported api ", i2));
        }
    }

    public abstract a a(int i2, z zVar, String str, boolean z);

    public abstract a a(String str, boolean z);

    public abstract s a(int i2, String str, String str2, String str3, String[] strArr);

    public abstract void a(int i2, int i3, String str, String str2, String str3, String[] strArr);
}
