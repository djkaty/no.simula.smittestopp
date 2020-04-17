package k.a.b.a.b;

public final class g extends Number implements Comparable<g> {
    public static final g[] y = new g[256];
    public final byte x;

    static {
        for (int i2 = 0; i2 < 256; i2++) {
            y[i2] = new g((byte) i2);
        }
    }

    public g(byte b) {
        this.x = b;
    }

    public static g a(byte b) {
        return y[b & 255];
    }

    public byte byteValue() {
        return this.x;
    }

    public int compareTo(Object obj) {
        return Integer.signum((this.x & 255) - (((g) obj).x & 255));
    }

    public double doubleValue() {
        return (double) longValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && g.class == obj.getClass() && this.x == ((g) obj).x;
    }

    public float floatValue() {
        return (float) longValue();
    }

    public int hashCode() {
        return this.x;
    }

    public int intValue() {
        return this.x & 255;
    }

    public long longValue() {
        return ((long) this.x) & 255;
    }

    public short shortValue() {
        return (short) (this.x & 255);
    }

    public String toString() {
        return String.valueOf(this.x & 255);
    }
}
