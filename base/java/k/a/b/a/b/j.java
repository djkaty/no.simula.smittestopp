package k.a.b.a.b;

public final class j extends Number implements Comparable<j> {
    public static final j[] y = new j[256];
    public static final j z = new j(-1);
    public final short x;

    static {
        for (short s = 0; s < 256; s = (short) (s + 1)) {
            y[s] = new j(s);
        }
    }

    public j(short s) {
        this.x = s;
    }

    public static j a(short s) {
        if ((65280 & s) == 0) {
            return y[s];
        }
        return new j(s);
    }

    public int compareTo(Object obj) {
        return Integer.signum(intValue() - ((j) obj).intValue());
    }

    public double doubleValue() {
        return (double) intValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && j.class == obj.getClass() && this.x == ((j) obj).x;
    }

    public float floatValue() {
        return (float) intValue();
    }

    public int hashCode() {
        return this.x;
    }

    public int intValue() {
        return this.x & 65535;
    }

    public long longValue() {
        return ((long) this.x) & 65535;
    }

    public short shortValue() {
        return this.x;
    }

    public String toString() {
        return String.valueOf(longValue());
    }
}
