package k.a.b.a.b;

import java.math.BigInteger;

public final class i extends Number implements Comparable<i> {
    public static final i A = z[0];
    public static final BigInteger y = new BigInteger(new byte[]{1, 0, 0, 0, 0, 0, 0, 0, 0});
    public static final i[] z = new i[256];
    public final long x;

    static {
        BigInteger.valueOf(Long.MAX_VALUE);
        for (int i2 = 0; i2 < 256; i2++) {
            z[i2] = new i((long) i2);
        }
    }

    public i(long j2) {
        this.x = j2;
    }

    public BigInteger a() {
        long j2 = this.x;
        if (j2 >= 0) {
            return BigInteger.valueOf(j2);
        }
        return y.add(BigInteger.valueOf(j2));
    }

    public int compareTo(Object obj) {
        return a().compareTo(((i) obj).a());
    }

    public double doubleValue() {
        return (double) this.x;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && i.class == obj.getClass() && this.x == ((i) obj).x;
    }

    public float floatValue() {
        return (float) this.x;
    }

    public int hashCode() {
        long j2 = this.x;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public int intValue() {
        return (int) this.x;
    }

    public long longValue() {
        return this.x;
    }

    public String toString() {
        return String.valueOf(a());
    }

    public static i a(long j2) {
        if ((255 & j2) == j2) {
            return z[(int) j2];
        }
        return new i(j2);
    }
}
