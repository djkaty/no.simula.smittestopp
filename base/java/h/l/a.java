package h.l;

import e.c.a.a.b.l.c;
import java.util.Iterator;

public class a implements Iterable<Integer> {
    public final int x;
    public final int y;
    public final int z;

    public a(int i2, int i3, int i4) {
        if (i4 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (i4 != Integer.MIN_VALUE) {
            this.x = i2;
            if (i4 > 0) {
                if (i2 < i3) {
                    i3 -= c.b(c.b(i3, i4) - c.b(i2, i4), i4);
                }
            } else if (i4 >= 0) {
                throw new IllegalArgumentException("Step is zero.");
            } else if (i2 > i3) {
                int i5 = -i4;
                i3 += c.b(c.b(i2, i5) - c.b(i3, i5), i5);
            }
            this.y = i3;
            this.z = i4;
        } else {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            if (!isEmpty() || !((a) obj).isEmpty()) {
                a aVar = (a) obj;
                if (!(this.x == aVar.x && this.y == aVar.y && this.z == aVar.z)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.x * 31) + this.y) * 31) + this.z;
    }

    public boolean isEmpty() {
        if (this.z > 0) {
            if (this.x > this.y) {
                return true;
            }
        } else if (this.x < this.y) {
            return true;
        }
        return false;
    }

    public Iterator iterator() {
        return new b(this.x, this.y, this.z);
    }

    public String toString() {
        int i2;
        StringBuilder sb;
        if (this.z > 0) {
            sb = new StringBuilder();
            sb.append(this.x);
            sb.append("..");
            sb.append(this.y);
            sb.append(" step ");
            i2 = this.z;
        } else {
            sb = new StringBuilder();
            sb.append(this.x);
            sb.append(" downTo ");
            sb.append(this.y);
            sb.append(" step ");
            i2 = -this.z;
        }
        sb.append(i2);
        return sb.toString();
    }
}
