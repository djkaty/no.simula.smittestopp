package k.a.b.a.b;

import com.microsoft.identity.common.internal.cache.CacheKeyValueDelegate;

public final class h extends Number implements Comparable<h> {
    public static final h A;
    public static final h B = new h(-1);
    public static final h[] y = new h[256];
    public static final h z;
    public final int x;

    static {
        for (int i2 = 0; i2 < 256; i2++) {
            y[i2] = new h(i2);
        }
        h[] hVarArr = y;
        z = hVarArr[0];
        A = hVarArr[1];
    }

    public h(int i2) {
        this.x = i2;
    }

    public static h a(int i2) {
        if ((i2 & -256) == 0) {
            return y[i2];
        }
        return new h(i2);
    }

    /* renamed from: b */
    public int compareTo(h hVar) {
        return Long.signum(longValue() - hVar.longValue());
    }

    public h c(h hVar) {
        return a(this.x - hVar.x);
    }

    public double doubleValue() {
        return (double) longValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && h.class == obj.getClass() && this.x == ((h) obj).x;
    }

    public float floatValue() {
        return (float) longValue();
    }

    public int hashCode() {
        return this.x;
    }

    public int intValue() {
        return this.x;
    }

    public long longValue() {
        return ((long) this.x) & 4294967295L;
    }

    public String toString() {
        return String.valueOf(longValue());
    }

    public h a(h hVar) {
        return a(this.x + hVar.x);
    }

    public static h a(long j2) {
        if (j2 >= 0 && j2 < 4294967296L) {
            return a((int) j2);
        }
        throw new NumberFormatException("Value \"" + j2 + "\" lies outside the range [" + 0 + CacheKeyValueDelegate.CACHE_VALUE_SEPARATOR + 4294967296L + ").");
    }
}
