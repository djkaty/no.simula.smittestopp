package k.e.a;

import e.a.a.a.a;

public abstract class s {
    public final int a;
    public s b;

    public s(int i2) {
        if (i2 == 458752 || i2 == 393216 || i2 == 327680 || i2 == 262144) {
            this.a = i2;
            this.b = null;
            return;
        }
        throw new IllegalArgumentException(a.a("Unsupported api ", i2));
    }

    public abstract a a(int i2, z zVar, String str, boolean z);

    public abstract a a(int i2, z zVar, q[] qVarArr, q[] qVarArr2, int[] iArr, String str, boolean z);

    public abstract a a(String str, boolean z);

    public abstract void a(int i2);

    public abstract void a(int i2, int i3);

    public abstract void a(int i2, int i3, q qVar, q... qVarArr);

    public abstract void a(int i2, int i3, Object[] objArr, int i4, Object[] objArr2);

    public abstract void a(int i2, String str);

    public abstract void a(int i2, String str, String str2, String str3);

    public abstract void a(int i2, String str, String str2, String str3, boolean z);

    public abstract void a(int i2, q qVar);

    public abstract void a(Object obj);

    public abstract void a(String str, String str2, String str3, q qVar, q qVar2, int i2);

    public abstract void a(q qVar);

    public abstract a b(int i2, z zVar, String str, boolean z);

    public abstract void b(int i2, int i3);

    @Deprecated
    public void b(int i2, String str, String str2, String str3) {
        a(i2 | (this.a < 327680 ? 256 : 0), str, str2, str3, i2 == 185);
    }

    public abstract void b(int i2, q qVar);

    public abstract void c(int i2, int i3);

    public abstract void d(int i2, int i3);
}
