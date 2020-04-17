package k.a.b.a.b;

import java.math.BigDecimal;

public final class c extends Number {
    public final BigDecimal x = BigDecimal.ZERO;
    public final int y;

    public c(int i2) {
        this.y = i2;
    }

    public double doubleValue() {
        return this.x.doubleValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && c.class == obj.getClass() && this.y == ((c) obj).y;
    }

    public float floatValue() {
        return this.x.floatValue();
    }

    public int hashCode() {
        return this.y;
    }

    public int intValue() {
        return this.x.intValue();
    }

    public long longValue() {
        return this.x.longValue();
    }
}
