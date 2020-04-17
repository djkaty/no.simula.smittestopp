package k.a.b.a.b;

import java.math.BigDecimal;

public final class d extends Number {
    public final BigDecimal x = BigDecimal.ZERO;
    public final long y;

    public d(long j2) {
        this.y = j2;
    }

    public double doubleValue() {
        return this.x.doubleValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && d.class == obj.getClass() && this.y == ((d) obj).y;
    }

    public float floatValue() {
        return this.x.floatValue();
    }

    public int hashCode() {
        long j2 = this.y;
        return (int) (j2 ^ (j2 >>> 32));
    }

    public int intValue() {
        return this.x.intValue();
    }

    public long longValue() {
        return this.x.longValue();
    }
}
