package k.a.b.a.b;

import java.math.BigDecimal;

public final class b extends Number {
    public final BigDecimal x = BigDecimal.ZERO;
    public final long y;
    public final long z;

    public b(long j2, long j3) {
        this.y = j2;
        this.z = j3;
    }

    public double doubleValue() {
        return this.x.doubleValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.z == bVar.z && this.y == bVar.y;
    }

    public float floatValue() {
        return this.x.floatValue();
    }

    public int hashCode() {
        long j2 = this.y;
        long j3 = this.z;
        return (((int) (j2 ^ (j2 >>> 32))) * 31) + ((int) (j3 ^ (j3 >>> 32)));
    }

    public int intValue() {
        return this.x.intValue();
    }

    public long longValue() {
        return this.x.longValue();
    }
}
