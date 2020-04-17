package k.b.f.b;

import java.util.Arrays;
import k.b.c.e.a;

public class c {
    public final int[] a;

    public c(int[] iArr) {
        this.a = iArr == null ? null : (int[]) iArr.clone();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        return Arrays.equals(this.a, ((c) obj).a);
    }

    public int hashCode() {
        return a.b(this.a);
    }
}
